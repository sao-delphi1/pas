unit ARQRRptTrInvService;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv3, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls;

type
  TfmARQRRptInvService = class(TfmRptLv3)
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    GroupHeaderBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
    bnd002: TQRSubDetail;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    qu003: TADOQuery;
    GroupHeaderBand2: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel17: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel23: TQRLabel;
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure bnd002BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GroupHeaderBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARQRRptInvService: TfmARQRRptInvService;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmARQRRptInvService.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value := FormatRptqtykurung(Value)
end;

procedure TfmARQRRptInvService.QRDBText8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value)
end;

procedure TfmARQRRptInvService.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value)
end;

procedure TfmARQRRptInvService.QRExpr1Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value)
end;

procedure TfmARQRRptInvService.bnd002BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if qu003.FieldByName('ItemID').AsString = '' then
    bnd002.Enabled := False;
end;

procedure TfmARQRRptInvService.GroupHeaderBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  if qu003.FieldByName('ItemID').AsString = '' then
   GroupHeaderBand2.Enabled := False;
end;

end.
