unit RptGLTrKMKK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv2, QRCtrls, DB, ADODB, StdCtrls, jpeg, QuickRpt, ExtCtrls;

type
  TfmCFQRRptTrKKBB = class(TfmRptLv2)
    qlbTTerBayar: TQRLabel;
    QRLabel8: TQRLabel;
    qlbterimaDari: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    qlbTerbilang: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel19: TQRLabel;
    qlbKeterangan: TQRLabel;
    qlbTitle: TQRLabel;
    qlbTitleV: TQRLabel;
    qlb: TQRLabel;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    qlbJourTransID: TQRLabel;
    qlbTanggal: TQRLabel;
    QRLabel10: TQRLabel;
    qlbKas: TQRLabel;
    qlbBank: TQRLabel;
    QRShape10: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape4: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape15: TQRShape;
    QRShape14: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    qlbTotal: TQRLabel;
    QRShape21: TQRShape;
    QRShape25: TQRShape;
    QRShape11: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    procedure QRDBText3Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCFQRRptTrKKBB: TfmCFQRRptTrKKBB;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmCFQRRptTrKKBB.QRDBText3Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value)
  {  if qu001.FieldByName('DK').AsString = 'D' then
    value := FormatRpt(value)
  else
    value := '(' + FormatRpt(value) + ')';     }
end;

end.
