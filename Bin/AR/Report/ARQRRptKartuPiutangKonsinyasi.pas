unit ARQRRptKartuPiutangKonsinyasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, StdCtrls, QRCtrls, ExtCtrls;

type
  TfmARQRRptKartuPiutangKonsinyasi = class(TfmRptLv4)
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
  private
    { Private declarations }
  public
    { Public declarations }
    tglDari  : TDateTime;
    tglsmp   : TDateTime;
    TotalIDR : Currency;
    TotalUSD : Currency;
  end;

var
  fmARQRRptKartuPiutangKonsinyasi: TfmARQRRptKartuPiutangKonsinyasi;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmARQRRptKartuPiutangKonsinyasi.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  With qu003,sql do
    Begin
       Close;Clear;
       add(' select K.CustID,Convert(varchar(20),K.TransDate,103) as Tanggal,K.KonInvPelID as IP,'
          +' isnull(K.TTLKJ,0) as Kredit,'
          +' (select isnull(sum(L.ValuePayment),0)'
          +' FROM ARTrKonPiutangDt L INNER JOIN ARTrKonPiutangHd Q ON L.KonPiutangId=Q.KonPiutangId WHERE L.KonInvPelID = K.KonInvPelID'
          +' AND CONVERT(varchar(8),Q.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''') as Debit'
          +' FROM ARTrKonInvPelHd K where K.CustID = '''+qu001.Fieldbyname('CustId').AsString+''''
          +' AND K.CurrID='''+qu002.FieldByname('CurrId').AsString+''''
          +' AND isnull(K.TTLKJ,0) <>0'
          +' AND CONVERT(varchar(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''' '
          +' ORDER BY Convert(varchar(20),K.Transdate,112)');
       Open;
    End;

end;

procedure TfmARQRRptKartuPiutangKonsinyasi.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptKartuPiutangKonsinyasi.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptKartuPiutangKonsinyasi.QRExpr1Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptKartuPiutangKonsinyasi.QRExpr2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptKartuPiutangKonsinyasi.QRExpr3Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptKartuPiutangKonsinyasi.QRExpr4Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptKartuPiutangKonsinyasi.QRLabel9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Total Piutang Konsinyasi Per Pelanggan '+qu001.Fieldbyname('CustName').AsString+' Per '+qu002.FieldByname('CurrId').AsString+' :';
end;

procedure TfmARQRRptKartuPiutangKonsinyasi.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  TotalIDR :=0;
  TotalUSD :=0;
end;

procedure TfmARQRRptKartuPiutangKonsinyasi.bnd002AfterPrint(Sender: TQRCustomBand;
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

procedure TfmARQRRptKartuPiutangKonsinyasi.QRLabel12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrtoStr(TotalIDR));
end;

procedure TfmARQRRptKartuPiutangKonsinyasi.QRLabel13Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrtoStr(TotalUSD));
end;

end.
