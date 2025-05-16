unit APQRRptRetur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, QRCtrls, DB, ADODB, QuickRpt, StdCtrls, ExtCtrls;

type
  TfmAPQRRptReturPb = class(TfmRptLv4)
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
  fmAPQRRptReturPb: TfmAPQRRptReturPb;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmAPQRRptReturPb.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(value);
end;

procedure TfmAPQRRptReturPb.QRDBText8Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(value);
end;

procedure TfmAPQRRptReturPb.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  with qu003,sql do
  begin
          Close;Clear;
          add(' SELECT A.SuppId,B.ItemId,C.ItemName,B.Qty,B.PurchaseId,B.Price,'
             +' (Select CurrId FROM APTrPurchaseHd D WHERE D.PurchaseId=B.PurchaseId AND D.SuppId=A.SuppId) as Curr'
             +' FROM APTrReturnHd A INNER JOIN APTrReturnDt B ON A.ReturnId=B.ReturnId'
             +' INNER JOIN INMsItem C ON B.itemId=C.ItemId'
             +' WHERE A.ReturnId='''+qu002.Fieldbyname('ReturnId').AsString+'''');
          Open;
  end;
end;

end.
