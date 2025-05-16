unit ARQrRptPajakPenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TfmQRRptPajakPenjualan = class(TfmRptLv0)
    qu002: TADOQuery;
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
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    bnd001: TQRSubDetail;
    GroupFooterBand1: TQRBand;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape17: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape18: TQRShape;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRShape23: TQRShape;
    QRLabel48: TQRLabel;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel55: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    qlbNama: TQRLabel;
    QRShape24: TQRShape;
    QRShape28: TQRShape;
    QRLabel61: TQRLabel;
    QRShape5: TQRShape;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRShape27: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRShape32: TQRShape;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRExpr8: TQRExpr;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRLabel73: TQRLabel;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRLabel74: TQRLabel;
    QRLabel17: TQRLabel;
    qlbTanggal: TQRLabel;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    qlbKurs: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText9Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    Data : String;
    Count : Currency;
  public
    { Public declarations }
  end;

var
  fmQRRptPajakPenjualan: TfmQRRptPajakPenjualan;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmQRRptPajakPenjualan.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if qu001.FieldByName('Status').AsString = 'Y' then
    Value := FormatRptqtykurung(Value)
  else
    Value:= FormatRptkurung(Value);
end;

procedure TfmQRRptPajakPenjualan.bnd001BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if Data = qu002.FieldByName('ItemName').AsString then
    QRLabel50.Caption := ''
  else
  begin
   count := count+1;
   QRLabel50.Caption :=CurrToStr(count);
  End;
end;

procedure TfmQRRptPajakPenjualan.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  Count := 0;
end;

procedure TfmQRRptPajakPenjualan.GroupFooterBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  qlbTanggal.Caption := 'Jakarta, '+ FormatDateTime('DD/MM/YYYY',qu001.FieldByName('Transdate').AsDateTime)
end;

procedure TfmQRRptPajakPenjualan.QRDBText9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(Value)
end;

end.
