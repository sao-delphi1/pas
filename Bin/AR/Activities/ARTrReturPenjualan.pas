unit ARTrReturPenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv41, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL,
  dxDBCtrl, dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls,
  Buttons, dxCore, dxContainer, dxDBTLCl, dxGrClms, DBCtrls, dxDBELib,
  dxEditor;

type
  TfmARTrReturPenjualan = class(TfmStdLv41)
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    quItem: TADOQuery;
    DBText3: TDBText;
    dbgListReturID: TdxDBGridMaskColumn;
    dbgListTransDate: TdxDBGridDateColumn;
    dbgListCustID: TdxDBGridMaskColumn;
    dbgListNote: TdxDBGridMemoColumn;
    dbgListUpdDate: TdxDBGridDateColumn;
    dbgListUpdUser: TdxDBGridMaskColumn;
    quSN: TADOQuery;
    dsSN: TDataSource;
    quCustomer: TADOQuery;
    quSNSNID: TStringField;
    quSNReturnID: TStringField;
    quSNSaleId: TStringField;
    quSNItemID: TStringField;
    quSNPrice: TBCDField;
    quSNWareHouseId: TStringField;
    quSNUpdDate: TDateTimeField;
    quSNUpdUser: TStringField;
    quDetilReturnID: TStringField;
    quDetilSaleId: TStringField;
    quDetilItemID: TStringField;
    quDetilPrice: TBCDField;
    quDetilWareHouseId: TStringField;
    quDetilQty: TIntegerField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quMainReturnID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainCustID: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quDetilLItemName: TStringField;
    quSale: TADOQuery;
    quDetilLCurrId: TStringField;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    DBText2: TDBText;
    Label11: TLabel;
    DBText1: TDBText;
    quMainFlagRetur: TStringField;
    quWareHouse: TADOQuery;
    quDetilLWareHouseName: TStringField;
    quMainLCustName: TStringField;
    quMainNote: TStringField;
    txtReturID: TdxDBEdit;
    txtTransDate: TdxDBDateEdit;
    txtCustID: TdxDBButtonEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1ItemID: TdxDBGridButtonColumn;
    dxDBGrid1WareHouseID: TdxDBGridColumn;
    dxDBGrid1CurrId: TdxDBGridColumn;
    dxDBGrid1UpdDate: TdxDBGridDateColumn;
    dxDBGrid1UpdUser: TdxDBGridMaskColumn;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2SaleId: TdxDBGridMaskColumn;
    dxDBGrid2ItemID: TdxDBGridMaskColumn;
    dxDBGrid2Price: TdxDBGridCurrencyColumn;
    dxDBGrid2UpdDate: TdxDBGridDateColumn;
    dxDBGrid2UpdUser: TdxDBGridMaskColumn;
    dxDBGrid1SaleId: TdxDBGridButtonColumn;
    dxDBGrid1ItemName: TdxDBGridColumn;
    dxDBGrid1Qty: TdxDBGridColumn;
    dxDBGrid1UserPrice: TdxDBGridButtonColumn;
    Label6: TLabel;
    dxDBGrid2ReturnID: TdxDBGridColumn;
    dbgListColumn7: TdxDBGridColumn;
    lRet: TLabel;
    dxButton3: TdxButton;
    bbReturn: TdxButton;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    dxDBGrid2SNID: TdxDBGridButtonColumn;
    procedure FormShow(Sender: TObject);
    procedure txtCustIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1ItemIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure txtReturIDKeyPress(Sender: TObject; var Key: Char);
    procedure dsDetilStateChange(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure dxDBGrid1SaleIdButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1UserPriceButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quSNBeforePost(DataSet: TDataSet);
    procedure quSNBeforeInsert(DataSet: TDataSet);
    procedure dsSNStateChange(Sender: TObject);
    procedure quDetilBeforeEdit(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
    procedure quSNBeforeEdit(DataSet: TDataSet);
    procedure quSNBeforeDelete(DataSet: TDataSet);
    procedure quSNAfterPost(DataSet: TDataSet);
    procedure quSNNewRecord(DataSet: TDataSet);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quMainBeforeEdit(DataSet: TDataSet);
    procedure dxButton3Click(Sender: TObject);
    procedure bbReturnClick(Sender: TObject);
    procedure TmbBrgClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure dxDBGrid2SNIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    procedure CekPegRet;
    procedure UpdateSerialNumber;
  public
    { Public declarations }
    StatusRetur : string;
  end;

var
  fmARTrReturPenjualan: TfmARTrReturPenjualan;

implementation

uses StdLv2, StdLv1, StdLv0, Search, UnitGeneral, ConMain, StdLv3, MyUnit,
  Allitem, ARQRRptSuratJalan, ARTrPengReturPenj;

{$R *.dfm}
procedure TfmARTrReturPenjualan.CekPegRet;
Begin //cek apakah sudah ada Peg Retur kalo sudah ada tidak bisa di utak atik
with quAct, SQL do
     begin
        Close; Clear;
        Add('SELECT top 1 ReturnRepID FROM ARTrPenggantiReturPenjDt WHERE ReturnID='''+quMainReturnID.Value+'''');
        Open;
        if not IsEmpty then
        begin
           MsgInfo('Sudah ada Pengganti Retur ['+quAct.fieldbyname('ReturnRepId').AsString+'], tidak bisa edit/Delete lagi');
           Abort;
        end;
     end;
End;

Procedure TfmARTrReturPenjualan.UpdateSerialNumber;
Begin //ubah FgJual serialnumber
  with quAct,SQL do
  begin
   Close;Clear;
   add(' SELECT SNID FROM APTrPurchaseDtSN WHERE ItemID='''+quDetilItemID.AsString+''' '
      +' AND SNID='''+quSNSNID.AsString+'''');
   Open;
   if quAct.FieldByName('SNID').AsString <> '' then
   begin
     Close;Clear;
     add(' Update APTrPurchaseDtSN SET FgJual=''Y'' WHERE ItemID='''+quDetilItemID.AsString+''' '
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
       Add(' Update APTrKonsinyasiDtSn SET FgJual=''Y'' WHERE ItemID='''+quDetilItemID.AsString+''' '
          +' AND SNID='''+quSNSNID.AsString+''' ');
       ExecSQL;
     end else
     begin
       Close;Clear;
       Add(' Update APTrReturnRepSn SET FgJual=''Y'' WHERE ItemID='''+quDetilItemID.AsString+''' '
          +' AND SNID='''+quSNSNID.AsString+''' ');
       ExecSQL;
     end;
   end;
  end;
End;

procedure TfmARTrReturPenjualan.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), ReturnID';
  FFieldTgl   := 'TransDate';
  if StatusRetur='R' then
   FAfterWhere := ' AND FlagRetur=''R'''
  else
   FAfterWhere := ' AND FlagRetur=''B''';
  SettingDxGrid(dxDBGrid1);
  SettingDxGrid(dxDBGrid2);
  inherited;
  if StatusRetur='R' then
  Begin
     LRet.Caption:='RETUR RUSAK';
     dxButton3.Visible := TRUE;
  End
  else
  Begin
     LRet.Caption:='RETUR BATAL';
     dxButton3.Visible := FALSE;
  End;
  quMain.Active  := TRUE;
  quDetil.Active := TRUE;
  quSN.Active := TRUE;
  quDetilQty.DisplayFormat := sDisFormat1;
  quDetilQty.EditFormat := sEditformat;
  quDetilPrice.DisplayFormat:= sDisFormat;
  quDetilPrice.EditFormat := sEditformat;
end;

procedure TfmARTrReturPenjualan.txtCustIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Pelanggan';
       SQLString := 'SELECT CustId as Kode_Pelanggan, Custname as Nama_Pelanggan'
                   +',Address '
                   +' FROM ARMsCustomer'
                   +' ORDER BY CustId';
       if ShowModal = MrOK then
       begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainCustID.Value := Res[0];
       end;
    finally
       Free;
    end;
end;

procedure TfmARTrReturPenjualan.dxDBGrid1ItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Cari Barang';
       SQLString := ' SELECT Distinct Itemname as Nama_Barang,A.ItemId as Kode_Barang,'
                   +' '
                   +' ProductDesc as Product, GroupDesc as Group_Barang '
                   +' FROM ARTrPenjualanDt A INNER JOIN ARTrPenjualanHd E ON A.SaleId=E.SaleID'
                   +' INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
                   +' INNER JOIN INMsGroup C ON B.GroupID=C.GroupID '
                   +' INNER JOIN INMsProduct D ON B.ProductID=D.ProductID '
                   +' WHERE '
                   +' E.CustId='''+quMainCustID.Value+''''
                   +' ORDER BY A.ItemID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilItemID.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrReturPenjualan.quMainBeforePost(DataSet: TDataSet);
var  ST: String;
begin
  inherited;
  if Trim(quMainCustID.Value)='' then
  begin
    MsgInfo('Kode Pelanggan tidak boleh kosong');
    quMainCustID.FocusControl;
    Abort;
  End;
  if Trim(quMainTransDate.AsString)='' then
  begin
    MsgInfo('Tgl tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;
  if qumain.State=dsinsert then
  Begin
    if StatusRetur='R' Then
    Begin
      ST := 'RJR/'+PT+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
      quMainReturnID.Value  := ST + FormatFloat('0000', RunNumberGL(quAct,'ARTrReturPenjualanHd', 'ReturnId', ST, '0') + 1);
    End;
    if StatusRetur='B' Then
    Begin
      ST := 'RJB/'+PT+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
      quMainReturnID.Value  := ST + FormatFloat('0000', RunNumberGL(quAct,'ARTrReturPenjualanHd', 'ReturnId', ST, '0') + 1);
    End
  End;
  quMainUpdDate.Value := GetServerDateTime;
  quMainUpdUser.Value := dmMain.UserId;
end;

procedure TfmARTrReturPenjualan.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(txtReturID,TRUE);
  SetReadOnly(txtTransDate,quMain.State<>dsInsert);
  SetReadOnly(txtCustID,qumain.State<>dsinsert);
end;

procedure TfmARTrReturPenjualan.txtReturIDKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARTrReturPenjualan.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid1ItemID, quDetil.State<>dsInsert);
  SetReadOnly(dxDBGrid1ItemName,TRUE);
  SetReadOnly(dxDBGrid1CurrId,TRUE);
  SetReadOnly(dxDBGrid1UserPrice, qudetil.State <> dsinsert);
  SetReadOnly(dxDBGrid1SaleId, qudetil.State <> dsinsert);
   if StatusRetur='B' then
    SetReadOnly(dxDBGrid1WareHouseID,qudetil.State<>dsInsert)
  else
    SetReadOnly(dxDBGrid1WareHouseID,TRUE);

end;

procedure TfmARTrReturPenjualan.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.Value:= date;
  quMainTransDate.FocusControl;
  if StatusRetur ='R' then
     quMainFlagRetur.AsString := 'R'
  else
     quMainFlagRetur.AsString := 'B';
end;

procedure TfmARTrReturPenjualan.dxDBGrid1Enter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmARTrReturPenjualan.bbFindClick(Sender: TObject);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       if StatusRetur='R' Then
        Title := 'Retur Rusak Penjualan';
       if StatusRetur='B' Then
        Title := 'Retur Batal Penjualan';

       SQLString := ' SELECT ReturnID as Kode_Retur '
                   +' ,Convert(varchar(10),A.TransDate,103) as Tanggal_Penjualan '
                   +' ,A.CustID as Kode_Pelanggan '
                   +' ,B.Custname as Nama_Pelanggan '
                   +' FROM ARTrReturPenjualanHd A '
                   +' INNER JOIN ARMsCustomer B ON A.CustId=B.CustID '
                   +' WHERE '+FSQLWhere ;
                  if StatusRetur='R' Then
                   SQLString:=SQLString+' AND FlagRetur=''R'' ORDER BY ReturnID';
                  if StatusRetur='B' Then
                   SQLString:=SQLString+' AND FlagRetur=''B'' ORDER BY ReturnID';
       if ShowModal = MrOK then
       begin
         quMain.Locate('ReturnID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARTrReturPenjualan.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quDetilItemID.Value)='' then
  begin
     MsgInfo('Kode Item tidak boleh kosong !');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilLItemName.Value)='' then
  begin
     MsgInfo('Kode Item tidak ada dalam Master!');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilSaleId.Value)='' then
  begin
     MsgInfo('Nota Penjualan tidak boleh kosong !');
     quDetilSaleId.FocusControl;
     Abort;
  end;


  if TRIM(quDetilWareHouseId.Value)='' then
  begin
     MsgInfo('Kode Gudang tidak boleh kosong !');
     quDetilWareHouseID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilLWareHouseName.Value)='' then
  begin
     MsgInfo('Kode Gudang tidak ada dalam Master !');
     quDetilWareHouseId.FocusControl;
     Abort;
  end;

  if TRIM(quDetilQty.AsString) = ''  then
  begin
     MsgInfo('Jumlah Barang tidak boleh kosong');
     quDetilQty.FocusControl;
     Abort;
  end;

  if quDetilQty.value <= 0  then
  begin
     MsgInfo('Jumlah Barang harus lebih besar dari 0');
     quDetilQty.FocusControl;
     Abort;
  end else
  begin

  if quDetil.State = dsInsert then
  begin
     with quAct, SQL do
     begin
        Close; Clear;
          If StatusRetur='R' then
          Begin
            Add(' SELECT Top 1 SaleID FROM ARTrReturPenjualanDt '
               +' WHERE ReturnID='''+quMainReturnID.Value+''' AND SaleID='''+quDetilSaleId.Value+''''
               +' AND ItemID='''+quDetilItemID.Value+''' AND WareHouseId='''+quDetilWareHouseId.Value+'''');
          End;

          If StatusRetur='B' then
          Begin
            Add(' SELECT Top 1 SaleID FROM ARTrReturPenjualanDt '
               +' WHERE ReturnID='''+quMainReturnID.Value+''' AND SaleID='''+quDetilSaleId.Value+''''
               +' AND ItemID='''+quDetilItemID.Value+''' AND WareHouseId='''+quDetilWareHouseID.Value+''''
               +' AND Price='''+quDetilPrice.AsString+'''');
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

  with quAct,sql do
  Begin
    Close;Clear;
    Add(' Select QTY,isnull(Qty,0)-( Select isnull(Sum(Qty),0) FROM ARTrReturPenjualanDt A '
       +' INNER JOIN ARTrReturPenjualanHd B ON A.ReturnId=B.ReturnID WHERE A.SaleId='''+quDetilSaleId.Value +''''
       +' AND ItemId='''+quDetilItemID.AsString+''''// AND WarehouseId='''+quDetilWareHouseID.Value+''''
       +' AND B.CustId='''+quMainCustID.Value+''' AND Price='''+quDetilPrice.AsString+''''
       +' AND B.ReturnId <> '''+quMainReturnID.Value+''') as SisaRetur'
       +' FROM ARTrPenjualanDt C INNER JOIN ARTrPenjualanHd D ON C.SaleId=D.SaleId Where D.SaleId='''+quDetilSaleId.Value+''''
       +' AND ItemId='''+quDetilItemID.AsString +''''
       // AND WareHouseId='''+quDetilWareHouseID.Value+''''   //ini bisa dibuka bisa enggak
       +' AND Price='''+quDetilPrice.AsString+''' AND  D.CustId='''+quMainCustID.Value+''''
       +' ORDER BY QTY Desc');
     //  AND SuppId='''+quMainSuppID.Value+'''
    Open;
    If IsEmpty then
    Begin
      MsgInfo('Data Retur ini tidak terdapat pada Data Penjualan Pelanggan ['+quMainLCustName.Value+']');
      quDetilSaleId.FocusControl;
      Abort;
    End;
  End;

  if  quDetilQty.Value > quAct.FieldByName('SisaRetur').AsInteger then
  Begin
      MsgInfo(' Jumlah barang melebihi jumlah yang dijual'+#13
             +' Jumlah Yang diJual/Sisa adalah '''+quAct.FieldByName('SisaRetur').AsString+'''' );
      quDetilQty.FocusControl;
      Abort;
    End;
  end;



  if StatusRetur = 'B' then
  Begin
   With quAct,sql do
   Begin
     Close;Clear;
     add(' Select Top 1 B.PiutangID FROM ARTrPiutangDt B'
        +' WHERE  B.SaleId='''+quDetilSaleId.Value +'''');
     Open;
     if Not IsEmpty then
     Begin
       MsgInfo(' Nota Penjualan ini tidak bisa dibatalkan'+#13
              +' dikarena sudah ada Penerimaan ['+quAct.fieldbyname('PiutangID').AsString+']');
       quDetilSaleId.FocusControl;
       Abort;
     End;
   End;
  End;

  quDetilUpdUser.AsString := dmMain.UserId;
  quDetilUpdDate.AsDateTime := GetServerDateTime;

end;

procedure TfmARTrReturPenjualan.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllItem(quMainReturnID.AsString,quDetilSaleId.AsString,qudetilitemId.AsString,
                    quDetilWareHouseID.AsString,abs(quDetilPrice.AsFloat),8);
  InsertToAllItem(quMainReturnID.AsString,quDetilSaleId.AsString,abs(quMainTransDate.AsDateTime),quDetilWareHouseId.AsString
                   ,quDetilItemID.AsString,8,abs(quDetilQty.AsFloat),abs(quDetilPrice.AsFloat),quDetilLCurrId.AsString,1,'AR',quMainLCustName.AsString);

  if StatusRetur = 'B' then
  begin
    with quAct,SQL do
    begin
      close;clear;
       Add('Update ArTrPenjualanDt set FlagRetur=''Y'' where SaleID=:SaleID and ItemID=:ItemID');
       with Parameters do
       begin
         ParamByName('SaleID').Value  := quDetilSaleId.AsString;
         ParamByName('ItemID').Value  := quDetilItemID.AsString;
       end;
       ExecSQL;
    end;
  end;

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

procedure TfmARTrReturPenjualan.dxDBGrid1SaleIdButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Nota Penjualan';
       SQLString := ' Select Distinct A.SaleId as Nota_Penjualan,'
                   +' Convert(varchar(10),Transdate,103) as Tgl_Penjualan,'
                   +' B.WareHouseId as Kode_Gudang,J.WareHouseName as Nama_Gudang,Price as Harga_Jual_Barang,'
                   +' isnull(Qty,0)-(Select isnull(Sum(Qty),0) FROM ARTrReturPenjualanDt D '
                   +' WHERE D.SaleID=A.SaleId'
                   +' AND Itemid='''+quDetilItemID.Value+''''
                   +' AND D.Price=B.Price) as Sisa'
                   +' FROM ARTrPenjualanHd A INNER JOIN ARTrPenjualanDt B ON A.SaleId=B.SaleId'
                   +' INNER JOIN INMsWareHouse J ON B.WareHouseId=J.WareHouseId'
                   +' WHERE A.CustId='''+quMainCustID.Value+''' AND ItemId='''+quDetilItemID.Value+''' AND'
                   +' isnull(Qty,0)-(Select isnull(Sum(Qty),0) FROM ARTrReturPenjualanDt D '
                   +' WHERE D.SaleID=A.SaleId'
                   +' AND Itemid='''+quDetilItemID.Value+''''
                   +' AND D.Price=B.Price) <> 0 '
                   +' ORDER BY A.SaleId ' ;
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilSaleID.Value := Res[0];
          quDetilPrice.AsString:= Res[4];
           if StatusRetur='B' then  quDetilWareHouseID.Value := Res[2];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrReturPenjualan.dxDBGrid1UserPriceButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Cari Harga';
       SQLString := ' SELECT Distinct Price'
                   +' FROM ARTrPenjualanDt A'
                   +' WHERE A.SaleID = ''' + quDetilSaleId.Value + ''' AND '
                   +' ItemId='''+quDetilItemID.Value+''''
                   +' AND WareHouseId='''+quDetilWareHouseID.Value +''''
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

procedure TfmARTrReturPenjualan.quSNBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(quSNSNID.Value)='' then
  Begin
   MsgInfo('Kode Serial Number tidak boleh kosong');
   quSNSNID.FocusControl;
   Abort;
  End;

  If quSN.State= dsinsert then
  Begin
    With quAct,Sql do
    Begin
       Close;Clear;
       add(' SELECT SNID from ARTrReturPenjualanDtSN WHERE ReturnId='''+quMainReturnID.Value+''''
          +' AND SaleID='''+quDetilSaleId.Value+''' and SNID='''+quSNSNID.Value+''''
          +' and ItemID='''+quDetilItemID.Value+''''
          +' AND WareHouseId='''+quDetilWareHouseId.Value+''' AND Price='''+quDetilPrice.AsString+'''');
       Open;
       If not IsEmpty then
       Begin
          MsgInfo('Serial Number sudah ada');
          quSNSNID.FocusControl;
          Abort;
       End;
    End;
  End;

  quSNUpdUser.AsString := dmMain.UserId;
  quSNUpdDate.AsDateTime := GetServerDateTime;

end;

procedure TfmARTrReturPenjualan.quSNBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CekPegRet;
  with quAct,SQL do
  begin
   Close;Clear;
   Add(' Select Count(SNId) as jumlah From ARTrReturPenjualanDtSN WHERE ReturnId ='''+quMainReturnID.Value+''''
      +' AND ItemId='''+quDetilItemID.Value+''''
      +' AND SaleId='''+quDetilSaleId.Value+''' And WareHouseId='''+quDetilWarehouseID.Value+''''
      +' AND Price='''+quDetilPrice.AsString+'''');
   Open;
  End;
  if quAct.FieldByName('jumlah').AsInteger >= quDetilQty.Value then Abort;
end;

procedure TfmARTrReturPenjualan.dsSNStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid2SNID,quSN.State<>dsinsert);
end;

procedure TfmARTrReturPenjualan.quDetilBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekPegRet;
end;

procedure TfmARTrReturPenjualan.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekPegRet;
  with quAct,SQL do
  begin
    close;clear;
     Add('Update ArTrPenjualanDt set FlagRetur=''T'' where SaleID=:SaleID and ItemID=:ItemID');
     with Parameters do
     begin
       ParamByName('SaleID').Value  := quDetilSaleId.AsString;
       ParamByName('ItemID').Value  := quDetilItemID.AsString;
     end;
     ExecSQL;
  end;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE APTrPurchaseDtSN SET FgJual=''T'' WHERE SNID IN (SELECT SNID FROM ARTrReturPenjualanDtSN '
       +'WHERE ReturnID='''+quMainReturnID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''') ');
    Add('UPDATE APTrKonsinyasiDtSN SET FgJual=''T'' WHERE SNID IN (SELECT SNID FROM ARTrReturPenjualanDtSN '
       +'WHERE ReturnID='''+quMainReturnID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''') ');
    ExecSQL;
  end;
  DeleteFromAllItem(quMainReturnID.Value,quDetilSaleId.Value,qudetilitemId.Value,
                    quDetilWareHouseID.Value,quDetilPrice.value,8);
end;

procedure TfmARTrReturPenjualan.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CekPegRet;
end;

procedure TfmARTrReturPenjualan.quSNBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekPegRet;
end;

procedure TfmARTrReturPenjualan.quSNBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekPegRet;
  UpdateSerialNumber;
end;

procedure TfmARTrReturPenjualan.quSNAfterPost(DataSet: TDataSet);
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
     add(' Update APTrPurchaseDtSN SET FgJual=''T'' WHERE ItemID='''+quDetilItemID.AsString+''' '
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
       add(' Update APTrKonsinyasiDtSn SET FgJual=''T'' WHERE ItemID='''+quDetilItemID.AsString+''' '
          +' AND SNID='''+quSNSNID.AsString+''' ');
       ExecSQL;
     end else
     begin
       Close;Clear;
       Add(' Update APTrReturnRepSn SET FgJual=''T'' WHERE ItemID='''+quDetilItemID.AsString+''' '
          +' AND SNID='''+quSNSNID.AsString+''' ');
       ExecSQL;
     end;
   end;
  end;
  with quAct,SQL do
  begin
   Close;Clear;
  add(' SELECT Count(SNID) as Jumlah from ARTrReturPenjualanDtSN WHERE ReturnId='''+quMainReturnID.Value+''''
          +' AND SaleID='''+quDetilSaleId.Value+''''
          +' and ItemID='''+quDetilItemID.Value+''''
          +' AND WareHouseId='''+quDetilWareHouseId.Value+''' AND Price='''+quDetilPrice.AsString+'''');
   Open;
  End;
  if quact.FieldByName('jumlah').AsInteger = quDetilQty.Value then
  begin
   quDetil.Last;
   qudetil.Append;
   quDetilItemID.FocusControl;
   abort;
  End
  else
  begin
   quSN.Append;
  // quSNSNID.FocusControl;
  end;

end;

procedure TfmARTrReturPenjualan.quSNNewRecord(DataSet: TDataSet);
begin
  inherited;
  quSNSNID.FocusControl;
end;

procedure TfmARTrReturPenjualan.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilQty.Value:=1;
  quDetilItemID.FocusControl;
  if StatusRetur='R' then  quDetilWareHouseID.AsString:=sDGR;
end;

procedure TfmARTrReturPenjualan.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekPegRet;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE ARTrPenjualanDT SET FlagRetur=''T'' WHERE SaleID IN (SELECT SaleID FROM ARTrReturPenjualanDt '
       +'WHERE ReturnID='''+quMainReturnID.AsString+''') ');
    ExecSQL;
  end;
  DeleteFromAllItem(quMainReturnID.Value,8);
end;

procedure TfmARTrReturPenjualan.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekPegRet;
end;

procedure TfmARTrReturPenjualan.dxButton3Click(Sender: TObject);
begin
  inherited;
   with TfmQRRptSuratJalan.Create(Self) do
     try
       qlbNamaInvoice.Caption :='Surat Retur Penjualan';
       QRLabel9.Enabled := False;
       QRDBText2.Enabled := False;
       with qu001,SQL do
       Begin
         Close;Clear;
         add(' Select ReturnId as SaleId,ReturnId,Convert(varchar(10),getdate(),103) as Tgl,A.CustId,C.CustName,C.Address '
            +' FROM ARTrReturPenjualanHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId'
            +' WHERE A.ReturnId='''+quMainReturnID.Value+'''');
         Open;
       End;

       With qu002,sql do
       Begin
         Close;Clear;
         add(' Select A.ItemId,B.ItemName,B.UOMId,C.Productdesc, Sum(Qty) as Qty,A.Price FROM ARTrReturPenjualanDt A'
            +' INNER JOIN INMsItem B ON A.Itemid=B.Itemid'
            +' INNER JOIN INMsProduct C ON B.ProductId=C.ProductId WHERE A.ReturnId=:ReturnId'
            +' GROUP BY A.ItemId,B.ItemName,B.UOMId,C.Productdesc,A.Price');
         Parameters.ParamByName('ReturnId').DataType := ftString;
         Open;
       End;
         QRLabel14.Caption := '';
         qlbJatuhTempo.Caption :='';
         qlbTempo.Caption := '';
         qlbKet.Caption := '';

      MyReport.PreviewModal;
      finally
        free;
     end;
end;

procedure TfmARTrReturPenjualan.bbReturnClick(Sender: TObject);
begin
  inherited;
  If (Self.quMain.State = dsEdit) or (Self.quMain.State = dsInsert) then
  begin
    ShowMessage('Data Belum disimpan');
    Abort;
  end;
  If (Self.quDetil.State = dsEdit) or (Self.quDetil.State = dsInsert) then
  begin
    ShowMessage('Data Detil Retur Belum disimpan');
    Abort;
  end;
  If (Self.quSN.State = dsEdit) or (Self.quSN.State = dsInsert) then
  begin
    ShowMessage('Data Serial Number Belum disimpan');
    Abort;
  end;
   with TfmARTrPengReturPenj.Create (Application) do
    try
      ShowModal;
    finally
     Free;
    end;
end;

procedure TfmARTrReturPenjualan.TmbBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmARTrReturPenjualan.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmARTrReturPenjualan.bbSimpanDetilClick(Sender: TObject);
begin
  inherited;
  if Self.quDetil.State = dsInsert then
  begin
   Self.quDetil.Edit;
   Self.quDetil.Post;
   Self.quDetil.Requery();
  end;
  if Self.quDetil.State = dsEdit then
  begin
   quDetil.Post;
  end;
end;

procedure TfmARTrReturPenjualan.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmARTrReturPenjualan.dxDBGrid2SNIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Serial Number ';
       SQLString :=' SELECT SNID FROM ARTrPenjualanSN '
                  +' WHERE SaleID='''+quDetilSaleId.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' ';
       if ShowModal = MrOK then
       begin
          if quSN.State = dsBrowse then quSN.Edit;
             quSNSNID.Value :=Res[0];
       end;
    finally
       free;
    end;
end;

end.
