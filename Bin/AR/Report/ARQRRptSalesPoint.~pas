unit ARQRRptSalesPoint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls;

type
  TfmARQRRptSalesPoint = class(TfmRptLv4)
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel43: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    procedure bnd002BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRDBText12Print(sender: TObject; var Value: String);
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel43Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRLabel23Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    TanggalSampai,TanggalDari : TDateTime ;
    CPoint,QPoint,DPoint,TPoint,GCPoint,GQPoint,GDPoint,GTPoint : Currency;
    { Public declarations }
  end;

var
  fmARQRRptSalesPoint: TfmARQRRptSalesPoint;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmARQRRptSalesPoint.bnd002BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PrintBand := qu003.FieldByName('ItemName').AsString <> '';
end;

procedure TfmARQRRptSalesPoint.QRDBText9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(Value)
end;

procedure TfmARQRRptSalesPoint.QRDBText12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value)
end;

procedure TfmARQRRptSalesPoint.BndDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  CPoint := 0;
  QPoint := 0;
  DPoint := 0;
  TPoint := 0;
end;

procedure TfmARQRRptSalesPoint.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  if qu002.FieldByName('Status').AsInteger = 1 then
    CPoint := CPoint + qu002.FieldByName('Point').AsCurrency;
  if qu002.FieldByName('Status').AsInteger = 2 then
    QPoint := QPoint + qu002.FieldByName('Point').AsCurrency;
  if qu002.FieldByName('Status').AsInteger = 3 then
    DPoint := DPoint + qu002.FieldByName('Point').AsCurrency;
  TPoint := TPoint + qu002.FieldByName('Point').AsCurrency;

  if qu002.FieldByName('Status').AsInteger = 1 then
    GCPoint := GCPoint + qu002.FieldByName('Point').AsCurrency;
  if qu002.FieldByName('Status').AsInteger = 2 then
    GQPoint := GQPoint + qu002.FieldByName('Point').AsCurrency;
  if qu002.FieldByName('Status').AsInteger = 3 then
    GDPoint := GDPoint + qu002.FieldByName('Point').AsCurrency;
  GTPoint := GTPoint + qu002.FieldByName('Point').AsCurrency;
end;

procedure TfmARQRRptSalesPoint.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(CurrToStr(CPoint));
end;

procedure TfmARQRRptSalesPoint.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(CurrToStr(QPoint));
end;

procedure TfmARQRRptSalesPoint.QRLabel43Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(CurrToStr(DPoint));
end;

procedure TfmARQRRptSalesPoint.QRLabel19Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(CurrToStr(TPoint));
end;

procedure TfmARQRRptSalesPoint.QRLabel25Print(sender: TObject;
  var Value: String);
var sisa : currency;
begin
  inherited;
  sisa := 200000-TPoint;
  Value := FormatRptqtykurung(CurrToStr(sisa));
  if sisa > 0 then
    QRLabel25.Font.Color := clRed
  else
    QRLabel25.Font.Color := clBlack;
end;

procedure TfmARQRRptSalesPoint.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(CurrToStr(GCPoint))
end;

procedure TfmARQRRptSalesPoint.QRLabel22Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(CurrToStr(GQPoint))
end;

procedure TfmARQRRptSalesPoint.QRLabel16Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(CurrToStr(GDPoint))
end;

procedure TfmARQRRptSalesPoint.QRLabel23Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(CurrToStr(GTPoint))
end;

end.
