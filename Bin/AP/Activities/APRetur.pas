unit APRetur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxEditor, dxDBELib, DBCtrls, dxDBTLCl, dxGrClms,Printers,
  Mask;

type
  TfmAPRetur = class(TfmStdLv4)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    dbg: TdxDBGrid;
    Panel2: TPanel;
    quSup: TADOQuery;
    quItem: TADOQuery;
    dbgListPaymentID: TdxDBGridMaskColumn;
    dbgListPaymentDate: TdxDBGridDateColumn;
    dbgListSuppId: TdxDBGridMaskColumn;
    dbgListLSuppname: TdxDBGridLookupColumn;
    quAct1: TADOQuery;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    quMainReturnID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainSuppID: TStringField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quDetilReturnID: TStringField;
    quDetilPurchaseID: TStringField;
    quDetilItemID: TStringField;
    quDetilQty: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilLuItemName: TStringField;
    dbgPurchaseID: TdxDBGridButtonColumn;
    dbgItemID: TdxDBGridButtonColumn;
    dbgItemName: TdxDBGridColumn;
    dbgQty: TdxDBGridColumn;
    quPurchase: TADOQuery;
    quPurchaseDt: TADOQuery;
    dbgLocation: TdxDBGridButtonColumn;
    quWareHouse: TADOQuery;
    Label13: TLabel;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    DBText2: TDBText;
    Label11: TLabel;
    DBText3: TDBText;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    quDetilWareHouseID: TStringField;
    quDetilLWareHouse: TStringField;
    dbgPrice: TdxDBGridButtonColumn;
    quMainFlagRetur: TStringField;
    dbgValuta: TdxDBGridColumn;
    quDetilCValuta: TStringField;
    dxDBEdit2: TdxDBEdit;
    LRet: TLabel;
    dxButton3: TdxButton;
    quDetilNote: TStringField;
    dbgColumn8: TdxDBGridBlobColumn;
    bbSN: TdxButton;
    Label12: TLabel;
    dbgSNRetur: TdxDBGrid;
    quSN: TADOQuery;
    dsSN: TDataSource;
    quSNSNID: TStringField;
    quSNReturnID: TStringField;
    quSNPurchaseID: TStringField;
    quSNItemID: TStringField;
    quSNUpdDate: TDateTimeField;
    quSNUpdUser: TStringField;
    dbgSNReturReturnID: TdxDBGridMaskColumn;
    dbgSNReturPurchaseID: TdxDBGridMaskColumn;
    dbgSNReturItemID: TdxDBGridMaskColumn;
    dbgSNReturUpdDate: TdxDBGridDateColumn;
    dbgSNReturUpdUser: TdxDBGridMaskColumn;
    dbgSNReturSNID: TdxDBGridButtonColumn;
    quMainLuSupplier: TStringField;
    quDetilPrice: TBCDField;
    quDetilCRate: TCurrencyField;

    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dbgEnter(Sender: TObject);
    procedure dbgPurchaseIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure dsDetilStateChange(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure ActNewExecute(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure dbgItemIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgLocationButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quDetilBeforeEdit(DataSet: TDataSet);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quMainBeforeEdit(DataSet: TDataSet);
    procedure dbgPriceButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure dxButton3Click(Sender: TObject);
    procedure quSNNewRecord(DataSet: TDataSet);
    procedure dbgSNReturSNIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dsSNStateChange(Sender: TObject);
    procedure quSNAfterPost(DataSet: TDataSet);
    procedure quSNBeforeInsert(DataSet: TDataSet);
    procedure quSNBeforeDelete(DataSet: TDataSet);
    procedure quSNBeforePost(DataSet: TDataSet);
    procedure bbSNClick(Sender: TObject);
  private
    { Private declarations }
    procedure CekPegRet;
    procedure CekSN;
  public
    { Public declarations }
    StatusRetur : string;
  end;

var
  fmAPRetur: TfmAPRetur;

implementation

uses StdLv2, StdLv1, StdLv3, StdLv0, Search, UnitGeneral, ConMain, MyUnit, Allitem, ARQRRptSuratJalan;

{$R *.dfm}
procedure TfmAPRetur.CekPegRet;
Begin //cek apakah sudah ada Peg Retur kalo sudah ada tidak bisa di utak atik
   with quAct, SQL do
   begin
      Close; Clear;
      Add('SELECT top 1 ReturnRepID FROM APTrReturnRepDt WHERE ReturnID='''+quMainReturnID.Value+'''');
      Open;
      if not IsEmpty then
      begin
         MsgInfo('Sudah ada Pengganti Retur ['+quAct.fieldbyname('ReturnRepId').AsString+'], tidak bisa edit/Delete lagi');
         Abort;
      end;
   end;
End;

Procedure TfmAPRetur.CekSN;
Begin //Cek ada data atau tidak, kalau ada hapus manual dulu
  with quAct,SQL do
  begin
    close;clear;
    add('SELECT * FROM APTrReturnSN WHERE ReturnID='''+quMainReturnID.AsString+''' ');
    open;
    if not IsEmpty then
    begin
       ShowMessage('Hapus dulu data serial numbernya');
       abort;
    end;
  end;
End;

procedure TfmAPRetur.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), ReturnID';
  FFieldTgl   := 'TransDate';
  if StatusRetur='R' then
   FAfterWhere := ' AND FlagRetur=''R'''
  else
   FAfterWhere := ' AND FlagRetur=''B''';
  SettingDxGrid(dbg);
  inherited;
  if StatusRetur='R' then
     LRet.Caption:='RETUR RUSAK'
  else
     LRet.Caption:='RETUR BATAL';
  quMain.Active  := TRUE;
  quDetil.Active := TRUE;
  quSN.Active := TRUE;
  quDetilQty.DisplayFormat := sDisFormat1;
  quDetilQty.EditFormat := sEditformat;
  quDetilPrice.DisplayFormat := sDisFormat;
  quDetilPrice.EditFormat := sEditformat;
  SettingDxGrid(dbg);
end;

procedure TfmAPRetur.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBDateEdit1,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit1,quMain.State<>dsInsert);
end;

procedure TfmAPRetur.dbgEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then
     quDetil.Append;
end;

procedure TfmAPRetur.dbgPurchaseIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Nota Pembelian';
       if StatusRetur = 'R' then
       SQLString := 'SELECT DISTINCT K.PurchaseID as Nota_Pembelian, CONVERT(VARCHAR(10),Transdate,103) as Tgl_Pembelian,K.WarehouseID as Kode_Gudang, '
                   +'J.WarehouseName,K.Price,K.Sisa FROM (SELECT A.SuppID,B.ItemID,A.PurchaseID,A.Transdate,B.WarehouseID,B.Price,ISNULL(Qty,0)- '
                   +'(SELECT ISNULL(SUM(Qty),0) FROM APTrReturnDt D INNER JOIN APTrReturnHd E ON D.ReturnId=E.ReturnId '
                   +'WHERE D.PurchaseID=A.PurchaseId AND Itemid='''+quDetilItemID.AsString+''' AND E.SuppId='''+quMainSuppID.AsString+''' AND D.Price=B.Price) as Sisa '
                   +'FROM APTrPurchaseHd A INNER JOIN APTRPurchaseDt B ON A.PurchaseId=B.PurchaseId AND A.SuppId=B.SuppId '
                   +'UNION ALL SELECT A.SuppID,P.ItemID,A.KonsinyasiInvID, A.Transdate, B.WarehouseID,P.Price, '
                   +'ISNULL(Qty,0)-(SELECT ISNULL(SUM(Qty),0) FROM APTrReturnDt D INNER JOIN APTrReturnHd E ON D.ReturnId=E.ReturnId '
                   +'WHERE D.PurchaseID=A.KonsinyasiInvID AND Itemid='''+quDetilItemID.AsString+''' AND E.SuppId='''+quMainSuppID.AsString+''' AND D.Price=P.Price) as Sisa '
                   +'FROM APTrKonsinyasiInvHd A INNER JOIN APTrKonsinyasiInvDt P ON A.KonsinyasiInvID=P.KonsinyasiInvID '
                   +'INNER JOIN APTrKonsinyasiHd B ON B.KonsinyasiID=P.KonsinyasiID ) as K '
                   +'INNER JOIN INMsWareHouse J ON K.WareHouseId=J.WareHouseId '
                   +'WHERE K.SuppId='''+quMainSuppID.AsString+''' AND K.ItemId='''+quDetilItemID.AsString+''' ';
       if StatusRetur = 'B' then
       SQLString := ' Select Distinct A.PurchaseId as Nota_Pembelian,'
                   +' Convert(varchar(10),Transdate,103) as Tgl_Pembelian,'
                   +' B.WareHouseId as Kode_Gudang,J.WareHouseName as Nama_Gudang,'
                   +' Price as Harga_Beli_Item,'
                   +' isnull(Qty,0)-(Select isnull(Sum(Qty),0) FROM APTrReturnDt D INNER JOIN APTrReturnHd E ON D.ReturnId=E.ReturnId'
                   +' WHERE D.PurchaseID=A.PurchaseId'
                   +' AND Itemid='''+quDetilItemID.AsString+''' AND E.SuppId='''+quMainSuppID.AsString+''''
                   +' AND D.Price=B.Price) as Sisa'
                   +' FROM APTrPurchaseHd A INNER JOIN APTRPurchaseDt B ON A.PurchaseId=B.PurchaseId'
                   +' AND A.SuppId=B.SuppId'
                   +' INNER JOIN INMsWareHouse J ON B.WareHouseId=J.WareHouseId'
                   +' WHERE A.SuppId='''+quMainSuppID.AsString+''' AND'
                   +' ItemId='''+quDetilItemID.AsString+''''
                   +' ORDER BY A.PurchaseId ' ;
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilPurchaseID.Value := Res[0];
          quDetilPrice.AsString:= Res[4];
           if StatusRetur='B' then  quDetilWareHouseID.Value := Res[2];
       end;
    finally
       free;
    end;
end;

procedure TfmAPRetur.dxDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmAPRetur.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quDetilItemID.Value)='' then
  begin
     MsgInfo('Kode Item tidak boleh kosong !');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilLuItemName.Value)='' then
  begin
     MsgInfo('Kode Item tidak ada dalam Master!');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilPurchaseID.Value)='' then
  begin
     MsgInfo('Nota Pembelian tidak boleh kosong !');
     quDetilPurchaseID.FocusControl;
     Abort;
  end;
  
  if TRIM(quDetilWareHouseID.Value)='' then
  begin
     MsgInfo('Kode Gudang tidak boleh kosong !');
     quDetilWareHouseID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilLWareHouse.Value)='' then
  begin
     MsgInfo('Kode Gudang tidak ada dalam Master !');
     quDetilWareHouseID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilPrice.AsString) = ''  then
  begin
     MsgInfo('Harga tidak boleh kosong');
     quDetilPrice.FocusControl;
     Abort;
  end;

  if quDetilQty.value <= 0  then
  begin
     MsgInfo('Jumlah Barang harus lebih besar dari 0');
     quDetilQty.FocusControl;
     Abort;
  end;

  if quDetil.State = dsInsert then
 begin
     with quAct, SQL do
     begin
        Close; Clear;
          If StatusRetur='R' then
          Begin
            Add(' SELECT Top 1 PurchaseID FROM APTrReturnDt A INNER JOIN APTrReturnHd B ON A.ReturnId=B.ReturnId'
               +' WHERE A.ReturnID='''+quMainReturnID.Value+''' AND PurchaseID='''+quDetilPurchaseID.Value+''''
               +' AND ItemID='''+quDetilItemID.Value+''' AND WareHouseId='''+quDetilWareHouseID.Value+''''
               +' AND B.SuppId='''+quMainSuppID.Value+'''');
          End;

          If StatusRetur='B' then
          Begin
            Add(' SELECT Top 1 PurchaseID FROM APTrReturnDt A INNER JOIN APTrReturnHd B ON A.ReturnId=B.ReturnId '
               +' WHERE A.ReturnID='''+quMainReturnID.Value+''' AND PurchaseID='''+quDetilPurchaseID.Value+''''
               +' AND ItemID='''+quDetilItemID.Value+''' AND WareHouseId='''+quDetilWareHouseID.Value+''''
               +' AND Price='''+quDetilPrice.AsString+''' AND B.SuppId='''+quMainSuppID.Value+'''');
          End;
        Open;
        if not IsEmpty then
        begin
           MsgInfo('Item sudah ada dalam List');
           quDetilItemID.FocusControl;
           abort;
        end;
     end;
 end;

  {
  if StatusRetur='B' then
  Begin
        with quAct,sql do
        Begin
          Close;Clear;
          Add(' Select isnull(Qty,0)-( Select isnull(Sum(Qty),0) FROM APTrReturnDt A '
             +' INNER JOIN APTrReturnHd B ON A.ReturnId=B.ReturnID WHERE PurchaseId='''+quDetilPurchaseID.Value +''''
             +' AND ItemId='''+quDetilItemID.AsString+''' AND WarehouseId='''+quDetilWareHouseID.Value+''''
             +' AND B.SuppId='''+quMainSuppID.Value+''' AND Price='''+qudetilPrice.AsString+''''
             +' AND B.ReturnId <> '''+quMainReturnID.Value+''') as SisaRetur'
             +' FROM APTrPurchaseDt Where PurchaseId='''+quDetilPurchaseID.Value+''''
             +' AND ItemId='''+quDetilItemID.AsString +''' AND WareHouseId='''+quDetilWareHouseID.Value+''''
             +' AND SuppId='''+quMainSuppID.Value+''' AND Price='''+quDetilPrice.AsString+'''');
           //  AND SuppId='''+quMainSuppID.Value+'''
            Open;
            If IsEmpty then
            Begin
              MsgInfo('Data Retur ini tidak terdapat pada Data Pembelian Supplier ['+quMainLuSupplier.Value+']');
              quDetilPurchaseID.FocusControl;
              Abort;
            End;
          End;
 End;
                }
 // if StatusRetur='R' then
  Begin
        with quAct,sql do
        Begin
          Close;Clear;
          Add('SELECT K.Qty,ISNULL(Qty,0)-(Select isnull(Sum(Qty),0) FROM APTrReturnDt A INNER JOIN APTrReturnHd B ON A.ReturnId=B.ReturnID '
             +'WHERE PurchaseId='''+quDetilPurchaseID.AsString+''' AND ItemId='''+quDetilItemID.AsString+''' AND B.SuppId='''+quMainSuppID.AsString+''' '
             +'AND Price='''+quDetilPrice.AsString+''' AND B.ReturnId <> '''+quMainReturnID.AsString+''') as SisaRetur FROM '
             +'(SELECT Qty,PurchaseID,ItemID,SuppID,Price FROM APTrPurchaseDt UNION ALL '
             +'SELECT Qty,KonsinyasiInvId,ItemID,SuppID,Price FROM APTrKonsinyasiInvDt) as K '
             +'WHERE K.PurchaseID='''+quDetilPurchaseID.AsString+''' AND K.ItemId='''+quDetilItemID.AsString+''' '
             +'AND K.SuppId='''+quMainSuppID.AsString+''' AND K.Price='''+quDetilPrice.AsString+''' ');
{              'Select QTY,isnull(Qty,0)-( Select isnull(Sum(Qty),0) FROM APTrReturnDt A '
             +' INNER JOIN APTrReturnHd B ON A.ReturnId=B.ReturnID WHERE PurchaseId='''+quDetilPurchaseID.Value +''''
             +' AND ItemId='''+quDetilItemID.AsString+''''
             +' AND B.SuppId='''+quMainSuppID.Value+''' AND Price='''+qudetilPrice.AsString+''''
             +' AND B.ReturnId <> '''+quMainReturnID.Value+''') as SisaRetur'
             +' FROM APTrPurchaseDt Where PurchaseId='''+quDetilPurchaseID.Value+''''
             +' AND ItemId='''+quDetilItemID.AsString +''''
             +' AND SuppId='''+quMainSuppID.Value+''' AND Price='''+quDetilPrice.AsString+''''
             +' ORDER BY QTY Desc');}
           Open;
           If IsEmpty then
           Begin
              MsgInfo('Data Retur ini tidak terdapat pada Data Pembelian Supplier ['+quMainLuSupplier.Value+']');
              quDetilPurchaseID.FocusControl;
              Abort;
           End;
         End;
 End;


 if  quDetilQty.Value > quAct.FieldByName('SisaRetur').AsInteger then
 Begin
     MsgInfo(' Jumlah barang melebihi jumlah yang dibeli'+#13
            +' Jumlah Yang dibeli/Sisa adalah '''+quAct.FieldByName('SisaRetur').AsString+'''' );
     quDetilQty.FocusControl;
     Abort;
 End;


   //untuk mengecek pembayaran
 if StatusRetur = 'B' then
 Begin
   With quAct,sql do
   Begin
     Close;Clear;
     add(' Select Top 1 A.PaymentID FROM APTrPaymentHd A INNER JOIN APTrpaymentDt B ON A.PaymentId=B.PaymentId'
        +' WHERE A.Suppid='''+quMainSuppID.Value+''' AND B.PurchaseId='''+quDetilPurchaseID.Value +'''');
     Open;
     if Not IsEmpty then
     Begin
       MsgInfo(' Nota Pembelian ini tidak bisa dibatalkan'+#13
              +' dikarena sudah ada Pembayaran ['+quAct.fieldbyname('PaymentID').AsString+']');
       quDetilPurchaseID.FocusControl;
       Abort;
     End;
   End;
 End;  

 quDetilUpdUser.Value := dmMain.UserId;
 quDetilUpdDate.Value := GetServerDateTime;

end;

procedure TfmAPRetur.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgPurchaseID,quDetil.State<>dsInsert);
  SetReadOnly(dbgItemID,qudetil.State<>dsinsert);
  if StatusRetur='B' then
    SetReadOnly(dbgLocation,qudetil.State<>dsInsert)
  else
    SetReadOnly(dbgLocation,TRUE);
  SetReadOnly(dbgPrice,quDetil.State<>dsinsert);
  SetReadOnly(dbgItemName,TRUE);
  SetReadOnly(dbgValuta,TRUE);
end;
procedure TfmAPRetur.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Supplier';
       if StatusRetur = 'R' then
       SQLString := 'SELECT SuppID as Kode_Supplier, Suppname as Supplier,''Supplier Pembelian'' as Keterangan, Address as Alamat FROM APMsSupplier '
                   +'ORDER BY SuppID';
       if StatusRetur = 'B' then
       SQLString :='SELECT SuppID as Kode_Supplier, Suppname as Supplier,Address as Alamat FROM APMsSupplier ORDER BY SuppID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainSuppId.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmAPRetur.quMainBeforePost(DataSet: TDataSet);
var ST : String;
begin
  inherited;
  {if Trim(quMainReturnID.Value)='' then
  Begin
    MsgInfo('Nota bukti tidak boleh kosong');
    quMainReturnID.FocusControl;
    Abort;
  End;

  If qumain.State= dsinsert then
  Begin
    With quAct,Sql do
    Begin
       Close;Clear;
       add('Select ReturnID from APTrReturnHd WHERE ReturnID='''+quMainReturnID.Value+'''');
       Open;
       If Not IsEmpty then
       Begin
          MsgInfo('Nota sudah dipakai di transaksi retur lain');
          quMainReturnID.FocusControl;
          Abort;
       End;
    End;
  End;    }

  if TRIM(quMainTransDate.AsString)='' then
  begin
    ShowMessage('Tanggal transaksi tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  if TRIM(quMainSuppId.AsString)='' then
  begin
    ShowMessage('Kode Supplier tidak boleh kosong');
    quMainSuppId.FocusControl;
    Abort;
  End;

  if TRIM(quMainLuSupplier.AsString)='' then
  begin
    ShowMessage('Kode Supplier tidak ada dalam Master Supplier');
    quMainSuppid.FocusControl;
    Abort;
  End;

  if quMain.State=dsInsert then
  Begin
    if StatusRetur='R' Then
    Begin
      ST := 'RBR.'+PT+ FormatDateTime('.YY.MM.', quMainTransDate.AsDateTime);
      quMainReturnID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'APTrReturnHd', 'ReturnId', ST, '0') + 1);
    End;
    if StatusRetur='B' Then
    Begin
      ST := 'RBB.'+PT+ FormatDateTime('.YY.MM.', quMainTransDate.AsDateTime);
      quMainReturnID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'APTrReturnHd', 'ReturnId', ST, '0') + 1);
    End
  End;

  quMainUpdUser.AsString := dmMain.UserId;
  quMainUpddate.AsDateTime := GetServerDateTime;
end;

procedure TfmAPRetur.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilQty.AsFloat := 1;
  if StatusRetur='R' then  quDetilWareHouseID.AsString:=sDGR;
  quDetilItemID.FocusControl;
end;

procedure TfmAPRetur.ActNewExecute(Sender: TObject);
begin
  inherited;
  quMainTransDate.FocusControl;
end;

procedure TfmAPRetur.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime:=Date;
  if StatusRetur ='R' then
     quMainFlagRetur.AsString := 'R'
  else
     quMainFlagRetur.AsString := 'B';
end;

procedure TfmAPRetur.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       if StatusRetur='R' Then
        Title := 'Retur Rusak Pembelian';
       if StatusRetur='B' Then
        Title := 'Retur Batal Pembelian';

       SQLString := ' SELECT A.ReturnID as Nota_Retur, Convert(varchar(10),A.TransDate,103) as Tanggal'
                   +' ,A.SuppId as Kode_Supplier, B.SuppName as Nama_Supplier, '
                   +' A.Note as Keterangan'
                   +' FROM APTrReturnHd A'
                   +' INNER JOIN APMsSupplier B on A.SuppID = B.SuppID'
                   +' WHERE '+FSQLWhere;
                  if StatusRetur='R' Then
                   SQLString:=SQLString+' AND FlagRetur=''R'' ORDER BY ReturnID';
                  if StatusRetur='B' Then
                   SQLString:=SQLString+' AND FlagRetur=''B'' ORDER BY ReturnID';
       if ShowModal = MrOK then
       begin
         qumain.Locate('ReturnID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmAPRetur.dbgItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       if StatusRetur='R' then
       SQLString := 'SELECT DISTINCT K.ItemName as Nama_Barang, K.ItemID as Kode_Barang, B.ProductDesc as Product, C.GroupDesc as Group_Barang FROM '
                   +'(SELECT A.ItemID,B.ItemName,B.ProductID,B.GroupID,A.SuppID FROM APTrPurchaseDt A INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
                   +'UNION ALL SELECT A.ItemID,B.ItemName,B.ProductID,B.GroupID,A.SuppID FROM APTrKonsinyasiInvDt A '
                   +'INNER JOIN INMsItem B ON A.ItemID=B.ItemID) K INNER JOIN INMsProduct B ON K.ProductID=B.ProductID '
                   +'INNER JOIN INMsGroup C ON K.GroupID=C.GroupID '
                   +'WHERE K.SuppID='''+quMainSuppID.AsString+''' '
                   +'ORDER BY K.ItemID';
       if StatusRetur='B' then
       SQLString := 'SELECT DISTINCT K.ItemName as Nama_Barang, K.ItemID as Kode_Barang, B.ProductDesc as Product, C.GroupDesc as Group_Barang FROM '
                   +'(SELECT A.ItemID,B.ItemName,B.ProductID,B.GroupID,A.SuppID FROM APTrPurchaseDt A INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
                   +') K INNER JOIN INMsProduct B ON K.ProductID=B.ProductID '
                   +'INNER JOIN INMsGroup C ON K.GroupID=C.GroupID '
                   +'WHERE K.SuppID='''+quMainSuppID.AsString+''' '
                   +'ORDER BY K.ItemID' ;
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilItemID.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmAPRetur.dbgLocationButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Location';
       SQLString := ' SELECT Distinct A.WareHouseID as Kode_Gudang, WareHouseName as Nama_Gudang ' +
                    ' FROM INMsWareHouse A INNER JOIN APTrPurchaseDt B ON A.WareHouseId=B.WareHouseId ' +
                    ' WHERE B.ItemId='''+quDetilItemID.Value+''' And PurchaseId='''+quDetilPurchaseID.Value+''''+
                    ' AND SuppId='''+quMainSuppID.Value+''''+
                    ' ORDER BY A.WareHouseID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilwarehouseID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmAPRetur.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmAPRetur.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllItem(qumainreturnId.Value,quDetilPurchaseID.Value,qudetilitemId.Value,
                    quDetilWareHouseID.Value,quDetilPrice.value,56);
  InsertToAllItem(quMainReturnID.Value,quDetilPurchaseID.Value,quMainTransDate.asdatetime,quDetilWareHouseID.value
                   ,quDetilItemID.Value,56,abs(quDetilQty.Value),quDetilPrice.value,quDetilCValuta.Value,quDetilCRate.Value,'AP',quMainLuSupplier.Value);
  if MessageDlg('Apakah anda akan menginput serial number ? ', mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
     quSN.Last;
     quSN.Append;
     Abort;
  end else
  begin
    quDetil.Append;
  end;
end;

procedure TfmAPRetur.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekPegRet;
  CekSN;
  DeleteFromAllItem(qumainreturnId.Value,quDetilPurchaseID.Value,qudetilitemId.Value,
                    quDetilWareHouseID.Value,quDetilPrice.value,56)
end;

procedure TfmAPRetur.quDetilBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekPegRet;
end;

procedure TfmAPRetur.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CekPegRet;
end;

procedure TfmAPRetur.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekPegRet;
  CekSN;
  DeleteFromAllItem(quMainReturnID.Value,56)
end;

procedure TfmAPRetur.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekPegRet;
end;

procedure TfmAPRetur.dbgPriceButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Cari Harga';
       SQLString := ' SELECT Distinct Price'
                   +' FROM APTRPurchaseDt A'
                   +' WHERE A.PurchaseID = ''' + quDetilPurchaseID.Value + ''' AND '
                   +' A.SuppId='''+quMainSuppID.Value+''' AND ItemId='''+quDetilItemID.Value+''''
                   +' '
                   +' ORDER BY Price';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilPrice.AsString := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmAPRetur.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,sql do
  Begin
    Close;Clear;
    Add(' Select TransDate,CurrID,Rate FROM APTrPurchaseHd WHERE PurchaseId='''+quDetilPurchaseID.AsString+''''
       +' AND SuppId='''+quMainSuppID.AsString+''' UNION ALL '
       +'SELECT Transdate,CurrID,Rate FROM APTrKonsinyasiInvHd WHERE KonsinyasiInvID='''+quDetilPurchaseID.AsString+''' '
       +' AND SuppID='''+quMainSuppID.AsString+''' ');
    Open;
  End;
  quDetilCValuta.Value:=quAct.FieldByName('CurrId').AsString;
  quDetilCRate.AsCurrency :=quAct.FieldByName('Rate').AsCurrency;
end;

procedure TfmAPRetur.dxButton3Click(Sender: TObject);
var iPrint : integer;
begin
  inherited;
  iPrint := Printer.Printers.IndexOf(sDPB);
  with TfmQRRptSuratJalan.Create(Self) do
     try
       MyReport.PrinterSettings.PrinterIndex := iPrint;
       if StatusRetur = 'R' then
          qlbNamaInvoice.Caption :='Surat Jalan Retur Rusak'
       else
         qlbNamaInvoice.Caption :='Surat Jalan Retur Batal';
       QRLabel7.Enabled := False;
       QRDBText6.Enabled := False;
       with qu001,SQL do
       Begin
         Close;Clear;
         add(' Select ReturnId as SaleId,ReturnId,Convert(varchar(10),getdate(),103) as Tgl,A.SuppId as SuppId,C.SuppName as CustName,C.Address '
            +' FROM APTrReturnHd A INNER JOIN APMsSupplier C ON A.SuppId=C.SuppId'
            +' WHERE A.ReturnId='''+quMainReturnID.Value+'''');
         Open;
       End;

       With qu002,sql do
       Begin
         Close;Clear;
         add(' Select A.ItemId,B.ItemName,B.UOMId,C.Productdesc, Sum(Qty) as Qty,a.Note,A.Price FROM APTrReturnDt A'
            +' INNER JOIN INMsItem B ON A.Itemid=B.Itemid'
            +' INNER JOIN INMsProduct C ON B.ProductId=C.ProductId WHERE A.ReturnId=:ReturnId'
            +' GROUP BY A.ItemId,B.ItemName,B.UOMId,C.Productdesc,A.Note,A.Price');
         Parameters.ParamByName('ReturnId').DataType := ftString;
         Open;
       End;
         QRLabel2.Caption := 'Supplier :';
         QRLabel14.Caption := '';
         qlbJatuhTempo.Caption :='';
         qlbTempo.Caption := '';
         qlbKet.Caption := '';
         QRLabel12.Top :=4;

       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;
      finally
        free;
     end;
end;

procedure TfmAPRetur.quSNNewRecord(DataSet: TDataSet);
begin
  inherited;
  quSNSNID.FocusControl;
end;

procedure TfmAPRetur.dbgSNReturSNIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Serial Number ';
       SQLString :='SELECT K.SNID as Serial_Number, K.PurchaseID as Nota_Pembelian, '
                  +'CONVERT(VARCHAR(10),Transdate,103) as Tanggal, K.SuppID+'' - ''+K.SuppName as Supplier, K.ItemID+'' - ''+C.ItemName as Barang FROM '
                  +'(SELECT A.SNID, A.PurchaseID, B.Transdate, A.SuppID, C.SuppName, A.ItemID FROM APTrPurchaseDtSN A '
                  +'INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID INNER JOIN APMsSupplier C ON A.SuppID=C.SuppID '
                  +'UNION ALL SELECT A.SNID, A.KonsinyasiInvID, B.Transdate, A.SuppID, C.SuppName, A.ItemID FROM APTrKonsinyasiInvDtSN A '
                  +'INNER JOIN APTrKonsinyasiInvHd B ON A.KonsinyasiInvID=B.KonsinyasiInvID INNER JOIN APMsSupplier C ON A.SuppID=C.SuppID) as K '
                  +'INNER JOIN INMsItem C ON K.ItemID=C.ItemID WHERE K.PurchaseID='''+quDetilPurchaseID.AsString+''' '
                  +'AND K.ItemID='''+quDetilItemID.AsString+''' ORDER BY K.SNID';
       if ShowModal = MrOK then
       begin
          if quSN.State = dsBrowse then quSN.Edit;
             quSNSNID.Value :=Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmAPRetur.dsSNStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgSNReturSNID,quSN.State<>dsInsert);
end;

procedure TfmAPRetur.quSNAfterPost(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
   Close;Clear;
   add(' SELECT SNID FROM APTrPurchaseDtSN WHERE ItemID='''+quDetilItemID.AsString+''' '
      +' AND SNID='''+quSNSNID.AsString+'''');
   open;
   if quAct.FieldByName('SNID').AsString <> '' then
   begin
     Close;Clear;
     add(' UPDATE APTrPurchaseDtSN SET FgJual=''Y'' WHERE ItemID='''+quDetilItemID.AsString+''' '
        +' AND SNID='''+quSNSNID.AsString+''' ');
     ExecSQL;
   end else
   begin
     Close;Clear;
     add(' SELECT SNID FROM APTrKonsinyasiDtSn WHERE ItemID='''+quDetilItemID.AsString+''' '
        +' AND SNID='''+quSNSNID.AsString+''' ');
     open;
     if quAct.FieldByName('SNID').AsString <> '' then
     begin
       Close;Clear;
       add(' UPDATE APTrKonsinyasiDtSn SET FgJual=''Y'' WHERE ItemID='''+quDetilItemID.AsString+''' '
          +' AND SNID='''+quSNSNID.AsString+''' ');
       ExecSQL;
     end else
     begin
       Close;Clear;
       Add(' UPDATE APTrReturnRepSn SET FgJual=''Y'' WHERE ItemID='''+quDetilItemID.AsString+''' '
          +' AND SNID='''+quSNSNID.AsString+''' ');
       ExecSQL;
     end;
   end;
  end;
  with quAct,SQL do
  begin
   Close;Clear;
   Add(' Select isnull(Count(SNId),0) as jumlah From APTrReturnSN WHERE ItemId='''+quDetilItemID.AsString+''''
      +' AND PurchaseId='''+quDetilPurchaseID.AsString+''' AND ReturnID='''+quMainReturnID.AsString+''' ');
   Open;
  End;
  if quAct.FieldByName('jumlah').AsInteger = quDetilQty.Value then
  begin
   quDetil.Last;
   qudetil.Append;
   abort;
  End
  else
  begin
   quSN.Append;
   //quSNSNID.FocusControl;
  end;
end;

procedure TfmAPRetur.quSNBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
   Close;Clear;
   Add(' Select isnull(Count(SNId),0) as jumlah From APTrReturnSN WHERE ItemId='''+quDetilItemID.AsString+''''
      +' AND PurchaseId='''+quDetilPurchaseID.AsString+''' AND ReturnID='''+quMainReturnID.AsString+''' ');
   Open;
  End;
  if quAct.FieldByName('jumlah').AsInteger >= quDetilQty.Value then Abort;
end;

procedure TfmAPRetur.quSNBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekPegRet;
  with quAct,SQL do
  begin
   Close;Clear;
   add(' SELECT SNID FROM APTrPurchaseDtSN WHERE ItemID='''+quDetilItemID.AsString+''' '
      +' AND SNID='''+quSNSNID.AsString+'''');
   Open;
   if quAct.FieldByName('SNID').AsString <> '' then
   begin
     Close;Clear;
     add(' UPDATE APTrPurchaseDtSN SET FgJual=''T'' WHERE ItemID='''+quDetilItemID.AsString+''' '
        +' AND SNID='''+quSNSNID.AsString+''' ');
      ExecSQL;
   end else
   begin
     Close;Clear;
     Add(' SELECT SNID FROM APTrKonsinyasiDtSn WHERE ItemID='''+quDetilItemID.AsString+''' '
        +' AND SNID='''+quSNSNID.AsString+''' ');
     Open;
     if quAct.FieldByName('SNID').AsString <> '' then
     begin
       Add(' UPDATE APTrKonsinyasiDtSn SET FgJual=''T'' WHERE ItemID='''+quDetilItemID.AsString+''' '
          +' AND SNID='''+quSNSNID.AsString+''' ');
       ExecSQL;
     end else
     begin
       Close;Clear;
       Add(' UPDATE APTrReturnRepSn SET FgJual=''T'' WHERE ItemID='''+quDetilItemID.AsString+''' '
          +' AND SNID='''+quSNSNID.AsString+''' ');
       ExecSQL;
     end;
   end;
  end;
end;

procedure TfmAPRetur.quSNBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(quSNSNID.Value)='' then
  Begin
   MsgInfo('Kode Serial Number tidak boleh kosong');
   quSNSNID.FocusControl;
   Abort;
  End;

  If quSN.State= dsInsert then
  Begin
    With quAct,Sql do
    Begin
       Close;Clear;
       add(' SELECT SNID FROM APTrReturnSN WHERE ReturnID=:ReturnID AND SNID=:SNID AND ItemID=:ItemID'
          +' AND PurchaseID=:PurchaseID ');
          Parameters.ParamByName('ReturnID').Value:= quSNReturnID.AsString;
          Parameters.ParamByName('SNID').Value:= quSNSNID.AsString;
          Parameters.ParamByName('ItemID').Value:= quSNItemID.AsString;
          Parameters.ParamByName('PurchaseID').Value:= quSNPurchaseID.AsString;
       Open;
       If quAct.RecordCount <> 0 then
       Begin
          MsgInfo('Serial Number sudah ada');
          quSNSNID.FocusControl;
          Abort;
       End;
    End;
  End;

  If quSN.State= dsInsert then
  Begin
    With quAct,Sql do
    Begin
       Close;Clear;
       add('SELECT K.SNID FROM (SELECT SNID,ItemID FROM APTrPurchaseDtSN UNION ALL SELECT SNID,ItemID FROM APTrKonsinyasiInvDtSN) as K '
          +'WHERE K.SNID='''+quSNSNID.AsString+''' AND K.ItemID='''+quDetilItemID.AsString+''' ');
       Open;
       If quAct.FieldByName('SNID').AsString = '' then
       Begin
          MsgInfo('Serial Number ini belum pernah masuk');
          quSNSNID.FocusControl;
          Abort;
       End;
    End;
  End;

  If quSN.State= dsInsert then
  Begin
    With quAct,Sql do
    Begin
       Close;Clear;
       add('SELECT K.FgJual FROM (SELECT ItemID,FgJual,SNID FROM APTrPurchaseDtSN UNION ALL SELECT ItemID,FgJual,SNID FROM APTrKonsinyasiDtSN) as K '
          +'WHERE K.SNID='''+quSNSNID.AsString+''' AND K.ItemID='''+quDetilItemID.AsString+''' ');
       Open;
       If quAct.FieldByName('FgJual').AsString = 'Y' then
       Begin
          MsgInfo('Serial Number sudah pernah keluar');
          quSNSNID.FocusControl;
          Abort;
       End;
    End;
  End;

  quSNUpdUser.AsString := dmMain.UserId;
  quSNUpdDate.AsDateTime := GetServerDateTime;
end;

procedure TfmAPRetur.bbSNClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := ' Serial Number ';
       SQLString :='SELECT A.SNID as Serial_Number, A.ReturnID as Nota_Retur,A.PurchaseID as Nota_Pembelian, '
                  +'Convert(Varchar(10),B.Transdate,103) as Tanggal, '
                  +'B.SuppID as Kode_Supplier, C.SuppName as Supplier, A.ItemID as Kode_Barang, D.ItemName as Nama_Barang '
                  +'FROM APTrReturnSN A INNER JOIN APTrReturnHd B ON A.ReturnID=B.ReturnID '
                  +'INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID INNER JOIN INMsItem D ON A.ItemID=D.ItemID '
                  +'WHERE B.FlagRetur='''+StatusRetur+''' ORDER BY A.SNID ';
       if ShowModal = MrOK then
       begin
         quMain.Locate('ReturnID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

end.
