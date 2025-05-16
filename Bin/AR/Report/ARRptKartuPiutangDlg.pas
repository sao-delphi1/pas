unit ARRptKartuPiutangDlg;
                                                       
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxEdLib, dxCore, dxButton;

type
  TfmARRptKartuPiutangDlg = class(TfmRptDlg)
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    dbgList: TdxDBGrid;
    dbgListCust: TdxDBGridMaskColumn;
    dbgListCustName: TdxDBGridMaskColumn;
    bbCancel: TdxButton;
    cbxOuts: TCheckBox;
    GroupBox1: TGroupBox;
    dt1: TdxDateEdit;
    rbJenis: TRadioGroup;
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
  fmARRptKartuPiutangDlg: TfmARRptKartuPiutangDlg;

implementation

uses StdLv0, QRRptAPKartuHutang, UnitGeneral, ARQRRptKartuPiutang, Search,
  MyUnit;

{$R *.dfm}

procedure TfmARRptKartuPiutangDlg.rbAllClick(Sender: TObject);
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

procedure TfmARRptKartuPiutangDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  dt1.Date:=date;
  //dt2.date:=date;
end;

procedure TfmARRptKartuPiutangDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmARQRRptKartuPiutang.Create(Self) do
  try
    tglDari:=dt1.Date;
    qrlTitle.Caption := laTitle.Caption;
    qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date);

    if cbxOuts.Checked then
      bCheckced := True
    else
      bCheckced := False;

    if rbJenis.ItemIndex = 1 then FgTrans := 'D';
    if rbJenis.ItemIndex = 2 then FgTrans := 'U';

    With qu001,SQL do
    Begin
       Close;Clear;
       Add('SELECT DISTINCT K.CustID,L.CustName,K.CustID+''-''+L.CustName as Cust FROM ( '
          +'SELECT A.CustID,A.Transdate,ISNULL(A.TTLPj,0) as Total,'
          +'ISNULL((SELECT ISNULL(SUM(Price*Qty),0) FROM ARTrReturPenjualanDt F INNER JOIN ARTrReturPenjualanHd G  ON F.ReturnId=G.ReturnId '
          +'WHERE G.FlagRetur=''B'' AND F.SaleId=A.SaleId AND '
          +'CONVERT(VARCHAR(8),G.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' ),0) as Retur,'
          +'(SELECT ISNULL(SUM(L.Amount),0) FROM CFTrKKBBDt L INNER JOIN CFTrKKBBHD Q ON L.VoucherID=Q.VoucherID '
          +'WHERE L.Note = A.SaleID  AND CONVERT(VARCHAR(8),Q.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' '
          +'AND L.RekeningID='''+sDRPj+''') as Bayar '
          +'FROM ARTrPenjualanHd A) as K INNER JOIN ARMsCustomer L ON K.CustID=L.CustID '
          +'WHERE CONVERT(VARCHAR(8),K.Transdate,112)<='''+FormatDateTime('yyyyMMdd',dt1.Date)+''' ');
       if bCheckced then
          Add(' AND ISNULL(K.Total-K.Retur-K.Bayar,0)<>0');
       if rbJenis.ItemIndex = 1 then
          Add(' AND L.CustType = ''D'' ');
       if rbJenis.ItemIndex = 2 then
          Add(' AND L.CustType = ''U'' ');
       if rbSelect.Checked then
          Add(' AND K.CustID IN '+SelGrid(quAct,dbgList,'CustID'));
       Add('ORDER BY K.CustID');
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
          +'SELECT A.CustID,A.Transdate,A.CurrID,ISNULL(A.TTLPj,0) as TTLPj,'
          +'ISNULL((SELECT ISNULL(Sum(Price*Qty),0) FROM ARTrReturPenjualanDt F '
          +'INNER JOIN ARTrReturPenjualanHd G ON F.ReturnId=G.ReturnId WHERE G.FlagRetur=''B'' AND F.SaleId=A.SaleId AND '
          +'CONVERT(VARCHAR(8),G.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' ),0) as Retur,'
          +'(SELECT ISNULL(sum(L.Amount),0) FROM CFTrKKBBDT L INNER JOIN CFTRKKBBHd Q ON L.VoucherID=Q.VoucherID '
          +'where L.Note=A.SaleID  AND CONVERT(VARCHAR(8),Q.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' '
          +'AND L.RekeningID='''+sDRPj+''') as Payment '
          +'FROM ARTrPenjualanHd A) as K INNER JOIN SAMsValuta L ON K.CurrID=L.CurrID INNER JOIN ARMsCustomer M ON K.CustID=M.CustID '
          +'WHERE CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND K.CustID=:CustID ');
       if bCheckced then
          Add(' AND ISNULL(K.TTLPj-K.Retur-K.Payment,0) <> 0');
       if rbJenis.ItemIndex = 1 then
          Add(' AND M.CustType = ''D'' ');
       if rbJenis.ItemIndex = 2 then
          Add(' AND M.CustType = ''U'' ');
       Add(' ORDER BY K.CurrID');
       Parameters.ParamByName('CustId').DataType := ftString;
       Open;
    End;
    qu003.Open;

    if Sender=bbPreview then
       MyReport.Previewmodal
    else
       MyReport.Print;
  finally
     free;
  end;
end;

procedure TfmARRptKartuPiutangDlg.bbCancelClick(Sender: TObject);
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
