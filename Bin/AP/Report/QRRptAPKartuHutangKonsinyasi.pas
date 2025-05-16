unit QRRptAPKartuHutangKonsinyasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, StdCtrls, QRCtrls, ExtCtrls;

type
  TfmAPQRRptKartuHutangKonsinyasi = class(TfmRptLv4)
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    SummaryBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    ChildBand1: TQRChildBand;
    qlbSerilNumber: TQRLabel;
    qu004: TADOQuery;
    quStatus: TADOQuery;
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr3Print(sender: TObject; var Value: String);
    procedure QRExpr4Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure bnd002AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    tglDari  : TDateTime;
    tglsmp   : TDateTime;
    TotalIDR : Currency;
    TotalUSD : Currency;
    bCheckced : boolean;
    SerialNumber,SN : string;
  end;

var
  fmAPQRRptKartuHutangKonsinyasi: TfmAPQRRptKartuHutangKonsinyasi;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmAPQRRptKartuHutangKonsinyasi.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  With qu003,sql do
    Begin
       Close;Clear;
       add(' select K.CustID,Convert(varchar(20),K.TransDate,103) as Tanggal,K.KonsinyasiInvID as IP,'
          +' isnull(K.TTLKS,0) as Kredit,'
          +' (select isnull(sum(L.ValuePayment),0)'
          +' FROM APTrPaymentKonsDt L INNER JOIN APTrPaymentKonsHd H ON L.PaymentKonsID=H.PaymentKonsID '
          +' where L.KonsinyasiInvID = K.KonsinyasiInvID AND H.CustId=K.CustId '
          +' AND CONVERT(varchar(8),H.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''') as Debit'
          +' FROM APTrKonsinyasiInvHd K where K.CustID = '''+qu001.Fieldbyname('CustId').AsString+''''
          +' AND K.CurrID='''+qu002.FieldByname('CurrId').AsString+''''
          +' AND isnull(K.TTLKS,0) <>0');
       if bCheckced then
       Add(' AND ISNULL(K.TTLKs,0) '
          +' -ISNULL((SELECT ISNULL(SUM(Price*Qty),0) FROM APTrReturnDt F INNER JOIN APTrReturnHd G '
          +' ON F.ReturnId=G.ReturnId WHERE G.FlagRetur=''B'' AND F.PurchaseID=K.KonsinyasiInvID AND CONVERT(varchar(8),G.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''''
          +' ),0)-(SELECT ISNULL(SUM(L.ValuePayment),0)'
          +' FROM APTrPaymentKonsDt L INNER JOIN APTrPaymentKonsHd Q ON L.PaymentKonsID=Q.PaymentKonsID '
          +' where L.KonsinyasiInvID = K.KonsinyasiInvID '
          +' AND CONVERT(varchar(8),Q.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''') <>0');
       add(' AND CONVERT(varchar(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''''
          +' ORDER BY Convert(varchar(20),K.Transdate,112)');
       Open;
    End;

end;

procedure TfmAPQRRptKartuHutangKonsinyasi.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmAPQRRptKartuHutangKonsinyasi.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value:=FormatRptkurung(Value);
end;

procedure TfmAPQRRptKartuHutangKonsinyasi.QRExpr1Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmAPQRRptKartuHutangKonsinyasi.QRExpr2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmAPQRRptKartuHutangKonsinyasi.QRExpr3Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmAPQRRptKartuHutangKonsinyasi.QRExpr4Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmAPQRRptKartuHutangKonsinyasi.QRLabel9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Total Hutang Konsinyasi Per Pelanggan '+qu001.Fieldbyname('CustName').AsString+' Per '+qu002.FieldByname('CurrId').AsString+' :';
end;

procedure TfmAPQRRptKartuHutangKonsinyasi.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  TotalIDR :=0;
  TotalUSD :=0;
end;

procedure TfmAPQRRptKartuHutangKonsinyasi.bnd002AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  If UpperCase(qu002.FieldByName('CurrId').AsString)='IDR' Then
  Begin
   TotalIDR:=TotalIDR+(qu003.FieldByName('Kredit').AsCurrency-qu003.FieldByName('Debit').AsCurrency);
  End
  Else
  Begin
   TotalUSD:=TotalUSD+(qu003.FieldByName('Kredit').AsCurrency-qu003.FieldByName('Debit').AsCurrency);
  End;
end;

procedure TfmAPQRRptKartuHutangKonsinyasi.QRLabel12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrtoStr(TotalIDR));
end;

procedure TfmAPQRRptKartuHutangKonsinyasi.QRLabel13Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrtoStr(TotalUSD));
end;

procedure TfmAPQRRptKartuHutangKonsinyasi.ChildBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  with qu004,SQL do
  begin
    Close;Clear;
    Add('SELECT SNID FROM APTrKonsinyasiInvDtSN WHERE KonsinyasiInvID='''+qu003.FieldByName('IP').AsString+''' ');
    Open;
  end;
  PrintBand := qu004.FieldByName('SNID').AsString <> '';
  while not qu004.Eof do
  begin
    SN := qu004.FieldbyName('SNID').AsString;
    with quStatus,SQL do
    begin
      Close;Clear;
      Add('SELECT DISTINCT K.SNID,K.SaleID,K.Price,L.CustName,CONVERT(VARCHAR(8),K.Transdate,112) as Tgl,K.Status, '
         +'CASE WHEN K.CurrID=''IDR'' THEN ''Rp'' ELSE ''$'' END as CurrID,P.FgJual FROM ( '
         +'SELECT A.SNID,A.SaleID,A.Price,B.CustID,B.Transdate,1 as Status,B.CurrID '
         +'FROM ARTrPenjualanSN A INNER JOIN ARTrPenjualanHd B ON A.SaleID=B.SaleID UNION ALL '
         +'SELECT A.SNID,A.KonTransBrgID,0,B.CustID,B.Transdate,2,'''' '
         +'FROM ARTrKonTransBrgDtSN A INNER JOIN ARTrKonTransBrgHd B ON A.KonTransBrgID=B.KonTransBrgID) as K '
         +'INNER JOIN ARMsCustomer L ON K.CustID=L.CustID INNER JOIN APTrKonsinyasiDtSN P ON K.SNID=P.SNID WHERE K.SNID = '''+SN+''' '
         +'AND K.SNID NOT IN (SELECT SNID FROM APTrReturnKonSN)');
      Open;
    end;
    if (quStatus.FieldByName('SNID').AsString = '') or (quStatus.FieldByName('FgJual').AsString = 'T') then
      SerialNumber := SerialNumber +#13+ qu004.FieldbyName('SNID').AsString +' (Stock)'
    else
    if quStatus.FieldByName('Status').AsString = '1' then
      SerialNumber := SerialNumber +#13+ quStatus.FieldbyName('SNID').AsString +' Terjual ke customer '+quStatus.FieldByName('CustName').AsString +
                     ' dengan harga '+quStatus.FieldByName('CurrID').AsString+' '+ FormatRptqtykurung(quStatus.FieldByName('Price').AsString)+' ('+quStatus.FieldByName('SaleID').AsString+')'
    else
      SerialNumber := SerialNumber +#13+ quStatus.FieldbyName('SNID').AsString +' Konsinyasi ke customer '+quStatus.FieldByName('CustName').AsString +
                     ' ('+quStatus.FieldByName('SaleID').AsString+')';
    qu004.Next;
  end;
  if SerialNumber <> '' then
    qlbSerilNumber.Caption := 'Serial Number: '+SerialNumber
  else
    qlbSerilNumber.Caption := '' ;
  SerialNumber := '';end;

end.
