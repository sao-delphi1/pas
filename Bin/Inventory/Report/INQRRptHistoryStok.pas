unit INQRRptHistoryStok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv3, DB, ADODB, QuickRpt, StdCtrls, QRCtrls, ExtCtrls;

type
  TfmINQRRptHistoryStok = class(TfmRptLv3)
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    S_CountStokBarang: TADOStoredProc;
    Bnd002: TQRSubDetail;
    ds002: TDataSource;
    qu003: TADOQuery;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    qlbStock: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    qrlSisa: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    quCalc: TADOQuery;
    qlbSaldo: TQRLabel;
    QRDBText8: TQRDBText;
    qrlValue: TQRLabel;
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrlSisaPrint(sender: TObject; var Value: String);
    procedure Bnd002BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRDBText8Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    tgldari : TDateTime;
    tglsmp  : TDateTime;
    stock,saldo,Balance   : Currency;
  end;

var
  fmINQRRptHistoryStok: TfmINQRRptHistoryStok;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmINQRRptHistoryStok.bnd001BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  with quCalc,SQL do
  begin
    Close;Clear;
    Add('SELECT SUM(CASE WHEN K.FgTrans < 50 THEN K.Qty ELSE K.Qty*-1 END) as Stock,'
       +'SUM(CASE WHEN K.FgTrans < 50 THEN K.Qty*K.Nilai ELSE K.Qty*K.Nilai*-1 END) as Saldo FROM ('
       +'SELECT Transdate,WarehouseID,ItemID,FgTrans,ISNULL(Qty,0) as Qty,'
       +'ISNULL(CASE WHEN FgTrans < 50 THEN Price WHEN FgTrans = 55 THEN '
       +'(SELECT  SUM(Y.Price)/COUNT(*)  FROM ARTrPenjualanSN X INNER JOIN APTrPurchaseDtSN Y ON X.ItemID=Y.ItemID AND X.SNID=Y.SNID WHERE X.ItemID=A.ItemID AND X.SaleID=A.VoucherNo) '
       +'ELSE 0 END,0) as Nilai FROM AllItem A ) as K '
       +'WHERE CONVERT(VARCHAR(8),K.Transdate,112) < '''+FormatDateTime('yyyymmdd',tgldari)+'''  AND K.WarehouseID='''+qu001.FieldByName('WarehouseID').AsString+''' '
       +'AND K.ItemID='''+qu002.FieldByName('ItemID').AsString+''' ');
{    Add('SELECT ISNULL(SUM(CASE WHEN FgTrans < 51 THEN Qty ELSE Qty*-1 END),0) as Stock '
       +'FROM AllItem WHERE CONVERT(VARCHAR(8),Transdate,112) < '''+FormatDateTime('yyyymmdd',tgldari)+''' '
       +'AND WarehouseID='''+qu001.FieldByName('WarehouseID').AsString+''' AND ItemID='''+qu002.FieldByName('ItemID').AsString+''' ');}
    Open;
  end;
  qrlSisa.Caption := CurrToStr(quCalc.FieldByName('Stock').AsInteger);
  qrlValue.Caption := CurrToStr(quCalc.FieldByName('Saldo').AsInteger);
end;

procedure TfmINQRRptHistoryStok.qrlSisaPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:= FormatRptqtykurung(Value);
end;

procedure TfmINQRRptHistoryStok.Bnd002BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if qu003.FieldByName('kode').AsString = '1' then
  begin
      QRDBText5.Left := 572;
      QRDBText8.Left := 633;
      stock := stock + qu003.FieldByName('qty').AsInteger;
      saldo := saldo + qu003.FieldByName('Nilai').AsInteger;
  end
  else
  begin
      QRDBText5.Left := 719;
      QRDBText8.Left := 780;
      stock := stock - qu003.FieldByName('Qty').AsInteger;
      saldo := saldo - qu003.FieldByName('Nilai').AsInteger;
  end;
  qlbStock.Caption :=  CurrToStr(stock);
  qlbSaldo.Caption :=  CurrToStr(saldo);
end;

procedure TfmINQRRptHistoryStok.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  saldo := StrToCurr(qrlSisa.Caption);
  saldo := StrToCurr(qrlValue.Caption);
  with qu003,sql do
  begin
     Close;Clear;
     add(' SELECT Convert(varchar(10),A.TransDate,103)as Tanggal,A.TransDate, '
        +' case when FgTrans < 50 Then ''1'' else ''2'' end as Kode,'
        +'         case Fgtrans when 0  then  ''Tr Stok Awal Posistif & VoucherNo ''+ A.VoucherNo '
        +'                              when 2  then  ''Tr Transfer Barang (+) Nota ''+ A.VoucherNo +'' ''+A.TempField2 '
        +'                              when 3  then  ''Tr Stok Opname Bertambah Nota ''+ A.VoucherNo +'' ''+A.TempField2'
        +'                              when 5  then  ''Tr Pembelian Invoice ''+ A.VoucherNo +'' ''+A.TempField2'
        +'                              when 6  then  ''Tr Pengganti Retur Pembelian Nota ''+ A.VoucherNo +'' ''+A.TempField2'
        +'                              when 7  then  ''Tr Penerimaan Barang Nota ''+ A.VoucherNo +'' ''+A.TempField2 '
        +'                              when 8 then   ''Tr Retur Penjualan Invoice ''+ A.VoucherNo +'' ''+A.TempField2'
        +'                              when 9 then   ''Tr Tarik Barang Konsinyasi Nota ''+ A.VoucherNo +'' ''+A.TempField2'
        +'                              when 10 then  ''Tr Terima Service Nota ''+ A.VoucherNo +'' ''+A.TempField2 '
        +'                              when 52 then  ''Tr Transfer Barang (-) Nota ''+ A.VoucherNo  +'' ''+A.TempField2 '
        +'                              when 53 then  ''Tr Stok Opname Berkurang Nota ''+ A.VoucherNo +'' ''+A.TempField2'
        +'                              when 55 then  ''Tr Penjualan Nota ''+ A.VoucherNo +'' ''+A.TempField2'
        +'                              when 56 then  ''Tr Retur Pembelian Nota ''+ A.VoucherNo +'' ''+A.TempField2'
        +'                              when 57 then  ''Tr Retur Konsinyasi Pembelian ''+ A.VoucherNo +'' ''+A.TempField2 '
        +'                              when 58 then  ''Tr Pengganti Retur Penjualan Nota ''+ A.VoucherNo +'' ''+A.TempField2'
        +'                              when 59 then  ''Tr Konsinyasi Transfer Barang Nota ''+ A.VoucherNo +'' ''+A.TempField2 '
        +'                              when 61 then  ''Tr Penggunaan SparePart Nota ''+ A.VoucherNo +'' ''+A.TempField2 '
        +'                              when 60 then  ''Tr Ambil Service Nota ''+ A.VoucherNo +'' ''+A.TempField2 end as Flag,A.QTy,A.FgTrans,'
        +' CASE WHEN FgTrans < 50 THEN ISNULL(A.Price,0) '
        +'      WHEN FgTrans <> 55 THEN 0 ELSE '
        +' (SELECT  SUM(Y.Price)/COUNT(*)  FROM ARTrPenjualanSN X INNER JOIN APTrPurchaseDtSN Y ON X.ItemID=Y.ItemID AND X.SNID=Y.SNID '
        +' WHERE X.ItemID=A.ItemID AND X.SaleID=A.VoucherNo) END as Nilai FROM Allitem A where A.ItemId='''+qu002.FieldByName('ItemId').AsString+''''
        +' AND A.WareHouseId='''+qu001.fieldbyname('WareHouseId').AsString+''''
        +' AND CONVERT(varchar(8),A.TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',tgldari)+''' AND '''+FormatDateTime('yyyyMMdd',tglsmp)+''''
        +' ORDER by Convert(varchar(10),A.TransDate,112),kode,NumAll');
    Open;
  End;
end;

procedure TfmINQRRptHistoryStok.QRDBText8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(Value);
end;

end.
