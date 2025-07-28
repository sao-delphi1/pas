unit ARQRRptBAST;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls, jpeg;

type
  TfmARQRRptBAST = class(TfmRptLv4)
    QRLabel2: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRExpr1: TQRExpr;
    SummaryBand1: TQRBand;
    qlbValuta: TQRLabel;
    qlbCurr1: TQRLabel;
    QRLabel7: TQRLabel;
    qlbCurr2: TQRLabel;
    laDP: TQRLabel;
    laSubTotal: TQRLabel;
    QRLabel20: TQRLabel;
    laGT: TQRLabel;
    qlbCurr4: TQRLabel;
    QRLabel23: TQRLabel;
    qlbCurr3: TQRLabel;
    QRShape4: TQRShape;
    laSC: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape2: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRImage2: TQRImage;
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure laSubTotalPrint(sender: TObject; var Value: String);
    procedure laDPPrint(sender: TObject; var Value: String);
    procedure laSCPrint(sender: TObject; var Value: String);
    procedure laGTPrint(sender: TObject; var Value: String);
    procedure QRDBText12Print(sender: TObject; var Value: String);
    procedure QRDBText15Print(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    sHarga : string;
    Nomor : integer;
  end;

var
  fmARQRRptBAST: TfmARQRRptBAST;

implementation

uses MyUnit;
{$R *.dfm}

procedure TfmARQRRptBAST.QRExpr1Print(sender: TObject; var Value: String);
begin
  inherited;
  if qu001.FieldByName('Status').AsString = 'T' then
    Value:= FormatRptkurung(Value)
  else
    Value:= FormatRptqtykurung(Value);
end;

procedure TfmARQRRptBAST.laSubTotalPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  if qu001.FieldByName('Status').AsString = 'T' then
    Value:= FormatRptkurung(Value)
  else
    Value:= FormatRptqtykurung(Value);
end;

procedure TfmARQRRptBAST.laDPPrint(sender: TObject; var Value: String);
begin
  inherited;
  if qu001.FieldByName('Status').AsString = 'T' then
    Value:= FormatRptkurung(Value)
  else
    Value:= FormatRptqtykurung(Value);
end;

procedure TfmARQRRptBAST.laSCPrint(sender: TObject; var Value: String);
begin
  inherited;
  if qu001.FieldByName('Status').AsString = 'T' then
    Value:= FormatRptkurung(Value)
  else
    Value:= FormatRptqtykurung(Value);
end;

procedure TfmARQRRptBAST.laGTPrint(sender: TObject; var Value: String);
begin
  inherited;
  if qu001.FieldByName('Status').AsString = 'T' then
    Value:= FormatRptkurung(Value)
  else
    Value:= FormatRptqtykurung(Value);
end;

procedure TfmARQRRptBAST.QRDBText12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(Value);
end;

procedure TfmARQRRptBAST.QRDBText15Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if qu001.FieldByName('Status').AsString = 'T' then
    Value:= FormatRptkurung(Value)
  else
    Value:= FormatRptqtykurung(Value);
end;

procedure TfmARQRRptBAST.QRLabel16Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := INTtoStr(Nomor);
end;

procedure TfmARQRRptBAST.bnd001BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if sHarga = 'Y' then
    PrintBand := qu002.FieldByName('Price').AsCurrency > 0;

  if PrintBand=True then
  Nomor := Nomor +1 ;
end;

procedure TfmARQRRptBAST.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Nomor := 0;
end;

end.
