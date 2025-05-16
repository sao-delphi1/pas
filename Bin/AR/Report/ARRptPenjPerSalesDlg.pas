unit ARRptPenjPerSalesDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib, dxTL, dxDBCtrl, dxDBGrid, dxCore, dxButton;

type
  TfmARRptPenjPerSalesDlg = class(TfmRptDlg)
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
    procedure RG1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARRptPenjPerSalesDlg: TfmARRptPenjPerSalesDlg;

implementation

uses INQRRptAdjusment, UnitGeneral,  
  StdLv0, APQRRptPembPerBrg, APQRRptPembPerSupp, ARQRRptPenjPerCust,
  ARQRRptPenjPerSales, Search, RptLv4, RptLv2, RptLv3, RptLv0, UnitDate;

{$R *.dfm}

procedure TfmARRptPenjPerSalesDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  if RG1.ItemIndex = 0 then
  begin
  with TfmARQRRptPenjPerSales.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);
       TanggalDari := dt1.Date; TanggalSampai := dt2.Date;
       with qu001,SQL do
       begin
           Close;Clear;
           add('SELECT DISTINCT K.SalesID,K.SalesID+'' - ''+L.SalesName as Sales FROM ('
              +'SELECT SalesID,Transdate FROM ARTrPenjualanHD UNION ALL SELECT SalesID,Transdate FROM ARTrKonInvPelHD) as K '
              +'INNER JOIN ARMsSales L ON K.SalesID=L.SalesID WHERE '
              +'CONVERT(VARCHAR(8),K.TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
           if rbSelect.Checked then
            Add(' AND K.SalesId IN '+SelGrid(quAct,dbgList,'SalesID'));
           add(' ORDER BY K.SalesId');
           Open;
          if IsEmpty then
          begin
             MsgInfo('No Data !');
             Abort;
          end;
       end;
       with qu002,SQL do
       begin
          Close;Clear;
          Add('SELECT K.SaleID+'' (''+K.FgTrans+'')'' as Invoice, K.SaleID,K.SalesID,CONVERT(VARCHAR(10),K.Transdate,103) as Tgl,K.CurrID,K.SOID,K.ItemID,L.ItemName,K.Qty,K.Price, '
             +'K.Qty*K.Price as Total,K.Rate as RJual FROM (SELECT DISTINCT A.FgTrans,A.SaleID,A.SalesID,A.Transdate,A.CurrID,A.SOID,B.ItemID,B.Qty,B.Price,A.Rate '
             +'FROM ARTrPenjualanHD A INNER JOIN ARTrPenjualanDT B ON A.SaleID=B.SaleID '//WHERE TTLPj=0 OR A.SaleID IN (SELECT SaleID FROM ARTrPiutangDT) '
             +'UNION ALL SELECT DISTINCT ''0'',A.KonInvPelID,A.SalesID,A.Transdate,A.CurrID,'''',B.ItemID,B.Qty,B.Price,A.Rate FROM ARTrKonInvPelHD A '
             +'INNER JOIN ARTrKonInvPelDT B ON A.KonInvPelID=B.KonInvPelID '//WHERE TTLKj=0 OR A.KonInvPelID IN (SELECT KonInvPelID FROM ARTrKonPiutangDT)'
             +') as K INNER JOIN INMsItem L ON K.ItemID=L.ItemID WHERE  K.SalesID=:SalesID '
             +'AND CONVERT(VARCHAR(8),K.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',TanggalDari)+''' AND '''+FormatDateTime('yyyyMMdd',TanggalSampai)+''' ');
          Add('ORDER BY CONVERT(VARCHAR(8),K.Transdate,112),K.SaleID');
          Parameters.ParamByName('SalesID').DataType := ftString;
          Open;
       end;
       with qu003,SQL do
       begin
          Close;Clear;
          add(' SELECT DISTINCT K.SNID,K.Status,K.Qty FROM '
             +'(SELECT A.SaleID,A.SNID,A.ItemID,0 as Status,1 as Qty FROM ARTrPenjualanSN A INNER JOIN ARTrPenjualanDt B ON A.SaleID=B.SaleID '
             +'WHERE B.FlagRetur=''T''UNION ALL SELECT KonInvPelID,SNID,ItemID,0,1 FROM ARTrKonInvPelDtSN UNION ALL '
             +'SELECT SaleID,PurchaseID,ItemID,1,Qty FROM ARTrPenjualanCost) as K '
             +'WHERE K.SaleID=:SaleID AND K.ItemID=:ItemID');
          add(' ORDER by K.SNID ');
          Parameters.ParamByName('SaleId').DataType := ftString;
          Parameters.ParamByName('ItemID').DataType := ftString;
          Open;
       end;

       if rbJenis.ItemIndex = 1 then
       begin
         bndCH.Height := 24; QRLabel2.Enabled := False; QRLabel4.Enabled := False; QRLabel5.Enabled := False;
         QRLabel19.Enabled := False; QRLabel20.Enabled := False; QRLabel10.Enabled := False; GroupFooterBand1.Color := clSilver;
         QRLabel25.Caption := 'Kontribusi Omzet Penjualan (IDR)'; QRLabel8.Caption := 'Perkiraan Kontribusi Profit (IDR)';
         bnd001.Enabled := False; bnd002.Height := 0; SummaryBand1.Enabled := False; GroupFooterBand1.Height := 25;
         qlbOmzet.Enabled := True; qlbSales.Enabled := True; QRLabel29.Enabled := False; QRLabel11.Enabled := False;
         QRLabel12.Enabled := False; QRLabel41.Enabled := False; QRLabel17.Enabled := False; QRLabel18.Enabled := False;
         QRExpr1.Enabled := False; QRLabel43.Top := 4; QRLabel43.Left := 880; QRLabel3.Caption := 'Sales'; BndDetail.Height := 0;
       end;

       if Sender=bbPreview then
          MyReport.Previewmodal
       else
          MyReport.Print;
     finally
        free;
     end;
  end else
  begin
  end;
end;

procedure TfmARRptPenjPerSalesDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  dt1.Date := EncodeDate(GetYear(Date),GetMonth(Date),1);
  dt2.date := date;
end;

procedure TfmARRptPenjPerSalesDlg.rbSelectClick(Sender: TObject);
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

procedure TfmARRptPenjPerSalesDlg.bbCancelClick(Sender: TObject);
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

procedure TfmARRptPenjPerSalesDlg.RG1Click(Sender: TObject);
begin
  inherited;
  if RG1.ItemIndex = 0 then
     rbJenis.Visible := TRUE
  else
     rbJenis.Visible := FALSE;
end;

end.
