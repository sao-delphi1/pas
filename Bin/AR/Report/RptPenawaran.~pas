unit RptPenawaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls, jpeg;

type
  TfmRptPenawaran = class(TfmRptLv4)
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText15: TQRDBText;
    QRShape5: TQRShape;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRImage2: TQRImage;
    QRShape6: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText14: TQRDBText;
    ChildBand1: TQRChildBand;
    QRDBText13: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRShape4: TQRShape;
    qlbValuta: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    LaDiskon: TQRLabel;
    laGT: TQRLabel;
    qlbTerbilang: TQRLabel;
    qlbCurr1: TQRLabel;
    qlbCurr2: TQRLabel;
    qlbCurr4: TQRLabel;
    QRLabel36: TQRLabel;
    qlbCurr3: TQRLabel;
    QRShape7: TQRShape;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    laSC: TQRLabel;
    qlbSales: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel42: TQRLabel;
    qlbNote: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRLabel41: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRImage6: TQRImage;
    QRDBText9: TQRDBText;
    QRLabel55: TQRLabel;
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure laGTPrint(sender: TObject; var Value: String);
    procedure laSCPrint(sender: TObject; var Value: String);
    procedure LaDiskonPrint(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRDBText12Print(sender: TObject; var Value: String);
    procedure QRDBText14Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Koma : string;
  end;

var
  fmRptPenawaran: TfmRptPenawaran;

implementation

{$R *.dfm}
uses MyUnit;

procedure TfmRptPenawaran.bnd001BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if qu002.FieldByName('Price').AsCurrency = 0 then
  begin
    QRDBText11.Enabled := False;
    QRDBText12.Enabled := False;
  end else
  begin
    QRDBText11.Enabled := True;
    QRDBText12.Enabled := True;
  end;
end;

procedure TfmRptPenawaran.laGTPrint(sender: TObject; var Value: String);
begin
  inherited;
  if Koma = 'Y' then
    Value := FormatRptkurung(Value)
  else
    Value := FormatRptqtykurung(Value)
end;

procedure TfmRptPenawaran.laSCPrint(sender: TObject; var Value: String);
begin
  inherited;
  if Koma = 'Y' then
    Value := FormatRptkurung(Value)
  else
    Value := FormatRptqtykurung(Value)
end;

procedure TfmRptPenawaran.LaDiskonPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  if Koma = 'Y' then
    Value := FormatRptkurung(Value)
  else
    Value := FormatRptqtykurung(Value)
end;

procedure TfmRptPenawaran.QRExpr1Print(sender: TObject; var Value: String);
begin
  inherited;
  if Koma = 'Y' then
    Value := FormatRptkurung(Value)
  else
    Value := FormatRptqtykurung(Value)
end;

procedure TfmRptPenawaran.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if Koma = 'Y' then
    Value := FormatRptkurung(Value)
  else
    Value := FormatRptqtykurung(Value)
end;

procedure TfmRptPenawaran.QRDBText12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if Koma = 'Y' then
    Value := FormatRptkurung(Value)
  else
    Value := FormatRptqtykurung(Value)
end;

procedure TfmRptPenawaran.QRDBText14Print(sender: TObject;
  var Value: String);
begin
  inherited;
    Value := FormatRptqtykurung(Value)
end;

procedure TfmRptPenawaran.QRLabel19Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := '2. Prices FOB '+qu001.FieldByname('FOB').asString+'.';
end;

procedure TfmRptPenawaran.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PrintBand := qu002.FieldByName('Note').AsString <> '';
end;

end.
