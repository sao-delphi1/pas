unit APPurchaseIDR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxDBTLCl, dxGrClms, dxDBELib, dxEditor, DBCtrls;

type
  TfmINTrPurchaseIDR = class(TfmStdLv4)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    dbg: TdxDBGrid;
    quWareHouse: TADOQuery;
    DBText2: TDBText;
    DBText3: TDBText;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    quDetilTransID: TStringField;
    quDetilFgStatus: TStringField;
    quDetilQty: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    dbgQty: TdxDBGridColumn;
    dbgItemID: TdxDBGridButtonColumn;
    quItem: TADOQuery;
    quDetilLuItemName: TStringField;
    dbgItemName: TdxDBGridColumn;
    dbgListTransID: TdxDBGridColumn;
    dbgListTransDate: TdxDBGridColumn;
    dbgListWareHouseID: TdxDBGridColumn;
    dbgListColumn7: TdxDBGridColumn;
    dbgListNote: TdxDBGridColumn;
    dbgListUpdDate: TdxDBGridColumn;
    dbgListUpdUser: TdxDBGridColumn;
    quWareHouseWareHouseID: TStringField;
    quWareHouseWareHouseName: TStringField;
    quMainLuWareHouseName: TStringField;
    quDetilAlasan: TStringField;
    quDetilItemID: TStringField;
    quItemItemID: TStringField;
    quItemItemName: TStringField;
    Label4: TLabel;
    DBMemoNote: TDBMemo;
    Label7: TLabel;
    quMainTransID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainWareHouseID: TStringField;
    quMainNote: TStringField;
    quMainAcknowledgeBy: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    Label9: TLabel;
    Label5: TLabel;
    dbgLocation: TdxDBGridButtonColumn;
    dbgHarga: TdxDBGridColumn;
    dbgTotal: TdxDBGridColumn;
    quSupplier: TADOQuery;
    quSupplierSuppID: TStringField;
    quSupplierSuppName: TStringField;
    quSupplierContactPerson: TStringField;
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure dbgEnter(Sender: TObject);
    procedure ActNewExecute(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgItemIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dsDetilStateChange(Sender: TObject);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quDetilAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINTrPurchaseIDR: TfmINTrPurchaseIDR;

implementation

uses ConMain, StdLv0, UnitGeneral, StdLv2, StdLv1, StdLv3, Search, MyUnit;

{$R *.dfm}
procedure TfmINTrPurchaseIDR.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,quMain.State<>dsInsert);
  SetReadOnly(dxDBDateEdit1,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit1,quMain.State<>dsInsert);
end;

