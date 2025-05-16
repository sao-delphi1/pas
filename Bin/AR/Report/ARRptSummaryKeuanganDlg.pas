unit ARRptSummaryKeuanganDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls, DB,
  ADODB, Buttons, ExtCtrls;

type
  TfmRptSummaryKeuangan = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    rbJenis: TRadioGroup;
    procedure bbPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRptSummaryKeuangan: TfmRptSummaryKeuangan;

implementation

uses ARQRRptSummaryKeuangan, ARQRRptDetailSummary;

{$R *.dfm}

procedure TfmRptSummaryKeuangan.bbPreviewClick(Sender: TObject);
begin
  inherited;
  if rbJenis.ItemIndex = 0 then
  begin
    with TfmINQRRptSummaryK.Create(Self) do
       try
         qrlTitle.Caption := laTitle.Caption;
         qrlPeriode.Caption := 'Periode : '+ FormatDateTime('dd MMMM yyyy',dt2.date);

         with qu001,sql do
         Begin
           Close;Clear;
           Add(' Select '
               +' (Select ISNULL(SUM(Amount),0) '
               +'   FROM ALLMoney B Where CONVERT(VARCHAR(8),B.TransDate,112)='''+FormatDateTime('YYYYMMDD',dt2.Date )+''''
               +'   AND B.Fgtrans=''11'' AND B.FgBBKK=''KM'') as ServiceTunai,'
               +' (Select ISNULL(SUM(Amount),0) '
               +'   FROM ALLMoney B Where CONVERT(VARCHAR(8),B.TransDate,112)='''+FormatDateTime('YYYYMMDD',dt2.Date )+''''
               +'   AND B.Fgtrans=''11'' AND B.FgBBKK=''BM'') as ServiceBank,'
               +' (Select ISNULL(SUM(Amount),0) '
               +'   FROM ALLMoney B Where CONVERT(VARCHAR(8),B.TransDate,112)='''+FormatDateTime('YYYYMMDD',dt2.Date )+''''
               +'   AND B.Fgtrans=''10'' and ValutaID=''IDR'') as Pengganti_Retur_IDR,'
               +' (Select ISNULL(SUM(Amount),0) '
               +'   FROM ALLMoney B Where CONVERT(VARCHAR(8),B.TransDate,112)='''+FormatDateTime('YYYYMMDD',dt2.Date )+''''
               +'   AND B.Fgtrans=''10'' and ValutaID=''USD'') as Pengganti_Retur_USD,'
               +' (Select ISNULL(SUM(Amount),0) '
               +'   FROM ALLMoney B Where CONVERT(VARCHAR(8),B.TransDate,112)='''+FormatDateTime('YYYYMMDD',dt2.Date )+''''
               +'   AND B.Fgtrans IN(''8'',''15'') and B.FgBBKK=''KM'' and B.ValutaID=''IDR'') as BOIDRTunai ,'
               +' (Select ISNULL(SUM(Amount),0) '
               +'   FROM ALLMoney B Where CONVERT(VARCHAR(8),B.TransDate,112)='''+FormatDateTime('YYYYMMDD',dt2.Date )+''''
               +'   AND B.FgTrans IN(''8'',''15'') and B.FgBBKK=''BM'' and B.ValutaID=''IDR'') as BOIDRBank ,'
               +' (Select ISNULL(SUM(Amount),0) '
               +'   FROM ALLMoney B Where CONVERT(VARCHAR(8),B.TransDate,112)='''+FormatDateTime('YYYYMMDD',dt2.Date)+''''
               +'   AND B.Fgtrans IN(''15'',''51'') and B.FgBBKK=''BM'' and TempField3=''Charge'') as Charge,'
               +' (Select ISNULL(SUM(Amount),0) '
               +'   FROM ALLMoney B Where CONVERT(VARCHAR(8),B.TransDate,112)='''+FormatDateTime('YYYYMMDD',dt2.Date )+''''
               +'   AND B.FgTrans IN(''8'',''15'') and B.FgBBKK=''KM'' and B.ValutaID=''USD'') as BOUSDTunai ,'
               +' (Select ISNULL(SUM(Amount),0) '
               +'   FROM ALLMoney B Where CONVERT(VARCHAR(8),B.TransDate,112)='''+FormatDateTime('YYYYMMDD',dt2.Date )+''''
               +'   AND B.FgTrans IN(''8'',''15'') and B.FgBBKK=''BM'' and B.ValutaID=''USD'') as BOUSDBank ');
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
  if rbJenis.ItemIndex = 1 then
  begin
    with TfmARRptDetailSummary.Create(Self) do
       try
         qrlTitle.Caption := laTitle.Caption;
         qrlPeriode.Caption := 'Periode : '+ FormatDateTime('dd MMMM yyyy',dt2.date);

         with qu001,SQL do
         Begin
           Close;Clear;
           Add('SELECT DISTINCT K.Keterangan,K.Jenis FROM ( '
              +'SELECT ''Penjualan'' as Keterangan,Transdate,1 as Jenis FROM ARTrPenjualanHD UNION ALL '
              +'SELECT ''Pembelian'',Transdate,2 FROM APTrPurchaseHD UNION ALL '
              +'SELECT ''Pembelian'',Transdate,2 FROM APTrKonsinyasiInvHd UNION ALL '
              +'SELECT CASE WHEN FgBBKK IN (''KM'',''BM'') THEN ''Pemasukan'' ELSE ''Pengeluaran'' END as Status,Transdate, '
              +'CASE WHEN FgBBKK IN (''KM'',''BM'') THEN 3 ELSE 4 END FROM AllMoney) as K '
              +'WHERE CONVERT(VARCHAR(8),K.Transdate,112)='''+FormatDateTime('yyyyMMdd',dt2.Date)+''' '
              +'ORDER BY K.Jenis');
           Open;
         End;

         with qu002,SQL do
         begin
           Close;Clear;
           Add('SELECT DISTINCT K.SaleID as Nota,CONVERT(VARCHAR(10),K.Transdate,103) as Tgl,K.Actor,K.CurrID,K.StPj as Amount, K.Note FROM ( '
             +'SELECT 1 as Jenis,A.SaleID,A.Transdate,CASE WHEN A.CustID=''TUNAI'' THEN A.Nama ELSE B.CustName END as Actor, '
             +'A.CurrID,A.StPj,CASE WHEN A.TTLPj=0 THEN ''Lunas'' ELSE ''Belum Lunas'' END as Note '
             +'FROM ARTrPenjualanHD A INNER JOIN ARMsCustomer B ON A.CustID=B.CustID UNION ALL '
             +'SELECT 2,A.PurchaseID,A.Transdate,B.SuppName,A.CurrID,A.TTLPb,'''' FROM APTrPurchaseHD A '
             +'INNER JOIN APMsSupplier B ON A.SuppID=B.SuppID UNION ALL '
             +'SELECT 2,A.KonsinyasiInvID,A.Transdate,B.SuppName,A.CurrID,A.TTLKS,'''' FROM APTrKonsinyasiInvHD A '
             +'INNER JOIN APMsSupplier B ON A.SuppID=B.SuppID UNION ALL '
             +'SELECT 3,A.VoucherNo,A.Transdate,CASE WHEN A.FgTrans IN (8,15,19) THEN '
             +'(CASE WHEN A.TempField3=''Tunai'' AND A.FgTrans=15 THEN ''Pembayaran dengan Tunai'' '
             +'      WHEN A.TempField3=''Debit'' AND A.FgTrans=15 THEN ''Pembayaran dengan Debit / Transfer'' '
             +'      WHEN A.TempField3 IN(''Kredit'',''Charge'') AND A.FgTrans IN(15,19) THEN ''Pembayaran dengan Kartu Kredit'' '
             +'ELSE A.TempField3 + '' Bayar Nota ''+A.SourceNo END) ELSE A.Note END,A.ValutaID, '
             +'CASE WHEN A.TempField3 IN (''Kredit'',''Charge'') THEN '
             +'(SELECT ISNULL(SUM(Z.Amount),0) FROM AllMoney Z WHERE Z.VoucherNo=A.VoucherNo AND Z.TempField3 IN (''Kredit'',''Charge'')) '
             +'ELSE A.Amount END,CASE WHEN A.FgBBKK=''KM'' THEN ''Tunai'' ELSE A.TempField END '
             +'FROM AllMoney A WHERE A.FgBBKK IN (''KM'',''BM'') UNION ALL SELECT 4,A.VoucherNo,A.Transdate, '
             +'CASE WHEN A.RekeningID=''200.01'' THEN ''Pembayaran Hutang ''+A.TempField3+'' Nota ''+A.SourceNo ELSE A.Note END, '
             +'A.ValutaID,A.Amount,CASE WHEN A.FgBBKK=''KK'' THEN ''Tunai'' ELSE A.TempField END '
             +'FROM AllMoney A WHERE A.FgBBKK IN (''KK'',''BK'') AND A.TempField3<>''Administrasi'') as K '
             +'WHERE K.Jenis=:Jenis AND CONVERT(VARCHAR(8),K.Transdate,112) = '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' '
             +'ORDER BY K.SaleID');
           Parameters.ParamByName('Jenis').Value := ftString;
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

procedure TfmRptSummaryKeuangan.FormShow(Sender: TObject);
begin
  inherited;
  dt1.date :=date;
  dt2.Date :=date;
end;

end.
