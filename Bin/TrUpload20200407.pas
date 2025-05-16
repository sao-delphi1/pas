unit TrUpload;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv1, dxButton, DB, dxExEdtr, dxCntner, ADODB, Buttons,
  dxCore, dxContainer;

type
  TfmTrUpload = class(TfmStdLv1)
    bbMoney: TdxButton;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    dxButton4: TdxButton;
    dxButton5: TdxButton;
    dxButton6: TdxButton;
    dxButton7: TdxButton;
    procedure bbMoneyClick(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure dxButton6Click(Sender: TObject);
    procedure dxButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTrUpload: TfmTrUpload;

implementation

{$R *.dfm}

procedure TfmTrUpload.bbMoneyClick(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('delete from [10.10.18.201].MAPX.dbo.ApMsSupplier '
       +'insert [10.10.18.201].MAPX.dbo.ApMsSupplier (suppid,suppname,address,city,contactperson,phone,fax,email,note,UPDdATE,upduser) '
       +'select suppid,suppname,address,city,contactperson,phone,fax,email,note,UPDdATE,upduser from APMsSupplier ');
    ExecSQL;
  end;
  ShowMessage('Data Supplier Berhasil di Upload! ');
end;

procedure TfmTrUpload.dxButton1Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('delete from [10.10.18.201].MAPX.dbo.ARMsCustomer '
       +'insert [10.10.18.201].MAPX.dbo.ARMsCustomer (custid,custname,address,city,phone,fax,email,note,custtype,upddate,upduser,limitpiutang,limitasli,fgkoma) '
       +'select custid,custname,address,city,phone,fax,email,note,custtype,upddate,upduser,limitpiutang,limitasli,fgkoma from ARMsCustomer ');
    ExecSQL;
  end;
  ShowMessage('Data Customer Berhasil di Upload! ');
end;

procedure TfmTrUpload.dxButton2Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('delete from [10.10.18.201].MAPX.dbo.APTrPurchaseHd '
       +'insert [10.10.18.201].MAPX.dbo.APTrPurchaseHd (purchaseid,suppid,transdate,note,upddate,upduser,currid,ttlpb,rate,jatuhtempo,fgtax,ppn,fpsid,rekeningD,rekeningP,rekeningU,rekeningK,FgForm,konsinyasiid,RekPersediaan,RekHPP,FgOto) '
       +'select purchaseid,suppid,transdate,note,upddate,upduser,currid,ttlpb,rate,jatuhtempo,fgtax,ppn,fpsid,rekeningD,rekeningP,rekeningU,rekeningK,FgForm,konsinyasiid,RekPersediaan,RekHPP,FgOto from APTrPurchaseHd '
       +'insert [10.10.18.201].MAPX.dbo.APTrPurchaseDt (PurchaseID,ItemID,SuppId,Qty,WarehouseID,Price,UpdDate,UpdUser,disc) '
       +'select PurchaseID,ItemID,SuppId,Qty,WarehouseID,Price,UpdDate,UpdUser,disc from APTrPurchaseDt '
       +'insert [10.10.18.201].MAPX.dbo.aptrpurchasedtsn (purchaseid,itemid,suppid,warehouseid,price,snid,upddate,upduser,fgjual,fgsn) '
       +'select purchaseid,itemid,suppid,warehouseid,price,snid,upddate,upduser,fgjual,fgsn from aptrpurchasedtsn ');
    ExecSQL;
  end;
  ShowMessage('Data Pembelian Berhasil di Upload! ');
end;

procedure TfmTrUpload.dxButton3Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('delete from [10.10.18.201].MAPX.dbo.ARTrPenjualanHd '
       +'insert [10.10.18.201].MAPX.dbo.ARTrPenjualanHd (saleid,soid,poid,transdate,custid,salesid,note,jatuhtempo,discount,currid,upddate,upduser,ttlpj,dp,flagcounter,stpj,rate,charge, '
       +'fglunas,administrasi,nama,alamat,kasir,taxid,fgtax,ppn,fgtrans,ppnfee,actor,nofaktur,kmkid,kmkdata,kmkdate, '
       +'rekeningD,rekeningP,rekeningU,rekeningK,fgform,kontransbrgid,RekPersediaan,RekHPP,HPP) '
       +'select saleid,soid,poid,transdate,custid,salesid,note,jatuhtempo,discount,currid,upddate,upduser,ttlpj,dp,flagcounter,stpj,rate,charge, '
       +'fglunas,administrasi,nama,alamat,kasir,taxid,fgtax,ppn,fgtrans,ppnfee,actor,nofaktur,kmkid,kmkdata,kmkdate, '
       +'rekeningD,rekeningP,rekeningU,rekeningK,fgform,kontransbrgid,RekPersediaan,RekHPP,HPP from ARTrPenjualanHd '
       +'insert [10.10.18.201].MAPX.dbo.ARTrPenjualanDt (saleid,itemid,price,warehouseid,qty,upddate,upduser,button,button2,note,komisi,flagretur,uomid,note2,kmkid,kmkdate,Modal) '
       +'select saleid,itemid,price,warehouseid,qty,upddate,upduser,button,button2,note,komisi,flagretur,uomid,note2,kmkid,kmkdate,Modal from ARTrPenjualanDt '
       +'insert [10.10.18.201].MAPX.dbo.ARTrPenjualanSN (snid,saleid,itemid,price,warehouseid,upddate,upduser,modal,purchaseid,fgsn) '
       +'select snid,saleid,itemid,price,warehouseid,upddate,upduser,modal,purchaseid,fgsn from ARTrPenjualanSN ');
    ExecSQL;
  end;
  ShowMessage('Data Penjualan Berhasil di Upload! ');
end;



 
procedure TfmTrUpload.dxButton4Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('delete from [10.10.18.201].MAPX.dbo.cftrkkbbhd where flagkkbb in (''ARB'',''ARK'',''ARC'')  '
       +'insert [10.10.18.201].MAPX.dbo.cftrkkbbhd (voucherid,transdate,actor,bankid,note,flagkkbb,upddate,upduser,currid,jumlahD,jumlahK,tglcair,tglfaktur,projectid, '
       +'nobgcek,fgpayment,fgcetak,voucherno,userubah,tglubah,idvoucher,novoucher,nonota,komponen,transdate1,rate) '
       +'select voucherid,transdate,actor,bankid,note,flagkkbb,upddate,upduser,currid,jumlahD,jumlahK,tglcair,tglfaktur,projectid, '
       +'nobgcek,fgpayment,fgcetak,voucherno,userubah,tglubah,idvoucher,novoucher,nonota,komponen,transdate1,rate from cftrkkbbhd where flagkkbb in (''ARB'',''ARK'',''ARC'') '
       +'insert [10.10.18.201].MAPX.dbo.cftrkkbbdt (voucherid,rekeningid,note,amount,upddate,upduser,jenis) '
       +'select A.voucherid,A.rekeningid,A.note,A.amount,A.upddate,A.upduser,A.jenis from cftrkkbbdt A inner join CFTrKKBBHd B on A.voucherid=B.voucherid '
       +'and B.flagkkbb in (''ARB'',''ARC'',''ARK'') ');
    ExecSQL;
  end;
  ShowMessage('Data Pelunasan Piutang Berhasil di Upload! ');
end;

procedure TfmTrUpload.dxButton5Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('delete from [10.10.18.201].MAPX.dbo.cftrkkbbhd where flagkkbb in (''APK'',''APC'',''APB'')  '
       +'insert [10.10.18.201].MAPX.dbo.cftrkkbbhd (voucherid,transdate,actor,bankid,note,flagkkbb,upddate,upduser,currid,jumlahD,jumlahK,tglcair,tglfaktur,projectid, '
       +'nobgcek,fgpayment,fgcetak,voucherno,userubah,tglubah,idvoucher,novoucher,nonota,komponen,transdate1,rate) '
       +'select voucherid,transdate,actor,bankid,note,flagkkbb,upddate,upduser,currid,jumlahD,jumlahK,tglcair,tglfaktur,projectid, '
       +'nobgcek,fgpayment,fgcetak,voucherno,userubah,tglubah,idvoucher,novoucher,nonota,komponen,transdate1,rate from cftrkkbbhd where flagkkbb in (''APK'',''APC'',''APB'') '
       +'insert [10.10.18.201].MAPX.dbo.cftrkkbbdt (voucherid,rekeningid,note,amount,upddate,upduser,jenis) '
       +'select A.voucherid,A.rekeningid,A.note,A.amount,A.upddate,A.upduser,A.jenis from cftrkkbbdt A inner join CFTrKKBBHd B on A.voucherid=B.voucherid '
       +'and B.flagkkbb in (''APK'',''APC'',''APB'') ');
    ExecSQL;
  end;
  ShowMessage('Data Pembayaran Hutang Berhasil di Upload! ');
end;

procedure TfmTrUpload.dxButton6Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('delete from [10.10.18.201].MAPX.dbo.APTrKonsinyasiHD '
       +'insert [10.10.18.201].MAPX.dbo.APTrKonsinyasiHD (KonsinyasiID,TransDate,SuppID,WareHouseID,UpdDate,UpdUser,JatuhTempo,rate) '
       +'select KonsinyasiID,TransDate,SuppID,WareHouseID,UpdDate,UpdUser,JatuhTempo,rate from APTrKonsinyasiHD '
       +'insert [10.10.18.201].MAPX.dbo.APTrKonsinyasiDt (KonsinyasiID,ItemID,Qty,Price,UpdDate,UpdUser,currid) '
       +'select KonsinyasiID,ItemID,Qty,Price,UpdDate,UpdUser,currid from APTrKonsinyasiDt '
       +'insert [10.10.18.201].MAPX.dbo.APTrKonsinyasiDtSN (KonsinyasiID,ItemID,SNID,UpdDate,UpdUser,FgJual,FgSN) '
       +'select KonsinyasiID,ItemID,SNID,UpdDate,UpdUser,FgJual,FgSN from APTrKonsinyasiDtSn ');
    ExecSQL;
  end;
  ShowMessage('Data Penerimaan Barang Berhasil di Upload! ');
end;

procedure TfmTrUpload.dxButton7Click(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('delete from [10.10.18.201].MAPX.dbo.InMsItem '
       +'insert [10.10.18.201].MAPX.dbo.InMsItem (ItemID,ItemName,ProductID,GroupID,UOMID,Garantee,CurrID,'
       +'UserPrice,DealerPrice,UpdDate,UpdUser,JangkaGarantee,MinimumStok,Ctk,Komisi,FgActive,Note) '
       +'select ItemID,ItemName,ProductID,GroupID,UOMID,Garantee,CurrID,'
       +'UserPrice,DealerPrice,UpdDate,UpdUser,JangkaGarantee,MinimumStok,Ctk,Komisi,FgActive,Note from InMsItem ');
    ExecSQL;
  end;
  ShowMessage('Data Barang Berhasil di Upload! ');
end;

end.
