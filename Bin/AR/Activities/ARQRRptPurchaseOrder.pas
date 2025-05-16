unit ARQRRptPurchaseOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls, jpeg;

type
  TfmARQRRptPurchaseOrder = class(TfmRptLv0)
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    qu002: TADOQuery;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel12: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand1: TQRBand;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel191: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape2: TQRShape;
    qlbNote: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRShape3: TQRShape;
    QRShape1: TQRShape;
    quStock: TADOQuery;
    QRExpr1: TQRExpr;
    quCalc: TADOQuery;
    ChildBand1: TQRChildBand;
    qlbKeterangan: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText21: TQRDBText;
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure qlbPricePrint(sender: TObject; var Value: String);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRDBText16Print(sender: TObject; var Value: String);
    procedure QRDBText17Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    FormatAngka,Status : Boolean;
  end;

var
  fmARQRRptPurchaseOrder: TfmARQRRptPurchaseOrder;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmARQRRptPurchaseOrder.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(Value);
end;

procedure TfmARQRRptPurchaseOrder.qlbPricePrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmARQRRptPurchaseOrder.QRDBText9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmARQRRptPurchaseOrder.QRExpr1Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmARQRRptPurchaseOrder.QRDBText16Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmARQRRptPurchaseOrder.QRDBText17Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmARQRRptPurchaseOrder.QRDBText8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmARQRRptPurchaseOrder.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  qlbNote.Caption :=  convert(FormatFloat(sEditFormat, qu001.FieldByName('grandtotal').AsCurrency))+' Rupiah #';
end;

end.
