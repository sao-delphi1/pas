unit AuditData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv1, DB, dxExEdtr, dxCntner, ADODB, Buttons, dxCore,
  dxContainer, dxTL, dxDBCtrl, dxDBGrid, StdCtrls, dxButton, IniFiles,
  ExtCtrls;

type
  TfmTrAuditData = class(TfmStdLv1)
    dbgAllItem: TdxDBGrid;
    quMainTransfer1: TIntegerField;
    quMainAdjustment_Tambah: TIntegerField;
    quMainPembelian: TIntegerField;
    quMainPengganti_Retur_Pembelian: TIntegerField;
    quMainTerima_Barang_Kosninyasi: TIntegerField;
    quMainRetur_Penjualan: TIntegerField;
    quMainRetur_Konsinyasi_Jual: TIntegerField;
    quMainService: TIntegerField;
    quMainTransfer2: TIntegerField;
    quMainAdjustment_Kurang: TIntegerField;
    quMainPenjualan: TIntegerField;
    quMainRetur_Pembelian: TIntegerField;
    quMainRetur_Konsinyasi_Beli: TIntegerField;
    quMainPengganti_Retur_Penjualan: TIntegerField;
    quMainKonsinyasi_Jual: TIntegerField;
    quMainInvoice_Service: TIntegerField;
    dbgAllItemTransfer1: TdxDBGridMaskColumn;
    dbgAllItemAdjustment_Tambah: TdxDBGridMaskColumn;
    dbgAllItemPembelian: TdxDBGridMaskColumn;
    dbgAllItemPengganti_Retur_Pembelian: TdxDBGridMaskColumn;
    dbgAllItemTerima_Barang_Kosninyasi: TdxDBGridMaskColumn;
    dbgAllItemRetur_Penjualan: TdxDBGridMaskColumn;
    dbgAllItemRetur_Konsinyasi_Jual: TdxDBGridMaskColumn;
    dbgAllItemService: TdxDBGridMaskColumn;
    dbgAllItemTransfer2: TdxDBGridMaskColumn;
    dbgAllItemAdjustment_Kurang: TdxDBGridMaskColumn;
    dbgAllItemPenjualan: TdxDBGridMaskColumn;
    dbgAllItemRetur_Pembelian: TdxDBGridMaskColumn;
    dbgAllItemRetur_Konsinyasi_Beli: TdxDBGridMaskColumn;
    dbgAllItemPengganti_Retur_Penjualan: TdxDBGridMaskColumn;
    dbgAllItemKonsinyasi_Jual: TdxDBGridMaskColumn;
    dbgAllItemInvoice_Service: TdxDBGridMaskColumn;
    dbgTable: TdxDBGrid;
    quTable: TADOQuery;
    dsTable: TDataSource;
    quTableTr_Transfer1: TIntegerField;
    quTableTr_Adjustment_Tambah: TIntegerField;
    quTableTr_Pembelian: TIntegerField;
    quTableTr_Pengganti_Retur_Pembelian: TIntegerField;
    quTableTr_Terima_Barang_Konsinyasi: TIntegerField;
    quTableTr_Retur_Penjualan: TIntegerField;
    quTableTr_Retur_Konsinyasi_Jual: TIntegerField;
    quTableTr_Service: TIntegerField;
    quTableTr_Transfer2: TIntegerField;
    quTableTr_Adjustment_Kurang: TIntegerField;
    quTableTr_Penjualan: TIntegerField;
    quTableTr_Retur_Pembelian: TIntegerField;
    quTableTr_Retur_Konsinyasi_Beli: TIntegerField;
    quTableTr_Pengganti_Retur_Penjualan: TIntegerField;
    quTableTr_Konsinyasi_Jual: TIntegerField;
    quTableTr_Invoice_Service: TIntegerField;
    Label1: TLabel;
    Label2: TLabel;
    dbgTableTr_Transfer1: TdxDBGridMaskColumn;
    dbgTableTr_Adjustment_Tambah: TdxDBGridMaskColumn;
    dbgTableTr_Pembelian: TdxDBGridMaskColumn;
    dbgTableTr_Pengganti_Retur_Pembelian: TdxDBGridMaskColumn;
    dbgTableTr_Terima_Barang_Konsinyasi: TdxDBGridMaskColumn;
    dbgTableTr_Retur_Penjualan: TdxDBGridMaskColumn;
    dbgTableTr_Retur_Konsinyasi_Jual: TdxDBGridMaskColumn;
    dbgTableTr_Service: TdxDBGridMaskColumn;
    dbgTableTr_Transfer2: TdxDBGridMaskColumn;
    dbgTableTr_Adjustment_Kurang: TdxDBGridMaskColumn;
    dbgTableTr_Penjualan: TdxDBGridMaskColumn;
    dbgTableTr_Retur_Pembelian: TdxDBGridMaskColumn;
    dbgTableTr_Retur_Konsinyasi_Beli: TdxDBGridMaskColumn;
    dbgTableTr_Pengganti_Retur_Penjualan: TdxDBGridMaskColumn;
    dbgTableTr_Konsinyasi_Jual: TdxDBGridMaskColumn;
    dbgTableTr_Invoice_Service: TdxDBGridMaskColumn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    bbAData: TdxButton;
    dxButton1: TdxButton;
    quMainSparepart_Service: TIntegerField;
    quTableTr_SparePart_Service: TIntegerField;
    dbgAllItemSparePart: TdxDBGridColumn;
    dbgTableTr_Sparepart: TdxDBGridColumn;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    dbgAllMoney: TdxDBGrid;
    dbgAllMoneyKMasuk: TdxDBGridMaskColumn;
    dbgAllMoneyKKeluar: TdxDBGridMaskColumn;
    dbgAllMoneyBMasuk: TdxDBGridMaskColumn;
    dbgAllMoneyBKeluar: TdxDBGridMaskColumn;
    dbgAllMoneyPembHutang: TdxDBGridMaskColumn;
    dbgAllMoneyPemHutKons: TdxDBGridMaskColumn;
    dbgAllMoneyPiutang: TdxDBGridMaskColumn;
    dbgAllMoneyPiutKons: TdxDBGridMaskColumn;
    dbgAllMoneyPiutService: TdxDBGridMaskColumn;
    dbgTrMoney: TdxDBGrid;
    dbgTrMoneyKasM: TdxDBGridMaskColumn;
    dbgTrMoneyKasK: TdxDBGridMaskColumn;
    dbgTrMoneyBankM: TdxDBGridMaskColumn;
    dbgTrMoneyBankK: TdxDBGridMaskColumn;
    dbgTrMoneyPembHutang: TdxDBGridMaskColumn;
    dbgTrMoneyPembHutKons: TdxDBGridMaskColumn;
    dbgTrMoneyPembPiutang: TdxDBGridMaskColumn;
    dbgTrMoneyPembPiutKons: TdxDBGridMaskColumn;
    dbgTrMoneyPembPiuService: TdxDBGridMaskColumn;
    bbMoney: TdxButton;
    Panel1: TPanel;
    quAllMoney: TADOQuery;
    quAllMoneyKMasuk: TIntegerField;
    quAllMoneyKKeluar: TIntegerField;
    quAllMoneyBMasuk: TIntegerField;
    quAllMoneyBKeluar: TIntegerField;
    quAllMoneyPembHutang: TIntegerField;
    quAllMoneyPemHutKons: TIntegerField;
    quAllMoneyPiutang: TIntegerField;
    quAllMoneyPiutKons: TIntegerField;
    quAllMoneyPiutService: TIntegerField;
    dsAllMoney: TDataSource;
    quTransMoney: TADOQuery;
    quTransMoneyKasM: TIntegerField;
    quTransMoneyKasK: TIntegerField;
    quTransMoneyBankM: TIntegerField;
    quTransMoneyBankK: TIntegerField;
    quTransMoneyPembHutang: TIntegerField;
    quTransMoneyPembHutKons: TIntegerField;
    quTransMoneyPembPiutang: TIntegerField;
    quTransMoneyPembPiuService: TIntegerField;
    dsTransMoney: TDataSource;
    quTransMoneyPembPiutKons: TIntegerField;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    quMulai: TADOQuery;
    quJalan: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure dsTableStateChange(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure bbADataClick(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure bbMoneyClick(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTrAuditData: TfmTrAuditData;

implementation

uses MyUnit, ConMain, UnitGeneral;

{$R *.dfm}

procedure TfmTrAuditData.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Open;
  quTable.Open;
  quAllMoney.Open;
  quTransMoney.Open;
end;

procedure TfmTrAuditData.dsTableStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgTable,TRUE);
end;

procedure TfmTrAuditData.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgAllItem,TRUE);
end;

procedure TfmTrAuditData.bbADataClick(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllItem WHERE CONVERT(VARCHAR(8),Transdate,112) >= 20160101');
 {   Add('INSERT Allitem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrID,Price,ModuleID,TempField,TempField2,Rate) '
       +'SELECT A.PurchaseID,B.Transdate, A.WarehouseID, 5, A.ItemID, A.Qty, B.CurrID,A.Price,''AP'',B.SuppID,C.SuppName,B.Rate FROM APTrPurchaseDt A '
       +'INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID AND A.SuppID=B.SuppID INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID ');   }


    Add('INSERT Allitem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrID,Price,ModuleID,TempField,TempField2,Rate) '
       +'SELECT A.TransID,B.Transdate, B.WarehouseID, 3, A.ItemID, A.Qty, ''IDR'',0,''IN'',B.WareHouseID,C.WareHouseName,1 FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHD B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WarehouseID=C.WareHouseID WHERE A.FgStatus=''T'' ');
    Add('INSERT Allitem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrID,Price,ModuleID,TempField,TempField2,Rate) '
       +'SELECT A.TransID,B.Transdate, B.WarehouseID, 53, A.ItemID, A.Qty, ''IDR'',0,''IN'',B.WareHouseID,C.WareHouseName,1 FROM INTrAdjustmentDt A '
       +'INNER JOIN INTrAdjustmentHD B ON A.TransID=B.TransID INNER JOIN INMsWarehouse C ON B.WarehouseID=C.WareHouseID WHERE A.FgStatus=''K'' ');

    Add('INSERT Allitem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrID,Price,ModuleID,TempField,TempField2,Rate) '
       +'SELECT A.TransferID,B.TransferDate, B.WarehouseDest, 2, A.ItemID, A.Qty, ''IDR'',0,''IN'',B.WarehouseDest,C.WarehouseName,1 FROM INTrTransferItemDt A '
       +'INNER JOIN INTrTransferItemHd B ON A.TransferID=B.TransferID INNER JOIN INMsWarehouse C ON B.WarehouseDest=C.WarehouseID ');
    Add('INSERT Allitem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrID,Price,ModuleID,TempField,TempField2,Rate) '
       +'SELECT A.TransferID,B.TransferDate, B.WarehouseSrc, 52, A.ItemID, A.Qty, ''IDR'',0,''IN'',B.WarehouseSrc,C.WarehouseName,1 FROM INTrTransferItemDt A '
       +'INNER JOIN INTrTransferItemHd B ON A.TransferID=B.TransferID INNER JOIN INMsWarehouse C ON B.WarehouseSrc=C.WarehouseID ');

    Add('INSERT Allitem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrID,Price,ModuleID,TempField,TempField2,Rate) '
       +'SELECT A.KonsinyasiID,B.Transdate, B.WarehouseID, 7, A.ItemID, A.Qty, ''IDR'',ISNULL(A.Price,0),''AP'',B.SuppID,C.SuppName,1 FROM APTrKonsinyasiDt A '
       +'INNER JOIN APTrKonsinyasiHd B ON A.KonsinyasiId=B.KonsinyasiId INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID ');
    Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrID,Price,ModuleID,TempField,TempField2,Rate,SalesID,Komisi) '
       +'SELECT A.SAleID,B.Transdate,A.WarehouseID,55,A.ItemID,A.Qty,B.CurrID,A.Price,''AR'',B.CustID,C.CustName,B.Rate,B.SalesID,A.Komisi '
       +'FROM ARTrPenjualanDt A INNER JOIN ARTrPenjualanHd B ON A.SaleID=B.SaleID INNER JOIN ARMsCustomer C ON B.CustID=C.CustID ');
    ExecSQL;
    ShowMessage('Data sudah berhasil di proses ulang');
  end;
  quMain.Requery();
