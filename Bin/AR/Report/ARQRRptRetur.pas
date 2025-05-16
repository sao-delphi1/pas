unit ARQRRptRetur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, QRCtrls, DB, ADODB, QuickRpt, StdCtrls, ExtCtrls;

type
  TfmARQRRptReturPj = class(TfmRptLv4)
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel10: TQRLabel;
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARQRRptReturPj: TfmARQRRptReturPj;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmARQRRptReturPj.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(value);
end;

procedure TfmARQRRptReturPj.QRDBText8Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(value);
end;

procedure TfmARQRRptReturPj.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  with qu003,sql do
  begin
          Close;Clear;
          add(' SELECT B.ItemId,C.ItemName,B.Qty,B.SaleId,B.Price,'
             +' (Select CurrId FROM ARTrPenjualanHd D WHERE D.SaleId=B.SaleId ) as Curr'
             +' FROM ARTrReturPenjualanDt B INNER JOIN INMsItem C ON B.itemId=C.ItemId'
             +' WHERE B.ReturnId='''+qu002.Fieldbyname('ReturnId').AsString+'''');
          Open;
  end;
end;

end.
