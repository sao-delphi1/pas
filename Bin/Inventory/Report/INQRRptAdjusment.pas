unit INQRRptAdjusment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv3, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls;

type
  TfmINQRRptAdjusment = class(TfmRptLv3)
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    procedure QRDBText7Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINQRRptAdjusment: TfmINQRRptAdjusment;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmINQRRptAdjusment.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value := FormatRptqtykurung(Value)
end;

end.