end;

procedure TfmTrAuditData.dxButton1Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('ALTER DATABASE '+dbName+' SET RECOVERY SIMPLE');
    Add('DBCC SHRINKFILE (AssatiData2_log, 1)');
    Add('DBCC SHRINKFILE (AssatiData2_dat, 1)');
    Add('ALTER DATABASE '+dbName+' SET RECOVERY FULL;  ');
//    Add('BACKUP LOG '+dbName+' WITH Truncate_Only dbcc SHRINKFILE (AssatiData2_dat, 1)');
//    Add('BACKUP LOG '+dbName+' WITH Truncate_Only dbcc SHRINKFILE (AssatiData2_log, 1)');
    ExecSQL;
    ShowMessage('Data sudah berhasil di maintenance');
  end;
  Self.Close;
end;

procedure TfmTrAuditData.bbMoneyClick(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
     Close;Clear;
     Add('DELETE FROM AllMoney WHERE FgTrans NOT IN (6,15,18,19,80,82,90)');
     add('DELETE FROM AllMoney WHERE FgTrans=6 AND FgBBKK IN(''PIK'',''PIB'')');
     Add('INSERT AllMoney(VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,TempField,TempField1,FgTrans,Note,Actor,ValutaID,TempField3,Rate) '
        +'SELECT A.VoucherID,B.Transdate,A.RekeningID,C.GroupRekID,A.Amount,''KM'' as FgBBKK,'''' as TempField,'''' as TempField1,1 as FgTrans,A.Note,B.Actor, '
        +'B.CurrID,B.Actor,1 as Rate FROM CFTrKKBBDt A INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID '
        +'INNER JOIN CFMsRekening C ON A.RekeningID=C.RekeningID WHERE B.FlagKKBB=11');
     Add('INSERT AllMoney(VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,Tempfield,Tempfield1,FgTrans,Note,Actor,ValutaID,TempField3,Rate) '
        +'SELECT A.VoucherID, B.Transdate,A.RekeningID,C.GroupRekID,A.Amount,''KK'','''','''',2,A.Note,B.Actor,B.CurrID,B.Actor,1 '
        +'FROM CFTrKKBBDt A INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID INNER JOIN CFMsRekening C ON A.RekeningID=C.RekeningID WHERE B.FlagKKBB=12');
     Add('INSERT AllMoney(VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,Tempfield,Tempfield1,FgTrans,Note,Actor,ValutaID,TempField3,Rate) '
        +'SELECT A.VoucherID,B.Transdate,A.RekeningID,C.GroupRekID,A.Amount,''BM'' as FgBBKK,B.BankID as TempField,D.BankName,3 as FgTrans,A.Note,B.Actor, '
        +'B.CurrID,B.Actor,1 as Rate FROM CFTrKKBBDt A INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID '
        +'INNER JOIN CFMsRekening C ON A.RekeningID=C.RekeningID INNER JOIN CFMsBank D ON B.BankID=D.BankID WHERE B.FlagKKBB=21');
     Add('INSERT AllMoney(VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,Tempfield,Tempfield1,FgTrans,Note,Actor,ValutaID,TempField3,Rate) '
        +'SELECT A.VoucherID,B.Transdate,A.RekeningID,C.GroupRekID,A.Amount,''BK'' as FgBBKK,B.BankID as TempField,D.BankName,4 as FgTrans,A.Note,B.Actor, '
        +'B.CurrID,B.Actor,1 as Rate FROM CFTrKKBBDt A INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID '
        +'INNER JOIN CFMsRekening C ON A.RekeningID=C.RekeningID INNER JOIN CFMsBank D ON B.BankID=D.BankID WHERE B.FlagKKBB=22');
     Add('INSERT AllMoney (VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,TempField,TempField1,FgTrans,Note,Actor,SourceNo,ValutaID,TempField3,Rate) '
        +'SELECT A.PaymentID, B.Transdate, '''+sDRPb+''', '''+sDGRPb+''', A.ValuePayment, ''KK'' as FgBBKK, '''' as TempField, '''' as TempField1, '
        +'5, ''Pembayaran Hutang Nota ''+A.PurchaseID+'' Supplier ''+C.SuppName, B.SuppID, A.PurchaseID, B.CurrID, C.SuppName, 1 as Rate '
        +'FROM APTrPaymentDt A INNER JOIN APTrPaymentHd B ON A.PaymentID=B.PaymentID INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID WHERE A.BankID IS NULL');
     Add('INSERT AllMoney (VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,TempField,TempField1,FgTrans,Note,Actor,SourceNo,ValutaID,TempField3,Rate) '
        +'SELECT A.PaymentID, B.Transdate, '''+sDRPb+''', '''+sDGRPb+''', A.ValuePayment, ''BK'', A.BankID, D.BankName, '
        +'5,''Pembayaran Hutang Nota ''+A.PurchaseID+'' Supplier ''+C.SuppName, B.SuppID, A.PurchaseID, B.CurrID, C.SuppName, 1 as Rate '
        +'FROM APTrPaymentDt A INNER JOIN APTrPaymentHd B ON A.PaymentID=B.PaymentID INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID '
        +'INNER JOIN CFMsBank D ON A.BankID=D.BankID WHERE A.BankID IS NOT NULL');
     Add('INSERT AllMoney (VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,FgTrans,Note,Actor,ValutaID,TempField3,Rate) '
        +'SELECT A.VoucherID,A.Transdate,B.RekeningID,C.GroupRekID,B.Amount,''PIK'',6,''Pinjaman Karyawan ''+D.SalesName as Note,A.Actor,A.CurrID,D.SalesName,1 '
        +'FROM CFTrKKBBHd A INNER JOIN CFTrKKBBDt B ON A.VoucherID=B.VoucherID INNER JOIN CFMsRekening C ON B.RekeningID=C.RekeningID '
        +'INNER JOIN ARMsSales D ON D.SalesID=A.Actor WHERE A.FlagKKBB=31 AND A.BankID IS NULL');
     Add('INSERT AllMoney (VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,FgTrans,Note,Actor,ValutaID,TempField3,Rate,TempField,TempField1) '
        +'SELECT A.VoucherID,A.Transdate,B.RekeningID,C.GroupRekID,B.Amount,''PIB'',6,''Pinjaman Karyawan ''+D.SalesName as Note,'
        +'A.Actor,A.CurrID,D.SalesName,1,A.BankID,E.BankName '
        +'FROM CFTrKKBBHd A INNER JOIN CFTrKKBBDt B ON A.VoucherID=B.VoucherID INNER JOIN CFMsRekening C ON B.RekeningID=C.RekeningID '
        +'INNER JOIN ARMsSales D ON D.SalesID=A.Actor INNER JOIN CFMsBank E ON A.BankID=E.BankID '
        +'WHERE A.FlagKKBB=32 AND A.BankID IS NOT NULL');
     Add('INSERT AllMoney (VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,TempField,TempField1,FgTrans,Note,Actor,SourceNo,ValutaID,TempField3,Rate) '
        +'SELECT A.PiutangID, B.Transdate, '''+sDRpj+''', '''+sDGRpj+''', A.ValuePayment, ''KM'' as FgBBKK, '''' as TempField, '''' as TempField1, '
        +'8 as FgTrans, ''Pembayaran Piutang Nota ''+A.SaleID+'' - ''+ C.CustName as Note, B.CustID, A.SaleID, B.CurrID, C.CustName, 1 as Rate FROM ARTrPiutangDT A '
        +'INNER JOIN ARTrPiutangHd B ON A.PiutangID=B.PiutangID INNER JOIN ARMsCustomer C ON B.CustID=C.CustID WHERE A.BankID IS NULL');
     Add('INSERT AllMoney (VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,TempField,TempField1,FgTrans,Note,Actor,SourceNo,ValutaID,TempField3,Rate) '
        +'SELECT A.PiutangID, B.Transdate, '''+sDRpj+''', '''+sDGRpj+''', A.ValuePayment, ''BM'' as FgBBKK, A.BankID, D.BankName, '
        +'8 as FgTrans, ''Pembayaran Piutang Nota ''+A.SaleID+'' - ''+ C.CustName as Note, B.CustID, A.SaleID, B.CurrID, C.CustName, 1 as Rate FROM ARTrPiutangDT A '
        +'INNER JOIN ARTrPiutangHd B ON A.PiutangID=B.PiutangID INNER JOIN ARMsCustomer C ON B.CustID=C.CustID '
        +'INNER JOIN CFMsBank D ON A.BankID=D.BankID WHERE A.BankID IS NOT NULL');
     Add('INSERT AllMoney (VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,TempField,TempField1,FgTrans,Note,Actor,SourceNo,ValutaID,TempField3,Rate) '
        +'SELECT A.PiutangID, B.Transdate, '''+sDRpj+''', '''+sDGRpj+''', A.ValuePayment, ''KM'' as FgBBKK, '''' as TempField, '''' as TempField1, '
        +'9 as FgTrans, ''Pembayaran Piutang Karyawan ''+A.VoucherID+'' - ''+ C.SalesName as Note, B.SalesID, A.VoucherID, B.CurrID, C.SalesName, 1 as Rate '
        +'FROM CFTrPiutangInternalDt A INNER JOIN CFTrPiutangInternalHd B ON A.PiutangID=B.PiutangID '
        +'INNER JOIN ARMsSales C ON C.SalesID=B.SalesID WHERE A.BankID IS NULL');
     Add('INSERT AllMoney (VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,TempField,TempField1,FgTrans,Note,Actor,SourceNo,ValutaID,TempField3,Rate) '
        +'SELECT A.PiutangID, B.Transdate, '''+sDRpj+''', '''+sDGRpj+''', A.ValuePayment, ''BM'' as FgBBKK, A.BankID, D.BankName, '
        +'9 as FgTrans, ''Pembayaran Piutang Karyawan ''+A.VoucherID+'' - ''+ C.SalesName as Note, B.SalesID, A.VoucherID, B.CurrID, C.SalesName, 1 as Rate '
        +'FROM CFTrPiutangInternalDt A INNER JOIN CFTrPiutangInternalHd B ON A.PiutangID=B.PiutangID '
        +'INNER JOIN ARMsSales C ON B.SalesID=C.SalesID INNER JOIN CFMsBank D ON A.BankID=D.BankID WHERE A.BankID IS NOT NULL');
     Add('INSERT AllMoney (VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,TempField,TempField1,FgTrans,Note,Actor,SourceNo,ValutaID,TempField3,Rate) '
        +'SELECT A.PiutInvServiceID, B.Transdate, '''+sDRpj+''', '''+sDGRpj+''', A.ValuePayment, ''KM'' as FgBBKK, '''' as TempField, '''' as TempField1, '
        +'11 as FgTrans, ''Pembayaran Piutang Service Nota ''+A.InvServiceID+'' Pelanggan ''+C.CustName as Note, B.CustID, A.InvServiceID, B.CurrID, C.CustName, 1 as Rate '
        +'FROM ARTrPiutInvServiceDt A INNER JOIN ARTrPiutInvServiceHd B ON A.PiutInvServiceID=B.PiutInvServiceID '
        +'INNER JOIN ARMsCustomer C ON B.CustID=C.CustID WHERE A.BankID IS NULL');
     Add('INSERT AllMoney (VoucherNo,Transdate,RekeningID,GroupRekID,Amount,FgBBKK,TempField,TempField1,FgTrans,Note,Actor,SourceNo,ValutaID,TempField3,Rate) '
        +'SELECT A.PiutInvServiceID, B.Transdate, '''+sDRpj+''', '''+sDGRpj+''', A.ValuePayment, ''BM'' as FgBBKK, A.BankID, D.BankName, '
        +'11 as FgTrans, ''Pembayaran Piutang Service Nota ''+A.InvServiceID+'' Pelanggan ''+C.CustName as Note, B.CustID, A.InvServiceID, B.CurrID, C.CustName, 1 as Rate '
        +'FROM ARTrPiutInvServiceDt A INNER JOIN ARTrPiutInvServiceHd B ON A.PiutInvServiceID=B.PiutInvServiceID INNER JOIN ARMsCustomer C ON B.CustID=C.CustID '
        +'INNER JOIN CFMsBank D ON A.BankID=D.BankID WHERE A.BankID IS NOT NULL');
     ExecSQL;
     ShowMessage('Proses Ulang keuangan sudah selesai');
  end;
  quAllMoney.Requery();
  quTransMoney.Requery();
end;

procedure TfmTrAuditData.dxButton2Click(Sender: TObject);
var subtotal,ppn,grandtotal : currency;
    purchaseid,suppid : string;
begin
  inherited;

  with quMulai,SQL do
  begin
    Close;Clear;
    Add(' SELECT K.PurchaseID,K.SuppID,ROUND(K.SubTotal,2) as SubTotal,'
       +' ROUND(CASE WHEN FgTax=''Y'' THEN K.SubTotal*K.Rate*0.01 ELSE 0 END,2) as PPN, '
       +' ROUND(ROUND(K.SubTotal,2)+ROUND((CASE WHEN FgTax=''Y'' THEN K.SubTotal*K.Rate*0.01 ELSE 0 END),2),2) as GT '
       +' FROM ( '
       +' SELECT A.PurchaseID,A.SuppID,B.FgTax,ISNULL(B.RatePPN,0) as Rate,'
       +' ISNULL(SUM(Price*Qty)-SUM(Price*Qty*Disc*0.01),0) as SubTotal '
       +' FROM APTrPurchaseDt A '
       +' INNER JOIN APTrPurchaseHd B on A.PurchaseID=B.PurchaseID '
       +' GROUP BY A.PurchaseID,A.SuppID,B.FgTax,B.RatePPN '
       +' ) as K ');
    Open;
  end;

  while not quMulai.Eof do
  begin
    subtotal := quMulai.FieldByName('SubTotal').AsCurrency;
    ppn := quMulai.FieldByName('PPN').AsCurrency;
    grandtotal := quMulai.FieldByName('GT').AsCurrency;
    purchaseid := quMulai.FieldByName('purchaseid').AsString;
    suppid := quMulai.FieldByName('suppid').AsString;

    With quJalan,sql do
    Begin
      Close;Clear;
      add(' UPDATE APTrPurchaseHd SET '
         +' TTLPb='+CurrToStr(grandtotal)+','
         +' PPN='+CurrToStr(ppn)+', '
         +' StPb='+CurrToStr(subtotal)+' '
         +' WHERE PurchaseID='''+purchaseid+''' AND Suppid='''+suppid+''' ');
      ExecSQL;
    End;

    quMulai.Next;
  end;

  ShowMessage('Data Pembelian sudah dihitung ulang');
end;

procedure TfmTrAuditData.dxButton3Click(Sender: TObject);
var subtotal,ppn,grandtotal,modal : currency;
    saleid,soid : string;
begin
  inherited;

  with quMulai,SQL do
  begin
    Close;Clear;
    {
    Add(' SELECT K.SaleID, '
         +' ISNULL(ROUND(K.SubTotal,2),0) as SubTotal, '
         +' ISNULL(ROUND((ROUND(K.SubTotal,2)-K.DP)*K.PPN*0.01,2),0) as Pajak, '
         +' ISNULL((ROUND(K.SubTotal,2)-K.DP)+ROUND((ROUND(K.SubTotal,2)-K.DP)*K.PPN*0.01,2)+K.Ongkir,0) as GT, '
         +' K.Modal FROM ( '
         +' SELECT A.Saleid,ISNULL(SUM(Qty*Price),0) as SubTotal,ISNULL(B.DP,0) as DP,ISNULL(SUM(Qty*Modal),0) as Modal,'
         +'ISNULL(B.Administrasi,0) as Ongkir,ISNULL(B.PPNFee,0) as PPN '
         +' FROM ARTrPenjualanDt A '
         +' INNER JOIN ARTrPenjualanHd B ON A.SaleID=B.SaleID '
         +' GROUP BY A.SaleiD,B.DP,B.Administrasi,B.PPNFee) as K ');
    }
    Add(' SELECT K.SaleID, '
       +' ISNULL(ROUND(K.SubTotal,2),0) as SubTotal, '
       +' ISNULL(ROUND((ROUND(K.SubTotal,2)-K.DP)*K.PPN,2),0) as Pajak, '
       +' ISNULL((ROUND(K.SubTotal,2)-K.DP)+ROUND((ROUND(K.SubTotal,2)-K.DP)*K.PPN,2)+K.Ongkir,0) as GT, '
       +' K.Modal FROM ( '
       +' SELECT A.Saleid,ISNULL(SUM(Qty*(Price+Komisi)),0) as SubTotal,ISNULL(B.DP,0) as DP,ISNULL(SUM(Qty*Modal),0) as Modal, '
       +' ISNULL(B.Administrasi,0) as Ongkir,ISNULL(PPNFee,0)*0.01 as PPN '
       +' FROM ARTrPenjualanDt A '
       +' INNER JOIN ARTrPenjualanHd B ON A.SaleID=B.SaleID '
       +' GROUP BY A.SaleiD,B.DP,B.Administrasi,B.PPNFee) as K ');
    Open;
  end;

  while not quMulai.Eof do
  begin
    subtotal := quMulai.FieldByName('SubTotal').AsCurrency;
    ppn := quMulai.FieldByName('pajak').AsCurrency;
    grandtotal := quMulai.FieldByName('GT').AsCurrency;
    modal := quMulai.FieldByName('modal').AsCurrency;
    saleid := quMulai.FieldByName('saleid').AsString;

    With quJalan,SQL do
    Begin
      Close;Clear;
      add(' Update ARTrPenjualanHd SET '
         +' TTLPj='+CurrToStr(grandtotal)+', '
         +' StPj='+CurrToStr(subtotal)+', '
         +' PPN='+CurrToStr(ppn)+', '
         +' HPP='+CurrToStr(modal)+' '
         +' WHERE saleID='''+saleid+''' ');
      ExecSQL;
    End;

    quMulai.Next;
  end;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('Select SaleID,SOID FROM ARtrPenjualanHD Where FgForm=''DP'' ');
    Open;
  end;

  while not quAct.Eof do
  begin
    saleid := quAct.FieldByName('SaleID').ASString;
    soid := quAct.FieldByName('soid').ASString;

    with quMulai,SQL do
    begin
      Close;Clear;
      Add('SELECT K.SaleID,K.SubTotal,K.DP*K.PPN*0.01 as Pajak,K.DP*(100+K.PPN)*0.01 as GT,K.modal FROM ('
         +'SELECT B.SaleID,ISNULL(SUM(Qty*Price),0) as SubTotal,ISNULL(B.DP,0) as DP,ISNULL(SUM(Qty*Price),0)  as Modal,ISNULL(B.PPNFee,0) as PPN '
         +'FROM ARTrPerformaDt A INNER JOIN ARTrPenjualanHd B ON A.PerformaID=B.KonTransBrgID '
         +'GROUP BY B.DP,B.SaleID,B.PPNFee) as K ');
      Open;
    end;

    subtotal := quMulai.FieldByName('SubTotal').AsCurrency;
    ppn := quMulai.FieldByName('pajak').AsCurrency;
    grandtotal := quMulai.FieldByName('GT').AsCurrency;

    With quJalan,SQL do                                                        
    Begin
      Close;Clear;
      add(' Update ARTrPenjualanHd SET '
         +' TTLPj='+CurrToStr(grandtotal)+', '
         +' StPj='+CurrToStr(subtotal)+', '
         +' PPN='+CurrToStr(ppn)+', '
         +' hpp=0.00 '
         +' WHERE saleID='''+saleid+''' ');
      ExecSQL;
    End;

    quAct.Next;
  end;

  ShowMessage('Data Penjualan sudah dihitung ulang');
end;

end.
