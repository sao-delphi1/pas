unit ARQRRptBukuBesar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv2, DB, ADODB, QRCtrls, StdCtrls, QuickRpt, ExtCtrls;

type
  TfmARQRRptBukuBesar = class(TfmRptLv2)
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    qu002: TADOQuery;
    qu003: TADOQuery;
    procedure QRDBText6Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARQRRptBukuBesar: TfmARQRRptBukuBesar;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmARQRRptBukuBesar.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(value);
end;

end.
