unit QRRptAPKartuHutangDetil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, StdCtrls, QRCtrls, ExtCtrls;

type
  TfmAPQRRptKartuHutangDetil = class(TfmRptLv4)
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    SummaryBand1: TQRBand;
    ds003: TDataSource;
    qu004: TADOQuery;
    QRSubDetail1: TQRSubDetail;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText9: TQRDBText;
    QRShape2: TQRShape;
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure bnd002AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    tglDari : TDateTime;
    tglsmp  : TDateTime;
    TotalIDR : Currency;
    TotalUSD : Currency;
    TotalPI : Currency;
    bCheckced : boolean;
  end;

var
  fmAPQRRptKartuHutangDetil: TfmAPQRRptKartuHutangDetil;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmAPQRRptKartuHutangDetil.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
   TotalIDR := 0;
   TotalUSD := 0;
   TotalPI :=0;
end;

procedure TfmAPQRRptKartuHutangDetil.QRLabel8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Sisa Hutang Invoice Pemb '+qu003.FieldByName('PurchaseId').AsString+' Valuta '+qu002.FieldByName('Currid').AsString +' :';
end;

procedure TfmAPQRRptKartuHutangDetil.bnd002AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  With qu004,sql do
  Begin
    Close;Clear;
    add('SELECT K.PurchaseID,L.VoucherID as PaymentID,CONVERT(VARCHAR(10),L.Transdate,103) as Tanggal,ISNULL(K.ValuePayment,0) as Amount FROM ('
       +'SELECT A.Note as PurchaseID,A.VoucherID as PaymentId,A.Amount as ValuePayment FROM CFTRKKBBDt A INNER JOIN APTrPurchaseHd C ON A.Note=C.PurchaseId) as K '
       +'INNER JOIN CFTRKKBBHD L ON K.PayMentId=L.VoucherID WHERE K.PurchaseID='''+qu003.Fieldbyname('PurchaseId').AsString+''' '
       +'AND CONVERT(varchar(8),L.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''' ');
    Open;
  End;
  TotalPI:=0;
  TotalPI:=qu003.FieldByName('TTLPI').AsCurrency;
end;

procedure TfmAPQRRptKartuHutangDetil.QRSubDetail1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  TotalPI:=TotalPI-qu004.FieldByname('Amount').AsCurrency;
end;

procedure TfmAPQRRptKartuHutangDetil.QRLabel9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Currtostr(TotalPI));
  if UpperCase(qu002.FieldByName('CurrId').AsString)='IDR' then
     TotalIDR:=TotalIDR+TotalPI
  else
     TotalUSD:=TotalUSD+TotalPI;
  TotalPI := 0;
end;

procedure TfmAPQRRptKartuHutangDetil.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value)
end;

procedure TfmAPQRRptKartuHutangDetil.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmAPQRRptKartuHutangDetil.QRLabel13Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrtoStr(TotalUSD));
end;

procedure TfmAPQRRptKartuHutangDetil.QRLabel12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrtoStr(TotalIDR));
end;

procedure TfmAPQRRptKartuHutangDetil.bnd001AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
   With qu003,sql do
    Begin
       Close;Clear;
       add('SELECT K.SuppID,K.CurrID,K.PurchaseID,CONVERT(VARCHAR(10),K.Transdate,103) as Tanggal,ISNULL(K.TTLPi,0) as TTLPi FROM ('
          +'SELECT B.SuppID,B.CurrID,B.PurchaseID,B.TransDate,ISNULL(B.TTLPb,0)-ISNULL((SELECT ISNULL(SUM(Price*Qty),0) FROM APTrReturnDt F '
          +'INNER JOIN APTrReturnHd G  ON F.ReturnID=G.ReturnID WHERE G.FlagRetur=''B'' AND F.purchaseID=B.PurchaseID  AND G.SuppID=B.SuppID AND '
          +'CONVERT(VARCHAR(8),G.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+'''),0) as TTLPi,'
          +'ISNULL((SELECT ISNULL(SUM(Amount),0) FROM CFTrKKBBDt N INNER JOIN CFTRKKBBHd M ON M.VoucherID=N.VoucherID '
          +'WHERE N.Note=B.PurchaseID AND '
          +'CONVERT(VARCHAR(8),M.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+'''),0) as Bayar '
          +'FROM APTrPurchaseHd B '
          +') as K '
          +'WHERE K.SuppID='''+qu001.FieldByName('SuppId').AsString+''' '
          +'AND K.CurrID='''+qu002.FieldByName('CurrId').AsString+''' AND ISNULL(K.TTLPi');
       if bCheckced then
         Add('-K.Bayar');
       Add(',0) > 0 AND CONVERT(VARCHAR(8),K.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''''
          +' ORDER BY CONVERT(VARCHAR(8),K.TransDate,112)');
       Open;
    End;
end;

end.
