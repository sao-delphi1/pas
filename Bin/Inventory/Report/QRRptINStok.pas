unit QRRptINStok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv2, QRCtrls, DB, ADODB, StdCtrls, jpeg, QuickRpt, ExtCtrls;

type
  TfmINQRRptStok = class(TfmRptLv2)
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    S_CountStokBarang: TADOStoredProc;
    S_BarangMasuk: TADOStoredProc;
    QRSubDetail1: TQRSubDetail;
    qu002: TADOQuery;
    QRDBText9: TQRDBText;
    ds002: TDataSource;
    qu003: TADOQuery;
    QRSubDetail2: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    ChildBand1: TQRChildBand;
    ds003: TDataSource;
    qu004: TADOQuery;
    qlbSerilNumber: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    lbAsset: TQRLabel;
    lbTotal: TQRLabel;
    quCalc: TADOQuery;
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    TanggalDari : TDateTime;
    TanggalSampai : TdateTime;
    SerialNumber : string;
    bChecked,bDetail : Boolean;
  end;

var
  fmINQRRptStok: TfmINQRRptStok;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmINQRRptStok.QRDBText4Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptqtykurung(Value);
end;

procedure TfmINQRRptStok.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  with qu003,SQL do
  begin
    Close;Clear;
    Add('  SELECT DISTINCT A.itemId, A.ItemName, A.UOMId as TransUOM,D.ProductDesc, '
       +'  (Select ISNULL(SUM(Case WHEN B.FgTrans < 50 THEN B.QTy ELSE B.Qty * - 1 END),0) '
       +'   FROM ALLITEM B Where CONVERT(VARCHAR(8),B.TransDate,112)<'''+FormatDateTime('YYYYMMDD',TanggalDari)+''''
       +'   AND B.ItemID=A.ItemID AND B.WareHouseId=C.WarehouseId) as Stok_Awal,'
       +'  (Select ISNULL(SUM(Case WHEN B.FgTrans < 50 AND FgTrans NOT IN(3)  THEN B.QTy END),0) '
       +'   FROM ALLITEM B Where CONVERT(VARCHAR(8),B.TransDate,112)>='''+FormatDateTime('YYYYMMDD',TanggalDari)+''''
       +'   AND CONVERT(VARCHAR(8),B.TransDate,112)<='''+FormatDateTime('YYYYMMDD',TanggalSampai)+''''
       +'   AND B.ItemID=A.ItemID AND B.WareHouseId=C.WarehouseId) as Masuk,'
       +'  (Select ISNULL(SUM(Case WHEN B.FgTrans > 50 AND FgTrans NOT IN(53) THEN B.QTy END),0) '
       +'   FROM ALLITEM B Where CONVERT(VARCHAR(8),B.TransDate,112)>='''+FormatDateTime('YYYYMMDD',TanggalDari)+''''
       +'   AND CONVERT(VARCHAR(8),B.TransDate,112)<='''+FormatDateTime('YYYYMMDD',TanggalSampai)+''''
       +'   AND B.ItemID=A.ItemID AND B.WareHouseId=C.WarehouseId) as Keluar,'
       +'  (Select ISNULL(SUM(Case WHEN B.FgTrans < 50  THEN B.QTy ELSE B.Qty * - 1 END),0) '
       +'   FROM ALLITEM B Where CONVERT(VARCHAR(8),B.TransDate,112)<='''+FormatDateTime('YYYYMMDD',TanggalSampai)+''''
       +'   AND B.ItemID=A.ItemID AND B.WareHouseId=C.WarehouseId) as Stok_Akhir,'
       +'  (Select ISNULL(SUM(Case WHEN B.FgTrans IN (3) THEN B.QTy'
       +'                          WHEN B.FgTrans IN (53) THEN  B.Qty * - 1'
       +'                          ELSE 0 END),0) '
       +'   FROM ALLITEM B Where CONVERT(VARCHAR(8),B.TransDate,112)>='''+FormatDateTime('YYYYMMDD',TanggalDari)+''''
       +'   AND CONVERT(VARCHAR(8),B.TransDate,112)<='''+FormatDateTime('YYYYMMDD',TanggalSampai)+''''
       +'   AND B.ItemID=A.ItemID AND B.WareHouseId=C.WarehouseId) as Adjustment'
       +'   FROM INMsItem A INNER JOIN ALLITEM C ON A.ItemId=C.ItemId'
       +'   INNER JOIN INMsProduct D ON A.ProductId=D.ProductId'
       +'   WHERE A.FgActive=''Y'' AND A.ItemId='''+qu002.FieldByName('Itemid').AsString+''''
       +'   AND C.WareHouseId='''+qu002.FieldByName('WarehouseId').AsString+''''
       +'   ORDER BY A.itemId');
    Open;
  end;
end;

procedure TfmINQRRptStok.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  With qu004,SQL do
  Begin
    Close;Clear;
    Add('SELECT K.SNID FROM (SELECT SNID,FgJual,ItemID,FgSN FROM APTrReturnRepSN) as K '
       +'WHERE K.FgJual=''T'' AND K.FgSN<>''T'' AND K.ItemID='''+qu003.FieldByName('ItemID').AsString+'''  ');
    Open;
  End;
  PrintBand := (qu004.FieldByName('SNID').AsString <> '') and bDetail = True;
  while not qu004.Eof do
  begin
    SerialNumber := SerialNumber +' ; '+ qu004.FieldbyName('SNID').AsString;
    qu004.Next;
  end;
  if SerialNumber <> '' then
    qlbSerilNumber.Caption := SerialNumber
  else
    qlbSerilNumber.Caption := '';
  SerialNumber := '';
end;

procedure TfmINQRRptStok.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var asset,Total : currency;
begin
  inherited;
  with quCalc,SQL do
  begin
    Close;Clear;
    Add('SELECT TOP 1 ISNULL(CASE WHEN B.CurrID=''IDR'' THEN A.Price ELSE A.Price*B.Rate END,0) as Price FROM APTrPurchaseDt A INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID AND A.SuppID=B.SuppID '
       +'WHERE A.ItemID='''+qu003.FieldByName('ItemID').AsString+''' AND '
       +'CONVERT(VARCHAR(8),B.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',TanggalSampai)+''' '
       +'ORDER BY CONVERT(VARCHAR(8),B.Transdate,112) DESC,CASE WHEN B.CurrID=''IDR'' THEN A.Price ELSE A.Price*B.Rate END ASC ');
    Open;
  end;
  Total := quCalc.FieldByName('Price').AsCurrency;
  if qu003.FieldByName('Stok_Akhir').AsInteger = 0 then asset := 0 else
    asset := Total ;
  lbAsset.Caption := FormatRptkurung(CurrToStr(asset));
  lbTotal.Caption := FormatRptkurung(CurrToStr(Total*qu003.FieldByName('Stok_Akhir').AsInteger));
  if bChecked then
    PrintBand := qu003.FieldByName('Stok_Akhir').AsInteger <> 0;
end;

end.
