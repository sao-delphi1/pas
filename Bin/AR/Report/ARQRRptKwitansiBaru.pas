unit ARQRRptKwitansiBaru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls, jpeg;

type
  TfmARQRRptKwitansiBaru = class(TfmRptLv0)
    QRDBText1: TQRDBText;
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
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape1: TQRShape;
    qlbTerbilang: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRImage2: TQRImage;
    QRShape5: TQRShape;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRShape4: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape3: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRLabel1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    KodeSeri : string;
  end;

var
  fmARQRRptKwitansiBaru: TfmARQRRptKwitansiBaru;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmARQRRptKwitansiBaru.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if qu001.FieldByName('Status').AsString = 'T' then
    Value:= FormatRptkurung(Value)
  else
    Value:= FormatRptqtykurung(Value);
end;

procedure TfmARQRRptKwitansiBaru.QRLabel1Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := sCompanyBank;
end;

end.
