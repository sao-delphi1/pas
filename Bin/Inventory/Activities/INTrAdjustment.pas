unit INTrAdjustment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxDBTLCl, dxGrClms, dxDBELib, dxEditor, DBCtrls;

type
  TfmINTrAdjustment = class(TfmStdLv4)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbg: TdxDBGrid;
    quWareHouse: TADOQuery;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    dbgQty: TdxDBGridColumn;
    dbgItemID: TdxDBGridButtonColumn;
    quItem: TADOQuery;
    dbgItemName: TdxDBGridColumn;
    dbgFgStatus: TdxDBGridImageColumn;
    dbgListTransID: TdxDBGridColumn;
    dbgListTransDate: TdxDBGridColumn;
    dbgListNote: TdxDBGridColumn;
    quWareHouseWareHouseID: TStringField;
    quWareHouseWareHouseName: TStringField;
    dbgAlasan: TdxDBGridBlobColumn;
    quAct1: TADOQuery;
    quMainTransID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainWareHouseID: TStringField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainLWareHouseName: TStringField;
    quDetilTransID: TStringField;
    quDetilItemID: TStringField;
    quDetilFgStatus: TStringField;
    quDetilQty: TBCDField;
    quDetilAlasan: TStringField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilLItemName: TStringField;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    Label3: TLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    DBText1: TDBText;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    BtlBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure dbgEnter(Sender: TObject);
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
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure TmbBrgClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  fmINTrAdjustment: TfmINTrAdjustment;

implementation

uses ConMain, StdLv0, UnitGeneral, StdLv2, StdLv1, StdLv3, Search, MyUnit,
  Allitem;

{$R *.dfm}

procedure TfmINTrAdjustment.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBDateEdit1,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit2,qumain.State<>dsinsert);
end;

procedure TfmINTrAdjustment.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;
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

  if TRIM(quMainLWareHouseName.Value)='' then
  begin
     MsgInfo('Kode Gudang tidak terdaftar di Master Gudang !');
     quMainWarehouseID.FocusControl;
     Abort;
  end;

  if qumain.State=dsinsert then
  Begin
    ST := 'ADJ'+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
    quMainTransID.Value  := ST + FormatFloat('0000', RunNumberGL(quAct, 'INTrAdjustmentHd', 'TransId', ST, '0') + 1);
  End;


  quMainUpdDate.Value := GetServerDateTime;
  quMainUpdUser.Value := dmMain.UserId;
end;

procedure TfmINTrAdjustment.FormCreate(Sender: TObject);
begin
  inherited;
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112),TransID';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dbg);
end;

procedure TfmINTrAdjustment.quDetilBeforePost(DataSet: TDataSet);
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



  quDetilUpdDate.Value := GetServerDateTime;
  quDetilUpdUser.Value := dmMain.UserId;
end;

procedure TfmINTrAdjustment.dbgEnter(Sender: TObject);
begin
  inherited;
//  if quMain.State in dsEditModes then quMain.Post;
//  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmINTrAdjustment.dxDBButtonEdit1ButtonClick(Sender: TObject;
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

procedure TfmINTrAdjustment.dbgItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Item';
       SQLString := ' SELECT ItemId as Kode_Item, ItemName as Nama_Item'
                   +',UOMId as Satuan'
                   +' FROM INMsItem'
                   +' ORDER BY ItemId';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilItemID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmINTrAdjustment.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgItemID,quDetil.State<>dsInsert);
  SetReadOnly(dbgItemName,TRUE);
end;

procedure TfmINTrAdjustment.dxDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmINTrAdjustment.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilQty.Value:=1;
  quDetilItemID.FocusControl;
end;

procedure TfmINTrAdjustment.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.Value:=Date;
  quMainTransDate.FocusControl;
end;

procedure TfmINTrAdjustment.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Adjustment';
       SQLString := ' SELECT TransId as Kode_Transaksi '
                   +' ,Convert(Varchar(10),Transdate,103) as Tgl_Transaksi '
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

procedure TfmINTrAdjustment.FormShow(Sender: TObject);
begin
  inherited;
  quDetilQty.DisplayFormat :=sDisFormat1;
  quDetilQty.EditFormat :=sEditformat;
  
end;

procedure TfmINTrAdjustment.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllItem(quMainTransID.Value,3);
  DeleteFromAllItem(quMainTransID.Value,53);
end;

procedure TfmINTrAdjustment.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllItem(quMainTransID.Value,quDetilItemID.Value,3);
  DeleteFromAllItem(quMainTransID.Value,quDetilItemID.Value,53);
end;

procedure TfmINTrAdjustment.quDetilAfterPost(DataSet: TDataSet);
var harga: Currency;
begin
  inherited;
  DeleteFromAllItem(quMainTransID.Value,quDetilItemID.Value,3);
  DeleteFromAllItem(quMainTransID.Value,quDetilItemID.Value,53);

  if quDetilFgStatus.Value='T' then
     InsertToAllItem(quDetilTransID.Value,quMainTransDate.Value,quMainWareHouseID.Value,quDetilItemID.Value,
                     3 ,abs(quDetilQty.Value),0,'IN',quMainLWareHouseName.Value);


  if quDetilFgStatus.Value='K' then
     InsertToAllItem(quDetilTransID.Value,quMainTransDate.Value,quMainWareHouseID.Value,quDetilItemID.Value,
                     53,abs(quDetilQty.Value),0,'IN',quMainLWareHouseName.Value);

end;

procedure TfmINTrAdjustment.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
     try
        Title := 'Gudang';
        SQLString := 'SELECT WareHouseID as Kode_Gudang, WareHouseName as Nama_Gudang'
                    +' FROM INMsWareHouse ORDER BY WareHouseId';
        if ShowModal = MrOK then
        begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainWareHouseID.Value := Res[0];
        end;
     finally
        free;
     end;
end;

procedure TfmINTrAdjustment.TmbBrgClick(Sender: TObject);
begin
  inherited;
  qudetil.append;
end;

procedure TfmINTrAdjustment.BtlBrgClick(Sender: TObject);
begin
  inherited;
  qudetil.Cancel;
end;

procedure TfmINTrAdjustment.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmINTrAdjustment.bbSimpanDetilClick(Sender: TObject);
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

end.
