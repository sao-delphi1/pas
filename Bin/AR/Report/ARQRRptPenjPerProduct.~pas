unit ARQRRptPenjPerProduct;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv3, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls;

type
  TfmARQRRptPenjPerProduct = class(TfmRptLv3)
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    GroupFooterBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel9: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel23: TQRLabel;
    QRExpr2: TQRExpr;
    bnd002: TQRSubDetail;
    ds002: TDataSource;
    qu003: TADOQuery;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText9: TQRDBText;
    GroupFooterBand2: TQRBand;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRExpr3: TQRExpr;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure bnd002AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure BndDetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel31Print(sender: TObject; var Value: String);
    procedure QRLabel30Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    totalIDR,TotalUSD,GrandTotalIDR,GrandTotalUSD : currency ;
    Tanggaldari,TanggalSampai : TDateTime ;
    PTotalIDR,PTotalUSD : currency;
  end;

var
  fmARQRRptPenjPerProduct: TfmARQRRptPenjPerProduct;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmARQRRptPenjPerProduct.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value := FormatRptqtykurung(Value)
end;

procedure TfmARQRRptPenjPerProduct.QRDBText8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value)
end;

procedure TfmARQRRptPenjPerProduct.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(currtostr(PtotalIDR));
end;

procedure TfmARQRRptPenjPerProduct.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(currtostr(PtotalUSD));
end;

procedure TfmARQRRptPenjPerProduct.MyReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  GrandTotalIDR := 0;
  GrandTotalUSD := 0;
  TotalIDR :=0;
  TotalUSD :=0;
  PTotalIDR :=0;
  PTotalUSD :=0;
end;

procedure TfmARQRRptPenjPerProduct.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  TotalIDR := 0;
  TotalUSD := 0;
end;

procedure TfmARQRRptPenjPerProduct.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(currtostr(GrandTotalIDR));
end;

procedure TfmARQRRptPenjPerProduct.QRLabel22Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(currtostr(GrandTotalUSD));
end;

procedure TfmARQRRptPenjPerProduct.QRExpr1Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(Value);
end;

procedure TfmARQRRptPenjPerProduct.bnd002AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  if UpperCase(qu003.FieldByName('CurrId').AsString)='IDR' then
     TotalIDR := TotalIDR + qu003.fieldbyname('Total').AsCurrency
  Else
     TotalUSD := TotalUSD + qu003.fieldbyname('Total').AsCurrency;

  if UpperCase(qu003.FieldByName('CurrId').AsString)='IDR' then
     PTotalIDR := PTotalIDR + qu003.fieldbyname('Total').AsCurrency
  Else
     PTotalUSD := PTotalUSD + qu003.fieldbyname('Total').AsCurrency;

  if UpperCase(qu003.FieldByName('CurrId').AsString)='IDR' then
     GrandTotalIDR := GrandTotalIDR + qu003.fieldbyname('Total').AsCurrency
  Else
     GrandTotalUSD := GrandTotalUSD + qu003.fieldbyname('Total').AsCurrency;
end;

procedure TfmARQRRptPenjPerProduct.BndDetailAfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  PTotalIDR :=0;
  PTotalUSD :=0;
end;

procedure TfmARQRRptPenjPerProduct.QRLabel31Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value := FormatRptkurung(currtostr(totalIDR));
end;

procedure TfmARQRRptPenjPerProduct.QRLabel30Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value := FormatRptkurung(currtostr(totalUSD));
end;

end.
