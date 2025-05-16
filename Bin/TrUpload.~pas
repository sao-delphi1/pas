unit TrUpload;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv1, dxButton, DB, dxExEdtr, dxCntner, ADODB, Buttons,
  dxCore, dxContainer, StdCtrls;

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
    Label1: TLabel;
    procedure bbMoneyClick(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure dxButton6Click(Sender: TObject);
    procedure dxButton7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ServerX : string;
    DBX : string;
  end;

var
  fmTrUpload: TfmTrUpload;

implementation

uses inifiles;

{$R *.dfm}

procedure TfmTrUpload.bbMoneyClick(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('delete from ['+ServerX+'].'+DBX+'.dbo.ApMsSupplier '
       +'insert ['+ServerX+'].'+DBX+'.dbo.ApMsSupplier (suppid,suppname,address,city,contactperson,phone,fax,email,note,UPDdATE,upduser) '
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
    Add('delete from ['+ServerX+'].'+DBX+'.dbo.ARMsCustomer '
       +'insert ['+ServerX+'].'+DBX+'.dbo.ARMsCustomer (custid,custname,address,city,phone,fax,email,note,custtype,upddate,upduser,limitpiutang,limitasli,fgkoma) '
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
    Add('delete from ['+ServerX+'].'+DBX+'.dbo.APTrPurchaseHd '
       +'insert ['+ServerX+'].'+DBX+'.dbo.APTrPurchaseHd (purchaseid,suppid,transdate,note,upddate,upduser,currid,ttlpb,rate,jatuhtempo,fgtax,ppn,fpsid,rekeningD,rekeningP,rekeningU,rekeningK,FgForm,konsinyasiid,RekPersediaan,RekHPP,FgOto) '
       +'select purchaseid,suppid,transdate,note,upddate,upduser,currid,ttlpb,rate,jatuhtempo,fgtax,ppn,fpsid,rekeningD,rekeningP,rekeningU,rekeningK,FgForm,konsinyasiid,RekPersediaan,RekHPP,FgOto from APTrPurchaseHd '
       +'insert ['+ServerX+'].'+DBX+'.dbo.APTrPurchaseDt (PurchaseID,ItemID,SuppId,Qty,WarehouseID,Price,UpdDate,UpdUser,disc) '
       +'select PurchaseID,ItemID,SuppId,Qty,WarehouseID,Price,UpdDate,UpdUser,disc from APTrPurchaseDt '
       +'insert ['+ServerX+'].'+DBX+'.dbo.aptrpurchasedtsn (purchaseid,itemid,suppid,warehouseid,price,snid,upddate,upduser,fgjual,fgsn) '
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
    Add('delete from ['+ServerX+'].'+DBX+'.dbo.ARTrPenjualanHd '
       +'insert ['+ServerX+'].'+DBX+'.dbo.ARTrPenjualanHd (saleid,soid,poid,transdate,custid,salesid,note,jatuhtempo,discount,currid,upddate,upduser,ttlpj,dp,flagcounter,stpj,rate,charge, '
       +'fglunas,administrasi,nama,alamat,kasir,taxid,fgtax,ppn,fgtrans,ppnfee,actor,nofaktur,kmkid,kmkdata,kmkdate, '
       +'rekeningD,rekeningP,rekeningU,rekeningK,fgform,kontransbrgid,RekPersediaan,RekHPP,HPP) '
       +'select saleid,soid,poid,transdate,custid,salesid,note,jatuhtempo,discount,currid,upddate,upduser,ttlpj,dp,flagcounter,stpj,rate,charge, '
       +'fglunas,administrasi,nama,alamat,kasir,taxid,fgtax,ppn,fgtrans,ppnfee,actor,nofaktur,kmkid,kmkdata,kmkdate, '
       +'rekeningD,rekeningP,rekeningU,rekeningK,fgform,kontransbrgid,RekPersediaan,RekHPP,HPP from ARTrPenjualanHd '
       +'insert ['+ServerX+'].'+DBX+'.dbo.ARTrPenjualanDt (saleid,itemid,price,warehouseid,qty,upddate,upduser,button,button2,note,komisi,flagretur,uomid,note2,kmkid,kmkdate,Modal) '
       +'select saleid,itemid,price,warehouseid,qty,upddate,upduser,button,button2,note,komisi,flagretur,uomid,note2,kmkid,kmkdate,Modal from ARTrPenjualanDt '
       +'insert ['+ServerX+'].'+DBX+'.dbo.ARTrPenjualanSN (snid,saleid,itemid,price,warehouseid,upddate,upduser,modal,purchaseid,fgsn) '
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
    Add('delete from ['+ServerX+'].'+DBX+'.dbo.cftrkkbbhd where flagkkbb in (''ARB'',''ARK'',''ARC'')  '
       +'insert ['+ServerX+'].'+DBX+'.dbo.cftrkkbbhd (voucherid,transdate,actor,bankid,note,flagkkbb,upddate,upduser,currid,jumlahD,jumlahK,tglcair,tglfaktur,projectid, '
       +'nobgcek,fgpayment,fgcetak,voucherno,userubah,tglubah,idvoucher,novoucher,nonota,komponen,transdate1,rate) '
       +'select voucherid,transdate,actor,bankid,note,flagkkbb,upddate,upduser,currid,jumlahD,jumlahK,tglcair,tglfaktur,projectid, '
       +'nobgcek,fgpayment,fgcetak,voucherno,userubah,tglubah,idvoucher,novoucher,nonota,komponen,transdate1,rate from cftrkkbbhd where flagkkbb in (''ARB'',''ARK'',''ARC'') '
       +'insert ['+ServerX+'].'+DBX+'.dbo.cftrkkbbdt (voucherid,rekeningid,note,amount,upddate,upduser,jenis) '
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
    Add('delete from ['+ServerX+'].'+DBX+'.dbo.cftrkkbbhd where flagkkbb in (''APK'',''APC'',''APB'')  '
       +'insert ['+ServerX+'].'+DBX+'.dbo.cftrkkbbhd (voucherid,transdate,actor,bankid,note,flagkkbb,upddate,upduser,currid,jumlahD,jumlahK,tglcair,tglfaktur,projectid, '
       +'nobgcek,fgpayment,fgcetak,voucherno,userubah,tglubah,idvoucher,novoucher,nonota,komponen,transdate1,rate) '
       +'select voucherid,transdate,actor,bankid,note,flagkkbb,upddate,upduser,currid,jumlahD,jumlahK,tglcair,tglfaktur,projectid, '
       +'nobgcek,fgpayment,fgcetak,voucherno,userubah,tglubah,idvoucher,novoucher,nonota,komponen,transdate1,rate from cftrkkbbhd where flagkkbb in (''APK'',''APC'',''APB'') '
       +'insert ['+ServerX+'].'+DBX+'.dbo.cftrkkbbdt (voucherid,rekeningid,note,amount,upddate,upduser,jenis) '
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
    Add('delete from ['+ServerX+'].'+DBX+'.dbo.APTrKonsinyasiHD '
       +'insert ['+ServerX+'].'+DBX+'.dbo.APTrKonsinyasiHD (KonsinyasiID,TransDate,SuppID,WareHouseID,UpdDate,UpdUser,JatuhTempo,rate) '
       +'select KonsinyasiID,TransDate,SuppID,WareHouseID,UpdDate,UpdUser,JatuhTempo,rate from APTrKonsinyasiHD '
       +'insert ['+ServerX+'].'+DBX+'.dbo.APTrKonsinyasiDt (KonsinyasiID,ItemID,Qty,Price,UpdDate,UpdUser,currid) '
       +'select KonsinyasiID,ItemID,Qty,Price,UpdDate,UpdUser,currid from APTrKonsinyasiDt '
       +'insert ['+ServerX+'].'+DBX+'.dbo.APTrKonsinyasiDtSN (KonsinyasiID,ItemID,SNID,UpdDate,UpdUser,FgJual,FgSN) '
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
    Add('delete from ['+ServerX+'].'+DBX+'.dbo.InMsItem '
       +'insert ['+ServerX+'].'+DBX+'.dbo.InMsItem (ItemID,ItemName,ProductID,GroupID,UOMID,Garantee,CurrID,'
       +'UserPrice,DealerPrice,UpdDate,UpdUser,JangkaGarantee,MinimumStok,Ctk,Komisi,FgActive,Note) '
       +'select ItemID,ItemName,ProductID,GroupID,UOMID,Garantee,CurrID,'
       +'UserPrice,DealerPrice,UpdDate,UpdUser,JangkaGarantee,MinimumStok,Ctk,Komisi,FgActive,Note from InMsItem ');
    ExecSQL;
  end;
  ShowMessage('Data Barang Berhasil di Upload! ');
end;

procedure TfmTrUpload.FormShow(Sender: TObject);
Var MyIniFile : TIniFile;
begin
  inherited;
  MyIniFile  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'Setting.ini');
  ServerX := MyIniFile.ReadString('Server','11','');
  DBX := MyIniFile.ReadString('Server','12','');
  Label1.Caption := 'Server Tujuan : '+ServerX+', Database Tujuan : '+DBX;
end;

end.
