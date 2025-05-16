unit ARQRRptPenawaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls, jpeg;

type
  TfmARQRRptPenawaran = class(TfmRptLv0)
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
    QRLabel17: TQRLabel;
    QRShape1: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape2: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    bnd001: TQRSubDetail;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    ChildBand1: TQRChildBand;
    QRDBText13: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText14: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRShape3: TQRShape;
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
    QRShape4: TQRShape;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    laSC: TQRLabel;
    qlbSales: TQRLabel;
    qu002: TADOQuery;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel42: TQRLabel;
    qlbNote: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRShape5: TQRShape;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRImage2: TQRImage;
    QRShape6: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel43: TQRLabel;
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText14Print(sender: TObject; var Value: String);
    procedure QRDBText12Print(sender: TObject; var Value: String);
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Koma : string;
  end;

var
  fmARQRRptPenawaran: TfmARQRRptPenawaran;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmARQRRptPenawaran.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PrintBand := qu002.FieldByName('Note').AsString <> ''
end;

procedure TfmARQRRptPenawaran.QRDBText14Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(Value)
end;

procedure TfmARQRRptPenawaran.QRDBText12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if Koma = 'Y' then
    Value := FormatRptkurung(Value)
  else
    Value := FormatRptqtykurung(Value)
end;

procedure TfmARQRRptPenawaran.bnd001BeforePrint(Sender: TQRCustomBand;
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

end.
