unit ARQRRptTrInvServicePerTeknisi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv3, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls;

type
  TfmARQRRptInvServicePerTeknisi = class(TfmRptLv3)
    SummaryBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    GroupFooterBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure BndDetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel5Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    Total,GrandTotal,Komisi : Currency;
  end;

var
  fmARQRRptInvServicePerTeknisi: TfmARQRRptInvServicePerTeknisi;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmARQRRptInvServicePerTeknisi.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value := FormatRptqtykurung(Value)
end;

procedure TfmARQRRptInvServicePerTeknisi.QRDBText8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value)
end;

procedure TfmARQRRptInvServicePerTeknisi.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value)
end;

procedure TfmARQRRptInvServicePerTeknisi.QRExpr1Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value)
end;

procedure TfmARQRRptInvServicePerTeknisi.BndDetailAfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  total := 0;
end;

procedure TfmARQRRptInvServicePerTeknisi.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  GrandTotal := 0;
  Total := 0;
end;

procedure TfmARQRRptInvServicePerTeknisi.bnd001AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  total := Total + qu002.fieldbyname('TTLSV').AsCurrency;
  GrandTotal := GrandTotal + qu002.fieldbyname('TTLSV').AsCurrency;
end;

procedure TfmARQRRptInvServicePerTeknisi.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Currtostr(total));
end;

procedure TfmARQRRptInvServicePerTeknisi.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value := FormatRptkurung(Currtostr(GrandTotal));
end;

procedure TfmARQRRptInvServicePerTeknisi.QRLabel5Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value := FormatRptkurung(Currtostr((GrandTotal*Komisi)/100));
end;

end.
