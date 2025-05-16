unit CFQRRptLabaRugi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv1, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TfmCFQrRptLabaRugi = class(TfmRptLv1)
    QRDBText1: TQRDBText;
    QRBand1: TQRBand;
    quCalc: TADOQuery;
    quStock: TADOQuery;
    bnd001: TQRSubDetail;
    QRBand2: TQRBand;
    qu002: TADOQuery;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel11Print(sender: TObject; var Value: String);
    procedure QRLabel2Print(sender: TObject; var Value: String);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel3Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    dari,sampai : string;
    JumlahA,Total, GrandTotal : Currency;
  end;

var
  fmCFQrRptLabaRugi: TfmCFQrRptLabaRugi;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmCFQrRptLabaRugi.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if (TRIM(qu002.FieldByName('Flag').AsString) <> 'A') then
    JumlahA := qu002.FieldByName('Jumlah').AsCurrency * -1
  else
    JumlahA := qu002.FieldByName('Jumlah').AsCurrency;


  Value := FormatRptkurung(CurrtoStr(JumlahA))
end;

procedure TfmCFQrRptLabaRugi.MyReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  GrandTotal := 0;
end;

procedure TfmCFQrRptLabaRugi.BndDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  Total := 0;
end;

procedure TfmCFQrRptLabaRugi.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  if (TRIM(qu002.FieldByName('Kode').AsString) = '1') then
  begin
    Total := Total + qu002.FieldByName('Jumlah').AsCurrency;
    GrandTotal := GrandTotal + qu002.FieldByName('Jumlah').AsCurrency;
  end;

  if (TRIM(qu002.FieldByName('Kode').AsString) = '2') then
  begin
    Total := Total + qu002.FieldByName('Jumlah').AsCurrency;
    GrandTotal := GrandTotal + qu002.FieldByName('Jumlah').AsCurrency;
  end;

  if (TRIM(qu002.FieldByName('Kode').AsString) = '4') then
  begin
    Total := Total + qu002.FieldByName('Jumlah').AsCurrency;
    GrandTotal := GrandTotal + qu002.FieldByName('Jumlah').AsCurrency;
  end;

  if (TRIM(qu002.FieldByName('Kode').AsString) = '3') then
  begin
    Total := Total + qu002.FieldByName('Jumlah').AsCurrency;
    GrandTotal := GrandTotal + qu002.FieldByName('Jumlah').AsCurrency;
  end;

  if (TRIM(qu002.FieldByName('Kode').AsString) = '5') then
  begin
    Total := Total + qu002.FieldByName('Jumlah').AsCurrency;
    GrandTotal := GrandTotal + qu002.FieldByName('Jumlah').AsCurrency;
  end;

  if (TRIM(qu002.FieldByName('Kode').AsString) = '6') then
  begin
    Total := Total + qu002.FieldByName('Jumlah').AsCurrency;
    GrandTotal := GrandTotal + qu002.FieldByName('Jumlah').AsCurrency;
  end;
end;

procedure TfmCFQrRptLabaRugi.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  inherited;
    Value := FormatRptkurung(CurrToStr(Total))
end;

procedure TfmCFQrRptLabaRugi.QRLabel11Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Total '+qu001.FieldByName('Komponen').AsString+' : Rp';
end;

procedure TfmCFQrRptLabaRugi.QRLabel2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if GrandTotal >= 0 then
  QRLabel2.Font.Color := clBlue
  else
  QRLabel2.Font.Color := clRed ;


  Value := FormatRptkurung(CurrToStr(GrandTotal));
end;

procedure TfmCFQrRptLabaRugi.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if qu001.FieldByName('Kode').AsInteger = 2 then
  begin
    QRLabel1.Enabled := True;
    QRLabel3.Enabled := True;
  end else
  begin
    QRLabel1.Enabled := False;
    QRLabel3.Enabled := False;
  end;
end;

procedure TfmCFQrRptLabaRugi.QRLabel3Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if GrandTotal >= 0 then
  QRLabel3.Font.Color := clBlue
  else
  QRLabel3.Font.Color := clRed ;

  Value := FormatRptkurung(CurrToStr(GrandTotal));
end;

end.
