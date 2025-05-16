unit ARQRRptStruck1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, QRCtrls, QuickRpt, DB, ADODB, StdCtrls, ExtCtrls;

type
  TfmARRptStruck1 = class(TfmRptLv0)
    QRLabel22: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    bnd001: TQRSubDetail;
    qu002: TADOQuery;
    QRDBText1: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRLabel9: TQRLabel;
    lbTotal: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARRptStruck1: TfmARRptStruck1;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmARRptStruck1.QRDBText3Print(sender: TObject;
  var Value: String);
begin
  inherited;
    value := FormatRptkurung(Value);
//  Value := FormatCurr('#,0',qu002.Fieldbyname('Price').AsCurrency);
end;

procedure TfmARRptStruck1.QRExpr1Print(sender: TObject; var Value: String);
begin
  inherited;
    value := FormatRptkurung(Value);
//  Value := FormatCurr('#,0',strtocurr(value));
end;

end.
