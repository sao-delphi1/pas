unit ARQRRptNotaService;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TfmARQRRptNotaService = class(TfmRptLv0)
    qu002: TADOQuery;
    bnd001: TQRSubDetail;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    qlbNamaInvoice: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
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
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText6: TQRDBText;
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
  fmARQRRptNotaService: TfmARQRRptNotaService;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmARQRRptNotaService.QRExpr2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmARQRRptNotaService.QRDBText12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmARQRRptNotaService.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmARQRRptNotaService.QRDBText14Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmARQRRptNotaService.QRDBText9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:= FormatRptkurung(Value);
end;

procedure TfmARQRRptNotaService.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:= FormatRptqtykurung(Value);
end;

procedure TfmARQRRptNotaService.QRExpr1Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value :=FormatRptkurung(Value);
end;

procedure TfmARQRRptNotaService.LaDiskonPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value :=FormatRptkurung(Value);
end;

procedure TfmARQRRptNotaService.laGTPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value :=FormatRptkurung(Value);
end;

end.
