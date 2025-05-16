unit ARTrTerimaService;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxDBTLCl, dxGrClms, dxEditor, dxDBELib, DBCtrls;

type
  TfmARTrService = class(TfmStdLv4)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    DBText2: TDBText;
    Label5: TLabel;
    quWareHouse: TADOQuery;
    bbCancel: TdxButton;
    dbgListTransferID: TdxDBGridMaskColumn;
    dbgListTransferDate: TdxDBGridDateColumn;
    dbgListWareHouseSrc: TdxDBGridMaskColumn;
    dbgListWareHouseDest: TdxDBGridMaskColumn;
    dbgListNote: TdxDBGridMaskColumn;
    dbgListLWareHouseDest: TdxDBGridLookupColumn;
    dbgListLwareHouseSrc: TdxDBGridLookupColumn;
    quItem: TADOQuery;
    Label13: TLabel;
    quCustomer: TADOQuery;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    DBText3: TDBText;
    Label11: TLabel;
    DBText4: TDBText;
    quMainServiceID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainCustID: TStringField;
    quMainWareHouseID: TStringField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quDetilServiceID: TStringField;
    quDetilItemID: TStringField;
    quDetilQty: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilLItemname: TStringField;
    quDetilLProduk: TStringField;
    quDetilLGroup: TStringField;
    quMainLcustName: TStringField;
    quMainLWareHouseName: TStringField;
    quDetilNote: TStringField;
    quGroup: TADOQuery;
    quProduct: TADOQuery;
    quDetilLGroupName: TStringField;
    quDetilLProductName: TStringField;
    Label6: TLabel;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    quDetilPS: TADOQuery;
    dsDetilPS: TDataSource;
    quDetilPSServiceID: TStringField;
    quDetilPSItemID: TStringField;
    quDetilPSQty: TBCDField;
    quDetilPSWarehouseID: TStringField;
    quDetilPSPrice: TBCDField;
    quDetilPSUpdDate: TDateTimeField;
    quDetilPSUpdUser: TStringField;
    quDetilPSLitemName: TStringField;
    quDetilPSLWareHouseName: TStringField;
    quDetilPSCTotal: TCurrencyField;
    dbg: TdxDBGrid;
    dbgItemID: TdxDBGridButtonColumn;
    dbgItemName: TdxDBGridColumn;
    dbgQty: TdxDBGridColumn;
    dbgProduct: TdxDBGridColumn;
    dbgGroup: TdxDBGridColumn;
    dbgColumn6: TdxDBGridBlobColumn;
    dbgPS: TdxDBGrid;
    dbgPSItemID: TdxDBGridButtonColumn;
    dbgPSItemName: TdxDBGridColumn;
    dbgPSWarehouseID: TdxDBGridButtonColumn;
    dbgPSQty: TdxDBGridMaskColumn;
    dbgPSHarga: TdxDBGridCurrencyColumn;
    dbgPSTotal: TdxDBGridColumn;
    quAct1: TADOQuery;
    quAct2: TADOQuery;
    quAct3: TADOQuery;
    Label7: TLabel;
    DBText5: TDBText;
    quMainLCustAdd: TStringField;
    quMainFlagService: TStringField;
    quMainFlag: TStringField;
    DBText6: TDBText;
    dxButton3: TdxButton;
    Label8: TLabel;
    quMainNama: TStringField;
    bbSave: TdxButton;
    Label12: TLabel;
    quMainAddress: TStringField;
    dxDBEdit1: TdxDBEdit;
    Label9: TLabel;
    Label14: TLabel;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    Label15: TLabel;
    Label16: TLabel;
    quMainBarang: TStringField;
    quMainSeriNumber: TStringField;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    quMainFgCetak: TStringField;
    quMainCetak: TStringField;
    DBText7: TDBText;
    Label17: TLabel;
    quMainJamMasuk: TDateTimeField;
    quDetilJamMasuk: TDateTimeField;
    quMainJamSelesai: TDateTimeField;
    dxButton4: TdxButton;
    quDetilPSNote: TStringField;
    dbgPSNote: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure pcMainChanging(Sender: TObject; NewPage: TdxTabSheet;
      var AllowChange: Boolean);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dbgEnter(Sender: TObject);
    procedure ActNewExecute(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dbgItemIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure dsDetilStateChange(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilBeforeEdit(DataSet: TDataSet);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
    procedure quMainBeforeEdit(DataSet: TDataSet);
    procedure quDetilPSBeforePost(DataSet: TDataSet);
    procedure dsDetilPSStateChange(Sender: TObject);
    procedure dbgPSItemIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilPSCalcFields(DataSet: TDataSet);
    procedure quDetilPSNewRecord(DataSet: TDataSet);
    procedure dbgPSEnter(Sender: TObject);
    procedure quDetilPSAfterPost(DataSet: TDataSet);
    procedure quDetilPSBeforeDelete(DataSet: TDataSet);
    procedure quDetilPSBeforeEdit(DataSet: TDataSet);
    procedure quDetilPSBeforeInsert(DataSet: TDataSet);
    procedure dbgPSWarehouseIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure quDetilPSItemIDChange(Sender: TField);
    procedure dxButton3Click(Sender: TObject);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure TmbBrgClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
  private
    { Private declarations }
      procedure CeKStatus;
//    procedure CeKRetur;
  public
    iService : integer;
    { Public declarations }
  end;

var
  fmARTrService: TfmARTrService;

implementation

uses StdLv2, StdLv1, StdLv0, ConMain, Search, UnitGeneral, MyUnit, StdLv3,
  Allitem, APKonsinyasi, ARQRRptSuratJalan, ARQRRptNotaService,
  ARQRRptSparePart;

{$R *.dfm}
procedure TfmARTrService.CeKStatus;
Begin
  with quAct, SQL do
     begin
        Close; Clear;
        Add(' SELECT top 1 InvServiceID FROM ARTrInvServiceHd '
           +' WHERE ServiceID='''+quMainServiceID.Value+'''');
        Open;
        if not IsEmpty then
        begin
           MsgInfo('Sudah ada Invoice Service ['+quAct.fieldbyname('InvServiceID').AsString+'], tidak bisa edit/Delete lagi');
           Abort;
        end;
     end;
End;
{
procedure TfmARTerimaService.CeKRetur;
Begin
  with quAct, SQL do
     begin
        Close; Clear;
        Add(' SELECT top 1 ReturnKonID FROM APTrReturnKonDt '
           +' WHERE KonsinyasiID='''+quMainKonsinyasiID.Value+'''');
        Open;
        if not IsEmpty then
        begin
           MsgInfo('Sudah ada Retur ['+quAct.fieldbyname('ReturnKonID').AsString+'], tidak bisa edit/Delete lagi');
           Abort;
        end;
     end;
End;
        }
procedure TfmARTrService.FormCreate(Sender: TObject);
begin
  inherited;
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), ServiceID';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dbg);
  SettingDxGrid(dbgPS);
end;

procedure TfmARTrService.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;
  quDetil.Active := True;
  quDetilPS.Active := True;
  quDetilQty.DisplayFormat := sDisFormat1;
  quDetilQty.EditFormat :=sEditformat;
  quDetilPSQty.DisplayFormat := sDisFormat1;
  quDetilPSQty.EditFormat := sEditformat;
  quDetilPSPrice.DisplayFormat := sDisFormat;
  quDetilPSPrice.EditFormat := sEditformat;
  quDetilPSCTotal.DisplayFormat := sDisFormat;
  iService :=0;
end;

procedure TfmARTrService.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBDateEdit1,qumain.state <>dsInsert);
  SetReadOnly(dxDBButtonEdit1,qumain.state <>dsInsert);
  SetReadOnly(dxDBButtonEdit2,qumain.state <>dsInsert);
end;

procedure TfmARTrService.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
     try
        Title := 'Pelanggan';
        SQLString := 'SELECT CustID as Kode_Pelanggan, CustName as Nama_Pelanggan'
                    +' FROM ARMsCustomer ORDER BY CustID';
        if ShowModal = MrOK then
        begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainCustID.Value := Res[0];
        end;
     finally
        free;
     end;
end;

procedure TfmARTrService.dxDBButtonEdit2ButtonClick(Sender: TObject;
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

procedure TfmARTrService.dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARTrService.pcMainChanging(Sender: TObject;
  NewPage: TdxTabSheet; var AllowChange: Boolean);
begin
  inherited;
 AllowChange := FActDS.State=dsBrowse;
end;

procedure TfmARTrService.quMainBeforePost(DataSet: TDataSet);
var ST : String;
begin
  inherited;
  If Trim(quMainTransDate.AsString)='' then
  Begin
    MsgInfo('Tanggal Service tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  If Trim(quMainCustID.Value)='' then
  Begin
    MsgInfo('Dari tidak boleh kosong');
    quMainCustID.FocusControl;
    Abort;
  End;

  If Trim(quMainLCustName.Value)='' then
  Begin
    MsgInfo('Pelanggan tidak ada dalam Master');
    quMainCustID.FocusControl;
    Abort;
  End;

  If quMainSeriNumber.AsString = '' then
  begin
    MsgInfo('Serial Number barang belum diisi');
    quMainSeriNumber.FocusControl;
    Abort;
  end;

  if TRIM (quMainBarang.AsString)='' then
  begin
    MsgInfo('Type barang belum diisi');
    quMainBarang.FocusControl;
    Abort;
  end;

  If Trim(quMainWareHouseID.Value)='' then
  Begin
    MsgInfo('Gudang Tujuan tidak ada dalam Master Gudang');
    quMainWareHouseID.FocusControl;
    Abort;
  End;

  If Trim(quMainLWareHouseName.Value)='' then
  Begin
    MsgInfo('Gudang tidak ada dalam Master');
    quMainWareHouseID.FocusControl;
    Abort;
  End;

  if qumain.State=dsinsert then
  Begin
    ST := 'SR.'+PT+ FormatDateTime('.YY.MM.', quMainTransDate.AsDateTime);
    quMainServiceID.Value  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrServiceHd', 'ServiceID', ST, '0') + 1);
  End;

  quMainUpdUser.Value := dmMain.UserId;
  quMainUpddate.Value := GetServerDateTime;

end;

procedure TfmARTrService.dbgEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmARTrService.ActNewExecute(Sender: TObject);
begin
  inherited;
  quMainTransDate.FocusControl;
end;

procedure TfmARTrService.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.Value:=date;
  quMainJamMasuk.AsDateTime := GetServerDateTime;
  quMainWareHouseID.Value := sDGS;
  quMainFlagService.Value := 'B';
  quMainFgCetak.Value := 'B';
end;

procedure TfmARTrService.dbgItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Cari Master Item';
       SQLString := ' SELECT A.ItemName as Nama_Barang, A.ItemID as Kode_Barang,'
                   +' B.GroupDesc as Group_Barang, C.ProductDesc as Product'
                   +' FROM INMsItem A'
                   +' INNER JOIN INMsGroup B ON A.GroupID=B.GroupID '
                   +' INNER JOIN INMsProduct C ON A.ProductID=C.ProductID '
                   +' WHERE B.GroupID=''99'' '
                   +' ORDER BY A.ItemID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilItemID.Value   := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrService.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quDetilItemID.Value)='' then
  begin
     MsgInfo('Kode Item tidak boleh kosong !');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilLItemname.Value)='' then
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
        Add(' SELECT Count(*) FROM  ARTrServiceDt WHERE ServiceId=:ServiceId AND ItemId=:ItemId');
        with Parameters do
        begin
           ParamByName('ServiceId').Value := quMainServiceID.Value;
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

  if quDetilQty.Value <=0 then
  begin
     MsgInfo('Jumlah Barang Tidak boleh lebih kecil sama dengan 0');
     quDetilQty.FocusControl;
     Abort;
  end;

  quDetilUpdUser.Value := dmMain.UserId;
  quDetilUpdDate.Value := GetServerDateTime;

end;

procedure TfmARTrService.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilQty.Value:=1;
  quDetilItemID.FocusControl;
  quDetilJamMasuk.AsDateTime := GetServerDateTime;
end;

procedure TfmARTrService.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgItemID,quDetil.State<>dsInsert);
  SetReadOnly(dbgItemName,TRUE);
  SetReadOnly(dbgProduct,TRUE);
  SetReadOnly(dbgGroup,TRUE);
end;

procedure TfmARTrService.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Terima Service Barang';
       SQLString := ' SELECT A.ServiceID as Nota_Service, A.Nama,'
                   +' A.TransDate as Tanggal, A.Barang as Type_Barang, A.SeriNumber as Serial_Number, CustName as Supplier,'
                   +' WareHouseName as Gudang, A.Note as Keterangan'
                   +' FROM ARTrServiceHd A'
                   +' INNER JOIN ARMsCustomer B ON A.CustID=B.CustID '
                   +' INNER JOIN INMsWareHouse C ON A.WareHouseID=C.WareHouseID '
                   +' WHERE '+FSQLWhere
                   +' ORDER BY A.ServiceID';
       if ShowModal = MrOK then
       begin
         qumain.Locate('ServiceID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARTrService.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
  DeleteFromAllItem(quMainServiceID.Value,10);
  DeleteFromAllItem(quMainServiceID.Value,61);
 // CeKRetur;
  //DeleteFromAllItem(quMainTransferID.Value,2);
 //DeteFromAllItem(quMainTransferID.Value,52);
end;

procedure TfmARTrService.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
  DeleteFromAllItem(quMainServiceID.Value,quDetilItemID.Value,10);
 // CeKRetur;
 //DeleteFromAllItem(quMainTransferID.Value,quDetilItemID.Value,2);
 //DeleteFromAllItem(quMainTransferID.Value,quDetilItemID.Value,52);
end;

procedure TfmARTrService.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllItem(quMainServiceID.Value,quDetilItemID.Value,10);
  InsertToAllItem(quDetilServiceID.Value,quMainTransDate.value,quMainWareHouseID.Value,quDetilItemID.Value
                  ,10,abs(qudetilqty.Value),0,'AP',quMainLcustName.Value);
  {DeleteFromAllItem(quDetilTransferID.Value, quDetilItemID.Value,  2);
  DeleteFromAllItem(quDetilTransferID.Value, quDetilItemID.Value, 52);

  InsertToAllItem(quDetilTransferID.Value,quMainTransferDate.Value,quMainWareHouseSrc.Value,quDetilItemID.Value,
                  quDetilItemName.Value,52,
                     abs(quDetilQty.Value),quDetilUOMTrans.Value,0,'IN');
  InsertToAllItem(quDetilTransferID.Value,quMainTransferDate.Value,quMainWareHouseDest.Value,quDetilItemID.Value,
                  quDetilItemName.Value,2,
                  abs(quDetilQty.Value),quDetilUOMTrans.Value,0,'IN');}
end;

procedure TfmARTrService.quDetilBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
//  CeKRetur;
end;

procedure TfmARTrService.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
  with quAct,sql do
  Begin
    Close;Clear;
    Add('Select Count(*) as Jumlah FROM ARTrServiceDt WHERE ServiceID='''+quMainServiceID.Value+'''');
    Open;
    if FieldByName('jumlah').AsInteger > 0 then Abort;
  End;

//  CeKRetur;
end;

procedure TfmARTrService.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
   CeKStatus;
 // CeKRetur;
end;

procedure TfmARTrService.quDetilPSBeforePost(DataSet: TDataSet);
begin
  inherited;

  if quDetilPSItemID.Value= '' then
  begin
     MsgInfo('Kode Barang tidak boleh kosong !');
     quDetilPSItemID.FocusControl;
     Abort;
  end;
  if TRIM(quDetilPSLItemName.Value)='' then
  begin
     MsgInfo('Barang tidak terdaftar di Master Item');
     quDetilPSItemID.FocusControl;
     Abort;
  end;
  if TRIM(quDetilPSWarehouseID.Value)= '' then
  begin
     MsgInfo('Gudang tidak boleh kosong');
     quDetilPSWarehouseID.FocusControl;
     Abort;
  end;
  if TRIM (quDetilPSLwarehouseName.Value) = '' then
  begin
     MsgInfo('Gudang tidak terdaftar di Master Gudang');
     quDetilPSWarehouseID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilPSQty.AsString)= '' then
  begin
     MsgInfo('Jumlah tidak boleh kosong');
     quDetilPSQty.FocusControl;
     Abort;
  end;

  if quDetilPSQty.Value < 0 then
  begin
     MsgInfo('Jumlah tidak boleh lebih kecil dari 0');
     quDetilPSQty.FocusControl;
     Abort;
  end;

  if quDetilPS.State = dsInsert then
  begin
     with quAct, SQL do
     begin
        Close; Clear;
        Add(' SELECT Count(*) FROM ARTrServiceDtPS WHERE ServiceID=:ServiceID AND ItemId=:ItemId'
           +' ');
        with Parameters do
        begin
           ParamByName('ServiceID').Value := quMainServiceID.AsString;
           ParamByName('ItemId').Value  := quDetilPSItemID.AsString;
        end;
        Open;
        if Fields[0].AsInteger > 0 then
        begin
           MsgInfo('Kode Item sudah ada dalam List');
           quDetilPSItemID.FocusControl;
           Abort;
        end;
     end;
  end;


  quDetilPSUpdUser.Value := dmMain.UserId;
  quDetilPSUpdDate.Value := GetServerDateTime;

end;

procedure TfmARTrService.dsDetilPSStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgPSItemID,quDetilPS.State<>dsInsert);
  SetReadOnly(dbgPSItemName,TRUE);
  SetReadOnly(dbgPSTotal,TRUE);
  SetReadOnly(dbgPSWarehouseID,qudetilPS.State<>dsinsert);
  SetReadOnly(dbgPSHarga,qudetilPS.State<>dsinsert);
end;

procedure TfmARTrService.dbgPSItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
{  with TfmSearch.Create(Self) do
    try
       Title := 'Cari Barang';
       SQLString := ' SELECT ItemId as Kode_Barang, Itemname as Nama_Barang,'
                   +' UserPrice as Harga_User, DealerPrice as Harga_Dealer'
                   +' FROM INMsItem ORDER BY ItemID';
       if ShowModal = MrOK then
       begin
          if quDetilPS.State = dsBrowse then quDetilPS.Edit;
             quDetilPSItemID.Value := Res[0];
       end;
    finally
       free;
    end;}
  with TfmSearch.Create(Self) do
    try
       Title := 'Cari Barang';
       SQLString :='  SELECT Itemname as Nama_Barang,'
                  +'  Case When upper(Currid)=''USD'' Then '
                  +'  UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)'
                  +'  - (Convert(numeric,Substring('
                  +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
                  +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
                  +'  )+( case when( ( Convert(numeric, Substring('
                  +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
                  +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
                  +'  )>= 0 ) AND ( ( Convert(numeric, Substring('
                  +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
                  +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
                  +'  )< 250 )then 0 when ( (Convert(numeric,Substring('
                  +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
                  +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
                  +'  )= 250)then 250 when ((Convert(numeric,Substring('
                  +' Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
                  +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
                  +'  )> 250 ) AND((  Convert(numeric, Substring('
                  +'  Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
                  +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
                  +'  )<= 500 ) then 500 when ((Convert(numeric,Substring('
                  +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
                  +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
                  +'  )> 500 ) AND (( Convert(numeric,Substring('
                  +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
                  +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
                  +'  )<= 750 )then 750 when(( Convert(numeric, Substring('
                  +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
                  +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
                  +'  )> 500 ) AND((Convert(numeric,Substring('
                  +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'   WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
                  +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
                  +'  )> 750 )'
                  +'   then 1000 end ) Else UserPrice End  as HARGA_JUAL,ItemId as Kode_Barang FROM INMsItem ORDER BY ItemID';
       if ShowModal = MrOK then
       begin
          if quDetilPS.State = dsBrowse then quDetilPS.Edit;
             quDetilPSItemID.Value := Res[2];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrService.quDetilPSCalcFields(DataSet: TDataSet);
begin
  inherited;
  quDetilPSCTotal.Value := quDetilPSQty.Value* quDetilPSPrice.Value;
end;

procedure TfmARTrService.quDetilPSNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilPSQty.Value :=1;
  quDetilPSPrice.Value := 1;
  quDetilPSWarehouseID.Value := sDGPj;
  quDetilPSItemID.FocusControl;
end;

procedure TfmARTrService.dbgPSEnter(Sender: TObject);
begin
  inherited;
   if quDetil.State in dsEditModes then quDetil.Post;
   if quDetilPS.IsEmpty then quDetilPS.Append;
end;

procedure TfmARTrService.quDetilPSAfterPost(DataSet: TDataSet);
begin
  inherited;
{  DeleteFromAllItem(quMainServiceID.Value,quDetilPSItemID.Value,61);
  InsertToAllItem(quMainServiceID.Value,quMainTransDate.value,quDetilPSWarehouseID.Value,quDetilPSItemID.Value
                  ,61,abs(qudetilPSqty.Value),quDetilPSPrice.value,'AP',quMainLcustName.Value);
}
   quDetilPS.Append;
end;

procedure TfmARTrService.quDetilPSBeforeDelete(DataSet: TDataSet);
begin
  inherited;
   CeKStatus;
//   DeleteFromAllItem(quMainServiceID.Value,quDetilPSItemID.Value,61);
end;

procedure TfmARTrService.quDetilPSBeforeEdit(DataSet: TDataSet);
begin
  inherited;
   CeKStatus;
end;

procedure TfmARTrService.quDetilPSBeforeInsert(DataSet: TDataSet);
begin
  inherited;
   CeKStatus;
end;

procedure TfmARTrService.dbgPSWarehouseIDButtonClick(Sender: TObject;
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
           if quDetilPS.State = dsBrowse then quDetilPS.Edit;
              quDetilPSWarehouseID.Value := Res[0];
        end;
     finally
        free;
     end;
end;

procedure TfmARTrService.dxButton2Click(Sender: TObject);
begin
  inherited;
  with TfmARQRRptNotaService.Create(Self) do
     try
       with qu001,SQL do
       Begin
         Close;Clear;
         add(' Select Distinct A.ServiceId,Convert(varchar(10),getdate(),103) as Tgl,(A.CustId+'' - ''+C.CustName) as Pelanggan, '
            +' (A.WareHouseId+'' - ''+B.WareHouseName) as WareHouse, A.Nama, A.Address, '
            +' C.Address as Address1, A.barang+'' S/N: ''+ A.Serinumber as Barang, '
            +' ''Dibuat Oleh: ''+A.UpdUser+'' Jam: ''+Convert(Varchar(8),A.UpdDate,108) as UpdUser '
            +' FROM ARTrServiceHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId'
            +' INNER JOIN INMsWareHouse B ON A.WareHouseId=B.WareHouseId'
            +' WHERE A.ServiceId='''+quMainServiceID.Value+'''');
         Open;
       End;

       With qu002,sql do
       Begin
         Close;Clear;
         add(' Select distinct A.ItemId,B.ItemName,B.UOMId, Qty, A.Note FROM ARTrServiceDt A'
            +' INNER JOIN INMsItem B ON A.Itemid=B.Itemid'
            +' WHERE A.ServiceId=:ServiceId'
            +' ORDER BY A.ItemId');
         Open;
       End;

       if quMainAddress.AsString <> '' then
          QRDBText9.Enabled := False;

    If quMainFgCetak.AsString = 'S' then
    begin
      if GroupUser <> 'admin' then
      begin
        ShowMessage('Sudah Pernah dicetak, Hanya Group admin saja yang bisa cetak');
        abort;
      end;
    end;
       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;
      finally
        free;
     end;
  with quAct,SQL do
  begin
     close;clear;
     Add('Update ARTrServiceHd set FgCetak=''S'' where ServiceID=:ServiceID');
     with Parameters do
     begin
       ParamByName('ServiceID').Value  := quMainServiceID.AsString;
     end;
     ExecSQL;
  end;
  Self.quMain.Requery();
end;

procedure TfmARTrService.dxButton1Click(Sender: TObject);
begin
  inherited;
  with TfmARQRRptSparePart.Create(Self) do
     try
       with qu001,SQL do
       Begin
         Close;Clear;
         add(' Select Distinct A.ServiceId,Convert(varchar(10),getdate(),103) as Tgl,(A.CustId+''-''+C.CustName) as Pelanggan, '
            +' (A.WareHouseId+''-''+B.WareHouseName) as WareHouse, ''Service ''+A.Barang+'' Pelanggan '' +A.Nama as Keterangan '
            +' FROM ARTrServiceHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId'
            +' INNER JOIN INMsWareHouse B ON A.WareHouseId=B.WareHouseId'
            +' WHERE A.ServiceId='''+quMainServiceID.Value+'''');
         Open;
       End;

       With qu002,sql do
       Begin
         Close;Clear;
         add(' Select distinct A.ItemId,B.ItemName,B.UOMId, A.Qty, A.Price FROM ARTrServiceDtPS A'
            +' INNER JOIN INMsItem B ON A.Itemid=B.Itemid'
            +' WHERE A.ServiceId=:ServiceId'
            +' ORDER BY A.ItemId');
         Open;
       End;
       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;
      finally
        free;
     end;
end;

procedure TfmARTrService.quDetilPSItemIDChange(Sender: TField);
begin
  inherited;
       with quAct,sql do
    begin
     close;clear;
     add(' SELECT isnull(DealerPrice,0) as DealerPrice,isnull(UserPrice,0) as UserPrice '
        +' FROM INMsItem WHERE ItemId='''+quDetilPSItemID.AsString+'''');
     open;
    end;

    with quAct1,sql do
    begin
     Close;Clear;
     add(' select CustType from ARMsCustomer where CustId='''+quMainCustID.AsString+'''');
     open;
    end;

    with quAct2,sql do
    begin
     Close;Clear;
     add(' select Currid from INMsItem where ItemId='''+quDetilPSItemID.Value+'''');
     open;
    end;

    with quAct3,sql do
    Begin
      Close;Clear;
      add('  Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate '
         +'  WHERE Convert(varchar(8),Transdate,112) <='''+ Formatdatetime('yyyyMMdd',quMainTransDate.AsDateTime)+''''
         +'  ORDER BY TransDate desc');
      Open;
   End;

   if quact1.fieldbyname('CustType').AsString='U' then
   Begin
         if quact2.FieldByName('CurrID').AsString='USD' then
              quDetilPSPrice.Value :=  quAct.fieldbyname('UserPrice').AsCurrency*quAct3.fieldbyname('Rate').AsCurrency
           else
              quDetilPSPrice.Value :=  quAct.fieldbyname('UserPrice').AsCurrency;
   End;

   if quact1.fieldbyname('CustType').AsString='D' then
   Begin
            if quact2.FieldByName('CurrID').AsString='USD' then
              quDetilPSPrice.Value := quAct.fieldbyname('DealerPrice').AsCurrency*quAct3.fieldbyname('Rate').AsCurrency
           else
              quDetilPSPrice.Value := quAct.fieldbyname('DealerPrice').AsCurrency;
   End;
end;

procedure TfmARTrService.dxButton3Click(Sender: TObject);
var keyfield : string;
begin
  inherited;
  iService := iService + 1;
  if iService mod 2 = 0 then
  Begin
    qumain.Edit;
    quMainFlagService.Value :='B';
    quMain.Post;
//    Self.quMain.Requery();
  end
  else
  Begin
    qumain.Edit;
    quMainFlagService.Value :='S';
    quMain.Post;
//    Self.quMain.Requery();
  end;
  keyfield := quMainServiceID.Value;
  qumain.Close;qumain.open;
  quMain.Locate('ServiceId',keyfield,[]);
end;

procedure TfmARTrService.quMainAfterPost(DataSet: TDataSet);
Var FlagService : string;
begin
  inherited;
//  quMain.Requery();
  with quAct,SQL do
  begin
     close;clear;
     add(' Select FlagService From ArTrServiceHd '
        +' Where ServiceID='''+quMainServiceID.AsString+'''');
     open;
  end;
  FlagService:= quAct.FieldByname('FlagService').AsString;
  if FlagService = 'S' then
  Begin
    with quAct,SQL do
    begin
       close;clear;
       Add('Update ArTrServiceHD set JamSelesai=Convert(Varchar(20),getdate(),120) where ServiceID=:ServiceID');
       with Parameters do
       begin
         ParamByName('ServiceID').Value  := quMainServiceID.AsString;
       end;
       ExecSQL;
    end;
//    quMain.Requery();
  end;
end;

procedure TfmARTrService.TmbBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmARTrService.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmARTrService.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmARTrService.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmARTrService.dxButton4Click(Sender: TObject);
begin
  inherited;
    with TfmSearch.Create(Self) do
      try
      SQLString :='  SELECT Itemname as Nama_Barang,'
              +'  Case When upper(Currid)=''USD'' Then '
              +'  UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
              +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)'
              +'  - (Convert(numeric,Substring('
              +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
              +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
              +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
              +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
              +'  )+( case when( ( Convert(numeric, Substring('
              +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
              +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
              +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
              +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
              +'  )>= 0 ) AND ( ( Convert(numeric, Substring('
              +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
              +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
              +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
              +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
              +'  )< 250 )then 0 when ( (Convert(numeric,Substring('
              +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
              +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
              +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
              +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
              +'  )= 250)then 250 when ((Convert(numeric,Substring('
              +' Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
              +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
              +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
              +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
              +'  )> 250 ) AND((  Convert(numeric, Substring('
              +'  Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
              +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
              +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
              +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
              +'  )<= 500 ) then 500 when ((Convert(numeric,Substring('
              +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
              +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
              +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
              +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
              +'  )> 500 ) AND (( Convert(numeric,Substring('
              +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
              +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
              +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
              +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
              +'  )<= 750 )then 750 when(( Convert(numeric, Substring('
              +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
              +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
              +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
              +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
              +'  )> 500 ) AND((Convert(numeric,Substring('
              +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
              +'   WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
              +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
              +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
              +'  )> 750 )'
              +'   then 1000 end ) Else UserPrice End as HARGA_JUAL,'
              +'  (Select ISNULL(SUM(Case WHEN F.FgTrans < 50  THEN F.QTy ELSE F.Qty * - 1 END),0) '
              +'   FROM ALLITEM F Where CONVERT(VARCHAR(8),F.TransDate,112)<='''+FormatDateTime('YYYYMMDD',date)+''''
              +'   AND F.ItemID=A.ItemID AND F.WareHouseId='''+sDGC+''') as STOK_AKHIR,ItemId as Kode_Barang'
              +'  FROM INMsItem A ORDER BY A.ItemID';
         if ShowModal = MrOK then
         begin

         end;
      finally
         free;
      end;
end;

end.
