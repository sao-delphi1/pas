unit ARQRRptDetailSummary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv2, DB, ADODB, QRCtrls, StdCtrls, QuickRpt, ExtCtrls;

type
  TfmARRptDetailSummary = class(TfmRptLv2)
    QRDBText1: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    qu002: TADOQuery;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRBand1: TQRBand;
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
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    TotalKMIDR,TotalKMUSD,TotalKKIDR,TotalKKUSD : Currency;
  end;

var
  fmARRptDetailSummary: TfmARRptDetailSummary;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmARRptDetailSummary.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(Value)
end;

procedure TfmARRptDetailSummary.QRSubDetail1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  if TRIM(qu002.FieldByName('CurrID').AsString) = 'IDR' then
     QRDBText6.Left := 635
  else
     QRDBText6.Left := 735;
  PrintBand := qu002.FieldByName('Amount').AsCurrency <> 0
end;

procedure TfmARRptDetailSummary.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  TotalKMIDR := 0;
  TotalKMUSD := 0;
  TotalKKIDR := 0;
  TotalKKUSD := 0;
end;

procedure TfmARRptDetailSummary.QRSubDetail1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  if qu001.FieldByName('Jenis').AsInteger = 3 then
  begin
    if (TRIM(qu002.FieldByName('CurrID').AsString)='IDR') and (qu002.FieldByName('Note').AsString = 'Tunai') then
       TotalKMIDR := TotalKMIDR + qu002.FieldByName('Amount').AsCurrency;
    if (TRIM(qu002.FieldByName('CurrID').AsString)='USD') and (qu002.FieldByName('Note').AsString = 'Tunai') then
       TotalKMUSD := TotalKMUSD + qu002.FieldByName('Amount').AsCurrency;
  end;
  if qu001.FieldByName('Jenis').AsInteger = 4 then
  begin
    if (TRIM(qu002.FieldByName('CurrID').AsString)='IDR') and (qu002.FieldByName('Note').AsString = 'Tunai') then
       TotalKKIDR := TotalKKIDR + qu002.FieldByName('Amount').AsCurrency;
    if (TRIM(qu002.FieldByName('CurrID').AsString)='USD') and (qu002.FieldByName('Note').AsString = 'Tunai') then
       TotalKKUSD := TotalKKUSD + qu002.FieldByName('Amount').AsCurrency;
  end;
end;

procedure TfmARRptDetailSummary.QRLabel7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(CurrToStr(TotalKMIDR))
end;

procedure TfmARRptDetailSummary.QRLabel8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(CurrToStr(TotalKMUSD))
end;

procedure TfmARRptDetailSummary.QRLabel13Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(CurrToStr(TotalKKIDR))
end;

procedure TfmARRptDetailSummary.QRLabel14Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(CurrToStr(TotalKKUSD))
end;

procedure TfmARRptDetailSummary.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(CurrToStr(TotalKMIDR-TotalKKIDR))
end;

procedure TfmARRptDetailSummary.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(CurrToStr(TotalKMUSD-TotalKKUSD))
end;

end.
