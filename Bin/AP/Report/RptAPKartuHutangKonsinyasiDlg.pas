unit RptAPKartuHutangKonsinyasiDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxEdLib, dxCore, dxButton;

type
  TfmAPRptKartuHutangKonsinyasiDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    dbgList: TdxDBGrid;
    dt1: TdxDateEdit;
    quActCustID: TStringField;
    quActCustName: TStringField;
    dbgListCustID: TdxDBGridMaskColumn;
    dbgListCustName: TdxDBGridMaskColumn;
    bbCancel: TdxButton;
    cbxOuts: TCheckBox;
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
  fmAPRptKartuHutangKonsinyasiDlg: TfmAPRptKartuHutangKonsinyasiDlg;

implementation

uses StdLv0, QRRptAPKartuHutangKonsinyasi, UnitGeneral, Search;

{$R *.dfm}

procedure TfmAPRptKartuHutangKonsinyasiDlg.rbAllClick(Sender: TObject);
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

procedure TfmAPRptKartuHutangKonsinyasiDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  dt1.Date:=date;
end;

procedure TfmAPRptKartuHutangKonsinyasiDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmApQRRptKartuHutangKonsinyasi.Create(Self) do
  try
    tglDari:=dt1.Date;
    qrlTitle.Caption := laTitle.Caption;
    qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date);

    if cbxOuts.Checked then
      bCheckced := True
    else
      bCheckced := False;

    With qu001,sql do
    Begin
       Close;Clear;
       add(' SELECT DISTINCT A.CustID, A.CustName,(A.CustId+''-''+A.CustName) as Cust from ARMsCustomer A'
          +' INNER JOIN APTrKonsinyasiInvHd B ON A.CustId=B.CustId '
          +' WHERE CONVERT(varchar(8),B.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''');
       if bCheckced then
       Add(' AND ISNULL(B.TTLKs,0) '
          +' -ISNULL((SELECT ISNULL(SUM(Price*Qty),0) FROM APTrReturnDt F INNER JOIN APTrReturnHd G '
          +' ON F.ReturnId=G.ReturnId WHERE G.FlagRetur=''B'' AND F.purchaseId=B.KonsinyasiInvId '
          +' AND G.SuppId=B.CustId AND CONVERT(varchar(8),G.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+'''),0)'
          +' - (SELECT ISNULL(SUM(L.ValuePayment),0)'
          +' FROM APTrPaymentKonsDt L INNER JOIN APTrPaymentKonsHd H ON L.PaymentKonsID=H.PaymentKonsID '
          +' WHERE L.KonsinyasiInvID = B.KonsinyasiInvID AND H.CustId=B.CustId'
          +' AND CONVERT(varchar(8),H.Transdate,112) <='''+FormatDateTime('yyyyMMdd',tglDari)+''') <>0');
       if rbSelect.Checked then
       Add(' AND A.CustID IN '+SelGrid(quAct,dbgList,'CustID'));
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
       add(' SELECT DISTINCT B.CustId,A.CurrID, A.CurrName,(A.CurrId+''-''+A.CurrName) as Valuta from SAMsValuta A'
          +' INNER JOIN APTrKonsinyasiInvHd B ON A.CurrId=B.CurrId'
          +' WHERE B.CustId=:CustId'
          +' AND CONVERT(varchar(8),B.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''');
       if bCheckced then
       Add(' AND ISNULL(B.TTLKs,0) '
          +' -ISNULL((SELECT ISNULL(SUM(Price*Qty),0) FROM APTrReturnDt F INNER JOIN APTrReturnHd G '
          +' ON F.ReturnId=G.ReturnId WHERE G.FlagRetur=''B'' AND F.PurchaseID=B.KonsinyasiInvID AND CONVERT(varchar(8),G.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''''
          +' ),0)-(SELECT ISNULL(SUM(L.ValuePayment),0)'
          +' FROM APTrPaymentKonsDt L INNER JOIN APTrPaymentKonsHd Q ON L.PaymentKonsID=Q.PaymentKonsID '
          +' where L.KonsinyasiInvID = B.KonsinyasiInvID '
          +' AND CONVERT(varchar(8),Q.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''') <>0');
       Parameters.ParamByName('CustId').DataType := ftString;
       Open;
    End;

    qu003.Open;
    qu004.Open;
    if Sender=bbPreview then
       MyReport.PreviewModal
    else
       MyReport.Print;
  finally
     free;
  end;
end;

procedure TfmAPRptKartuHutangKonsinyasiDlg.bbCancelClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Supplier';
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
