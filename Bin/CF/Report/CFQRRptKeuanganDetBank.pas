unit CFQRRptKeuanganDetBank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv1, QuickRpt, DB, ADODB, StdCtrls, QRCtrls, ExtCtrls;

type
  TfmCFQRRptKeuanganDetBank = class(TfmRptLv1)
    ChildBand1: TQRChildBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    SummaryBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    ds002: TDataSource;
    QRDBText6: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    qu002: TADOQuery;
    qu003: TADOQuery;
    GroupFooterBand2: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape2: TQRShape;
    QRDBText7: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    quAwal: TADOQuery;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    qlbNote: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRLabel11Print(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure GroupFooterBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel18Print(sender: TObject; var Value: String);

  private
    { Private declarations }
  public
    { Public declarations }
    TanggalDari,TanggalSampai : TDateTime;
    Awal,Akhir,TotalD,TotalK,GTD,GTK : currency;
    Laporan : string;
  end;

var
  fmCFQRRptKeuanganDetBank: TfmCFQRRptKeuanganDetBank;

implementation

uses UnitGeneral, MyUnit, RptLv0;

{$R *.dfm}

procedure TfmCFQRRptKeuanganDetBank.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatRptkurung(Value)
end;

procedure TfmCFQRRptKeuanganDetBank.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  GTD := 0;
  GTK := 0;
  Awal :=0;
  Akhir := 0;
end;

procedure TfmCFQRRptKeuanganDetBank.QRSubDetail1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  TotalD := 0;
  TotalK := 0;
  with quAwal,SQL do
  begin
    Close;Clear;
    Add('SELECT DISTINCT ISNULL(SUM(CASE WHEN K.Jenis=''D'' THEN K.Amount ELSE K.Amount*-1 END),0) as Awal FROM ( ');

    Add('SELECT A.RekeningID,B.Transdate,A.Jenis,ISNULL(A.Amount,0) as Amount,B.CurrID,B.Rate '
       +'FROM CFTrKKBBDt A INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID AND B.FgPayment=''T'' UNION ALL ');

    Add('SELECT B.RekeningID,A.Transdate,CASE WHEN A.FlagKKBB IN (''KM'',''BM'',''ARK'',''ARB'',''ARC'') THEN ''D'' '
       +'WHEN A.FlagKKBB IN (''KK'',''BK'',''APK'',''APB'',''APC'') THEN ''K'' '
       +'WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''KM'',''BM'',''ARK'',''ARB'',''ARC'') THEN ''D'' '
       +'WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''KK'',''BK'',''APK'',''APB'',''APC'') THEN ''K'' END,'
       +'ISNULL(CASE WHEN A.FlagKKBB IN (''KM'',''BM'',''ARK'',''ARB'',''ARC'') THEN JumlahD WHEN A.FlagKKBB IN (''KK'',''BK'',''APK'',''APB'',''APC'') THEN JumlahK '
       +'WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''KM'',''BM'',''ARK'',''ARB'',''ARC'') THEN JumlahD '
       +'WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''KK'',''BK'',''APK'',''APB'',''APC'') THEN JumlahK END,0),A.CurrID,A.Rate FROM CFTrKKBBHd A '
       +'INNER JOIN CFMsBank B ON A.BankID=B.BankID WHERE A.FgPayment=''T'' AND A.FgPayment=''T'' UNION ALL ');

    Add('SELECT '''+sDRKas+''',Transdate,CASE WHEN FlagKKBB IN (''KM'',''BM'',''ARK'',''ARB'',''ARC'') THEN ''D'' WHEN FlagKKBB IN (''KK'',''BK'',''APK'',''APB'',''APC'') THEN ''K'' END,'
       +'ISNULL(CASE WHEN FlagKKBB IN (''KM'',''BM'',''ARK'',''ARB'',''ARC'') THEN JumlahD WHEN FlagKKBB IN (''KK'',''BK'',''APK'',''APB'',''APC'') THEN JumlahK END,0),CurrID,Rate '
       +'FROM CFTrKKBBHd '
       +'WHERE FlagKKBB IN (''KM'',''KK'',''ARK'',''APK'') AND FgPayment=''T'' UNION ALL ');

    Add('SELECT RekeningU,Transdate,''D'',ISNULL(TTLPj,0),CurrID,Rate FROM ARTrPenjualanHd UNION ALL '
       +'SELECT RekeningK,Transdate,''K'',ISNULL(CASE WHEN FGForm=''AR'' THEN StPj-DP ELSE DP END,0),CurrID,Rate FROM ARTrPenjualanHd UNION ALL '
       +'SELECT RekeningP,Transdate,''K'',ISNULL(CASE WHEN FgTax=''T'' THEN 0 ELSE PPN END,0),CurrID,Rate FROM ARTrPenjualanHd UNION ALL '
       +'SELECT RekHPP,Transdate,''D'',ISNULL(HPP,0),CurrID,Rate FROM ARTrPenjualanHd UNION ALL '
       +'SELECT RekPersediaan,Transdate,''K'',ISNULL(HPP,0),CurrID,Rate FROM ARTrPenjualanHd UNION ALL ');

    Add('SELECT RekeningU,Transdate,''K'',ISNULL(TTLPb,0),CurrID,Rate FROM APTrPurchaseHd UNION ALL '
       +'SELECT RekeningK,Transdate,''D'',ISNULL(StPb,0),CurrID,Rate FROM APTrPurchaseHd UNION ALL '
       +'SELECT RekeningP,Transdate,''D'',ISNULL(PPN,0),CurrID,Rate FROM APTrPurchaseHd UNION ALL '
       +'SELECT RekPersediaan,Transdate,''D'',ISNULL(StPb,0),CurrID,Rate FROM APTrPurchaseHd UNION ALL '
       +'SELECT RekHPP,Transdate,''K'',ISNULL(StPb,0),CurrID,Rate FROM APTrPurchaseHd '

       +') as K '
       +'WHERE CONVERT(VARCHAR(8),K.Transdate,112) < '''+FormatDateTime('yyyyMMdd',TanggalDari)+''' '
       +'AND K.RekeningID='''+qu002.FieldByName('RekeningID').AsString+''' ');
    //showmessage(sql.Text);
    Open;
  end;
  Awal := quAwal.FieldByName('Awal').AsCurrency;
end;

procedure TfmCFQRRptKeuanganDetBank.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if (qu002.FieldByName('Tipe').AsString = '1') or (qu002.FieldByName('Tipe').AsString = '5') then
    Value :=FormatRptkurung(CurrToStr(Awal))
  else
     Value :=FormatRptkurung(CurrToStr(Awal*-1));
end;

procedure TfmCFQRRptKeuanganDetBank.QRSubDetail1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  with qu003,SQL do
  begin
    Close;Clear;
    Add('SELECT CONVERT(VARCHAR(8),K.Transdate,112),CONVERT(VARCHAR(10),K.Transdate,103) as Tanggal,K.VoucherID as VoucherNo,'
       +'K.Note,CASE WHEN K.CurrID=''IDR'' THEN K.Amount ELSE K.Amount*K.Rate END as Amount,K.Jenis,K.Kode,K.BNote,K.FlagKKBB '
       +'FROM ( ');

    Add('SELECT B.FlagKKBB,''D'' as Kode,A.RekeningID,B.Transdate,A.Jenis,ISNULL(A.Amount,0) as Amount,A.Note,'
       +'CASE WHEN B.FlagKKBB IN (''BK'',''BM'',''GC'',''APB'',''ARB'',''ARC'',''APC'') THEN B.VoucherNo ELSE A.VoucherID END as VoucherID,B.FgPayment,B.VoucherID as BNote,B.CurrID,B.Rate '
       +'FROM CFTrKKBBDt A INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID UNION ALL ');

    Add('SELECT A.FlagKKBB,''H'',B.RekeningID,A.Transdate,CASE WHEN C.FlagKKBB IN (''BM'',''ARB'',''ARC'') THEN ''D'' ELSE ''K'' END,'
       +'ISNULL(CASE WHEN C.FlagKKBB IN (''BM'',''ARB'',''ARC'') THEN A.JumlahD WHEN C.FlagKKBB IN (''BK'',''APB'',''APC'') THEN A.JumlahK END,0),'
       +'C.Note,A.VoucherNo,A.FgPayment,A.VoucherID,A.CurrID,A.Rate FROM CFTrKKBBHd A INNER JOIN CFMsBank B ON A.BankID=B.BankID '
       +'INNER JOIN CFTrKKBBHd C ON A.IDVoucher=C.VoucherID UNION ALL ');

    Add('SELECT A.FlagKKBB,''H'',B.RekeningID,A.Transdate,CASE WHEN A.FlagKKBB IN (''BM'',''ARB'',''ARC'') THEN ''D'' ELSE ''K'' END,'
       +'ISNULL(CASE WHEN A.FlagKKBB IN (''BM'',''ARB'',''ARC'') THEN JumlahD WHEN A.FlagKKBB IN (''BK'',''APB'',''APC'') THEN JumlahK END,0),'
       +'A.Note,CASE WHEN A.FlagKKBB IN (''BK'',''BNM'',''GC'',''ARB'',''ARC'',''APB'',''APC'') THEN A.VoucherNo ELSE A.VoucherID END,'
       +'A.FgPayment,A.VoucherID,A.CurrID,A.Rate FROM CFTrKKBBHd A INNER JOIN CFMsBank B ON A.BankID=B.BankID '
       +'WHERE A.FlagKKBB IN (''BM'',''BK'',''ARB'',''ARC'',''APB'',''APC'') UNION ALL ');

    Add('SELECT A.FlagKKBB,''H'','''+sDRKas+''',A.Transdate,CASE WHEN A.FlagKKBB IN (''KM'',''ARK'') THEN ''D'' ELSE ''K'' END,'
       +'ISNULL(CASE WHEN A.FlagKKBB IN (''KM'',''ARK'') THEN JumlahD WHEN A.FlagKKBB IN (''KK'',''APK'') THEN JumlahK END,0),'
       +'A.Note,A.VoucherID,A.FgPayment,A.VoucherID,A.CurrID,A.Rate FROM CFTrKKBBHd A WHERE A.FlagKKBB IN (''KM'',''KK'',''ARK'',''APK'') UNION ALL ');

    Add('SELECT ''AR'',''D'',RekeningU,Transdate,''D'',ISNULL(TTLPj,0),A.SaleID,A.SaleID,''T'' as FgPayment,A.SaleID,A.CurrID,A.Rate FROM ARTrPenjualanHd A UNION ALL '
       +'SELECT ''AR'',''D'',RekeningK,Transdate,''K'',ISNULL(CASE WHEN FGForm=''AR'' THEN StPj-DP ELSE DP END,0),A.SaleID,A.SaleID,''T'',A.SaleID,A.CurrID,A.Rate FROM ARTrPenjualanHd A UNION ALL '
       +'SELECT ''AR'',''D'',RekeningP,Transdate,''K'',ISNULL(CASE WHEN FgTax=''T'' THEN 0 ELSE PPN END,0),A.SaleID,A.SaleID,''T'',A.SaleID,A.CurrID,A.Rate FROM ARTrPenjualanHd A UNION ALL '
       +'SELECT ''AR'',''D'',RekPersediaan,Transdate,''K'',ISNULL(HPP,0),A.SaleID,A.SaleID,''T'' as FgPayment,A.SaleID,A.CurrID,A.Rate FROM ARTrPenjualanHd A UNION ALL '
       +'SELECT ''AR'',''D'',RekHPP,Transdate,''D'',ISNULL(HPP,0),A.SaleID,A.SaleID,''T'' as FgPayment,A.SaleID,A.CurrID,A.Rate FROM ARTrPenjualanHd A UNION ALL ');

    Add('SELECT ''AP'',''P'',RekeningU,Transdate,''K'',ISNULL(TTLPb,0),''AA'',A.PurchaseID,''T'' as FgPayment,A.PurchaseID,A.CurrID,A.Rate FROM APTrPurchaseHd A UNION ALL '
       +'SELECT ''AP'',''P'',RekeningK,Transdate,''D'',ISNULL(StPb,0),''BB'',A.PurchaseID ,''T'',A.PurchaseID,A.CurrID,A.Rate FROM APTrPurchaseHd A UNION ALL '
       +'SELECT ''AP'',''P'',RekeningP,Transdate,''D'',ISNULL(PPN,0),''CC'',A.PurchaseID,''T'',A.PurchaseID,A.CurrID,A.Rate FROM APTrPurchaseHd A UNION ALL '
       +'SELECT ''AP'',''P'',RekPersediaan,Transdate,''D'',ISNULL(StPb,0),''AA'',A.PurchaseID,''T'' as FgPayment,A.PurchaseID,A.CurrID,A.Rate FROM APTrPurchaseHd A UNION ALL '
       +'SELECT ''AP'',''P'',RekHPP,Transdate,''K'',ISNULL(StPb,0),''AA'',A.PurchaseID,''T'' as FgPayment,A.PurchaseID,A.CurrID,A.Rate FROM APTrPurchaseHd A '

       +') as K '
      +'WHERE CONVERT(VARCHAR(8),K.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',TanggalDari)+''' AND '''+FormatDateTime('yyyyMMdd',TanggalSampai)+''' AND K.Amount<> 0 '
       +'AND K.RekeningID='''+qu002.FieldByName('RekeningID').AsString+''' AND K.FgPayment=''T'' ORDER BY CONVERT(VARCHAR(8),K.Transdate,112),K.Jenis,K.VoucherID');
    //showmessage(sql.text);
    Open;
  end;
end;

procedure TfmCFQRRptKeuanganDetBank.QRSubDetail2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var Note,Keterangan : string;
begin
  inherited;
  if (qu003.FieldByName('FlagKKBB').AsString = 'ARK') or (qu003.FieldByName('FlagKKBB').AsString = 'ARB') or (qu003.FieldByName('FlagKKBB').AsString = 'ARC') then
  begin
    with quAwal,SQL do
    begin
      Close;Clear;
      Add('SELECT CustName FROM CFTrKKBBHd A INNER JOIN ARMsCustomer B ON A.Actor=B.CustID WHERE A.VoucherID='''+qu003.FieldByName('VoucherNo').AsString+''' ');
      Open;
    end;
    Keterangan := quAwal.FieldByName('CustName').AsString+' - ';
  end else
  if (qu003.FieldByName('FlagKKBB').AsString = 'APK') or (qu003.FieldByName('FlagKKBB').AsString = 'APB') or (qu003.FieldByName('FlagKKBB').AsString = 'APC') then
  begin
    with quAwal,SQL do
    begin
      Close;Clear;
      Add('SELECT SuppName FROM CFTrKKBBHd A INNER JOIN APMsSupplier B ON A.Actor=B.SuppID WHERE A.VoucherID='''+qu003.FieldByName('VoucherNo').AsString+''' ');
      Open;
    end;
    Keterangan := quAwal.FieldByName('SuppName').AsString+' - ';
  end else
    Keterangan := '';

  if qu003.FieldByName('Kode').AsString = 'D' then
  begin
    qlbNote.Caption := Keterangan + qu003.FieldByName('Note').AsString;
  end else
  begin
    with quAwal,SQL do
    begin
      Close;Clear;
      Add('SELECT DISTINCT K.Note FROM (SELECT VoucherID,Note FROM CFTrKKBBDt UNION ALL SELECT DISTINCT A.PurchaseID,C.GroupDesc '
         +'FROM APTrPurchaseDt A INNER JOIN INMsItem B ON A.ItemID=B.ItemID INNER JOIN INMsGroup C ON B.GroupID=C.GroupID) as K '
         +'WHERE K.VoucherID='''+qu003.FieldByName('BNote').AsString+''' ');
      Open;
    end;
    while not quAwal.Eof do
    begin
      if quAwal.RecNo = 1 then
        Note := quAwal.FieldByName('Note').AsString
      else
        Note := Note + '; ' + quAwal.FieldByName('Note').AsString;
      quAwal.Next;
    end;
    qlbNote.Caption := Keterangan + Note;
    Note := '';
  end;
  if qu003.FieldByName('Jenis').AsString = 'K' then
  Begin
    QRDBText2.Left := 773;
    Awal := Awal - qu003.fieldbyname('Amount').AsCurrency;
    TotalK := TotalK + qu003.fieldbyname('Amount').AsCurrency;
    GTK := GTK + qu003.fieldbyname('Amount').AsCurrency;
  End else
  if qu003.FieldByName('Jenis').AsString = 'D' then
  Begin
    QRDBText2.Left := 652;
    Awal := Awal + qu003.fieldbyname('Amount').AsCurrency;
    TotalD := TotalD + qu003.fieldbyname('Amount').AsCurrency;
    GTD := GTD + qu003.fieldbyname('Amount').AsCurrency;
  End
  Else
    PrintBand := False;

end;

procedure TfmCFQRRptKeuanganDetBank.QRLabel10Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if (qu002.FieldByName('Tipe').AsString = '1') or (qu002.FieldByName('Tipe').AsString = '5') then
    Value :=FormatRptkurung(CurrToStr(Awal))
  else
    Value :=FormatRptkurung(CurrToStr(Awal*-1));
end;

procedure TfmCFQRRptKeuanganDetBank.QRLabel12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(TotalD))
end;

procedure TfmCFQRRptKeuanganDetBank.QRLabel11Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(TotalK))
end;

procedure TfmCFQRRptKeuanganDetBank.QRLabel13Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Subtotal Per Rekening '+qu002.FieldByName('RekeningName').AsString+' : '
end;

procedure TfmCFQRRptKeuanganDetBank.QRLabel15Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(GTD))
end;

procedure TfmCFQRRptKeuanganDetBank.QRLabel16Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(GTK))
end;

procedure TfmCFQRRptKeuanganDetBank.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(Awal))
end;

procedure TfmCFQRRptKeuanganDetBank.GroupFooterBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  Akhir := Akhir + Awal;
end;

procedure TfmCFQRRptKeuanganDetBank.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(Akhir))
{  if qu002.FieldByName('FgTipe').AsString = 'A' then
    Value := FormatRptkurung(CurrToStr(Akhir))
  else
    Value := FormatRptkurung(CurrToStr(Akhir*-1))}
end;

end.


