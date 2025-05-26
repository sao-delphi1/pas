unit ARQRRptInvPenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls, jpeg;

type
  TfmQRRptInvPenjualan = class(TfmRptLv0)
    qu002: TADOQuery;
    bnd001: TQRSubDetail;
    GroupFooterBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel1: TQRLabel;
    qu003: TADOQuery;
    ds002: TDataSource;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText13: TQRDBText;
    QRImage2: TQRImage;
    QRShape3: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape5: TQRShape;
    bnd002: TQRSubDetail;
    QRBand1: TQRBand;
    qlbValuta: TQRLabel;
    qlbCurr1: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel18: TQRLabel;
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
    qlbSerilNumber1: TQRLabel;
    QRShape1: TQRShape;
    ChildBand1: TQRChildBand;
    QRDBText10: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRExpr1: TQRExpr;
    QRDBText5: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    ChildBand2: TQRChildBand;
    qlbSerilNumber: TQRLabel;
    QRLabel14: TQRLabel;
    QRMemo1: TQRMemo;
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure bnd002BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    SerialNumber : string;    
    sHarga : string;
  end;

var
  fmQRRptInvPenjualan: TfmQRRptInvPenjualan;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmQRRptInvPenjualan.QRDBText9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  if qu001.FieldByName('Status').AsString = 'T' then
    Value:= FormatRptkurung(Value)
  else
    Value:= FormatRptqtykurung(Value);
end;

procedure TfmQRRptInvPenjualan.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:= FormatRptqtykurung(Value);
end;

procedure TfmQRRptInvPenjualan.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if sHarga = 'Y' then
    if qu002.FieldByName('Price').AsCurrency > 0 then
    PrintBand := qu002.FieldByName('Note').AsString <> ''
    else
    PrintBand := False;
end;

procedure TfmQRRptInvPenjualan.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := sCompanyBank;
end;

procedure TfmQRRptInvPenjualan.bnd002BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if sHarga = 'Y' then
    PrintBand := qu002.FieldByName('Price').AsCurrency > 0
end;

procedure TfmQRRptInvPenjualan.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   With qu003,SQL do
   Begin
     Close;Clear;
     add('SELECT SNID From ArTrPenjualanSN Where FgSN=''Y'' AND SaleID='''+qu001.FieldByName('Nota').AsString+''' '
        +'and ItemID='''+qu002.FieldByName('ItemID').AsString+''' ');
     Open;
   End;
   //PrintBand := qu003.FieldByName('SNID').AsString <> '';

   if sHarga = 'Y' then
    if qu002.FieldByName('Price').AsCurrency > 0 then
    PrintBand := qu003.FieldByName('SNID').AsString <> ''
    else
    PrintBand := False;

   while not qu003.Eof do
   begin
     SerialNumber := SerialNumber +'  '+ qu003.FieldbyName('SNID').AsString;
     qu003.Next;
   end;
   if SerialNumber <> '' then
     qlbSerilNumber.Caption := 'S/N: '+ SerialNumber
   else
     qlbSerilNumber.Caption := '';
   SerialNumber := '';
end;

end.
