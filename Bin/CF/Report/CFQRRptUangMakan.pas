unit CFQRRptUangMakan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TfmCFQRRptUangMakan = class(TfmRptLv0)
    QRLabel5: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape2: TQRShape;
    bnd001: TQRSubDetail;
    QRDBText6: TQRDBText;
    qu002: TADOQuery;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    qlbDendaTelat: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText8: TQRDBText;
    QRBand1: TQRBand;
    qlbTerbilang: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel12: TQRLabel;
    qlbTotal: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape1: TQRShape;
    qlbGrandTotal: TQRLabel;
    qlbKerajinan: TQRLabel;
    qlbSubTotal: TQRLabel;
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qlbDendaTelatPrint(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure qlbTotalPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    Telat : integer;
    DTelat,Denda,DendaT,Total : currency;
  end;

var
  fmCFQRRptUangMakan: TfmCFQRRptUangMakan;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmCFQRRptUangMakan.bnd001BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  Telat := qu002.FieldByName('Telat').AsInteger;
  DTelat:= qu002.FieldByName('DTelat').AsInteger;
  if Telat MOD 5 = 0 then
    Denda := (Telat DIV 5) * 1000
  else
    Denda := ((Telat DIV 5)+1)*1000;
  if Denda > qu002.FieldByName('UangMakan').AsCurrency then
    DendaT := qu002.FieldByName('UangMakan').AsCurrency
  else
    DendaT := Denda;
  Total := qu002.FieldByName('UangMakan').AsCurrency - DendaT;
end;

procedure TfmCFQRRptUangMakan.qlbDendaTelatPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(DendaT))
end;

procedure TfmCFQRRptUangMakan.QRDBText8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value)
end;

procedure TfmCFQRRptUangMakan.qlbTotalPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value :=  FormatRptkurung(CurrToStr(Total))
end;

end.
