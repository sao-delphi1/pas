unit ARQRRptKartuPiutang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, StdCtrls, QRCtrls, ExtCtrls;

type
  TfmARQRRptKartuPiutang = class(TfmRptLv4)
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
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure bnd002AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    tglDari  : TDateTime;
    tglsmp   : TDateTime;
    TotalIDR : Currency;
    TotalUSD : Currency;
    bCheckced : boolean;
    FgTrans : string;
  end;

var
  fmARQRRptKartuPiutang: TfmARQRRptKartuPiutang;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmARQRRptKartuPiutang.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  With qu003,SQL do
    Begin
       Close;Clear;
       Add('SELECT DISTINCT K.CustID,CONVERT(VARCHAR(10),K.Transdate,103) as Tanggal,CONVERT(VARCHAR(8),K.Transdate,112),'
          +'CASE WHEN K.Nama='''' THEN K.SaleID ELSE K.SaleID+'' (''+K.Nama+'')'' END as IP,ISNULL(K.TTLPj-K.Kredit,0) as Kredit,'
          +'ISNULL(K.Debit,0) as Debit FROM(SELECT A.CustID,A.CurrID,A.Transdate,A.SaleID,A.Nama,ISNULL(A.TTLPj,0) as TTLPj,'
          +'ISNULL((SELECT ISNULL(SUM(Price*Qty),0) FROM ARTrReturPenjualanDt F INNER JOIN ARTrReturPenjualanHd G '
          +'ON F.ReturnId=G.ReturnId WHERE G.FlagRetur=''B'' AND F.SaleId=A.SaleId '
          +'AND G.CustId=A.CustId AND CONVERT(VARCHAR(8),G.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+'''),0) as Kredit,'
          +'(SELECT ISNULL(SUM(L.Amount),0) FROM CFTrKKBBDt L INNER JOIN CFTrKKBBHD Q ON L.VoucherID=Q.VoucherID '
          +'WHERE L.Note = A.SaleID AND CONVERT(VARCHAR(8),Q.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''' '
          +'AND L.RekeningID='''+sDRPj+''') as Debit '
          +'FROM ARTrPenjualanHd A) as K INNER JOIN ARMsCustomer L ON K.CustID=L.CustID '
          +'WHERE K.CustID='''+qu001.FieldByName('CustID').AsString+''' '
          +'AND K.CurrID='''+qu002.FieldByName('CurrID').AsString+''' AND ISNULL(K.TTLPj-K.Kredit,0)<>0 ');
       if bCheckced then
          Add(' AND ISNULL(K.TTLPj-K.Kredit-K.Debit,0)<>0 ');
       if FgTrans = 'D' then
          Add('AND L.CustType=''D'' ');
       if FgTrans = 'U' then
          Add('AND L.CustType=''U'' ');
       Add(' AND CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''' '
          +'ORDER BY CONVERT(VARCHAR(8),K.Transdate,112)');
       Open;
    End;
end;

procedure TfmARQRRptKartuPiutang.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptKartuPiutang.QRLabel9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Total Piutang Per Pelanggan '+qu001.Fieldbyname('CustName').AsString+' Per '+qu002.FieldByname('CurrId').AsString+' :';
end;

procedure TfmARQRRptKartuPiutang.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  TotalIDR :=0;
  TotalUSD :=0;
end;

procedure TfmARQRRptKartuPiutang.bnd002AfterPrint(Sender: TQRCustomBand;
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

procedure TfmARQRRptKartuPiutang.QRLabel12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrtoStr(TotalIDR));
end;

procedure TfmARQRRptKartuPiutang.QRLabel13Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrtoStr(TotalUSD));
end;

end.
