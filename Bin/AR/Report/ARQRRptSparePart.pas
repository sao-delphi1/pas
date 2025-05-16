unit ARQRRptSparePart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TfmARQRRptSparePart = class(TfmRptLv0)
    qu002: TADOQuery;
    bnd001: TQRSubDetail;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    qlbNamaInvoice: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    GroupHeaderBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    GroupFooterBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr1: TQRExpr;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    qlbValuta: TQRLabel;
    QRShape6: TQRShape;
    QRLabel10: TQRLabel;
    QRDBText4: TQRDBText;
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRDBText12Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRDBText14Print(sender: TObject; var Value: String);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure LaDiskonPrint(sender: TObject; var Value: String);
    procedure laGTPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARQRRptSparePart: TfmARQRRptSparePart;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmARQRRptSparePart.QRExpr2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmARQRRptSparePart.QRDBText12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmARQRRptSparePart.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmARQRRptSparePart.QRDBText14Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmARQRRptSparePart.QRDBText9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:= FormatRptkurung(Value);
end;

procedure TfmARQRRptSparePart.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:= FormatRptqtykurung(Value);
end;

procedure TfmARQRRptSparePart.QRExpr1Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value :=FormatRptkurung(Value);
end;

procedure TfmARQRRptSparePart.LaDiskonPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value :=FormatRptkurung(Value);
end;

procedure TfmARQRRptSparePart.laGTPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value :=FormatRptkurung(Value);
end;

end.
