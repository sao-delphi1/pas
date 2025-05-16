unit ARRptKartuTunggakPiutangKonsDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxEdLib, dxCore, dxButton;

type
  TfmARRptKartuTunggakPiutangKonsDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    dbgList: TdxDBGrid;
    dbgListCust: TdxDBGridMaskColumn;
    dbgListCustName: TdxDBGridMaskColumn;
    dt1: TdxDateEdit;
    bbCancel: TdxButton;
    procedure rbAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARRptKartuTunggakPiutangKonsDlg: TfmARRptKartuTunggakPiutangKonsDlg;

implementation

uses StdLv0, QRRptAPKartuHutang, UnitGeneral, ARQRRptKartuPiutang,
  ARQRRptKartuTunggakPiutang, ARQRRptKartuTunggakPiutangKons, Search;

{$R *.dfm}

procedure TfmARRptKartuTunggakPiutangKonsDlg.rbAllClick(Sender: TObject);
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

procedure TfmARRptKartuTunggakPiutangKonsDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  dt1.Date:=date;

end;

procedure TfmARRptKartuTunggakPiutangKonsDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmARQRRptKartuTunggakPiutangKons.Create(Self) do
  try
    tglDari:=dt1.Date;

    qrlTitle.Caption := laTitle.Caption;
    qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date);

    With qu001,sql do
    Begin
       Close;Clear;
       add(' Select Distinct A.CustID, A.CustName,(A.CustId+''-''+A.CustName) as Cust'
          +' from ARMsCustomer A INNER JOIN ARTrKonInvPelHd B ON A.CustId=B.CustId '
          +' WHERE CONVERT(varchar(8),B.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''''
          +' AND isnull(B.TTLKJ,0)');
       Add(' -isnull((Select isnull(Sum(ValuePayment),0) FROM ARTrKonPiutangDt M INNER JOIN ARTrKonPiutangHd N ON M.KonPiutangId=N.KonPiutangId'
          +'  WHERE M.KonInvPelID=B.KonInvPelID AND CONVERT(varchar(8),N.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0)');
       Add(' <>0 ');
       if rbSelect.Checked then
       Add(' AND A.CustID IN '+SelGrid(quAct,dbgList,'CustID'));
       Add(' ORDER BY A.CustID');
       Open;
       if IsEmpty then
       begin
          MsgInfo('No Data !');
          Abort;
       end;
    End;

    With qu002,sql do
    Begin
       Close;Clear;
       add(' Select Distinct B.CustId,A.CurrID, A.CurrName,(A.CurrId+''-''+A.CurrName) as Valuta '
          +' from SAMsValuta A INNER JOIN ARTrKonInvPelHd B ON A.CurrId=B.CurrId'
          +' WHERE B.CustId=:CustId'
          +' AND CONVERT(varchar(8),B.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''''
          +' AND isnull(B.TTLKJ,0)');
       Add(' -isnull((Select isnull(Sum(ValuePayment),0) FROM ARTrKonPiutangDt M INNER JOIN ARTrKonPiutangHd N ON M.KonPiutangId=N.KonPiutangId'
          +'  WHERE M.KonInvPelID=B.KonInvPelID AND CONVERT(varchar(8),N.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0)');
        Add(' <>0 ORDER BY A.CurrID');
       Parameters.ParamByName('CustId').DataType := ftString;
       Open;
    End;

    qu003.Open;

    if Sender=bbPreview then
       MyReport.PreviewModal
    else
       MyReport.Print;
  finally
     free;
  end;
end;

procedure TfmARRptKartuTunggakPiutangKonsDlg.bbCancelClick(
  Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Pelanggan';
       SQLString := ' SELECT CustName as Nama_Pelanggan ,CustId as Kode_Pelanggan'
                   +' FROM ARMsCustomer A '
                   +' ORDER BY CustID';

       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('CustID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

end.
