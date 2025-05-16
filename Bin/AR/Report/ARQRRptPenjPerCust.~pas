unit ARQRRptPenjPerCust;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, QRCtrls, DB, ADODB, QuickRpt, StdCtrls, ExtCtrls;

type
  TfmARQRRptPenjPerCust = class(TfmRptLv4)
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText5: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText14: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRDBText14Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    PPN,TPPN,TotalIDR,TotalUSD,GrandTotalIDR,GrandTotalUSD : currency ;
  end;

var
  fmARQRRptPenjPerCust: TfmARQRRptPenjPerCust;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmARQRRptPenjPerCust.QRDBText8Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(value);
end;

procedure TfmARQRRptPenjPerCust.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(value);
end;

procedure TfmARQRRptPenjPerCust.BndDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PPN := 0;
  TotalIDR := 0;
  TotalUSD := 0;
end;

procedure TfmARQRRptPenjPerCust.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  if UpperCase(qu002.FieldByName('CurrId').AsString)='IDR' then
  begin
    PPN := PPN + qu002.FieldByName('PPN').AsCurrency;
    TPPN := TPPN + qu002.FieldByName('PPN').AsCurrency;
    TotalIDR := TotalIDR + qu002.fieldbyname('TTLPj').AsCurrency;
    GrandTotalIDR := GrandTotalIDR + qu002.fieldbyname('TTLPj').AsCurrency
  end Else
  begin
    PPN := PPN + qu002.FieldByName('PPN').AsCurrency * qu002.FieldByName('Rate').AsCurrency;
    TPPN := TPPN + qu002.FieldByName('PPN').AsCurrency * qu002.FieldByName('Rate').AsCurrency;
    TotalUSD := TotalUSD + qu002.fieldbyname('TTLPj').AsCurrency;
    GrandTotalUSD := GrandTotalUSD + qu002.fieldbyname('TTLPj').AsCurrency;
  end;
end;

procedure TfmARQRRptPenjPerCust.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Currtostr(totalIDR));
end;

procedure TfmARQRRptPenjPerCust.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Currtostr(totalUSD));
end;

procedure TfmARQRRptPenjPerCust.MyReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  TPPN := 0;
  GrandTotalIDR := 0;
  GrandTotalUSD := 0;
end;

procedure TfmARQRRptPenjPerCust.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Currtostr(GrandTotalIDR));
end;

procedure TfmARQRRptPenjPerCust.QRLabel22Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Currtostr(GrandTotalUSD));
end;

procedure TfmARQRRptPenjPerCust.QRDBText14Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if qu002.FieldByName('CurrID').AsString = 'USD' then
    Value := FormatRptkurung(Value)
  else
    Value := '';
end;

procedure TfmARQRRptPenjPerCust.QRLabel19Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Currtostr(PPN));
end;

procedure TfmARQRRptPenjPerCust.QRLabel25Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Currtostr(TPPN));
end;

end.
