unit ARQRRptSuratJalan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TfmQRRptSuratJalan = class(TfmRptLv0)
    qu002: TADOQuery;
    bnd001: TQRSubDetail;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    GroupHeaderBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    GroupFooterBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText2: TQRDBText;
    qu003: TADOQuery;
    ds002: TDataSource;
    ChildBand1: TQRChildBand;
    QRDBText9: TQRDBText;
    qlbJatuhTempo: TQRLabel;
    qlbKet: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    qlbTempo: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    qlbNamaInvoice: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText4: TQRDBText;
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRDBText12Print(sender: TObject; var Value: String);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRDBText14Print(sender: TObject; var Value: String);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure LaDiskonPrint(sender: TObject; var Value: String);
    procedure laGTPrint(sender: TObject; var Value: String);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmQRRptSuratJalan: TfmQRRptSuratJalan;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmQRRptSuratJalan.QRExpr2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmQRRptSuratJalan.QRDBText12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmQRRptSuratJalan.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmQRRptSuratJalan.QRDBText14Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmQRRptSuratJalan.QRDBText9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:= FormatRptkurung(Value);
end;

procedure TfmQRRptSuratJalan.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:= FormatRptqtykurung(Value);
end;

procedure TfmQRRptSuratJalan.QRExpr1Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value :=FormatRptkurung(Value);
end;

procedure TfmQRRptSuratJalan.LaDiskonPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value :=FormatRptkurung(Value);
end;

procedure TfmQRRptSuratJalan.laGTPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value :=FormatRptkurung(Value);
end;

procedure TfmQRRptSuratJalan.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PrintBand := qu002.FieldByName('Note').AsString <> ''
end;

end.
