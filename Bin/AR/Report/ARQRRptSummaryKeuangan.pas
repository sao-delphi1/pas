unit ARQRRptSummaryKeuangan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv1, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TfmINQRRptSummaryK = class(TfmRptLv1)
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel5: TQRLabel;
    QRDBText8: TQRDBText;
    QRExpr2: TQRExpr;
    QRLabel7: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel16: TQRLabel;
    QRExpr4: TQRExpr;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText10: TQRDBText;
    QRExpr5: TQRExpr;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel21: TQRLabel;
    QRExpr6: TQRExpr;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINQRRptSummaryK: TfmINQRRptSummaryK;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmINQRRptSummaryK.QRDBText3Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatRptkurung(Value);
end;

procedure TfmINQRRptSummaryK.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  inherited;
    value := FormatRptkurung(Value);
end;

procedure TfmINQRRptSummaryK.QRDBText1Print(sender: TObject;
  var Value: String);
begin
  inherited;
    value := FormatRptkurung(Value);
end;

procedure TfmINQRRptSummaryK.QRExpr1Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatRptkurung(Value);
end;

end.
