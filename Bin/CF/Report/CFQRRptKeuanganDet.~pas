unit CFQRRptKeuanganDet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv1, QuickRpt, DB, ADODB, StdCtrls, QRCtrls, ExtCtrls;

type
  TfmCFQRRptKeuanganDet = class(TfmRptLv1)
    ChildBand1: TQRChildBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    SummaryBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    qu002: TADOQuery;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRShape1: TQRShape;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel6: TQRLabel;
    QRShape2: TQRShape;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    qlbDebit: TQRLabel;
    qlbKredit: TQRLabel;
    qrlDebit: TQRLabel;
    qrlKredit: TQRLabel;
    qrlBDebit: TQRLabel;
    qrlBKredit: TQRLabel;
    qlbBDebit: TQRLabel;
    qlbBKredit: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    procedure QRDBText16Print(sender: TObject; var Value: String);
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);

  private
    { Private declarations }
  public
    { Public declarations }
    TEDebit,TEKredit : currency;
  end;

var
  fmCFQRRptKeuanganDet: TfmCFQRRptKeuanganDet;

implementation

uses UnitGeneral, MyUnit, RptLv0;

{$R *.dfm}

procedure TfmCFQRRptKeuanganDet.QRDBText16Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmCFQRRptKeuanganDet.BndDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var Awal,Saldo : currency;
begin
  inherited;
  if qu001.FieldByName('FgTipe').AsString = 'A' then
  begin
    Awal :=  qu001.FieldByName('BGDebit').AsCurrency - qu001.FieldByName('BGKredit').AsCurrency;
    if Awal > 0 then
    begin
      qlbBDebit.Caption := FormatRptkurung(CurrToStr(Awal));
      qlbBKredit.Caption := '0.00';
    end else
    begin
      qlbBDebit.Caption := '0.00';
      qlbBKredit.Caption := FormatRptkurung(CurrToStr(Awal*-1));
    end;

    Saldo :=  qu001.FieldByName('EGDebit').AsCurrency - qu001.FieldByName('EGKredit').AsCurrency;
    if Saldo > 0 then
    begin
      qlbDebit.Caption := FormatRptkurung(CurrToStr(Saldo));
      qlbKredit.Caption := '0.00';
      TEDebit := TEDebit + Saldo;
      TEKredit := TEKredit;
    end else
    begin
      qlbDebit.Caption := '0.00';
      qlbKredit.Caption := FormatRptkurung(CurrToStr(Saldo*-1));
      TEDebit := TEDebit;
      TEKredit := TEKredit + (Saldo*-1);
    end;
  end else
  begin
    Awal :=  qu001.FieldByName('BGKredit').AsCurrency - qu001.FieldByName('BGDebit').AsCurrency;
    if Awal > 0 then
    begin
      qlbBDebit.Caption := '0.00';
      qlbBKredit.Caption := FormatRptkurung(CurrToStr(Awal));
    end else
    begin
      qlbBDebit.Caption := FormatRptkurung(CurrToStr(Awal*-1));
      qlbBKredit.Caption := '0.00';
    end;

    Saldo :=  qu001.FieldByName('EGKredit').AsCurrency - qu001.FieldByName('EGDebit').AsCurrency;
    if Saldo > 0 then
    begin
      qlbDebit.Caption := '0.00';
      qlbKredit.Caption := FormatRptkurung(CurrToStr(Saldo));
    end else
    begin
      qlbDebit.Caption := FormatRptkurung(CurrToStr(Saldo*-1));
      qlbKredit.Caption := '0.00';
    end;
  end;
end;

procedure TfmCFQRRptKeuanganDet.QRSubDetail1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var Awal,Saldo : currency;
begin
  inherited;
  if qu002.FieldByName('FgTipe').AsString = 'A' then
  begin
    Awal :=  qu002.FieldByName('BDebit').AsCurrency - qu002.FieldByName('BKredit').AsCurrency;
    if Awal > 0 then
    begin
      qrlBDebit.Caption := FormatRptkurung(CurrToStr(Awal));
      qrlBKredit.Caption := '0.00';
    end else
    begin
      qrlBDebit.Caption := '0.00';
      qrlBKredit.Caption := FormatRptkurung(CurrToStr(Awal*-1));
    end;

    Saldo :=  qu002.FieldByName('EDebit').AsCurrency - qu002.FieldByName('EKredit').AsCurrency;
    if Saldo > 0 then
    begin
      qrlDebit.Caption := FormatRptkurung(CurrToStr(Saldo));
      qrlKredit.Caption := '0.00';
    end else
    begin
      qrlDebit.Caption := '0.00';
      qrlKredit.Caption := FormatRptkurung(CurrToStr(Saldo*-1));
    end;
  end else
  begin
    Awal :=  qu002.FieldByName('BKredit').AsCurrency - qu002.FieldByName('BDebit').AsCurrency;
    if Awal > 0 then
    begin
      qrlBDebit.Caption := '0.00';
      qrlBKredit.Caption := FormatRptkurung(CurrToStr(Awal));
    end else
    begin
      qrlBDebit.Caption := FormatRptkurung(CurrToStr(Awal*-1));
      qrlBKredit.Caption := '0.00';
    end;

    Saldo :=  qu002.FieldByName('EKredit').AsCurrency - qu002.FieldByName('EDebit').AsCurrency;
    if Saldo > 0 then
    begin
      qrlDebit.Caption := '0.00';
      qrlKredit.Caption := FormatRptkurung(CurrToStr(Saldo));
    end else
    begin
      qrlDebit.Caption := FormatRptkurung(CurrToStr(Saldo*-1));
      qrlKredit.Caption := '0.00';
    end;
  end;

end;

procedure TfmCFQRRptKeuanganDet.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  TEDebit := 0;
  TEKredit := 0;
end;

procedure TfmCFQRRptKeuanganDet.QRLabel8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(TEDebit))
end;

procedure TfmCFQRRptKeuanganDet.QRLabel9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(TEKredit))
end;

end.


