unit ARQRRptKomisiSales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, QRCtrls, DB, ADODB, QuickRpt, StdCtrls, ExtCtrls;

type
  TfmARQRRptKomisiSales = class(TfmRptLv4)
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel10: TQRLabel;
    GroupFooterBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRExpr2: TQRExpr;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRLabel28Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure bnd002AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    totalIDR,TotalUSD,GrandTotalIDR,GrandTotalUSD,Komisi : currency ;
  end;

var
  fmARQRRptKomisiSales: TfmARQRRptKomisiSales;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmARQRRptKomisiSales.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(value);
end;

procedure TfmARQRRptKomisiSales.QRDBText8Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(value);
end;

procedure TfmARQRRptKomisiSales.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(value);
end;

procedure TfmARQRRptKomisiSales.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(value);
end;

procedure TfmARQRRptKomisiSales.BndDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  TotalIDR := 0;
  TotalUSD := 0;
end;

procedure TfmARQRRptKomisiSales.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Currtostr(totalIDR));
end;

procedure TfmARQRRptKomisiSales.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Currtostr(totalUSD));
end;

procedure TfmARQRRptKomisiSales.MyReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  GrandTotalIDR := 0;
  GrandTotalUSD := 0;
end;

procedure TfmARQRRptKomisiSales.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Currtostr(GrandTotalIDR));
end;

procedure TfmARQRRptKomisiSales.QRLabel22Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Currtostr(GrandTotalUSD));
end;

procedure TfmARQRRptKomisiSales.QRLabel25Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Currtostr((GrandTotalIDR*Komisi)/100));
end;

procedure TfmARQRRptKomisiSales.QRLabel28Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value := FormatRptkurung(Currtostr((GrandTotalUSD*Komisi)/100));
end;

procedure TfmARQRRptKomisiSales.QRExpr1Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(Value);
end;

procedure TfmARQRRptKomisiSales.bnd002AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;

     TotalIDR := TotalIDR + qu003.fieldbyname('Total').AsCurrency;
     GrandTotalIDR := GrandTotalIDR + qu003.fieldbyname('Total').AsCurrency ;

end;

end.
