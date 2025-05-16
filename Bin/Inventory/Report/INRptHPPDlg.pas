unit INRptHPPDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib, ActnList;

type
  TfmINRptHppDlg = class(TfmRptDlg)
    GroupBox2: TGroupBox;
    dxDateEdit1: TdxDateEdit;
    dxTahun: TdxSpinEdit;
    dxBulan: TdxImageEdit;
    GroupBox1: TGroupBox;
    dt1: TdxDateEdit;
    ActionList: TActionList;
    ActPrint: TAction;
    ActSearch: TAction;
    procedure FormShow(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure dxBulanKeyPress(Sender: TObject; var Key: Char);
    procedure dxTahunKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Status : string;
  end;

var
  fmINRptHppDlg: TfmINRptHppDlg;

implementation

uses UnitGeneral, CFQRRptLabaRugi, unitDate, CFQRRptBalanceSheet, MyUnit;

{$R *.dfm}

procedure TfmINRptHppDlg.FormShow(Sender: TObject);
begin
  inherited;
  if Status = 'Neraca' then
    laTitle.Caption := 'Laporan Neraca';

  if Status = 'RugiLaba' then
    laTitle.Caption := 'Laporan laba Rugi';

  if Status = 'BalanceSheet' then
  begin
    laTitle.Caption := 'Laporan Balance Sheet';
    ClientHeight := 200;
  end;
  
  dxTahun.Text := FormatDateTime('YYYY',Date);
  dxBulan.Text := FormatDateTime('MM',Date);
  dxBulan.SetFocus;
  dt1.Date := Date;
end;

procedure TfmINRptHppDlg.bbPreviewClick(Sender: TObject);
var PeriodeLap,Periode,UlanganA : string;
var PrdSampai,PrdSebelum : string;
begin
  inherited;
  if dxBulan.Text = '01' then
  begin
    PeriodeLap := 'January';
    Periode := dxTahun.Text+'0131';
  end;
  if dxBulan.Text = '02' then
  begin
    PeriodeLap := 'February';
    Periode := dxTahun.Text+'0229';
  end;
  if dxBulan.Text = '03' then
  begin
    PeriodeLap := 'Maret';
    Periode := dxTahun.Text+'0331';
  end;
  if dxBulan.Text = '04' then
  begin
    PeriodeLap := 'April';
    Periode := dxTahun.Text+'0430';
  end;
  if dxBulan.Text = '05' then
  begin
    PeriodeLap := 'Mei';
    Periode := dxTahun.Text+'0531';
  end;
  if dxBulan.Text = '06' then
  begin
    PeriodeLap := 'Juni';
    Periode := dxTahun.Text+'0630';
  end;
  if dxBulan.Text = '07' then
  begin
    PeriodeLap := 'July';
    Periode := dxTahun.Text+'0731';
  end;
  if dxBulan.Text = '08' then
  begin
    PeriodeLap := 'Agustus';
    Periode := dxTahun.Text+'0831';
  end;
  if dxBulan.Text = '09' then
  begin
    PeriodeLap := 'September';
    Periode := dxTahun.Text+'0930';
  end;
  if dxBulan.Text = '10' then
  begin
    PeriodeLap := 'Oktober';
    Periode := dxTahun.Text+'1031';
  end;
  if dxBulan.Text = '11' then
  begin
    PeriodeLap := 'November';
    Periode := dxTahun.Text+'1130';
  end;
  if dxBulan.Text = '12' then
  begin
    PeriodeLap := 'Desember';
    Periode := dxTahun.Text+'1231';
  end;
  PrdSampai := dxTahun.Text+dxBulan.Text+'31';
  PrdSebelum := dxTahun.Text+dxBulan.Text+'01';

  if Status = 'RugiLaba' then
  begin
    with TfmCFQrRptLabaRugi.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode '+PeriodeLap +' '+ dxTahun.Text;
       dari := dxTahun.Text+dxBulan.Text+'01';
       sampai := dxTahun.Text+dxBulan.Text+'31';


       with qu001,SQL do
       begin
         Close;Clear;
         Add('SELECT DISTINCT Urut as Kode,'
            +'CASE WHEN Urut=1 THEN ''Pendapatan Usaha'' '
            +'     WHEN Urut=2 THEN ''Harga Pokok Penjualan'' '
            +'     WHEN Urut=3 THEN ''Biaya Hpp'' '
            +'     WHEN Urut=4 THEN ''BIAYA OPERASIONAL'' '
            +'     WHEN Urut=5 THEN ''Pendapatan Lain-lain'' ELSE ''Beban Lain-lain'' END as Komponen '
            +'FROM CFMsGroupRek WHERE urut IN (1,2,3,4,5,6) ORDER BY Urut');
         Open;
       end;

       with qu002,SQL do
       begin
         Close;Clear;
         add('SELECT K.RekeningID as GroupRekID,K.RekeningName as GroupRekName,K.Jumlah,K.Kode FROM ('
            +'SELECT DISTINCT A.RekeningID,A.RekeningName,ISNULL((SELECT SUM(CASE WHEN X.Jenis=''K'' THEN X.Amount ELSE X.Amount*-1 END) '
            +'FROM CFTrKKBBDt X INNER JOIN CFTrKKBBHd Y ON X.VoucherID=Y.VoucherID '
            +'WHERE CONVERT(VARCHAR(8),Y.Transdate,112) <= '''+sampai+''' AND X.RekeningID=A.RekeningID),0) as Jumlah,B.Urut as Kode '
            +'FROM CFMsRekening A INNER JOIN CFMsGroupRek B ON A.GroupRekID=B.GroupRekID) as K WHERE K.Kode=:Kode AND K.Jumlah<>0 ORDER BY K.RekeningID');
         Parameters.ParamByName('Kode').DataType := ftString;
         Open;
       end;

       if Sender=bbPrint then
          MyReport.Print
       else
          MyReport.PreviewModal;
     finally
        free;
     end;
   end else
   begin
    UlanganA := 'SELECT B.RekeningID,A.Transdate,B.Jenis,B.Amount FROM CFTrKKBBHd A '
               +'INNER JOIN CFTrKKBBDt B ON A.VoucherID=B.VoucherID WHERE A.FgPayment=''T'' UNION ALL '
               +'SELECT B.RekeningID,A.Transdate,'
               +'CASE WHEN A.FlagKKBB IN (''BK'',''APB'',''APC'') THEN ''K'' WHEN A.FlagKKBB IN (''BM'',''ARB'',''ARC'') THEN ''D'' ELSE '
               +'(CASE WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''BK'',''APB'',''APC'') THEN ''K'' ELSE ''D'' END) END as Jenis,'
               +'CASE WHEN A.FlagKKBB IN (''BK'',''APB'',''APC'') THEN A.JumlahK WHEN A.FlagKKBB IN (''BM'',''ARB'',''ARC'')  THEN A.JumlahD ELSE '
               +'(CASE WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''BK'',''APB'',''APC'') THEN A.JumlahK ELSE A.JumlahD END) END as Amount '
               +'FROM CFTrKKBBHd A INNER JOIN CFMsBank B ON A.BankID=B.BankID '
               +'WHERE A.FlagKKBB IN (''BK'',''BM'',''APB'',''APC'',''ARB'',''ARC'') AND A.FgPayment=''T'' UNION ALL '
               +'SELECT '''+sDRKas+''',Transdate,'
               +'CASE WHEN FlagKKBB IN (''KK'',''APK'') THEN ''K'' ELSE ''D'' END as Jenis,'
               +'CASE WHEN FlagKKBB IN (''KK'',''APK'') THEN JumlahK ELSE JumlahD END as Amount '
               +'FROM CFTrKKBBHd WHERE FlagKKBB IN (''KK'',''KM'',''APK'',''ARK'') AND FgPayment=''T'' UNION ALL '

               +'SELECT RekeningU,Transdate,''K'',ISNULL(TTLPb,0) FROM APTrPurchaseHd UNION ALL '
               +'SELECT RekeningP,Transdate,''D'',ISNULL(CASE WHEN FgTax=''T'' THEN 0 ELSE PPN END,0) FROM APTrPurchaseHd UNION ALL '
               +'SELECT RekeningK,Transdate,''D'',ISNULL(StPb,0) FROM APTrPurchaseHd UNION ALL '
               +'SELECT RekPersediaan,Transdate,''D'',ISNULL(Stpb,0) FROM APTrPurchaseHd UNION ALL '
               +'SELECT RekHPP,Transdate,''K'',ISNULL(Stpb,0) FROM APTrPurchaseHd UNION ALL '

               +'SELECT RekeningK,Transdate,''K'',ISNULL(CASE WHEN FgForm=''AR'' THEN Stpj-DP ELSE DP END,0) FROM ARTrPenjualanHd UNION ALL '
               +'SELECT RekeningP,Transdate,''K'',ISNULL(CASE WHEN FgTax=''T'' THEN 0 ELSE PPN END,0) FROM ARTrPenjualanHd UNION ALL '
               +'SELECT RekeningU,Transdate,''D'',ISNULL(TTLPj,0) FROM ARTrPenjualanHd UNION ALL '
               +'SELECT RekHPP,Transdate,''D'',ISNULL(HPP,0) FROM ARTrPenjualanHd UNION ALL '
               +'SELECT RekPersediaan,Transdate,''K'',ISNULL(HPP,0) FROM ARTrPenjualanHd ';

    with TfmCFQRRptBalanceSheet.Create(Self) do
    try
      qrlTitle.Caption := 'B A L A N C E  S H E E T';
      qrlPeriode.Caption := 'Periode '+PeriodeLap +' '+ dxTahun.Text;
      with qu001,SQL do
      Begin
        Close;Clear;
        Add('SELECT K.Nama,K.FgTipe FROM ('
           +'SELECT ''AKTIVA'' as Nama,''A'' as FgTipe UNION ALL SELECT ''KEWAJIBAN dan MODAL'',''P'') as K '
           +'ORDER BY K.FgTipe');
        Open;
      End;
      with qu002,SQL do
      begin
        Close;Clear;
        Add('SELECT K.FgTipe,K.SubKomponen,K.Tipe,L.Total as GT FROM (');

        Add('SELECT ''A'' as FgTipe,''CURRENT ASSET'' as SubKomponen,1 as Tipe UNION ALL '
           +'SELECT ''A'',''FIXED ASSET'',6 UNION ALL '
           +'SELECT ''A'',''INTER ACCOUNT'',7 UNION ALL '
           +'SELECT ''P'',''LIABILITIES'',2 UNION ALL '
           +'SELECT ''P'',''CAPITAL'',3) as K INNER JOIN ('
           +'SELECT P.Tipe,P.FgTipe,CASE WHEN P.FgTipe=''A'' THEN SUM(P.Jumlah) ELSE SUM(P.Jumlah*-1) END as Total FROM ( ');

        Add('SELECT Y.GroupRekID,CASE WHEN Y.Tipe IN (4,5) THEN 3 ELSE Y.Tipe END as Tipe,Y.FgTipe,'
           +'ISNULL((SELECT SUM(CASE WHEN X.Jenis=''D'' THEN X.Amount ELSE X.Amount*-1 END) FROM ( '
           +UlanganA
           +') as X '
           +'WHERE X.RekeningID=Y.RekeningID AND CONVERT(VARCHAR(8),X.Transdate,112) <= '''+Periode+'''),0) as Jumlah '
           +'FROM CFMsRekening Y) as P GROUP BY P.Tipe,P.FgTipe) L ON K.Tipe=L.Tipe AND K.FgTipe=L.FgTipe '
           +'WHERE K.FgTipe=:FgTipe ORDER BY K.FgTipe,K.Tipe ');
        //showmessage(sql.text);
        Parameters.ParamByName('FgTipe').DataType := ftString;
        Open;
      end;
      with qu003,SQL do
      begin
        Close;Clear;
        Add('SELECT X.* FROM (SELECT P.GroupRekID,Q.GroupRekName,CASE WHEN P.FgTipe=''A'' THEN SUM(P.Jumlah) ELSE SUM(P.Jumlah*-1) END as Total FROM ('
           +'SELECT CASE WHEN Y.Tipe IN (4,5) THEN '''+sDGK+''' ELSE Y.GroupRekID END as GroupRekID,'
           +'CASE WHEN Y.Tipe IN (4,5) THEN 3 ELSE Y.Tipe END as Tipe,Y.FgTipe,'
           +'ISNULL((SELECT SUM(CASE WHEN X.Jenis=''D'' THEN X.Amount ELSE X.Amount*-1 END) FROM ('
           +UlanganA
           +') as X '
           +'WHERE X.RekeningID=Y.RekeningID AND CONVERT(VARCHAR(8),X.Transdate,112) <= '''+Periode+'''),0) as Jumlah '
           +'FROM CFMsRekening Y) as P INNER JOIN CFMsGroupRek Q ON P.GroupRekID=Q.GroupRekID '
           +'WHERE P.Tipe=:Tipe AND P.FgTipe=:FgTipe '
           +'GROUP BY P.GroupRekID,Q.GroupRekName,P.FgTipe) as X WHERE X.Total <> 0 ORDER BY X.GroupRekID');
        Parameters.ParamByName('Tipe').DataType := ftString;
        Parameters.ParamByName('FgTipe').DataType := ftString;
        Open;
      end;

       if Sender=bbPrint then
          MyReport.Print
       else
          MyReport.PreviewModal;
    finally
      free;
    end;
   end;
end;

procedure TfmINRptHppDlg.dxBulanKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then dxTahun.SetFocus;
end;

procedure TfmINRptHppDlg.dxTahunKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then bbPreview.SetFocus;
end;

end.
