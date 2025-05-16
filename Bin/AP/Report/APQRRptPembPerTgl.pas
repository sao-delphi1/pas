unit APQRRptPembPerTgl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, QRCtrls, DB, ADODB, QuickRpt, StdCtrls, ExtCtrls;

type
  TfmAPQRRptPembPerTgl = class(TfmRptLv4)
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
    QRLabel23: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
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
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    TotalIDR,TotalUSD,PPN,TPPN,GrandTotalIDR,GrandTotalUSD : currency ;
  end;

var
  fmAPQRRptPembPerTgl: TfmAPQRRptPembPerTgl;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmAPQRRptPembPerTgl.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(value);
end;

procedure TfmAPQRRptPembPerTgl.QRDBText8Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(value);
end;

procedure TfmAPQRRptPembPerTgl.BndDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PPN := 0;
  TotalIDR := 0;
  TotalUSD := 0;
end;

procedure TfmAPQRRptPembPerTgl.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  if UpperCase(qu002.FieldByName('CurrID').AsString)='IDR' then
    PPN := PPN + qu002.FieldByName('PPN').AsCurrency
  else
    PPN := PPN + qu002.FieldByName('PPN').AsCurrency * qu002.FieldByName('Rate').AsCurrency;

  if UpperCase(qu002.FieldByName('CurrID').AsString)='IDR' then
    TPPN := TPPN + qu002.FieldByName('PPN').AsCurrency
  else
    TPPN := TPPN + qu002.FieldByName('PPN').AsCurrency * qu002.FieldByName('Rate').AsCurrency;

  if UpperCase(qu002.FieldByName('CurrId').AsString)='IDR' then
     TotalIDR := TotalIDR + qu002.fieldbyname('TTLPb').AsCurrency
  Else
     TotalUSD := TotalUSD + qu002.fieldbyname('TTLPb').AsCurrency;

  if UpperCase(qu002.FieldByName('CurrId').AsString)='IDR' then
     GrandTotalIDR := GrandTotalIDR + qu002.fieldbyname('TTLPb').AsCurrency
  Else
     GrandTotalUSD := GrandTotalUSD + qu002.fieldbyname('TTLPb').AsCurrency;
end;

procedure TfmAPQRRptPembPerTgl.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(TotalIDR));
end;

procedure TfmAPQRRptPembPerTgl.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(TotalUSD));
end;

procedure TfmAPQRRptPembPerTgl.MyReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  TPPN := 0;
  GrandTotalIDR := 0;
  GrandTotalUSD := 0;
end;

procedure TfmAPQRRptPembPerTgl.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(GrandTotalIDR));
end;

procedure TfmAPQRRptPembPerTgl.QRLabel22Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(GrandTotalUSD));
end;

procedure TfmAPQRRptPembPerTgl.QRLabel16Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(PPN));
end;

procedure TfmAPQRRptPembPerTgl.QRLabel20Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(TPPN));
end;

end.
