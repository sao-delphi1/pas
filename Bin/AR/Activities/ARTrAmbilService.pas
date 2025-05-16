unit ARTrAmbilService;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv41, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL,
  dxDBCtrl, dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls,
  Buttons, dxCore, dxContainer, DBCtrls, dxDBELib, dxEditor, dxDBTLCl,
  dxGrClms;

type
  TfmARTrAService = class(TfmStdLv41)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    DBText2: TDBText;
    Label11: TLabel;
    DBText3: TDBText;
    Label13: TLabel;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1ItemID: TdxDBGridButtonColumn;
    dxDBGrid1ItemName: TdxDBGridColumn;
    dxDBGrid1Service: TdxDBGridButtonColumn;
    dxDBGrid1Qty: TdxDBGridColumn;
    quMainAServiceID: TStringField;
    quMainCustID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quCustomer: TADOQuery;
    quMainLCustName: TStringField;
    quDetilAServiceID: TStringField;
    quDetilItemId: TStringField;
    quDetilServiceId: TStringField;
    quDetilQty: TBCDField;
    quItem: TADOQuery;
    quDetilLitemName: TStringField;
    quDetilNote: TStringField;
    quDetilWareHouseId: TStringField;
    dxDBGrid1Gudang: TdxDBGridColumn;
    quAservice: TADOQuery;
    quDetilLtglService: TDateTimeField;
    quLokasi: TADOQuery;
    quDetilLwareHouseName: TStringField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    dxDBGrid1Column6: TdxDBGridButtonColumn;
    procedure FormCreate(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure dxDBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure dxDBButtonEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure dxDBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure dxDBGrid1ItemIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure dxDBGrid1ServiceButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1Column6ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dsDetilStateChange(Sender: TObject);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARTrAService: TfmARTrAService;

implementation

uses UnitGeneral, ConMain, Search, MyUnit, Allitem;

{$R *.dfm}

procedure TfmARTrAService.FormCreate(Sender: TObject);
begin
  inherited;
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), AServiceID';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dxDBGrid1);
end;

procedure TfmARTrAService.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBDateEdit1,qumain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit1,qumain.State<>dsInsert);
end;

