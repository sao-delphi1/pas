unit QRPerforma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv3, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls;

type
  TfmQRPerforma = class(TfmRptLv3)
    QRShape4: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText11: TQRDBText;
    GroupFooterBand1: TQRBand;
    qlbValuta: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel30: TQRLabel;
    qlbTerbilang: TQRLabel;
    qlbCurr1: TQRLabel;
    qlbCurr4: TQRLabel;
    QRLabel36: TQRLabel;
    qlbCurr3: TQRLabel;
    QRShape15: TQRShape;
    qlbSales: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape2: TQRShape;
    QRLabel19: TQRLabel;
    QRShape3: TQRShape;
    QRLabel20: TQRLabel;
    QRShape5: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRShape6: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape7: TQRShape;
    QRDBText17: TQRDBText;
    QRImage2: TQRImage;
    QRLabel50: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel39: TQRLabel;
    QRDBText18: TQRDBText;
    procedure GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText14Print(sender: TObject; var Value: String);
    procedure QRDBText12Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRDBText13Print(sender: TObject; var Value: String);
    procedure QRLabel50Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    Koma : string;
  end;

var
  fmQRPerforma: TfmQRPerforma;

implementation

uses MyUnit,UnitDate,UnitGeneral;
{$R *.dfm}

procedure TfmQRPerforma.GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if Koma='Y' then
  qlbTerbilang.Caption :=  'Terbilang '+ convert(FormatFloat(sEditFormat, qu001.FieldByName('TotalAkhir').ASCurrency))+'Rupiah #'
  else
  qlbTerbilang.Caption :=  'Terbilang '+ convert(FormatFloat(sEditFormat, ROUND(qu001.FieldByName('TotalAkhir').ASCurrency)))+'Rupiah #';


  if qu001.FieldByName('FgPayment').ASString='K' then
  begin
    QrLabel32.Enabled := False; QrLabel35.Enabled := False;
    QrLabel33.Enabled := False; QrLabel37.Enabled := False;
    QrLabel38.Enabled := False; QrLabel41.Enabled := False;
    QrLabel42.Enabled := False; QrLabel45.Enabled := False;
    QrLabel29.Enabled := False; QrLabel40.Enabled := False;
    QRLabel8.Top := 65;
  end;

  if qu001.FieldByName('FgPayment').ASString='B' then
  begin
    QRLabel8.Top := 85;
  end;

  if qu001.FieldByName('FgPayment').ASString='C' then
  begin
    QRLabel8.Top := 105;
  end;

  if qu001.FieldByName('TotalAkhira').AsCurrency=0 then
  begin
    QRLabel36.Enabled := False; qlbCurr3.Enabled := False; QRDBText7.Enabled := False; QRShape7.Enabled:=False;
    QRLabel18.Enabled := False; QRLabel21.Enabled := False; QRDBText17.Enabled := False;
  end;
end;

procedure TfmQRPerforma.QRDBText14Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptQtyKurung(Value);
end;

procedure TfmQRPerforma.QRDBText12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if Koma='Y' then
  Value := FormatRptKurung(Value)
  else
  Value := FormatRptQtyKurung(Value);
end;

procedure TfmQRPerforma.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if Koma='Y' then
  Value := FormatRptKurung(Value)
  else
  Value := FormatRptQtyKurung(Value);
end;

procedure TfmQRPerforma.QRDBText6Print(sender: TObject; var Value: String);
begin
  inherited;
  if Koma='Y' then
  Value := FormatRptKurung(Value)
  else
  Value := FormatRptQtyKurung(Value);
end;

procedure TfmQRPerforma.QRDBText7Print(sender: TObject; var Value: String);
begin
  inherited;
  if Koma='Y' then
  Value := FormatRptKurung(Value)
  else
  Value := FormatRptQtyKurung(Value);
end;

procedure TfmQRPerforma.QRDBText8Print(sender: TObject; var Value: String);
begin
  inherited;
  if Koma='Y' then
  Value := FormatRptKurung(Value)
  else
  Value := FormatRptQtyKurung(Value);
end;

procedure TfmQRPerforma.QRDBText13Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if Koma='Y' then
  Value := FormatRptKurung(Value)
  else
  Value := FormatRptQtyKurung(Value);
end;

procedure TfmQRPerforma.QRLabel50Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := 'Tanggal Cetak : '+ FormatDateTime('YYYY-MM-DD HH:MM:SS',GetServerDateTime);
end;

end.
