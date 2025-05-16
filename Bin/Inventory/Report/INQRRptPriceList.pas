unit INQRRptPriceList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, QuickRpt, DB, ADODB, StdCtrls, QRCtrls, ExtCtrls;

type
  TfmINQRRptPriceList = class(TfmRptLv0)
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    qu002: TADOQuery;
    QRDBText2: TQRDBText;
    GroupFooterBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    procedure QRDBText6Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINQRRptPriceList: TfmINQRRptPriceList;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmINQRRptPriceList.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRpt(Value);
end;

end.
