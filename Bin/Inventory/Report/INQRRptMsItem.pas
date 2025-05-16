unit INQRRptMsItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv3, DB, ADODB, QuickRpt, StdCtrls, QRCtrls, ExtCtrls;

type
  TfmINQRRptMsItem = class(TfmRptLv3)
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    procedure QRDBText6Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINQRRptMsItem: TfmINQRRptMsItem;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmINQRRptMsItem.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRpt(Value);
end;

end.
