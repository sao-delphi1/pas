unit CFRptKeuanganDetBankDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls, DB,
  ADODB, Buttons, ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxCore, dxButton;

type
  TfmCFRptKeuanganDetBankDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    rbSelect: TRadioButton;
    rbAll: TRadioButton;
    dbgList: TdxDBGrid;
    quActRekeningId: TStringField;
    quActRekeningName: TStringField;
    dbgListRekeningId: TdxDBGridMaskColumn;
    dbgListRekeningName: TdxDBGridMaskColumn;
    bbCari: TdxButton;
    quMain: TADOQuery;
    dsMain: TDataSource;
    dbgListTipe: TdxDBGrid;
    dbgListTipeTipe: TdxDBGridColumn;
    dbgListTipeNama: TdxDBGridColumn;
    Panel1: TPanel;
    rbAll2: TRadioButton;
    rbSelect2: TRadioButton;
    RgData: TRadioGroup;
    quMainTipe: TStringField;
    quMainNama: TStringField;
    procedure bbPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbSelectClick(Sender: TObject);
    procedure bbCariClick(Sender: TObject);
    procedure rbSelect2Click(Sender: TObject);
    procedure RgDataClick(Sender: TObject);
    procedure dt1KeyPress(Sender: TObject; var Key: Char);
    procedure dt2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Procedure RefreshData;
  public
    { Public declarations }
    Status : string;
  end;

var
  fmCFRptKeuanganDetBankDlg: TfmCFRptKeuanganDetBankDlg;

implementation

uses CFQRRptKeuanganDlg, UnitGeneral, StdLv0, CFQRRptKeuanganDet,
  CFQRRptKeuanganDetBank, UnitDate, Search, MyUnit, ARQRRptPenjPerBrg;

{$R *.dfm}

procedure TfmCFRptKeuanganDetBankDlg.RefreshData;
begin
  if RgData.ItemIndex = 0 then
  begin
    dbgListTipeTipe.Caption := 'Tipe';
    dbgListTipeNama.Caption := 'Nama';
    with quMain,SQL do
    begin
      Close;Clear;
      Add('SELECT DISTINCT Tipe,'
         +'CASE WHEN Tipe=1 THEN ''ASSETS'' '
         +'     WHEN Tipe=2 THEN ''LIABILITIES'' '
         +'     WHEN Tipe=3 THEN ''CAPITAL'' '
         +'     WHEN Tipe=4 THEN ''INCOME'' '
         +'     WHEN Tipe=5 THEN ''EXPENSE'' '
         +'     WHEN Tipe=6 THEN ''FIXED ASSETS'' ELSE ''INTER ACCOUNT'' END as Nama '
         +'FROM CFMsRekening ORDER BY Tipe');
      Open;
    end;
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT DISTINCT RekeningID,RekeningName FROM CFMsRekening WHERE Tipe=:Tipe ORDER BY RekeningID ');
      Open;
    end;
  end else
  begin
    dbgListTipeTipe.Caption := 'Kode  Group';
    dbgListTipeNama.Caption := 'Group Rekening';
    with quMain,SQL do
    begin
      Close;Clear;
      Add('SELECT DISTINCT GroupRekID as Tipe,GroupRekName  as Nama FROM CFMsGroupRek GroupRekID');
      Open;
    end;
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT DISTINCT RekeningID,RekeningName FROM CFMsRekening WHERE GroupRekID=:Tipe ORDER BY RekeningID ');
      Open;
    end;
  end;
end;

procedure TfmCFRptKeuanganDetBankDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  if FormatDateTime('yyyyMMdd',dt1.Date) > FormatDateTime('yyyyMMdd',dt2.Date) then
  begin
    pesan('Tanggal dari harus lebih kecil dari tanggal sampai');
    dt1.SetFocus;
    Abort;
  end;
{  if FormatDateTime('yyyyMMdd',dt1.Date) <= '20151231' then
  begin
    pesan('Tanggal dari harus lebih besar dari 1 January 2016');
    dt1.SetFocus;
    Abort;
  end;      }
  if Status = 'BukuBesar' then
  begin
  with TfmCFQRRptKeuanganDetBank.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);
       TanggalDari := dt1.Date;
       TanggalSampai := dt2.Date;
     with qu001,SQL do
     Begin
       Close;Clear;
       Add('SELECT ''IDR-Rupiah'' as ValutaID ');
       Open;
     End;

     With qu002,SQL do
     Begin
       Close;Clear;
       Add('SELECT DISTINCT K.RekeningID,K.RekeningID+''-''+L.RekeningName as Rek,L.RekeningName,L.FgTipe,L.Tipe FROM ('
          +'SELECT A.RekeningID,B.Transdate FROM CFTrKKBBDt A INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID AND B.FgPayment=''T'' UNION ALL '
          +'SELECT B.RekeningID,A.Transdate FROM CFTrKKBBHd A INNER JOIN CFMsBank B ON A.BankID=B.BankID WHERE A.FgPayment=''T'' UNION ALL '
          +'SELECT '''+sDRKas+''',Transdate FROM CFTrKKBBHd WHERE FgPayment=''T'' AND FlagKKBB IN (''KM'',''KK'',''ARK'',''APK'') UNION ALL '

          +'SELECT RekeningU,Transdate FROM ARTrPenjualanHd UNION ALL '
          +'SELECT RekeningK,Transdate FROM ARTrPenjualanHd UNION ALL '
          +'SELECT RekeningP,Transdate FROM ARTrPenjualanHd UNION ALL '
          +'SELECT RekPersediaan,Transdate FROM ARTrPenjualanHd UNION ALL '
          +'SELECT RekHPP,Transdate FROM ARTrPenjualanHd UNION ALL '

          +'SELECT RekeningU,Transdate FROM APTrPurchaseHd UNION ALL '
          +'SELECT RekeningP,Transdate FROM APTrPurchaseHd UNION ALL '
          +'SELECT RekPersediaan,Transdate FROM APTrPurchaseHd UNION ALL '
          +'SELECT RekHPP,Transdate FROM APTrPurchaseHd UNION ALL '
          +'SELECT RekeningK,Transdate FROM APTrPurchaseHd '

          +') as K '
          +'INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID '
          +'WHERE CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' ');
       if rbSelect2.Checked then
         if RgData.ItemIndex = 0 then
            Add(' AND L.Tipe IN '+SelGrid(quMain,dbgListTipe,'Tipe'))
         else
            Add(' AND L.GroupRekID IN '+SelGrid(quMain,dbgListTipe,'Tipe'));
       if rbSelect.Checked then
          Add(' AND K.RekeningId IN '+SelGrid(quAct,dbgList,'RekeningID'));
       Add('ORDER BY K.RekeningID');
       Open;
       if IsEmpty then
       begin
         MsgInfo('No Data !');
         Abort;
       end;
     End;

     qu003.Open;

     if Sender=bbPreview then
          MyReport.Previewmodal
       else
          MyReport.Print;
     finally
        free;
     end;
  end else
  begin
  with TfmARQRRptPenjPerBrg.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);
       Tanggaldari := dt1.date; TanggalSampai := dt2.date;
       //QRLabel9.Enabled := True; QRDBText11.Enabled := True;QRLabel9.Caption := 'Tgl Cair';
       with qu001,SQL do
       begin
         Close;Clear;
         add('SELECT DISTINCT Actor as ItemID,Actor as Barang '
            +'FROM CFTrKKBBHd WHERE FlagKKBB IN (''PCK'',''BNK'') AND CONVERT(VARCHAR(8),Transdate,112) '
            +'BETWEEN '''+FormatDateTime('yyyyMMdd',Tanggaldari)+''' AND '''+FormatDateTime('yyyyMMdd',TanggalSampai)+''' ');
         if rbSelect.Checked then
           Add('AND Actor IN '+SelGrid(quAct,dbgList,'RekeningID'));
         Add(' ORDER BY Actor');
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
         add('SELECT DISTINCT A.Actor as ItemID,A.VoucherID as SaleID,CONVERT(VARCHAR(10),A.Transdate,103) as Tgl,CONVERT(VARCHAR(10),E.Transdate,103) as TglKirim,'
            +'CASE WHEN A.FlagKKBB=''BNK'' THEN A.VoucherNo ELSE '''' END as SJalan,A.CurrID,ISNULL(D.Amount,0) as Jumlah,'
            +'CASE WHEN A.FlagKKBB=''BNK'' THEN '
            +'  (SELECT C.RekeningName FROM CFMsRekening C WHERE C.RekeningID=D.RekeningID) '
//            +'  (SELECT C.RekeningName FROM CFMsBank B INNER JOIN CFMsRekening C ON B.RekeningID=C.RekeningID WHERE B.BankID=A.BankID) '
            +'ELSE '
            +'  (SELECT C.RekeningName FROM CFMsRekening C WHERE C.RekeningID='''+sDRKas+''') END as CustName,D.Note as Disc,ISNULL(D.Amount,0) as Total '
            +'FROM CFTrKKBBHd A INNER JOIN CFTrKKBBDt D ON A.VoucherID=D.VoucherID '
            +'LEFT JOIN CFTrKKBBHd E ON A.VoucherID=E.IDVoucher AND E.FlagKKBB=''GC'' WHERE A.FlagKKBB IN (''PCK'',''BNK'') '
            +'AND A.Actor=:ItemID AND CONVERT(VARCHAR(8),A.Transdate,112) '
            +'BETWEEN '''+FormatDateTime('yyyyMMdd',Tanggaldari)+''' AND '''+FormatDateTime('yyyyMMdd',TanggalSampai)+''' ');
         Parameters.ParamByName('ItemId').DataType := ftString;
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
end;

procedure TfmCFRptKeuanganDetBankDlg.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date := EncodeDate(GetYear(Date),GetMonth(Date),1);
  dt2.Date := date;
  if Status = 'BukuBesar' then
  begin
{    with quMain,SQL do
    begin
      Close;Clear;
      Add('SELECT DISTINCT Tipe,'
         +'CASE WHEN Tipe=1 THEN ''ASSETS'' '
         +'     WHEN Tipe=2 THEN ''LIABILITIES'' '
         +'     WHEN Tipe=3 THEN ''CAPITAL'' '
         +'     WHEN Tipe=4 THEN ''INCOME'' '
         +'     WHEN Tipe=5 THEN ''EXPENSE'' '
         +'     WHEN Tipe=6 THEN ''FIXED ASSETS'' ELSE ''INTER ACCOUNT'' END as Nama '
         +'FROM CFMsRekening ORDER BY Tipe');
      Open;
    end;
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT DISTINCT RekeningID,RekeningName FROM CFMsRekening WHERE Tipe=:Tipe ORDER BY RekeningID ');
      Open;
    end;  }
    RefreshData;
  end else
  begin
    Panel1.Visible := False;
    dbgListTipe.Visible := False; rbAll.Top := 66; rbSelect.Top := 66; bbCari.Top := 64;
    laTitle.Caption := 'Laporan Harian Rinci'; dbgList.Height := 286;
    dbgListRekeningName.Visible := False; dbgListRekeningId.Caption := 'AUTHOR';
    bbCari.Caption := 'CARI'; RgData.Visible := False;
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT DISTINCT Actor as RekeningID,''-'' as RekeningName FROM CFTrKKBBHd WHERE FlagKKBB IN (''PCK'',''BNK'') ORDER BY Actor');
      Open;
    end;
  end;
end;

procedure TfmCFRptKeuanganDetBankDlg.rbSelectClick(Sender: TObject);
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

procedure TfmCFRptKeuanganDetBankDlg.bbCariClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       if Status = 'BukuBesar' then
       begin
         Title := 'Rekening';
         SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening,'
                     +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                     +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId '
                     +' ORDER BY A.RekeningID';
       end else
       begin
         Title := 'Kode Transaksi';
         SQLString := 'SELECT DISTINCT Actor as Kode_Transaksi '
                     +'FROM CFTrKKBBHd WHERE FlagKKBB IN (''PCK'',''BNK'') '
                     +'AND CONVERT(VARCHAR(8),Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' '
                     +'AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' '
                     +'ORDER BY Actor';
       end;
       if ShowModal = MrOK then
       begin
         if Status = 'BukuBesar' then
           Self.quAct.Locate('RekeningID',Res[1],[])
         else
           Self.quAct.Locate('RekeningID',Res[0],[]);
       end;
  finally
    free;
  end;
end;

procedure TfmCFRptKeuanganDetBankDlg.rbSelect2Click(Sender: TObject);
begin
  inherited;
 if Sender=rbAll2 then
  begin
     dbgListTipe.OptionsBehavior := dbgListTipe.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=rbSelect2 then
  begin
     dbgListTipe.OptionsBehavior := dbgListTipe.OptionsBehavior + [edgoMultiSelect];
     if dbgListTipe.FocusedNode <> nil then
       dbgListTipe.FocusedNode.Selected := TRUE;
  end;
end;

procedure TfmCFRptKeuanganDetBankDlg.RgDataClick(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfmCFRptKeuanganDetBankDlg.dt1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then dt2.SetFocus;
end;

procedure TfmCFRptKeuanganDetBankDlg.dt2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then bbPreview.SetFocus;
end;

end.
