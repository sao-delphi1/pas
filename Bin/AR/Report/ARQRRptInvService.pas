unit ARQRRptInvService;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TfmQRRptInvService = class(TfmRptLv0)
    qu002: TADOQuery;
    bnd001: TQRSubDetail;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    qlbNamaInvoice: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    InvServiceId: TQRDBText;
    GroupHeaderBand1: TQRBand;
    QRDBText13: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    GroupFooterBand2: TQRBand;
    QRLabel20: TQRLabel;
    QRShape6: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    laGT: TQRLabel;
    GroupHeaderBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRExpr2: TQRExpr;
    qu003: TADOQuery;
    QRLabel11: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape4: TQRShape;
    QRExpr1: TQRExpr;
    QRDBText11: TQRDBText;
    QRShape1: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    qlbKet: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText10: TQRDBText;
    qlbTerbilang: TQRLabel;
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
  fmQRRptInvService: TfmQRRptInvService;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmQRRptInvService.QRExpr2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmQRRptInvService.QRDBText12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmQRRptInvService.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmQRRptInvService.QRDBText14Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmQRRptInvService.QRDBText9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:= FormatRptkurung(Value);
end;

procedure TfmQRRptInvService.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:= FormatRptqtykurung(Value);
end;

procedure TfmQRRptInvService.QRExpr1Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value :=FormatRptkurung(Value);
end;

procedure TfmQRRptInvService.LaDiskonPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value :=FormatRptkurung(Value);
end;

procedure TfmQRRptInvService.laGTPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value :=FormatRptkurung(Value);
end;

end.
