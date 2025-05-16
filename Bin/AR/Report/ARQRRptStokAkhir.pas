unit ARQRRptStokAkhir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv2, QRCtrls, DB, ADODB, StdCtrls, jpeg, QuickRpt, ExtCtrls;

type
  TfmINQRRptStokAkhir = class(TfmRptLv2)
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    S_CountStokBarang: TADOStoredProc;
    S_BarangMasuk: TADOStoredProc;
    QRSubDetail1: TQRSubDetail;
    qu002: TADOQuery;
    QRDBText9: TQRDBText;
    ds002: TDataSource;
    qu003: TADOQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText8: TQRDBText;
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    TanggalDari : TDateTime;
    TanggalSampai : TdateTime;
  end;

var
  fmINQRRptStokAkhir: TfmINQRRptStokAkhir;

implementation

uses MyUnit, UnitGeneral;

{$R *.dfm}

procedure TfmINQRRptStokAkhir.QRDBText4Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptqtykurung(Value);
end;

procedure TfmINQRRptStokAkhir.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptqtykurung(Value);
end;

procedure TfmINQRRptStokAkhir.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptqtykurung(Value);
end;

procedure TfmINQRRptStokAkhir.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptqtykurung(Value);
end;

procedure TfmINQRRptStokAkhir.QRDBText8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptqtykurung(Value);
end;

end.