procedure TfmINTrPurchaseIDR.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quMainTransID.Value)='' then
  begin
     MsgInfo('Kode Trans tidak boleh kosong !');
     quMainTransID.FocusControl;
     Abort;
  end;

  if quMain.State = dsinsert then
  Begin
    with quAct,sql do
    Begin
      Close;Clear;
      add('Select TransId from INTrAdjustmentHd WHERE TransId='''+quMainTransID.AsString+'''');
      Open;
      if Not IsEmpty then
      Begin
        MsgInfo('Kode Trans sudah dipakai');
        quMainTransID.FocusControl;
        Abort;
      End;
    End;
  End;

  If Trim(quMainTransDate.AsString)='' Then
  Begin
     MsgInfo('tanggal tidak boleh kosong');
     quMainTransDate.FocusControl;
     Abort;
  End;

  if TRIM(quMainWarehouseID.Value)='' then
  begin
     MsgInfo('Kode Gudang tidak boleh kosong !');
     quMainWareHouseID.FocusControl;
     Abort;
  end;

  if TRIM(quMainLuWareHouseName.Value)='' then
  begin
     MsgInfo('Kode Gudang tidak terdaftar di Setup Gudang !');
     quMainWarehouseID.FocusControl;
     Abort;
  end;

  if TRIM(quMainAcknowledgeBy.Value)='' then
  begin
     MsgInfo('Mengetahui oleh tidak boleh kosong !');
     quMainAcknowledgeBy.FocusControl;
     Abort;
  end;

  quMainUpdDate.Value := GetServerDateTime;
  quMainUpdUser.Value := dmMain.UserId;
end;

procedure TfmINTrPurchaseIDR.FormCreate(Sender: TObject);
begin
  inherited;
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112),TransID';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dbg);
end;

procedure TfmINTrPurchaseIDR.quDetilBeforePost(DataSet: TDataSet);
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
     MsgInfo('Item tidak terdaftar di Master Item');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if quDetil.State = dsInsert then
  begin
     with quAct, SQL do
     begin
        Close; Clear;
        Add('SELECT Count(*) FROM  INTradjustmentDt  WHERE TransId=:TransId AND ItemId=:ItemId');
        with Parameters do
        begin
           ParamByName('TransId').Value := quMainTransID.Value;
           ParamByName('ItemId').Value  := quDetilItemID.Value;
        end;
        Open;
        if Fields[0].AsInteger > 0 then
        begin
           MsgInfo('Kode Item sudah ada dalam List');
           quDetilItemID.FocusControl;
           Abort;
        end;
     end;
  end;

  If TRIM(quDetilFgStatus.AsString)='' then
  Begin
    MsgInfo('Status tidak boleh kosong');
    quDetilFgStatus.FocusControl;
    Abort;
  End;

  if quDetilQty.Value <=0 then
  begin
     MsgInfo('Jumlah Barang Tidak boleh lebih kecil sama dengan 0');
     quDetilQty.FocusControl;
     Abort;
  end;

  quDetilUpdDate.Value := Date;
  quDetilUpdUser.Value := dmMain.UserId;
end;

procedure TfmINTrPurchaseIDR.dbgEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmINTrPurchaseIDR.ActNewExecute(Sender: TObject);
begin
  inherited;
  quMainTransID.FocusControl;
end;

procedure TfmINTrPurchaseIDR.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Gudang';
       SQLString := 'SELECT WarehouseId as Kode_Gudang, WareHouseName as Nama_Gudang'
               +',Address as Alamat, City as Kota, ContactPerson as Contact_Person'
               +',Phone as Telpon, Fax '
               +' FROM INMsWarehouse'
               +' ORDER BY WarehouseId';
       if ShowModal = MrOk then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainWarehouseID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmINTrPurchaseIDR.dbgItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(self) do
    try
       Title := 'Item';
       SQLString := 'SELECT ItemID as Kode_Item, ItemName as Nama_Item'
                   +' FROM INMsItem'
                   +' ORDER BY ItemID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilItemID.Value   := Res[0];
       end;
    finally
       Free;
    end;
end;

procedure TfmINTrPurchaseIDR.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgItemID,quDetil.State<>dsInsert);
end;

procedure TfmINTrPurchaseIDR.dxDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmINTrPurchaseIDR.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilQty.Value:=1;
end;

procedure TfmINTrPurchaseIDR.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.Value:=now;
end;

procedure TfmINTrPurchaseIDR.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Adjustment';
       SQLString := ' SELECT TransId as Kode_Transfer '
                   +' ,Convert(Varchar(10),Transdate,103) as Tgl_Transfer '
                   +' ,WareHouseID as Kode_Gudang '
                   +' ,Note as Keterangan '
                   +' FROM INTrAdjustmentHd '
                   +' WHERE '+FSQLWhere
                   +' ORDER BY TransId ';
       if ShowModal = MrOK then
       begin
         qumain.Locate('TransId',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmINTrPurchaseIDR.FormShow(Sender: TObject);
begin
  inherited;
  quDetilQty.DisplayFormat :=sDisFormat1;
  quDetilQty.EditFormat :=sEditformat;
end;

procedure TfmINTrPurchaseIDR.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;

  {with quAct3, SQL do
  begin
    Close; Clear;
    Text := ' SELECT ItemID FROM INTrAdjustmentDt WHERE TransID = ' + QuotedStr(quMainTransID.Value);
    Open;
  end;

  while not quAct3.Eof do
  begin
      with quAct1, SQL do
      begin
        Clear; Close;
        Text := ' SELECT Qty FROM AllItem WHERE VoucherNo = ' + QuotedStr(quMainTransID.Value) +
        ' AND ItemID = ' + QuotedStr(quAct3.FieldByName('ItemID').AsString) +
        ' AND FgTrans = 3 ';
        Open;
      end;}

      {if not quAct1.IsEmpty then
        with quAct, SQL do
        begin
          Close; Clear;
          Text := ' EXEC S_HPP_BarangBerkurang ' +
          ' @QtyTransaksi = :QtyTransaksi ' +
          ' , @ItemID = ' + QuotedStr(quAct3.FieldByName('ItemID').AsString) +
          ' , @FgTrans = 3 ' +
          ' , @VoucherNo = ' + QuotedStr(quMainTransID.Value);
          Parameters.ParamByName('QtyTransaksi').Value := quAct1.FieldByName('Qty').AsCurrency;
          ExecSQL;
        end;

      with quAct1, SQL do
      begin
        Clear; Close;
        Text := ' SELECT Qty FROM AllItem WHERE VoucherNo = ' + QuotedStr(quMainTransID.Value) +
        ' AND ItemID = ' + QuotedStr(quAct3.FieldByName('ItemID').AsString) +
        ' AND FgTrans = 53 ';
        Open;
      end;

      if not quAct1.IsEmpty then
      begin
          with quAct2, SQL do
          begin
            Close; Clear;
            Text := ' SELECT PriceIDR FROM TransHistory WHERE VoucherNo = ' + QuotedStr(quMainTransID.Value) +
            ' AND ItemID = ' + QuotedStr(quAct3.FieldByName('ItemID').AsString);
          end;

          with quAct, SQL do
           begin
             Close; Clear;
             Text := ' EXEC S_HPP_BarangBertambah @ItemID = ' + QuotedStr(quAct3.FieldByName('ItemID').AsString) +
             ' , @HargaTransaksi = :HargaTransaksi ' +
             ' , @QtyTransaksi = :QtyTransaksi ' +
             ' , @UOMIDTransaksi = ' + QuotedStr(quAct3.FieldByName('UOMTrans').AsString) +
             ' , @FgStokOpnameAdj = ''0'' ';
             Parameters.ParamByName('HargaTransaksi').Value := quAct2.FieldByName('PriceIDR').AsCurrency;
             Parameters.ParamByName('QtyTransaksi').Value := Abs(quAct1.FieldByName('Qty').AsCurrency);
             ExecSQL;
           end;
      end;

    quAct3.Next;
  end;    }

  {DeleteFromAllItem(quMainTransID.Value,3);
  DeleteFromAllItem(quMainTransID.Value,53);
  DeleteFromAllItem(quMainTransID.Value,121);
  DeleteFromAllItem(quMainTransID.Value,71);
  DeleteFromHPP(quMainTransID.Value,3);
  DeleteFromHPP(quMainTransID.Value,53);}
  //DeleteFromHPP(quMainTransID.Value,71);
end;

procedure TfmINTrPurchaseIDR.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  {with quAct1, SQL do
  begin
    Clear; Close;
    Text := ' SELECT Qty FROM AllItem WHERE VoucherNo = ' + QuotedStr(quDetilTransID.Value) +
    ' AND ItemID = ' + QuotedStr(quDetilItemID.Value) +
    ' AND FgTrans = 3 ';
    Open;
  end;

  if not quAct1.IsEmpty then
    with quAct, SQL do
    begin
      Close; Clear;
      Text := ' EXEC S_HPP_BarangBerkurang ' +
      ' @QtyTransaksi = :QtyTransaksi ' +
      ' , @ItemID = ' + QuotedStr(quDetilItemID.Value) +
      ' , @FgTrans = 3 ' +
      ' , @VoucherNo = ' + QuotedStr(quDetilTransID.Value);
      Parameters.ParamByName('QtyTransaksi').Value := quAct1.FieldByName('Qty').AsCurrency;
      ExecSQL;
    end;

  with quAct1, SQL do
  begin
    Clear; Close;
    Text := ' SELECT Qty FROM AllItem WHERE VoucherNo = ' + QuotedStr(quDetilTransID.Value) +
    ' AND ItemID = ' + QuotedStr(quDetilItemID.Value) +
    ' AND FgTrans = 53 ';
    Open;
  end;

  if not quAct1.IsEmpty then
  begin
      with quAct2, SQL do
      begin
        Close; Clear;
        Text := ' SELECT PriceIDR FROM TransHistory WHERE VoucherNo = ' + QuotedStr(quDetilTransID.Value) +
        ' AND ItemID = ' + QuotedStr(quDetilItemID.Value);
      end;

      with quAct, SQL do
       begin
         Close; Clear;
         Text := ' EXEC S_HPP_BarangBertambah @ItemID = ' + QuotedStr(quDetilItemID.Value) +
         ' , @HargaTransaksi = :HargaTransaksi ' +
         ' , @QtyTransaksi = :QtyTransaksi ' +
         ' , @UOMIDTransaksi = ' + QuotedStr(quDetilUOMTrans.Value) +
         ' , @FgStokOpnameAdj = ''0'' ';
         Parameters.ParamByName('HargaTransaksi').Value := quAct2.FieldByName('PriceIDR').AsCurrency;
         Parameters.ParamByName('QtyTransaksi').Value := Abs(quAct1.FieldByName('Qty').AsCurrency);
         ExecSQL;
       end;
  end;

  DeleteFromAllItem(quMainTransID.Value,quDetilItemID.Value,3);
  DeleteFromAllItem(quMainTransID.Value,quDetilItemID.Value,53);
  DeleteFromAllItem(quMainTransID.Value,quDetilItemID.Value,121);
  DeleteFromAllItem(quMainTransID.Value,quDetilItemID.Value,71);
  DeleteFromHPP(quMainTransID.Value,quDetilItemID.Value,3);
  DeleteFromHPP(quMainTransID.Value,quDetilItemID.Value,53);
  //DeleteFromHPP(quMainTransID.Value,quDetilItemID.Value,71);}
end;

procedure TfmINTrPurchaseIDR.quDetilAfterPost(DataSet: TDataSet);
var harga: Currency;
begin
  inherited;

{  with quAct1, SQL do
  begin
    Clear; Close;
    Text := ' SELECT Qty FROM AllItem WHERE VoucherNo = ' + QuotedStr(quDetilTransID.Value) +
    ' AND ItemID = ' + QuotedStr(quDetilItemID.Value) +
    ' AND FgTrans = 3 ';
    Open;
  end;

  if not quAct1.IsEmpty then
    with quAct, SQL do
    begin
      Close; Clear;
      Text := ' EXEC S_HPP_BarangBerkurang ' +
      ' @QtyTransaksi = :QtyTransaksi ' +
      ' , @ItemID = ' + QuotedStr(quDetilItemID.Value) +
      ' , @FgTrans = 3 ' +
      ' , @VoucherNo = ' + QuotedStr(quDetilTransID.Value);
      Parameters.ParamByName('QtyTransaksi').Value := quAct1.FieldByName('Qty').AsCurrency;
      ExecSQL;
    end;

  with quAct1, SQL do
  begin
    Clear; Close;
    Text := ' SELECT Qty FROM AllItem WHERE VoucherNo = ' + QuotedStr(quDetilTransID.Value) +
    ' AND ItemID = ' + QuotedStr(quDetilItemID.Value) +
    ' AND FgTrans = 53 ';
    Open;
  end;

  if not quAct1.IsEmpty then
  begin
      with quAct2, SQL do
      begin
        Close; Clear;
        Text := ' SELECT PriceIDR FROM TransHistory WHERE VoucherNo = ' + QuotedStr(quDetilTransID.Value) +
        ' AND ItemID = ' + QuotedStr(quDetilItemID.Value);
      end;

      with quAct, SQL do
       begin
         Close; Clear;
         Text := ' EXEC S_HPP_BarangBertambah @ItemID = ' + QuotedStr(quDetilItemID.Value) +
         ' , @HargaTransaksi = :HargaTransaksi ' +
         ' , @QtyTransaksi = :QtyTransaksi ' +
         ' , @UOMIDTransaksi = ' + QuotedStr(quDetilUOMTrans.Value) +
         ' , @FgStokOpnameAdj = ''0'' ';
         Parameters.ParamByName('HargaTransaksi').Value := quAct2.FieldByName('PriceIDR').AsCurrency;
         Parameters.ParamByName('QtyTransaksi').Value := Abs(quAct1.FieldByName('Qty').AsCurrency);
         ExecSQL;
       end;
  end;

  with quAct1, SQL do
  begin
    Clear; Close;
    Text := ' SELECT PriceIDR FROM LastStock WHERE ItemID = ' +
    QuotedStr(quDetilItemID.Value) + ' ORDER BY TransID DESC ';
    Open;
  end;

  harga := quAct1.FieldByName('PriceIDR').AsCurrency; //-> HARGA SELALU Last ???

  DeleteFromAllItem(quMainTransID.Value,quDetilItemID.Value,3);
  DeleteFromAllItem(quMainTransID.Value,quDetilItemID.Value,53);
  DeleteFromAllItem(quMainTransID.Value,quDetilItemID.Value,121);
  DeleteFromAllItem(quMainTransID.Value,quDetilItemID.Value,71);
  DeleteFromHPP(quMainTransID.Value,quDetilItemID.Value,3);
  DeleteFromHPP(quMainTransID.Value,quDetilItemID.Value,53);
//  DeleteFromHPP(quMainTransID.Value,quDetilItemID.Value,71);

  if quDetilFgStatus.Value='T' then
  Begin
  InsertToAllItem(quDetilTransID.Value,quMainTransDate.Value,quMainWareHouseID.Value,quDetilItemID.Value,
                  quDetilItemName.Value,3 ,abs(quDetilQty.Value),quDetilUOMTrans.Value,0,'IN');
  InsertToHPP(quMainTransDate.Value,quMainWareHouseID.Value,3,quMainTransID.Value,quMainTransID.Value,'',
              quDetilItemID.Value,quDetilItemName.Value,quDetilQty.Value,quDetilUOMTrans.Value,'IDR',harga,harga);

      with quAct, SQL do
       begin
         Close; Clear;
         Text := ' EXEC S_HPP_BarangBertambah @ItemID = ' + QuotedStr(quDetilItemID.Value) +
         ' , @HargaTransaksi = :HargaTransaksi ' +
         ' , @QtyTransaksi = :QtyTransaksi ' +
         ' , @UOMIDTransaksi = ' + QuotedStr(quDetilUOMTrans.Value) +
         ' , @FgStokOpnameAdj = ''0'' ';
         Parameters.ParamByName('HargaTransaksi').Value := harga;
         Parameters.ParamByName('QtyTransaksi').Value := Abs(quDetilQty.Value);
         ExecSQL;
       end;
  End;
  if quDetilFgStatus.Value='K' then
  Begin
  InsertToAllItem(quDetilTransID.Value,quMainTransDate.Value,quMainWareHouseID.Value,quDetilItemID.Value,
                  quDetilItemName.Value,53,abs(quDetilQty.Value),quDetilUOMTrans.Value,0,'IN');
  InsertToHPP(quMainTransDate.Value,quMainWareHouseID.Value,53,quMainTransID.Value,quMainTransID.Value,'',
              quDetilItemID.Value,quDetilItemName.Value,quDetilQty.Value,quDetilUOMTrans.Value,'IDR',harga,harga);

    with quAct, SQL do
    begin
      Close; Clear;
      Text := ' EXEC S_HPP_BarangBerkurang ' +
      ' @QtyTransaksi = :QtyTransaksi ' +
      ' , @ItemID = ' + QuotedStr(quDetilItemID.Value) +
      ' , @FgTrans = 53 ' +
      ' , @VoucherNo = ' + QuotedStr(quDetilTransID.Value);
      Parameters.ParamByName('QtyTransaksi').Value := abs(quDetilQty.Value);
      ExecSQL;
    end;

  End;
  if quDetilFgStatus.Value='R' then
  Begin
    InsertToAllItem(quDetilTransID.Value,quMainTransDate.Value,quMainWareHouseID.Value,quDetilItemID.Value,
                  quDetilItemName.Value,121,abs(quDetilQty.Value),quDetilUOMTrans.Value,0,'IN');
    InsertToAllItem(quDetilTransID.Value,quMainTransDate.Value,quMainWareHouseID.Value,quDetilItemID.Value,
                  quDetilItemName.Value,71,abs(quDetilQty.Value),quDetilUOMTrans.Value,0,'IN');
//    InsertToHPP(quMainTransDate.Value,quMainWareHouseID.Value,71,quMainTransID.Value,quMainTransID.Value,'',
//              quDetilItemID.Value,quDetilItemName.Value,quDetilQty.Value,quDetilUOMTrans.Value,'IDR',0,0)
  End;
  InsertGl;}
end;

end.
