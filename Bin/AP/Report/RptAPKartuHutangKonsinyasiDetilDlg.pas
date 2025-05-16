unit RptAPKartuHutangKonsinyasiDetilDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxEdLib, dxCore, dxButton;

type
  TfmAPRptKartuHutangDetilKonsinyasiDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    dt1: TdxDateEdit;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    dbgList: TdxDBGrid;
    cbxOuts: TCheckBox;
    quActCustID: TStringField;
    quActCustName: TStringField;
    dbgListCustID: TdxDBGridMaskColumn;
    dbgListCustName: TdxDBGridMaskColumn;
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
  fmAPRptKartuHutangDetilKonsinyasiDlg: TfmAPRptKartuHutangDetilKonsinyasiDlg;

implementation

uses StdLv0, QRRptAPKartuHutang, UnitGeneral, QRRptAPKartuHutangDetil,
  QRRptAPKartuHutangKonsinyasiDetil, Search;

{$R *.dfm}

procedure TfmAPRptKartuHutangDetilKonsinyasiDlg.rbAllClick(Sender: TObject);
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

procedure TfmAPRptKartuHutangDetilKonsinyasiDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;        
  dt1.Date:=date;
End;

procedure TfmAPRptKartuHutangDetilKonsinyasiDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
   with TfmAPQRRptKartuHutangKonsinyasiDetil.Create(Self) do
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
       add(' Select Distinct A.CustId, A.CustName,(A.CustId+''-''+A.CustName) as Cust from ARMsCustomer A '
          +' INNER JOIN APTrKonsinyasiInvHd B ON A.CustId=B.CustId '
          +' WHERE CONVERT(varchar(8),B.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''''
          +' AND isnull(B.TTLKS,0)');
         if bCheckced then
         Add(' -isnull((Select isnull(Sum(ValuePayment),0) FROM APTrPaymentKonsHd M INNER JOIN APTrPaymentKonsDt N ON M.PaymentKonsId=N.PaymentKonsId'
            +'  WHERE N.KonsinyasiInvId=B.KonsinyasiInvID AND M.CustId=B.CustId AND CONVERT(varchar(8),M.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0)');

         Add(' <>0 ');
       if rbSelect.Checked then
       Add(' AND A.CustID IN '+SelGrid(quAct,dbgList,'CustID'));
       Add('ORDER By A.CustId');
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
       add(' Select Distinct B.CustId,A.CurrID, A.CurrName,(A.CurrId+''-''+A.CurrName) as Valuta from SAMsValuta A '
          +' INNER JOIN APTrKonsinyasiInvHd B ON A.CurrId=B.CurrId'
          +' WHERE B.CustId=:CustId'
          +' AND CONVERT(varchar(8),B.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''''
          +' AND isnull(B.TTLKS,0)');
      if bCheckced then
         Add(' -isnull((Select isnull(Sum(ValuePayment),0) FROM APTrPaymentKonsHd M INNER JOIN APTrPaymentKonsDt N ON M.PaymentKonsId=N.PaymentKonsId'
            +'  WHERE N.KonsinyasiInvId=B.KonsinyasiInvID AND M.CustId=B.CustId AND CONVERT(varchar(8),M.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0)');
          Add(' <>0 ORDER By A.CurrId');
       Parameters.ParamByName('CustId').DataType := ftString;
       Open;
    End;

    qu003.Open;
    qu004.Open;



    if Sender=bbPreview then
       MyReport.Previewmodal
    else
       MyReport.Print;
  finally
     free;
  end;
end;

procedure TfmAPRptKartuHutangDetilKonsinyasiDlg.bbCancelClick(
  Sender: TObject);
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
