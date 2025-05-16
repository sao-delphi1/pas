unit ARQRRptStruck2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, QRCtrls, QuickRpt, DB, ADODB, StdCtrls, ExtCtrls;

type
  TfmARRptStruck2 = class(TfmRptLv0)
    bnd001: TQRSubDetail;
    qu002: TADOQuery;
    GroupFooterBand1: TQRBand;
    ChildBand5: TQRChildBand;
    QRLabel7: TQRLabel;
    ChildBand6: TQRChildBand;
    QRLabel14: TQRLabel;
    lbST: TQRLabel;
    QRChildBand1: TQRChildBand;
    QRLabel43: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel38: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    qu003: TADOQuery;
    qlbTerbilang: TQRLabel;
    qlbKet: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape6: TQRShape;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    ChildBand1: TQRChildBand;
    QRDBText7: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRShape2: TQRShape;
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure lbSTPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    Satuan  : boolean;
    T,C,D,K   : Currency;
    BnkD,BnkC,NmD,NmC : string;
  end;

var
  fmARRptStruck2: TfmARRptStruck2;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmARRptStruck2.QRDBText3Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatCurr('#,0',qu001.Fieldbyname('ServiceFee').AsCurrency);
end;

procedure TfmARRptStruck2.lbSTPrint(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatCurr('#,0',qu001.Fieldbyname('TTLSV').AsCurrency);
end;

end.
