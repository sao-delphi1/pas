unit ARQRRptBASTUF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls, jpeg;

type
  TfmARQRRptBASTUF = class(TfmRptLv4)
    QRLabel2: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape3: TQRShape;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape2: TQRShape;
    QRImage2: TQRImage;
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRDBText12Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    sHarga : string;
    Nomor : integer;
  end;

var
  fmARQRRptBASTUF: TfmARQRRptBASTUF;

implementation

{$R *.dfm}
uses Myunit;

procedure TfmARQRRptBASTUF.bnd001BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if sHarga = 'Y' then
    PrintBand := qu002.FieldByName('Price').AsCurrency > 0;

  if PrintBand=True then
  Nomor := Nomor + 1;
end;

procedure TfmARQRRptBASTUF.QRLabel16Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := IntToStr(Nomor);
end;

procedure TfmARQRRptBASTUF.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Nomor := 0;
end;

procedure TfmARQRRptBASTUF.QRDBText12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptQtyKurung(Value);
end;

end.
