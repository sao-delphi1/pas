unit ARQRRptKartuHutangService;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, StdCtrls, QRCtrls, ExtCtrls;

type
  TfmARQRRptPiutangService = class(TfmRptLv4)
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
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRExpr1: TQRExpr;
    GroupFooterBand2: TQRBand;
    QRLabel9: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    qu002CustID: TStringField;
    qu002Tanggal: TStringField;
    qu002IP: TStringField;
    qu002Kredit: TBCDField;
    qu002Debit: TBCDField;
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr3Print(sender: TObject; var Value: String);
    procedure QRExpr4Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure BndDetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    tglDari  : TDateTime;
    tglsmp   : TDateTime;
    TotalIDR : Currency;
    TotalUSD : Currency;
    bCheckced : boolean;    
  end;

var
  fmARQRRptPiutangService: TfmARQRRptPiutangService;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmARQRRptPiutangService.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptPiutangService.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptPiutangService.QRExpr1Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptPiutangService.QRExpr2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptPiutangService.QRExpr3Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptPiutangService.QRExpr4Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptPiutangService.QRLabel9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Total Piutang Per Pelanggan '+qu001.Fieldbyname('CustName').AsString+' :';
end;

procedure TfmARQRRptPiutangService.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  TotalIDR :=0;
end;

procedure TfmARQRRptPiutangService.QRLabel12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrtoStr(TotalIDR));
end;

procedure TfmARQRRptPiutangService.QRLabel13Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrtoStr(TotalUSD));
end;

procedure TfmARQRRptPiutangService.BndDetailAfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  With qu002,sql do
    Begin
       Close;Clear;
       add(' select L.CustID,Convert(varchar(20),K.TransDate,103) as Tanggal,K.InvServiceID+'' (''+L.Nama+'')'' as IP,'
          +' isnull(K.TTLSV,0)as Kredit,'
          +' isnull((Select isnull(Sum(ValuePayment),0) from ARTrPiutInvServiceDt A INNER JOIN ARTrPiutInvServiceHd Q '
          +' ON A.PiutInvServiceId=Q.PiutInvServiceID where A.InvServiceid=K.InvServiceId '
          +' AND CONVERT(varchar(8),Q.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+'''),0)'
          +' as Debit'
          +' FROM ARTrInvServiceHd K INNER JOIN ARTrServiceHd L ON K.ServiceId=L.ServiceId where L.CustID = '''+qu001.Fieldbyname('CustId').AsString+''''
          +' AND isnull(K.TTLSV,0) <>0 ');
       if bCheckced then
       Add(' AND isnull(K.TTLSV,0) '
          +' -(select isnull(sum(L.ValuePayment),0)'
          +' FROM ARTrPiutInvServiceDt L INNER JOIN ARTrPiutInvServiceHd Q ON L.PiutInvServiceID=Q.PiutInvServiceID'
          +' where L.InvServiceID = K.InvServiceID '
          +' AND CONVERT(varchar(8),Q.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''') <>0');
       Add(' AND CONVERT(varchar(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''''
          +' ORDER BY Convert(varchar(20),K.Transdate,112)');
        Open;
    End;

end;

procedure TfmARQRRptPiutangService.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  TotalIDR:=TotalIDR+(qu002.FieldByName('Kredit').AsCurrency-qu002.FieldByName('Debit').AsCurrency);
end;

end.
