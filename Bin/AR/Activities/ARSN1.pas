unit ARSN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv0, StdCtrls, dxCore, dxButton, ExtCtrls, dxExEdtr,
  dxCntner, DB, ADODB, dxEditor, dxEdLib, dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms;

type
  TfmARSN = class(TfmStdLv0)
    bbOK1: TdxButton;
    quSO: TADOQuery;
    dsSO: TDataSource;
    quDO: TADOQuery;
    dsDO: TDataSource;
    dbgSO: TdxDBGrid;
    dbgSOItemID: TdxDBGridColumn;
    dbgSOItemName: TdxDBGridColumn;
    dbgSOQty: TdxDBGridColumn;
    dbgSOUOMID: TdxDBGridColumn;
    dbgSOPrice: TdxDBGridColumn;
    dbgSODusID: TdxDBGridColumn;
    dbgDO: TdxDBGrid;
    dbgDOItemID: TdxDBGridColumn;
    dbgDOItemName: TdxDBGridColumn;
    dxButton3: TdxButton;
    dxButton4: TdxButton;
    RgData: TRadioGroup;
    quDOSNID: TStringField;
    quDOPurchaseID: TStringField;
    quSOSerial_Number: TStringField;
    quSONota_Pembelian: TStringField;
    quSOTanggal_Nota: TStringField;
    quSONama_Supplier: TStringField;
    quSOKode_Barang: TStringField;
    quSONama_Barang: TStringField;
    quSOModal: TBCDField;
    quSOFgSN: TStringField;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    quAct1: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure dsSOStateChange(Sender: TObject);
    procedure dsDOStateChange(Sender: TObject);
    procedure bbOK1Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure RgDataClick(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    KodeBarang,SaleID,Gudang,Price : string;
  end;

var
  fmARSN: TfmARSN;

implementation

uses AuditData, MyUnit, Utama, UnitGeneral, ConMain;

{$R *.dfm}

procedure TfmARSN.FormShow(Sender: TObject);
begin
  inherited;
  with quSO,SQL do
  begin
    Close;Clear;
    Add(' SELECT K.SNID as Serial_Number,K.KonsinyasiID as Nota_Pembelian,'
       +' Convert(varchar(10),K.TransDate,103) as Tanggal_Nota,'
       +' K.SuppName as Nama_Supplier,'
       +' K.ItemId as Kode_Barang , K.ItemName as Nama_Barang,'
       +' CASE WHEN K.CurrID=''IDR'' THEN K.Price ELSE K.Price*K.Rate END as Modal,K.FgSN FROM '
       +'(SELECT A.SNID, C.KonsinyasiID, C.Transdate, C.SuppID, D.SuppName,'
       +' B.ItemID, F.ItemName, A.FgJual,B.Price,B.CurrID,C.Rate,A.FgSN FROM APTrKonsinyasiDtSn A '
       +' INNER JOIN APTrKonsinyasiDt B ON A.KonsinyasiID=B.KonsinyasiID AND A.ItemID=B.ItemID '
       +' INNER JOIN APTrKonsinyasiHd C ON B.KonsinyasiID=C.KonsinyasiID '
       +' INNER JOIN APMsSupplier D ON C.SuppID=D.SuppID '
       +' INNER JOIN INMsItem F ON F.ItemID=B.ItemID) as K '
       +' WHERE K.ItemID='''+KodeBarang+''' AND K.FgJual=''T'' '
       +' ORDER BY K.SNID ');
    Open;
  end;
  with quDO,SQL do
  begin
    Close;Clear;
    Add('SELECT SNID,PurchaseID from ARTrPenjualanSN '
       +'WHERE SaleID='''+SaleID+''' AND ItemID='''+KodeBarang+''' '
       +'AND WareHouseID='''+Gudang+''' AND Price='+Price+' ');
    Open;
  end;
end;

procedure TfmARSN.dsSOStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgSOItemID,TRUE);
  SetReadOnly(dbgSOItemName,TRUE);
  SetReadOnly(dbgSOQty,TRUE);
  SetReadOnly(dbgSOUOMID,TRUE);
  SetReadOnly(dbgSODusID,TRUE);
  SetReadOnly(dbgSOPrice,TRUE);
end;

procedure TfmARSN.dsDOStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgDOItemID,TRUE);
  SetReadOnly(dbgDOItemName,TRUE);
end;

procedure TfmARSN.bbOK1Click(Sender: TObject);
begin
  inherited;
   with quAct,SQL do
   begin
     Close;Clear;
     add(' UPDATE APTrPurchaseDtSN SET FgJual=''Y'' WHERE ItemID='''+KodeBarang+''' '
        +' AND SNID IN (Select SNID FROM ARTrPenjualanSn Where ItemID='''+kodebarang+''' And SaleID='''+SaleID+''') ');
     ExecSQL;
   end;
   with quAct,SQL do
   begin
     Close;Clear;
     add(' UPDATE APTrKonsinyasiDtSn SET FgJual=''Y'' WHERE ItemID='''+KodeBarang+''' '
        +' AND SNID IN (Select SNID FROM ARTrPenjualanSn Where ItemID='''+kodebarang+''' And SaleID='''+SaleID+''') ');
     ExecSQL;
   end;
  Self.Close;
end;

procedure TfmARSN.dxButton3Click(Sender: TObject);
begin
  inherited;
  if quDOSNID.AsString <> '' then
  begin
  with quAct,SQL do
  begin
    Close;Clear;
    Add('delete from ArTrPenjualanSN where saleid='''+SaleID+''' and itemid='''+KodeBarang+''' '
       +'and snid='''+quDOSNID.ASString+''' ');
    ExecSQL;;
  end;
  with quAct,SQL do
   begin
     Close;Clear;
     add(' Update APTrPurchaseDtSN SET FgJual=''T'' WHERE ItemID='''+KodeBarang+''' '
        +' AND SNID='''+quDOSNID.ASString+''' ');
     ExecSQL;
   end;
   with quAct,SQL do
   begin
     Close;Clear;
     add(' Update APTrKonsinyasiDtSn SET FgJual=''T'' WHERE ItemID='''+KodeBarang+''' '
        +' AND SNID='''+quDOSNID.ASString+''' ');
     ExecSQL;
   end;
  end;
  quSO.Requery();
  quDO.Requery();
end;

procedure TfmARSN.dxButton4Click(Sender: TObject);
var Modal : currency;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT K.Qty-K.JumSN as Sisa FROM (SELECT ISNULL(A.Qty,0) as Qty,ISNULL((SELECT COUNT(*) FROM ARTrPenjualanSn B '
       +'WHERE B.SaleID=A.SaleID AND B.ItemID=A.ItemID),0) as JumSN FROM ARTrPenjualanDt A '
       +'WHERE A.SaleID='''+SaleID+''' AND A.ItemID='''+KodeBarang+''') as K ');
    Open;
  end;
  if quAct.FieldByName('Sisa').AsInteger > 0 then
  begin
    if quSOSerial_Number.ASString <> '' then
    begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT ArTrPenjualanSN (SNID,SaleID,ItemID,Price,WarehouseID,UpdDate,UpdUser,Modal,PurchaseID,FgSN)');
        Add('SELECT '''+quSOSerial_Number.ASString+''','''+SaleID+''','''+quSOKode_Barang.ASString+''','+Price+','''+Gudang+''','
           +'GETDATE(),'''+dmMain.UserID+''','+quSOModal.ASString+','''+quSONota_Pembelian.ASString+''','''+quSOFgSN.AsString+''' ');
        ExecSQL;;
      end;
      with quAct,SQL do
       begin
         Close;Clear;
         add(' Update APTrPurchaseDtSN SET FgJual=''Y'' WHERE ItemID='''+KodeBarang+''' '
            +' AND SNID='''+quSOSerial_Number.ASString+''' ');
         ExecSQL;
       end;
       with quAct,SQL do
       begin
         Close;Clear;
         add(' Update APTrKonsinyasiDtSn SET FgJual=''Y'' WHERE ItemID='''+KodeBarang+''' '
            +' AND SNID='''+quSOSerial_Number.ASString+''' ');
         ExecSQL;
       end;
       with quAct1,SQL do
       begin
         Close;Clear;
         Add('SELECT ISNULL(SUM(Modal)/COUNT(*),0) as Total FROM ARTrPenjualanSN WHERE SaleID='''+SaleID+''' AND ItemID='''+KodeBarang+''' ');
         Open;
       end;
       Modal := quAct1.FieldByName('Total').AsCurrency;
       with quAct,SQL do
       begin
         Close;Clear;
         Add('UPDATE ARTrPenjualanDt SET Modal='''+CurrToStr(Modal)+''' '
            +'WHERE SaleID='''+SaleID+''' AND ItemID='''+KodeBarang+'''');
         ExecSQL;
       end;
    end;
  end;
  quSO.Requery();
  quDO.Requery();
end;

procedure TfmARSN.RgDataClick(Sender: TObject);
begin
  inherited;
  {with quSO,SQL do
  begin
    Close;Clear;
    Add('SELECT K.ItemID,K.ItemName,K.Konversi as Isi_Per_Dus,K.Qty-K.Kirim as Qty,K.Stock,K.UOMID,K.Price FROM ('
       +'SELECT A.ItemID,B.ItemName,B.Konversi,A.Qty,A.UOMID,A.Price,'
       +'ISNULL((SELECT SUM(X.Qty) FROM ARTrKonTransBrgDt X '
       +'INNER JOIN ARTrKonTransBrgHd Y ON X.KonTransBrgID=Y.KonTransBrgID '
       +'WHERE Y.POID=A.POID AND X.ItemID=A.ItemID),0) as Kirim,'
       +'ISNULL((SELECT SUM(CASE WHEN P.FgTrans<50 THEN P.Qty ELSE P.Qty*-1 END) '
       +'FROM AllItem P WHERE P.ItemID=A.ItemID AND P.WarehouseID='''+Gudang+'''),0) as Stock '
       +'FROM ARTrPurchaseOrderDt A INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
       +'WHERE A.POID='''+POID+''') as K WHERE K.Qty - K.Kirim > 0 ');
    if RgData.ItemIndex = 1 then
       Add('AND K.Qty-K.Kirim <= K.Stock ');
    Add('ORDER BY K.ItemID');
    Open;
  end;  }
end;

procedure TfmARSN.dxButton2Click(Sender: TObject);
var Jumlah : Integer;
    Modal : currency;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT K.Qty-K.JumSN as Sisa FROM (SELECT ISNULL(A.Qty,0) as Qty,ISNULL((SELECT COUNT(*) FROM ARTrPenjualanSn B '
       +'WHERE B.SaleID=A.SaleID AND B.ItemID=A.ItemID),0) as JumSN FROM ARTrPenjualanDt A '
       +'WHERE A.SaleID='''+SaleID+''' AND A.ItemID='''+KodeBarang+''') as K ');
    Open;
  end;
  Jumlah := quAct.FieldByName('Sisa').AsInteger;
  if Jumlah > 0 then
  begin
    if quSOSerial_Number.ASString <> '' then
    begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT ARTrPenjualanSn (SNID,SaleID,ItemID,Price,WarehouseID,UpdDate,UpdUser,Modal,PurchaseID,FgSN)');
        Add('SELECT TOP '+IntToStr(Jumlah)+' K.SNID,'''+SaleID+''',K.ItemID,'''+Price+''','''+Gudang+''',GETDATE(),'''+dmMain.UserId+''',K.Modal,K.KonsinyasiID,K.FgSN FROM ('
           +'SELECT A.SNID,A.KonsinyasiID,B.ItemID,A.FgJual,ISNULL(B.Price,0) as Modal,A.FgSN '
           +'FROM APTrKonsinyasiDtSn A INNER JOIN APTrKonsinyasiDt B ON A.KonsinyasiID=B.KonsinyasiID AND A.ItemID=B.ItemID) as K '
           +'WHERE K.ItemID='''+KodeBarang+''' AND K.FgJual=''T'' AND K.SNID NOT IN (SELECT SNID FROM ARTrPenjualanSN WHERE ItemID='''+KodeBarang+''') '
           +'ORDER BY K.SNID ');
        ExecSQL;;
      end;
      with quAct,SQL do
       begin
         Close;Clear;
         add(' UPDATE APTrPurchaseDtSN SET FgJual=''Y'' WHERE ItemID='''+KodeBarang+''' '
            +' AND SNID IN (SELECT SNID FROM ARTrPenjualanSn WHERE SaleID='''+SaleID+''' AND ItemID='''+KodeBarang+''') ');
         ExecSQL;
       end;
       with quAct,SQL do
       begin
         Close;Clear;
         add(' Update APTrKonsinyasiDtSn SET FgJual=''Y'' WHERE ItemID='''+KodeBarang+''' '
            +' AND SNID IN (SELECT SNID FROM ARTrPenjualanSn WHERE SaleID='''+SaleID+''' AND ItemID='''+KodeBarang+''') ');
         ExecSQL;
       end;
       with quAct1,SQL do
       begin
         Close;Clear;
         Add('SELECT ISNULL(SUM(Modal)/COUNT(*),0) as Total FROM ARTrPenjualanSN WHERE SaleID='''+SaleID+''' AND ItemID='''+KodeBarang+''' ');
         Open;
       end;
       Modal := quAct1.FieldByName('Total').AsCurrency;
       with quAct,SQL do
       begin
         Close;Clear;
         Add('UPDATE ARTrPenjualanDt SET Modal='''+CurrToStr(Modal)+''' '
            +'WHERE SaleID='''+SaleID+''' AND ItemID='''+KodeBarang+'''');
         ExecSQL;
       end;
    end;
  end;
  quSO.Requery();
  quDO.Requery();
end;

procedure TfmARSN.dxButton1Click(Sender: TObject);
begin
  inherited;
  if quDOSNID.AsString <> '' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      add(' UPDATE APTrPurchaseDtSN SET FgJual=''T'' WHERE ItemID='''+KodeBarang+''' '
         +' AND SNID IN (SELECT SNID FROM ARTrPenjualanSn WHERE SaleID='''+SaleID+''' AND ItemID='''+KodeBarang+''') ');
      ExecSQL;
    end;
    with quAct,SQL do
    begin
      Close;Clear;
      add(' Update APTrKonsinyasiDtSn SET FgJual=''T'' WHERE ItemID='''+KodeBarang+''' '
         +' AND SNID IN (SELECT SNID FROM ARTrPenjualanSn WHERE SaleID='''+SaleID+''' AND ItemID='''+KodeBarang+''') ');
      ExecSQL;
    end;
  end;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM ARTrPenjualanSN WHERE SaleID='''+SaleID+''' and ItemID='''+KodeBarang+''' ');
    ExecSQL;;
  end;
  quSO.Requery();
  quDO.Requery();
end;

end.
