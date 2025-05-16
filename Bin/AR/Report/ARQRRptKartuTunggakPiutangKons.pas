unit ARQRRptKartuTunggakPiutangKons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, StdCtrls, QRCtrls, ExtCtrls, DateUtils;

type
  TfmARQRRptKartuTunggakPiutangKons = class(TfmRptLv4)
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
    QRLabel8: TQRLabel;
    qlbTelat: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText7: TQRDBText;
    qlbSisa: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr3Print(sender: TObject; var Value: String);
    procedure QRExpr4Print(sender: TObject; var Value: String);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure bnd002AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure bnd002BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qlbSisaPrint(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    tglDari  : TDateTime;
    tglsmp   : TDateTime;
    TotalIDR : Currency;
    TotalUSD : Currency;
    Total0,Total115,Total1630,total31 : Currency;
    Sisa     : Currency;
  end;

var
  fmARQRRptKartuTunggakPiutangKons: TfmARQRRptKartuTunggakPiutangKons;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmARQRRptKartuTunggakPiutangKons.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  With qu003,sql do
    Begin
       Close;Clear;
       add(' select dateadd(Day, isnull(K.JatuhTempo,0),K.Transdate) as jth,K.CustID,Convert(varchar(20),K.TransDate,103) as Tanggal,'
          +' K.KonInvPelID as IP,'
          +' isnull(K.TTLKJ,0) as Kredit,'
          +' (select isnull(sum(L.ValuePayment),0)'
          +' FROM ARTrKonPiutangDt L INNER JOIN ARTrKonPiutangHd Q ON L.KonPiutangId=Q.KonPiutangId'
          +' where L.KonInvPelID = K.KonInvPelID AND CONVERT(varchar(8),Q.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''') as Debit'
          +' FROM ARTrKonInvPelHd K where K.CustID = '''+qu001.Fieldbyname('CustId').AsString+''''
          +' AND K.CurrID='''+qu002.FieldByname('CurrId').AsString+''''
          +' AND isnull(K.TTLKJ,0)'
          +' -isnull((Select isnull(Sum(ValuePayment),0) FROM ARTrKonPiutangDt M INNER JOIN ARTrKonPiutangHd N ON M.KonPiutangId=N.KonPiutangId'
          +'  WHERE M.KonInvPelID=K.KonInvPelID AND CONVERT(varchar(8),N.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+'''),0)'
          +' <> 0 AND CONVERT(varchar(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''''
          +' ORDER BY Convert(varchar(20),K.Transdate,112)');
       Open;
    End;
    Total0 := 0;
    Total115 := 0;
    Total1630 := 0;
    Total31 := 0;

end;

procedure TfmARQRRptKartuTunggakPiutangKons.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptKartuTunggakPiutangKons.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptKartuTunggakPiutangKons.QRExpr1Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptKartuTunggakPiutangKons.QRExpr2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptKartuTunggakPiutangKons.QRExpr3Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptKartuTunggakPiutangKons.QRExpr4Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptKartuTunggakPiutangKons.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  TotalIDR :=0;
  TotalUSD :=0;
end;

procedure TfmARQRRptKartuTunggakPiutangKons.bnd002AfterPrint(Sender: TQRCustomBand;
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

procedure TfmARQRRptKartuTunggakPiutangKons.QRLabel12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrtoStr(TotalIDR));
end;

procedure TfmARQRRptKartuTunggakPiutangKons.QRLabel13Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrtoStr(TotalUSD));
end;

procedure TfmARQRRptKartuTunggakPiutangKons.bnd002BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var Telat : integer;
begin
  inherited;
  Sisa:=(qu003.FieldByName('Kredit').AsCurrency-qu003.FieldByName('Debit').AsCurrency);
  qlbSisa.Caption := Currtostr(Sisa);
  if FormatDateTime('yyyy/MM/dd', qu003.FieldByName('jth').AsDateTime) >=
    FormatDateTime('yyyy/MM/dd', tglDari) then
  Begin
    qlbTelat.Caption := '';
    Total0 := Total0 + Sisa;
    qlbSisa.Left :=636;
  End
  else
  Begin
    qlbTelat.Caption := inttostr(DaysBetween(qu003.FieldByName('jth').AsDateTime, tglDari))+' Hari';
    Telat := DaysBetween(qu003.FieldByName('jth').AsDateTime, tglDari);

    If telat <= 0 then
    Begin
       total0 := Total0 + Sisa;
       qlbSisa.Left :=636;
    End;
    If (telat >= 1) AND (Telat <=15) then
    Begin
       total115 := Total115 + Sisa;
       qlbSisa.Left :=728;
    End;
    If (telat >= 16) AND (Telat <=30) then
    Begin
       total1630 := Total1630 + Sisa;
       qlbSisa.Left :=820;
    End;
    If (telat >= 31)  then
    Begin
       total31 := Total31 + Sisa;
       qlbSisa.Left :=924;
    End;

  End;


  //ShowMessage(inttostr(telat));

end;

procedure TfmARQRRptKartuTunggakPiutangKons.qlbSisaPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptKartuTunggakPiutangKons.QRLabel19Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(currtoStr(Total0));
  Total0:=0;
end;

procedure TfmARQRRptKartuTunggakPiutangKons.QRLabel20Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(currtoStr(Total115));
  Total115:=0;
end;

procedure TfmARQRRptKartuTunggakPiutangKons.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(currtoStr(Total1630));
  Total1630:=0;
end;

procedure TfmARQRRptKartuTunggakPiutangKons.QRLabel22Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(currtoStr(Total31));
  Total31:=0;
end;

end.
