unit CFRptKeuanganDetDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls, DB,
  ADODB, Buttons, ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxCore, dxButton;

type
  TfmCFRptKeuanganDetDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    dbgList: TdxDBGrid;
    dbgListRekeningId: TdxDBGridMaskColumn;
    dbgListRekeningName: TdxDBGridMaskColumn;
    quMain: TADOQuery;
    dsMain: TDataSource;
    quMainBankId: TStringField;
    quMainBankName: TStringField;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    bbCancel: TdxButton;
    quActGroupRekID: TStringField;
    quActGroupRekName: TStringField;
    cbxOuts: TCheckBox;
    procedure bbPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbSelectClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure dt1KeyPress(Sender: TObject; var Key: Char);
    procedure dt2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCFRptKeuanganDetDlg: TfmCFRptKeuanganDetDlg;

implementation

uses CFQRRptKeuanganDlg, UnitGeneral, StdLv0, CFQRRptKeuanganDet, UnitDate,
  Search, MyUnit;

{$R *.dfm}

procedure TfmCFRptKeuanganDetDlg.bbPreviewClick(Sender: TObject);
var Ulangan : string;
begin
  inherited;
  if FormatDateTime('yyyyMMdd',dt1.Date) > FormatDateTime('yyyyMMdd',dt2.Date) then
  begin
    pesan('Tanggal dari harus lebih kecil dari tanggal sampai');
    dt1.SetFocus;
    Abort;
  end;
  with TfmCFQRRptKeuanganDet.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);
       if cbxOuts.Checked then
       begin
         QRSubDetail1.Enabled := True;
         BndDetail.Color := $00C7C7C7;
       end else
       begin
         QRSubDetail1.Enabled := False;
         BndDetail.Color := clWhite;
       end;

     Ulangan := '';
     Ulangan := Ulangan + 'SELECT A.RekeningID,B.Transdate,A.Jenis,ISNULL(A.Amount,0) as Amount FROM CFTrKKBBDt A ';
     Ulangan := Ulangan + 'INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID AND B.FgPayment=''T'' UNION ALL ';

     Ulangan := Ulangan + 'SELECT RekeningK,Transdate,''K'',ISNULL(CASE WHEN FgForm=''AR'' THEN StPj-DP ELSE DP END,0) FROM ARTrPenjualanHd UNION ALL ';
     Ulangan := Ulangan + 'SELECT RekeningU,Transdate,''D'',ISNULL(TTLPj,0) FROM ARTrPenjualanHd UNION ALL ';
     Ulangan := Ulangan + 'SELECT RekeningP,Transdate,''K'',ISNULL(CASE WHEN FgTax=''T'' THEN 0 ELSE PPN END,0) FROM ARTrPenjualanHd UNION ALL ';
     Ulangan := Ulangan + 'SELECT RekHPP,Transdate,''D'',ISNULL(HPP,0) FROM ARTrPenjualanHd UNION ALL ';
     Ulangan := Ulangan + 'SELECT RekPersediaan,Transdate,''K'',ISNULL(HPP,0) FROM ARTrPenjualanHd UNION ALL ';

     Ulangan := Ulangan + 'SELECT RekeningU,Transdate,''K'',ISNULL(TTLPb,0) FROM APTrPurchaseHd UNION ALL ';
     Ulangan := Ulangan + 'SELECT RekeningK,Transdate,''D'',ISNULL(StPb,0) FROM APTrPurchaseHd UNION ALL ';
     Ulangan := Ulangan + 'SELECT RekeningP,Transdate,''D'',ISNULL(CASE WHEN FgTax=''T'' THEN 0 ELSE PPN END,0) FROM APTrPurchaseHd UNION ALL ';
     Ulangan := Ulangan + 'SELECT RekPersediaan,Transdate,''D'',ISNULL(StPb,0) FROM APTrPurchaseHd UNION ALL ';
     Ulangan := Ulangan + 'SELECT RekHPP,Transdate,''K'',ISNULL(StPb,0) FROM APTrPurchaseHd UNION ALL ';

     Ulangan := Ulangan + 'SELECT B.RekeningID,A.Transdate,CASE WHEN A.FlagKKBB IN (''BM'',''ARB'',''ARC'') THEN ''D'' ';
     Ulangan := Ulangan + 'WHEN A.FlagKKBB IN (''BK'',''APB'',''APC'') THEN ''K'' ';
     Ulangan := Ulangan + 'WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''BM'',''ARB'',''ARC'') THEN ''D'' ';
     Ulangan := Ulangan + 'WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''BK'',''APB'',''APC'') THEN ''K'' END, ';
     Ulangan := Ulangan + 'ISNULL(CASE WHEN A.FlagKKBB IN (''BM'',''ARB'',''ARC'') THEN JumlahD ';
     Ulangan := Ulangan + 'WHEN A.FlagKKBB IN (''BK'',''APB'',''APC'') THEN JumlahK ';
     Ulangan := Ulangan + 'WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''BM'',''ARB'',''ARC'') THEN JumlahD ';
     Ulangan := Ulangan + 'WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''BK'',''APB'',''APC'') THEN JumlahK END,0) ';
     Ulangan := Ulangan + 'FROM CFTrKKBBHd A INNER JOIN CFMsBank B ON A.BankID=B.BankID WHERE A.FlagKKBB IN (''BM'',''BK'',''APB'',''APC'',''ARB'',''ARC'') AND A.FgPayment=''T'' UNION ALL ';

     Ulangan := Ulangan + 'SELECT '''+sdrKas+''',A.Transdate,CASE WHEN A.FlagKKBB=''KM'' THEN ''D'' ELSE ''K'' END, ';
     Ulangan := Ulangan + 'ISNULL(CASE WHEN A.FlagKKBB IN (''KM'',''ARK'') THEN JumlahD WHEN A.FlagKKBB IN (''KK'',''APK'') THEN JumlahK END,0) FROM CFTrKKBBHd A ';
     Ulangan := Ulangan + 'WHERE A.FlagKKBB IN (''KM'',''KK'',''APK'',''ARK'') AND A.FgPayment=''T'' ';

     with qu001,SQL do
     Begin
       Close;Clear;
       Add( 'SELECT DISTINCT K.FgTipe,K.GroupRekID,K.GroupRekName,K.BGDebit,K.BGKredit,K.TGDebit,K.TGKredit,K.EGDebit,K.EGKredit FROM ( '
           +'SELECT DISTINCT ''A'' as FgTipe,C.GroupRekID,D.GroupRekName, ');

       Add('ISNULL((SELECT SUM(K.Amount) FROM ( '
           +Ulangan
           +') as K INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID '
           +'WHERE CONVERT(VARCHAR(8),K.Transdate,112) < '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND L.GroupRekID=C.GroupRekID AND K.Jenis=''D''),0) as BGDebit, ');

       Add('ISNULL((SELECT SUM(K.Amount) FROM ( '
           +Ulangan
           +') as K INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID '
           +'WHERE CONVERT(VARCHAR(8),K.Transdate,112) < '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND L.GroupRekID=C.GroupRekID AND K.Jenis=''K''),0) as BGKredit, ');

       Add('ISNULL((SELECT SUM(K.Amount) FROM ( '
           +Ulangan
           +') as K INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID '
           +'WHERE CONVERT(VARCHAR(8),K.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' '
           +'AND L.GroupRekID=C.GroupRekID AND K.Jenis=''D''),0) as TGDebit, ');

       Add('ISNULL((SELECT SUM(K.Amount) FROM ( '
           +Ulangan
           +') as K INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID '
           +'WHERE CONVERT(VARCHAR(8),K.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' '
           +'AND L.GroupRekID=C.GroupRekID AND K.Jenis=''K''),0) as TGKredit, ');

       Add('ISNULL((SELECT SUM(K.Amount) FROM ( '
           +Ulangan
           +') as K INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID '
           +'WHERE CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' AND L.GroupRekID=C.GroupRekID AND K.Jenis=''D''),0) as EGDebit, ');

       Add('ISNULL((SELECT SUM(K.Amount) FROM ( '
           +Ulangan
           +') as K INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID '
           +'WHERE CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' AND L.GroupRekID=C.GroupRekID AND K.Jenis=''K''),0) as EGKredit ');

       Add('FROM CFMsRekening C INNER JOIN CFMsGroupRek D ON C.GroupRekID=D.GroupRekID ');

       Add(') as K WHERE K.BGDebit+K.BGKredit+K.TGDebit+K.TGKredit+K.EGDebit+K.EGKredit <> 0 ');
       if rbSelect.Checked then
       Add(' AND K.GroupRekID IN '+SelGrid(quAct,dbgList,'GroupRekID'));
       Add(' ORDER BY K.GroupRekID');
       //showmessage(sql.Text);
       Open;
     End;

     With qu002,SQL do
     Begin
        Close;Clear;
        Add('SELECT K.* FROM (SELECT DISTINCT ''A'' as FgTipe,C.RekeningID,C.RekeningName,C.GroupRekID,');

        Add('ISNULL((SELECT SUM(K.Amount) FROM ( '
           +Ulangan
           +') as K INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID '
           +'WHERE CONVERT(VARCHAR(8),K.Transdate,112) < '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' '
           +'AND L.GroupRekID=C.GroupRekID AND K.RekeningID=C.RekeningID AND K.Jenis=''D''),0) as BDebit,');

        Add('ISNULL((SELECT SUM(K.Amount) FROM ( '
           +Ulangan
           +') as K INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID '
           +'WHERE CONVERT(VARCHAR(8),K.Transdate,112) < '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND L.GroupRekID=C.GroupRekID '
           +'AND K.RekeningID=C.RekeningID AND K.Jenis=''K''),0) as BKredit,');

        Add('ISNULL((SELECT SUM(K.Amount) FROM ( '
           +Ulangan
           +') as K INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID '
           +'WHERE CONVERT(VARCHAR(8),K.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' '
           +'AND L.GroupRekID=C.GroupRekID AND K.RekeningID=C.RekeningID AND K.Jenis=''D''),0) as TDebit,');

        Add('ISNULL((SELECT SUM(K.Amount) FROM ( '
           +Ulangan
           +') as K INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID '
           +'WHERE CONVERT(VARCHAR(8),K.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' '
           +'AND L.GroupRekID=C.GroupRekID AND K.RekeningID=C.RekeningID AND K.Jenis=''K''),0) as TKredit,');

        Add('ISNULL((SELECT SUM(K.Amount) FROM ( '
           +Ulangan
           +') as K INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID '
           +'WHERE CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' '
           +'AND L.GroupRekID=C.GroupRekID AND K.RekeningID=C.RekeningID AND K.Jenis=''D''),0) as EDebit,');

        Add('ISNULL((SELECT SUM(K.Amount) FROM ( '
           +Ulangan
           +') as K INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID '
           +'WHERE CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' '
           +'AND L.GroupRekID=C.GroupRekID AND K.RekeningID=C.RekeningID AND K.Jenis=''K''),0) as EKredit ');

        Add('FROM CFMsRekening C '
           +') as K '
           +'WHERE K.GroupRekID=:GroupRekID AND K.BDebit+K.BKredit+TDebit+TKredit+EDebit+EKredit <> 0 ORDER BY K.RekeningID ');
        Parameters.ParamByName('GroupRekID').DataType := ftString;
        //showmessage(sql.Text);
        Open;
     End;

     if Sender=bbPreview then
          MyReport.Previewmodal
       else
          MyReport.Print;
     finally
        free;
     end;
end;

procedure TfmCFRptKeuanganDetDlg.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date := EncodeDate(GetYear(Date),GetMonth(Date),1);
  dt2.Date := date;
  quAct.Open;
end;

procedure TfmCFRptKeuanganDetDlg.rbSelectClick(Sender: TObject);
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

procedure TfmCFRptKeuanganDetDlg.bbCancelClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Group Rekening';
       SQLString := 'SELECT GroupRekName as Group_Rekening,GroupRekID as Kode_Group FROM CFMsGroupRek ORDER BY GroupRekID';
       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('GroupRekID',Res[1],[]);
       end;
  finally
    free;
  end;
end;

procedure TfmCFRptKeuanganDetDlg.dt1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then dt2.SetFocus;
end;

procedure TfmCFRptKeuanganDetDlg.dt2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then bbPreview.SetFocus;
end;

end.
