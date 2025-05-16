unit ARRptKartuTunggakPiutangDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxEdLib, dxCore, dxButton;

type
  TfmARRptKartuTunggakPiutangDlg = class(TfmRptDlg)
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
  fmARRptKartuTunggakPiutangDlg: TfmARRptKartuTunggakPiutangDlg;

implementation

uses StdLv0, QRRptAPKartuHutang, UnitGeneral, ARQRRptKartuPiutang,
  ARQRRptKartuTunggakPiutang, Search, MyUnit;

{$R *.dfm}

procedure TfmARRptKartuTunggakPiutangDlg.rbAllClick(Sender: TObject);
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

procedure TfmARRptKartuTunggakPiutangDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  dt1.Date:=date;

end;

procedure TfmARRptKartuTunggakPiutangDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmARQRRptKartuTunggakPiutang.Create(Self) do
  try
    tglDari:=dt1.Date;

    qrlTitle.Caption := laTitle.Caption;
    qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date);

    With qu001,SQL do
    Begin
       Close;Clear;
       Add('SELECT DISTINCT K.CustID,L.CustName,K.CustID+''-''+L.CustName as Cust FROM (SELECT A.CustID,A.Transdate,ISNULL(A.TTLPj,0) as TTLPj,'
          +'ISNULL((SELECT ISNULL(SUM(Price*Qty),0) FROM ARTrReturPenjualanDt F '
          +'INNER JOIN ARTrReturPenjualanHd G  ON F.ReturnId=G.ReturnId WHERE G.FlagRetur=''B'' AND F.SaleId=A.SaleId '
          +'AND CONVERT(varchar(8),G.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0) as Retur,'
          +'ISNULL((SELECT ISNULL(SUM(P.Amount),0) FROM CFTrKKBBDt P INNER JOIN CFTrKKBBHd Q ON P.VoucherID=Q.VoucherID '
          +'WHERE P.Note=A.SaleID AND CONVERT(varchar(8),Q.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND P.RekeningID='''+sDRPj+'''),0) as Bayar '
          +'FROM ARTrPenjualanHd A) as K INNER JOIN ARMsCustomer L ON K.CustID=L.CustID '
          +'WHERE ISNULL(K.TTLPj-K.Retur-K.Bayar,0) <> 0');
       if rbSelect.Checked then
          Add(' AND K.CustID IN '+SelGrid(quAct,dbgList,'CustID'));
       Add(' ORDER BY K.CustID');
       Open;
       if IsEmpty then
       begin
          MsgInfo('No Data !');
          Abort;
       end;
    End;

    With qu002,SQL do
    Begin
       Close;Clear;
       Add('SELECT DISTINCT K.CustID,K.CurrID,L.CurrName,K.CurrID+''-''+L.CurrName as Valuta FROM ('
          +'SELECT A.CustID,A.CurrID,ISNULL(A.TTLPj,0) as TTLPj,ISNULL((SELECT ISNULL(SUM(Price*Qty),0) '
          +'FROM ARTrReturPenjualanDt F INNER JOIN ARTrReturPenjualanHd G  ON F.ReturnId=G.ReturnId WHERE G.FlagRetur=''B'' AND F.SaleId=A.SaleId AND '
          +'CONVERT(varchar(8),G.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0) as Retur,'
          +'ISNULL((SELECT ISNULL(SUM(P.Amount),0) FROM CFTrKKBBdt P INNER JOIN CFTrKKBBHD Q ON P.VoucherID=Q.VoucherID '
          +'WHERE P.note=A.SaleID AND CONVERT(varchar(8),Q.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND P.RekeningID='''+sDRPj+'''),0) as Bayar '
          +'FROM ARTrPenjualanHd A) as K INNER JOIN SAMsValuta L ON K.CurrID=L.CurrID '
          +'WHERE K.CustID=:CustID AND ISNULL(K.TTLPj-K.Retur-K.Bayar,0) <> 0');
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

procedure TfmARRptKartuTunggakPiutangDlg.bbCancelClick(Sender: TObject);
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
