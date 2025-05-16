unit ARRptKomisiSalesDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib, dxTL, dxDBCtrl, dxDBGrid, dxCore, dxButton;

type
  TfmARRptKomisiSalesDlg = class(TfmRptDlg)
    quActSalesID: TStringField;
    quActSalesName: TStringField;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    dbgList: TdxDBGrid;
    dbgListSalesID: TdxDBGridMaskColumn;
    dbgListSalesName: TdxDBGridMaskColumn;
    bbCancel: TdxButton;
    procedure bbPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbSelectClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARRptKomisiSalesDlg: TfmARRptKomisiSalesDlg;

implementation

uses INQRRptAdjusment, UnitGeneral, ARQRRptTrService, ARQRRptTrAService,
  StdLv0, APQRRptPembPerBrg, APQRRptPembPerSupp, ARQRRptPenjPerCust,
  ARQRRptPenjPerSales, Search, ARQRRptKomisiSales;

{$R *.dfm}

procedure TfmARRptKomisiSalesDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmARQRRptKomisiSales.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);

       with qu001,sql do
       begin
           Close;Clear;
           add(' SELECT DISTINCT K.SalesId,K.Sales,K.SalesId as SalesId2 FROM'
              +' (select Distinct A.SalesID,(A.SalesId+''-''+B.SalesName) as Sales'
              +' FROM ARTrPenjualanHd A INNER JOIN ARMsSales B ON A.SalesId=B.SalesId WHERE'
              +' Convert(varchar(8),TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
           if rbSelect.Checked then
           Add(' AND A.SalesId IN '+SelGrid(quAct,dbgList,'SalesID'));
           Add(' UNION ALL'
              +' SELECT Distinct A.SalesID,(A.SalesId+''-''+B.SalesName) as Sales'
              +' FROM ARTrKonInvPelHd A INNER JOIN ARMsSales B ON A.SalesId=B.SalesId WHERE'
              +' Convert(varchar(8),TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
           if rbSelect.Checked then
           Add(' AND A.SalesId IN '+SelGrid(quAct,dbgList,'SalesID'));
           Add(' ) as K order by K.SalesId');
           Open;
          if IsEmpty then
          begin
             MsgInfo('No Data !');
             Abort;
          end;
       end;

       with qu002,sql do
       begin
          Close;Clear;
          add(' SELECT Distinct K.SaleId,K.Saleid as SaleId2,K.Tgl,K.Tgl2,K.CurrId,K.TTlPj FROM'
             +' (SELECT distinct A.SaleId,A.SalesId,Convert(varchar(10),Transdate,103) as Tgl,Convert(varchar(8),TransDate,112) as Tgl2,'
             +' CurriD,TTLPj'
             +' FROM ARTrPenjualanHd A'
             +' WHERE A.SalesId=:SalesId AND FlagCounter<>''C'' AND'
             +' isnull(TTLPj-(Select isnull(Sum(ValuePayment),0) from ARTrPiutangDt Q where Q.Saleid=A.SaleId),0)'
             +'     -(Select isnull(Sum(Price*Qty),0) FROM ARTrReturPenjualanDt F INNER JOIN ARTrReturPenjualanHd G '
             +'     ON F.ReturnId=G.ReturnId  WHERE G.FlagRetur=''B'' AND F.SaleId=A.SaleId '
             +'       ) =0 '
             +' AND (Select Top 1 Convert(varchar(10),D.Transdate,112) FROM ARTRPiutangDt C '
             +' INNER JOIN ARTrPiutangHd D ON C.PiutangId=D.PiutangId'
             +' WHERE C.SaleId=A.SaleId ORDER BY D.Transdate Desc)'
             +' BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' AND'
             +' (Select Top 1 Convert(varchar(10),D.Transdate,112) FROM ARTRPiutangDt C '
             +' INNER JOIN ARTrPiutangHd D ON C.PiutangId=D.PiutangId'
             +' WHERE C.SaleId=A.SaleId ORDER BY D.Transdate Desc)<=dateadd(Day, isnull(A.JatuhTempo,0)+7,A.Transdate) '
             +' UNION ALL'
             +' SELECT distinct A.KonInvPelId,A.SalesId,Convert(varchar(10),Transdate,103) as Tgl,Convert(varchar(8),TransDate,112) as Tgl2,'
             +' CurriD,TTLKJ'
             +' FROM ARTrKonInvPelHd A'
             +' WHERE A.SalesId=:SalesId2 AND'
             +' isnull(TTLKJ-(Select isnull(Sum(ValuePayment),0) from ARTrKonPiutangDt Q where Q.KonInvPelid=A.KonInvPelId),0)'
             +'        =0 '
             +' AND (Select Top 1 Convert(varchar(10),D.Transdate,112) FROM ARTrKonPiutangDt C '
             +' INNER JOIN ARTrKonPiutangHd D ON C.KonPiutangId=D.KonPiutangId'
             +' WHERE C.KonInvPelId=A.KonInvPelId ORDER BY D.Transdate Desc)'
             +' BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' AND'
             +' (Select Top 1 Convert(varchar(10),D.Transdate,112) FROM ARTrKonPiutangDt C '
             +' INNER JOIN ARTrKonPiutangHd D ON C.KonPiutangId=D.KonPiutangId'
             +' WHERE C.KonInvPelId=A.KonInvPelId ORDER BY D.Transdate Desc)<=dateadd(Day, isnull(A.JatuhTempo,0)+7,A.Transdate) '
             +'  ) as K ORDER BY K.Tgl2');
          Parameters.ParamByName('SalesId').DataType := ftString;
          Parameters.ParamByName('SalesId2').DataType := ftString;
          Open;
       end;

       with qu003,sql do
       begin
          Close;Clear;
          add(' SELECT DISTINCT A.ItemId,B.ItemName,A.Qty,isnull(A.Komisi,0) as Komisi,(A.Qty*isnull(A.Komisi,0)) as Total'
             +' FROM ARTrPenjualandt A INNER JOIN INMsItem B ON A.ItemId=B.ItemId'
             +' WHERE A.SaleId=:SaleId'
             +' UNION ALL '
             +' SELECT distinct A.ItemId,B.ItemName,A.Qty,isnull(A.Komisi,0) as Komisi,(A.Qty*isnull(A.Komisi,0)) as Total'
             +' FROM ARTrKonInvPelDt A INNER JOIN INMsItem B ON A.ItemId=B.ItemId'
             +' WHERE A.KonInvPelId=:SaleId2');
          add(' ORDER by A.ItemID ');
          Parameters.ParamByName('SaleId').DataType := ftString;
          Parameters.ParamByName('SaleId2').DataType := ftString;
          Open;
       end;

       if Sender=bbPreview then
          MyReport.Previewmodal
       else
          MyReport.Print;


     finally
        free;
     end;
end;

procedure TfmARRptKomisiSalesDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  dt1.Date := date;
  dt2.date := date;
end;

procedure TfmARRptKomisiSalesDlg.rbSelectClick(Sender: TObject);
begin
  inherited;
  if Sender=rbAll then
  begin
     dbgList.OptionsBehavior := dbgList.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=rbSelect then
  begin
     dbgList.OptionsBehavior := dbgList.OptionsBehavior + [edgoMultiSelect];
     if dbgList.FocusedNode <> nil then
       dbgList.FocusedNode.Selected := TRUE;
  end;
end;

procedure TfmARRptKomisiSalesDlg.bbCancelClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Sales';
       SQLString := ' SELECT SalesName as Nama_Sales ,SalesId as Kode_Sales'
                   +' FROM ARMsSales A '
                   +' ORDER BY SalesID';

       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('SalesID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

end.
