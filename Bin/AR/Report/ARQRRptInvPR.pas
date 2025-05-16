unit ARQRRptInvPR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TfmQRRptInvPR = class(TfmRptLv0)
    qu002: TADOQuery;
    bnd001: TQRSubDetail;
    GroupFooterBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape6: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    laGT: TQRLabel;
    ChildBand1: TQRChildBand;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRExpr2: TQRExpr;
    QRLabel11: TQRLabel;
    QRDBText10: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    qlbNamaInvoice: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel12: TQRLabel;
    qlbTerbilang: TQRLabel;
    qlbKet: TQRLabel;
    QRShape9: TQRShape;
    ChildBand2: TQRChildBand;
    qlbSerilNumber: TQRLabel;
    qu003: TADOQuery;
    ds002: TDataSource;
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRDBText12Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRDBText14Print(sender: TObject; var Value: String);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure LaDiskonPrint(sender: TObject; var Value: String);
    procedure laGTPrint(sender: TObject; var Value: String);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    SerialNumber : string;    
  end;

var
  fmQRRptInvPR: TfmQRRptInvPR;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmQRRptInvPR.QRExpr2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmQRRptInvPR.QRDBText12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmQRRptInvPR.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmQRRptInvPR.QRDBText14Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmQRRptInvPR.QRDBText9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:= FormatRptkurung(Value);
end;

procedure TfmQRRptInvPR.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:= FormatRptqtykurung(Value);
end;

procedure TfmQRRptInvPR.QRExpr1Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value :=FormatRptkurung(Value);
end;

procedure TfmQRRptInvPR.LaDiskonPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value :=FormatRptkurung(Value);
end;

procedure TfmQRRptInvPR.laGTPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value :=FormatRptkurung(Value);
end;



procedure TfmQRRptInvPR.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   With qu003,sql do
   Begin
     Close;Clear;
     add(' Select SNID From ARTrPenggantiReturPenjDtSN Where ReturnRepID='''+qu001.FieldByName('ReturnRepID').AsString+''' '
        +' and ItemID='''+qu002.FieldByName('ItemRepID').AsString+''' ');
     Open;
   End;
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