procedure TfmARTrAService.dxDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARTrAService.dxDBDateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARTrAService.dxDBButtonEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARTrAService.dxDBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARTrAService.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;

  If Trim(quMainTransDate.AsString)='' then
  Begin
    MsgInfo('Tanggal Konsinyasi tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  If Trim(quMainCustID.Value)='' then
  Begin
    MsgInfo('Pelanggan tidak boleh kosong');
    quMainCustID.FocusControl;
    Abort;
  End;

  If Trim(quMainLCustName.Value)='' then
  Begin
    MsgInfo('Pelanggan tidak ada dalam Master');
    quMainCustID.FocusControl;
    Abort;
  End;

  if qumain.State=dsinsert then
  Begin
    ST := 'AS'+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
    quMainAServiceID.Value  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrAServiceHd', 'AServiceID', ST, '0') + 1);
  End;

  quMainUpdUser.Value := dmMain.UserId;
  quMainUpddate.Value := GetServerDateTime;
end;

procedure TfmARTrAService.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.Value:=date;
  quMainTransDate.FocusControl;
end;

procedure TfmARTrAService.dxDBGrid1Enter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmARTrAService.dxDBGrid1ItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Item';
       SQLString := ' SELECT A.ServiceId as Nota_Service,convert(varchar(10),Transdate,103) as Tgl_Service,'+
                    ' B.WarehouseId as Kode_Gudang,'+
                    ' A.ItemID as Kode_Barang,C.ItemName as Nama_Barang, ' +
                    ' isnull(A.Qty,0)-(Select Isnull(sum(qty),0) FROM ARTrAServiceDt D'+
                    ' WHERE D.ItemId=A.ItemId'+
                    ' AND D.ServiceId=A.ServiceId'+ //
                    ' )'+
                    ' as Sisa'+
                    ' FROM ARTrServiceDt A INNER JOIN ARTrServiceHd B ON A.ServiceId=B.ServiceID ' +
                    ' INNER JOIN INMsItem C ON A.ItemId=C.ItemId'+
                    ' WHERE B.CustId = ''' + quMainCustID.Value + ''' ' +
                    ' ORDER by A.ServiceId';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilItemID.Value := Res[3];
          quDetilServiceId.Value := Res[0];
          quDetilQty.asstring := Res[5];
          quDetilWareHouseId.Value:= Res[2];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrAService.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
     try
        Title := 'Pelanggan';
        SQLString := 'SELECT CustID as Kode_Pelanggan, CustName as Nama_Pelanggan'
                    +' FROM ARMsCustomer WHERE CustId IN (Select Distinct CustId FROM ARTrServiceHd)'
                    +' ORDER BY CustID';
        if ShowModal = MrOK then
        begin
           if quMain.State = dsBrowse then quMain.Edit;
              quMainCustID.Value := Res[0];
        end;
     finally
        free;
     end;
end;

procedure TfmARTrAService.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quDetilItemID.Value)='' then
  begin
     MsgInfo('Kode Item tidak boleh kosong !');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilLitemName.Value)='' then
  begin
     MsgInfo('Item tidak terdaftar di Master Item');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilWareHouseId.Value)='' then
  begin
     MsgInfo('Kode Gudang tidak boleh kosong !');
     quDetilWareHouseId.FocusControl;
     Abort;
  end;

  if TRIM(quDetilLwareHouseName.Value)='' then
  begin
     MsgInfo('Gudang tidak terdaftar di Master ');
     quDetilWareHouseId.FocusControl;
     Abort;
  end;

  if quDetil.State = dsInsert then
  begin
     with quAct, SQL do
     begin
        Close; Clear;
        Add(' SELECT Count(*) FROM ARTrAServiceDt  WHERE AServiceID=:AServiceID AND ItemId=:ItemId'
           +' AND ServiceId=:ServiceId ');
        with Parameters do
        begin
           ParamByName('AServiceID').Value := quMainAServiceID.Value;
           ParamByName('ServiceId').Value := quDetilServiceId.Value;
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

  with quAct,sql do
  Begin
    Close;Clear;
    add('SELECT isnull(A.Qty,0)-(Select Isnull(sum(qty),0) FROM ARTrAServiceDt D'+
        ' WHERE D.ItemId=A.ItemId'+
        ' AND D.ServiceId=A.ServiceId AND D.AServiceId<>'''+quMainAServiceID.Value+''''+ //
        ' )'+
        ' as Sisa'+
        ' FROM ARTrServiceDt A INNER JOIN ARTrServiceHd B ON A.ServiceId=B.ServiceID ' +
        ' INNER JOIN INMsItem C ON A.ItemId=C.ItemId'+
        ' WHERE B.CustId = ''' + quMainCustID.Value + ''' AND A.ItemId='''+quDetilItemId.Value+''''+
        ' AND A.ServiceId='''+quDetilServiceId.Value+''' AND B.WareHouseId='''+quDetilWareHouseId.Value+''''+
        ' ORDER by A.ServiceId');
    Open;
    If IsEmpty then
    Begin
      MsgInfo('Data tidak terdapat pada Nota Service');
      quDetilItemID.FocusControl;
      Abort;
    End;
  End;

  if quDetilQty.Value > quAct.FieldByName('Sisa').AsCurrency then
  begin
    MsgInfo('Jumlah Barang melebihi jumlah Di Nota Service '+#13
           +' Sisa Service adalah ['+ quAct.FieldByName('Sisa').AsString +']');
    quDetilQty.FocusControl;
    Abort;
  end;


  quDetilUpdUser.Value := dmMain.UserId;
  quDetilUpdDate.Value := GetServerDateTime;
end;

procedure TfmARTrAService.dxDBGrid1ServiceButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Item';
       SQLString := ' SELECT A.ServiceId as Nota_Service,convert(varchar(10),Transdate,103) as Tgl_Service,'+
                    ' A.ItemID as Kode_Barang,C.ItemName as Nama_Barang, ' +
                    ' isnull(A.Qty,0)-(Select Isnull(sum(qty),0) FROM ARTrAServiceDt D'+
                    ' WHERE D.ItemId=A.ItemId'+
                    ' AND D.ServiceId=A.ServiceId'+ //
                    ' )'+
                    ' as Sisa'+
                    ' FROM ARTrServiceDt A INNER JOIN ARTrServiceHd B ON A.ServiceId=B.ServiceID ' +
                    ' INNER JOIN INMsItem C ON A.ItemId=C.ItemId'+
                    ' WHERE B.CustId = ''' + quMainCustID.Value + ''' ' +
                    ' AND A.ItemId='''+quDetilItemId.Value+''''+
                    ' ORDER by A.ServiceId';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilServiceId.Value := Res[0];
          end;
    finally
       free;
    end;
end;

procedure TfmARTrAService.dxDBGrid1Column6ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Item';
       SQLString := ' SELECT B.WareHouseId FROM ARTrServiceHd B ' +
                    ' WHERE B.ServiceId = ''' + quDetilServiceId.Value + ''' ' +
                    ' ORDER by B.WareHouseId';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilWareHouseId.Value := Res[0];
          end;
    finally
       free;
    end;
end;

procedure TfmARTrAService.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid1ItemID,qudetil.State<>dsinsert);
  SetReadOnly(dxDBGrid1ItemName,TRUE);
  SetReadOnly(dxDBGrid1Service,qudetil.State<>dsinsert);
  SetReadOnly(dxDBGrid1Column6,TRUE);
  SetReadOnly(dxDBGrid1Gudang,qudetil.State<>dsinsert);
end;

procedure TfmARTrAService.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllItem(quMainAServiceID.Value,quDetilServiceId.Value,quDetilItemId.Value,
                    quDetilWareHouseId.Value,0,60);
  InsertToAllItem(quMainAServiceID.Value,quDetilServiceId.Value,quMainTransDate.value,quDetilWareHouseId.Value,
                  quDetilItemId.Value,60,abs(quDetilQty.Value),0,'',1,'AR',quMainLCustName.Value);
end;

procedure TfmARTrAService.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllItem(quMainAServiceID.Value,quDetilServiceId.Value,quDetilItemId.Value,
                    quDetilWareHouseId.Value,0,60);
end;

procedure TfmARTrAService.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllItem(quMainAServiceID.Value,60);
end;

procedure TfmARTrAService.bbFindClick(Sender: TObject);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Terima Service Barang';
       SQLString := ' SELECT A.AServiceID as Nota_Ambil_Service,'
                   +' A.TransDate as Tanggal, CustName as Supplier,'
                   +' A.Note as Keterangan'
                   +' FROM ARTrAServiceHd A'
                   +' INNER JOIN ARMsCustomer B ON A.CustID=B.CustID '
                   +' WHERE '+FSQLWhere
                   +' ORDER BY A.AServiceID';
       if ShowModal = MrOK then
       begin
         qumain.Locate('AServiceID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

end.
