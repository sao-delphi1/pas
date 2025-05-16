unit ARQRRptKartuTunggakPiutangServis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, StdCtrls, QRCtrls, ExtCtrls, DateUtils;

type
  TfmARQRRptKartuTunggakPiutangServis = class(TfmRptLv4)
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    qlbTelat: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    qlbSisa: TQRLabel;
    GroupFooterBand2: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr1: TQRExpr;
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
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure qlbSisaPrint(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure BndDetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
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
  fmARQRRptKartuTunggakPiutangServis: TfmARQRRptKartuTunggakPiutangServis;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmARQRRptKartuTunggakPiutangServis.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;

   TotalIDR:=TotalIDR+(qu002.FieldByName('Kredit').AsCurrency-qu002.FieldByName('Debit').AsCurrency);


end;

procedure TfmARQRRptKartuTunggakPiutangServis.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptKartuTunggakPiutangServis.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptKartuTunggakPiutangServis.QRExpr1Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptKartuTunggakPiutangServis.QRExpr2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptKartuTunggakPiutangServis.QRExpr3Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptKartuTunggakPiutangServis.QRExpr4Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptKartuTunggakPiutangServis.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  TotalIDR :=0;
  TotalUSD :=0;
end;

procedure TfmARQRRptKartuTunggakPiutangServis.QRLabel12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrtoStr(TotalIDR));
end;

procedure TfmARQRRptKartuTunggakPiutangServis.QRLabel13Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrtoStr(TotalUSD));
end;

procedure TfmARQRRptKartuTunggakPiutangServis.qlbSisaPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptKartuTunggakPiutangServis.QRLabel19Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(currtoStr(Total0));
  Total0:=0;
end;

procedure TfmARQRRptKartuTunggakPiutangServis.QRLabel20Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(currtoStr(Total115));
  Total115:=0;
end;

procedure TfmARQRRptKartuTunggakPiutangServis.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(currtoStr(Total1630));
  Total1630:=0;
end;

procedure TfmARQRRptKartuTunggakPiutangServis.QRLabel22Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(currtoStr(Total31));
  Total31:=0;
end;

procedure TfmARQRRptKartuTunggakPiutangServis.BndDetailAfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
   With qu002,sql do
    Begin
       Close;Clear;
       add(' select dateadd(Day, isnull(K.JatuhTempo,0),K.Transdate) as jth,M.CustID,Convert(varchar(20),K.TransDate,103) as Tanggal,'
          +' K.InvServiceID as IP,'
          +' isnull(K.TTLSV,0) as Kredit,'
          +' (select isnull(sum(L.ValuePayment),0)'
          +' FROM ARTrPiutInvServiceDt L INNER JOIN ARTrPiutInvServicehd Q ON L.PiutInvServiceId=Q.PiutInvServiceId'
          +' where L.InvServiceID = K.InvServiceID AND CONVERT(varchar(8),Q.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''') as Debit'
          +' FROM ARTrInvServiceHd K INNER JOIN ARTrServiceHd M ON K.ServiceId=M.ServiceID where M.CustID = '''+qu001.Fieldbyname('CustId').AsString+''''
          +' AND isnull(K.TTLSV,0)'
          +' -(select isnull(sum(L.ValuePayment),0)'
          +' FROM ARTrPiutInvServiceDt L INNER JOIN ARTrPiutInvServicehd Q ON L.PiutInvServiceId=Q.PiutInvServiceId'
          +' where L.InvServiceID = K.InvServiceID AND CONVERT(varchar(8),Q.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''')'
          +' <> 0 AND CONVERT(varchar(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''''
          +' ORDER BY Convert(varchar(20),K.Transdate,112)');
      
      Open;
    End;
    Total0 := 0;
    Total115 := 0;
    Total1630 := 0;
    Total31 := 0;
end;

procedure TfmARQRRptKartuTunggakPiutangServis.bnd001BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var Telat : integer;
begin
  inherited;
  Sisa:=(qu002.FieldByName('Kredit').AsCurrency-qu002.FieldByName('Debit').AsCurrency);
  qlbSisa.Caption := Currtostr(Sisa);
  if FormatDateTime('yyyy/MM/dd', qu002.FieldByName('jth').AsDateTime) >=
    FormatDateTime('yyyy/MM/dd', tglDari) then
  Begin
    qlbTelat.Caption := '';
    Total0 := Total0 + Sisa;
    qlbSisa.Left :=636;
  End
  else
  Begin
    qlbTelat.Caption := inttostr(DaysBetween(qu002.FieldByName('jth').AsDateTime, tglDari))+' Hari';
    Telat := DaysBetween(qu002.FieldByName('jth').AsDateTime, tglDari);

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

end;

end.
