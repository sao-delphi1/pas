unit ARTrKonRetur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv41, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL,
  dxDBCtrl, dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls,
  Buttons, dxCore, dxContainer, dxDBTLCl, dxGrClms, DBCtrls, dxDBELib,
  dxEditor;

type
  TfmARTrKonRetur = class(TfmStdLv41)
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    quItem: TADOQuery;
    DBText3: TDBText;
    quMainKonReturID: TStringField;
    quMainCustID: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainTransDate: TDateTimeField;
    dbgListKonReturID: TdxDBGridMaskColumn;
    dbgListTransDate: TdxDBGridDateColumn;
    dbgListCustID: TdxDBGridMaskColumn;
    dbgListNote: TdxDBGridMemoColumn;
    dbgListUpdDate: TdxDBGridDateColumn;
    dbgListUpdUser: TdxDBGridMaskColumn;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    DBText2: TDBText;
    Label11: TLabel;
    DBText1: TDBText;
    quCustomer: TADOQuery;
    ADOQuery1: TADOQuery;
    quMainLCustName: TStringField;
    quMainNote: TStringField;
    quDetilKonReturID: TStringField;
    quDetilItemID: TStringField;
    quDetilWareHouseID: TStringField;
    quDetilQty: TIntegerField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilLItemName: TStringField;
    quLocation: TADOQuery;
    quDetilLwareHouseName: TStringField;
    Label6: TLabel;
    quDetilKonTransBrgId: TStringField;
    quSN: TADOQuery;
    dsSN: TDataSource;
    quSNKonReturID: TStringField;
    quSNItemID: TStringField;
    quSNKonTransBrgId: TStringField;
    quSNUpdDate: TDateTimeField;
    quSNUpdUser: TStringField;
    quSNSNID: TStringField;
    txtKonReturID: TdxDBEdit;
    txtTransDate: TdxDBDateEdit;
    txtCustID: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1ItemID: TdxDBGridButtonColumn;
    dxDBGrid1ItemName: TdxDBGridColumn;
    dxDBGrid1Konsinyasi: TdxDBGridButtonColumn;
    dxDBGrid1Lokasi: TdxDBGridButtonColumn;
    dxDBGrid1Qty: TdxDBGridColumn;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2SNID: TdxDBGridButtonColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtCustIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1ItemIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure txtKonReturIDKeyPress(Sender: TObject; var Key: Char);
    procedure dsDetilStateChange(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure dxDBGrid1LokasiButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1KonsinyasiButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quSNBeforePost(DataSet: TDataSet);
    procedure dsSNStateChange(Sender: TObject);
    procedure quSNBeforeInsert(DataSet: TDataSet);
    procedure quSNAfterPost(DataSet: TDataSet);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quSNNewRecord(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure dxDBGrid2SNIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quSNBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARTrKonRetur: TfmARTrKonRetur;

implementation

uses StdLv2, StdLv1, StdLv0, Search, UnitGeneral, ConMain, StdLv3, MyUnit,
  Allitem;

{$R *.dfm}

procedure TfmARTrKonRetur.FormCreate(Sender: TObject);
begin
  inherited;
  FFieldOrder := 'CONVERT(VARCHAR(8),Transdate,112), KonReturID';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dxDBGrid1);
end;

procedure TfmARTrKonRetur.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active  := TRUE;
  quDetil.Active := TRUE;
  quSN.Open;
  SettingDxGrid(dxDBGrid1);
  SettingDxGrid(dxDBGrid2);
  quDetilQty.DisplayFormat:= sDisFormat1;
  quDetilQty.EditFormat := sEditformat;
end;

procedure TfmARTrKonRetur.txtCustIDButtonClick(Sender: TObject;
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

procedure TfmARTrKonRetur.dxDBGrid1ItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       SQLString := ' SELECT Distinct A.ItemId as Kode_Barang, Itemname as Nama_Barang,'
                   +' '
                   +' ProductDesc as Product, GroupDesc as Group_Barang '
                   +' FROM ARTrKonTransBrgDt A INNER JOIN ARTrKonTransBrgHd E ON A.KonTransBrgId=E.KonTransBrgId'
                   +' INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
                   +' INNER JOIN INMsGroup C ON B.GroupID=C.GroupID '
                   +' INNER JOIN INMsProduct D ON B.ProductID=D.ProductID '
                   +' WHERE '
                  // +' A.PurchaseID = ''' + quDetilPurchaseID.Value And+ ''''
                   +' E.CustId='''+quMainCustID.Value+''''
                   +' ORDER BY A.ItemID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilItemID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrKonRetur.quMainBeforePost(DataSet: TDataSet);
var  ST: String;
begin
  inherited;
  if Trim(quMainTransDate.AsString)='' Then
  Begin
    MsgInfo('Tanggal Retur Konsinyasi tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  if Trim(quMainCustID.Value)= '' then
  Begin
    MsgInfo('Kode Pelanggan tidak boleh kosong');
    quMainCustID.FocusControl;
    Abort;
  End;

  if Trim(quMainLCustName.Value)= '' then
  Begin
    MsgInfo('Kode Pelanggan tidak boleh kosong');
    quMainCustID.FocusControl;
    Abort;
  End;

  if qumain.State=dsinsert then
  Begin
    ST := 'RKJ/'+PT+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
    quMainKonReturID.Value  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrKonReturHd', 'KonReturId', ST, '0') + 1);
  End;

  quMainUpdDate.Value := GetServerDateTime;
  quMainUpdUser.Value := dmMain.UserId;
end;

procedure TfmARTrKonRetur.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(txtKonReturID,TRUE);
  SetReadOnly(txtTransDate,quMain.State<>dsInsert);
  SetReadOnly(txtCustID,qumain.State<>dsinsert);
end;

procedure TfmARTrKonRetur.txtKonReturIDKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARTrKonRetur.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid1ItemID, quDetil.State<>dsInsert);
  SetReadOnly(dxDBGrid1ItemName, TRUE);
  SetReadOnly(dxDBGrid1ItemID, quDetil.State<>dsInsert);
  SetReadOnly(dxDBGrid1Lokasi, quDetil.State<>dsInsert);
  SetReadOnly(dxDBGrid1Konsinyasi, quDetil.State<>dsInsert);
end;

procedure TfmARTrKonRetur.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.Value:= date;
  quMainTransDate.FocusControl;  
end;

procedure TfmARTrKonRetur.dxDBGrid1Enter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmARTrKonRetur.dxDBGrid1LokasiButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Gudang';
       SQLString := 'select WarehouseID as Kode_Gudang ' +
                    'from ARTrKonTransBrgHd WHERE KonTransBrgId='''+quDetilKonTransBrgId.Value+''' ' +
                    'order by WarehouseID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilWareHouseID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrKonRetur.dxDBGrid1KonsinyasiButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Nota Konsinyasi';
       SQLString := ' select A.KonTransBrgID as Nota_Konsinyasi,convert(varchar(10),Transdate,103) as Tgl,A.WareHouseID, '+
                    ' isnull(Qty,0)-(Select isnull(Sum(Qty),0) FROM ARTrKonInvPelDt D '+
                    ' Where D.ItemId=B.ItemId AND D.KonTransBrgId=A.KonTransBrgId) '+
                    ' -(Select isnull(Sum(Qty),0) FROM ARTrKonReturDt E '+
                    ' Where E.ItemId=B.ItemId AND E.KonTransBrgId=A.KonTransBrgId) '+
                    ' as Sisa '+
                    ' from ARTrKonTransBrgHd A INNER JOIN ARTrKonTransBrgDt B '+
                    ' ON A.KonTransBrgId=B.KonTransBrgId ' +
                    ' where B.ItemID = ''' + quDetilItemID.Value + ''' AND A.CustId='''+quMainCustID.Value+'''' +
                    ' order by A.KonTransBrgID ';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilKonTransBrgId.AsString := Res[0];
             quDetilWareHouseID.AsString := Res[2];
             quDetilQty.AsString := Res[3];
             quDetilQty.FocusControl;
       end;
    finally
       free;
    end;
end;

procedure TfmARTrKonRetur.quDetilBeforePost(DataSet: TDataSet);
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
     MsgInfo('Kode Item tidak ada dalam Master !');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilKonTransBrgId.AsString)='' then
  begin
     MsgInfo('Nota Konsinyasi tidak boleh kosong !');
     quDetilKonTransBrgId.FocusControl;
     Abort;
  end;

  if quDetilQty.value <= 0  then
  begin
     MsgInfo('Jumlah Barang harus lebih besar dari 0');
     quDetilQty.FocusControl;
     Abort;
  end;

  if TRIM(quDetilWareHouseID.Value)='' then
  begin
     MsgInfo('Kode Gudang tidak boleh kosong !');
     quDetilWareHouseID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilLwareHouseName.Value)='' then
  begin
     MsgInfo('Kode Gudang tidak ada dalam master !');
     quDetilWareHouseID.FocusControl;
     Abort;
  end;

  if quDetil.State = dsInsert then
  begin
     with quAct, SQL do
     begin
        Close; Clear;
        Add('SELECT Count(ItemID) FROM ARTrKonReturDt WHERE KonReturID=:KonReturID AND KonTransBrgID=:KonTransBrgID and ItemID=:ItemID');
        with Parameters do
        begin
           ParamByName('KonReturID').Value := quMainKonReturID.Value;
           ParamByName('KonTransBrgID').Value  := quDetilKonTransBrgId.Value;
           ParamByName('ItemID').Value := quDetilItemID.Value;
        end;
        Open;
        if Fields[0].AsInteger > 0 then
        begin
           MsgInfo('Item sudah ada dalam List');
           abort;
        end;
     end;
  end;


  with quact,sql do
  Begin
    Close;Clear;
    add(' select A.KonTransBrgID as Nota_Konsinyasi,convert(varchar(10),Transdate,103) as Tgl,A.WareHouseID, '+
        ' isnull(Qty,0)-(Select isnull(Sum(Qty),0) FROM ARTrKonInvPelDt D '+
        ' Where D.ItemId=B.ItemId AND D.KonTransBrgId=A.KonTransBrgId ) '+
        ' -(Select isnull(Sum(Qty),0) FROM ARTrKonReturDt E '+
        ' Where E.ItemId=B.ItemId AND E.KonTransBrgId=A.KonTransBrgId AND KonReturId <>'''+quMainKonReturID.Value +''' ) '+
        ' as Sisa '+
        ' from ARTrKonTransBrgHd A INNER JOIN ARTrKonTransBrgDt B '+
        ' ON A.KonTransBrgId=B.KonTransBrgId ' +
        ' where B.ItemID = ''' + quDetilItemID.Value + ''' AND A.CustId='''+quMainCustID.Value+'''' +
        ' AND A.KonTransBrgId='''+quDetilKonTransBrgId.AsString+''' AND A.WareHouseId='''+quDetilWareHouseID.Value +''''+
        ' order by A.KonTransBrgID ');
    Open;
    If IsEmpty then
    Begin
      MsgInfo('Data tidak terdapat pada Nota Konsinyasi');
      quDetilItemID.FocusControl;
      Abort;
    End;
  End;

  if quDetilQty.Value > quAct.FieldByName('Sisa').AsCurrency then
  begin
    MsgInfo('Jumlah Barang melebihi jumlah Di Nota konsinyasi '+#13
           +' Sisa pada Nota Konsinyasi adalah ['+ quAct.FieldByName('Sisa').AsString +']');
    quDetilQty.FocusControl;
    Abort;
  end;


  quDetilUpdUser.Value := dmMain.UserId;
  quDetilUpdDate.Value := GetServerDateTime;
end;

procedure TfmARTrKonRetur.quSNBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(quSNSNID.AsString)='' then
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
       add(' SELECT SNID from ARTrKonReturDtSN WHERE KonTransBrgId=:KonTransBrgId and SNID=:SNID and ItemID=:ItemID'
          +' AND KonReturID=:KonReturId');
          Parameters.ParamByName('KonReturId').Value:= quSNKonReturID.AsString;
          Parameters.ParamByName('KonTransBrgId').Value:= quSNKonTransBrgID.AsString;
          Parameters.ParamByName('SNID').Value:= quSNSNID.AsString;
          Parameters.ParamByName('ItemID').Value:= quSNItemID.AsString;
       Open;
       If quAct.RecordCount <> 0 then
       Begin
          MsgInfo('Serial Number sudah ada');
          quSNSNID.FocusControl;
          Abort;
       End;
    End;
  End;
{  if quSN.State = dsInsert then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT SNID FROM ARTrKonReturDtSN WHERE SNID='''+quSNSNID.AsString+''' ');
      Open;
    end;
    if quAct.FieldByName('SNID').AsString <> '' then
    begin
      ShowMessage('Serial number ini sudah pernah ditarik');
      quSNSNID.FocusControl;
      Abort;
    end;
  end;}
  if quSN.State = dsInsert then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      add('SELECT SNID FROM ARTrKonInvPelDtSN WHERE SNID='''+quSNSNID.AsString+''' ');
      Open;
    end;
    if quAct.FieldByName('SNID').AsString <> '' then
    begin
      ShowMessage('Serial number ini sudah ada invoicenya!!!');
      quSNSNID.FocusControl;
      Abort;
    end;
  end;
  if quSN.State = dsInsert then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      add('SELECT SNID FROM ARTrKonTransBrgDtSN WHERE SNID='''+quSNSNID.AsString+''' ');
      open;
    end;
    if quAct.FieldByName('SNID').AsString = '' then
    begin
      ShowMessage('Serial number ini belum pernah dikirim ke Pelanggan ini!!!');
      quSNSNID.FocusControl;
      Abort;
    end;
  end;
  quSNUpdUser.Value := dmMain.UserId;
  quSNUpdDate.Value := GetServerDateTime;
end;

procedure TfmARTrKonRetur.dsSNStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid2SNID,quSN.State<>dsinsert);
end;

procedure TfmARTrKonRetur.quSNBeforeInsert(DataSet: TDataSet);
begin
  inherited;
   with quAct,SQL do
  begin
   Close;Clear;
   add(' SELECT Count(SNID) as jumlah from ARTrKonReturDtSN WHERE KonTransBrgId=:KonTransBrgId and ItemID=:ItemID'
          +' AND KonReturID=:KonReturId');
          Parameters.ParamByName('KonReturId').Value:= quSNKonReturID.AsString;
          Parameters.ParamByName('KonTransBrgId').Value:= quSNKonTransBrgID.AsString;
          Parameters.ParamByName('ItemID').Value:= quSNItemID.AsString;
   Open;
  End;
  if quAct.FieldByName('jumlah').AsInteger >= quDetilQty.Value then Abort;
end;

procedure TfmARTrKonRetur.quSNAfterPost(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT SNID FROM APTrPurchaseDtSN WHERE ItemID='''+quDetilItemID.AsString+''' '
       +'AND SNID='''+quSNSNID.AsString+''' ');
    Open;
    if quAct.FieldByName('SNID').AsString <> '' then
    begin
     Close;Clear;
     add(' Update APTrPurchaseDtSN SET FgJual=''T'' WHERE ItemID='''+quDetilItemID.AsString+''' '
        +' AND SNID='''+quSNSNID.AsString+''' ');
     ExecSQL;
    end
    else
    begin
      Close;Clear;
      add(' Update APTrKonsinyasiDtSn SET FgJual=''T'' WHERE ItemID='''+quDetilItemID.AsString+''' '
         +' AND SNID='''+quSNSNID.AsString+''' ');
      ExecSQL;
    end;
  end;

  with quAct,SQL do
  begin
   Close;Clear;
   add(' SELECT Count(SNID) as jumlah from ARTrKonReturDtSN WHERE KonTransBrgId=:KonTransBrgId and ItemID=:ItemID'
      +' AND KonReturID=:ReturKonId');
       Parameters.ParamByName('ReturKonId').Value:= quSNKonReturID.AsString;
       Parameters.ParamByName('KonTransBrgId').Value:= quSNKonTransBrgID.AsString;
       Parameters.ParamByName('ItemID').Value:= quSNItemID.AsString;
   Open;
  End;
  if quact.FieldByName('jumlah').AsInteger = quDetilQty.Value then
  begin
   quDetil.Last;
   qudetil.Append;
   abort;
  End
  else
  begin
   quSN.Append;
  // quSNSNID.FocusControl;
  end;
end;

procedure TfmARTrKonRetur.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;

  DeleteFromAllItem(quMainKonReturID.Value,quDetilKonTransBrgId.Value,quDetilItemID.Value,
                    quDetilWareHouseID.Value,0,9);
  InsertToAllItem(quMainKonReturID.Value,quDetilKonTransBrgId.Value,quMainTransDate.value,quDetilWareHouseID.Value,
                  quDetilItemID.Value,9,abs(quDetilQty.Value),0,'',1,'AR',quMainLCustName.Value);


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

procedure TfmARTrKonRetur.quSNNewRecord(DataSet: TDataSet);
begin
  inherited;
  quSNSNID.FocusControl;
end;

procedure TfmARTrKonRetur.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllItem(quMainKonReturID.Value,quDetilKonTransBrgId.Value,quDetilItemID.Value,
                    quDetilWareHouseID.Value,0,9);
end;

procedure TfmARTrKonRetur.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllItem(quMainKonReturID.Value,9)
end;

procedure TfmARTrKonRetur.bbFindClick(Sender: TObject);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Retur Konsinyasi Penjualan ';
       SQLString := ' SELECT A.KonReturID as Nota_Retur_Konsinyasi, '
                   +' Convert(varchar(10),A.TransDate,103) as Tanggal, '
                   +' A.CustId as Kode_Pelanggan,B.CustName as Pelangggan, '
                   +' A.Note as Keterangan '
                   +' FROM ARTrKonReturHd A '
                   +' INNER JOIN ARMsCustomer B '
                   +' ON A.CustID=B.CustID '
                   +' WHERE '+FSQLWhere
                   +' ORDER BY A.KonReturID ';
       if ShowModal = MrOK then
       begin
         qumain.Locate('KonReturID',Res[0],[]);
       end;
   finally
      free;
   end;
end;

procedure TfmARTrKonRetur.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilQty.Value := 1;
  quDetilItemID.FocusControl;
end;

procedure TfmARTrKonRetur.dxDBGrid2SNIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Serial Number ';
       SQLString :=   'SELECT SNID as Serial_Number, A.KonTransBrgID as Nota_Transfer, '
                     +'CONVERT(VARCHAR(10),B.Transdate,103) as Tanggal_Kirim '
                     +'FROM ARTrKonTransBrgDtSN A INNER JOIN ARTrKonTransBrgHd B ON A.KonTransBrgID=B.KonTransBrgID '
                     +'WHERE A.ItemID='''+quDetilItemID.AsString+''' AND A.KonTransBrgID='''+quDetilKonTransBrgId.AsString+''' '
                     +'AND A.SNID NOT IN (SELECT SNID FROM ARTrKonInvPelDtSN WHERE ItemID='''+quDetilItemID.AsString+''') '
                     +'AND A.SNID NOT IN (SELECT SNID FROM ARTrKonReturDtSN WHERE ItemID='''+quDetilItemID.AsString+''' '
                     +'AND KonTransBrgID='''+quDetilKonTransBrgId.AsString+''' ) '
                     +'ORDER BY A.SNID ';
       if ShowModal = MrOK then
       begin
          if quSN.State = dsBrowse then quSN.Edit;
             quSNSNID.Value :=Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrKonRetur.quSNBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT SNID FROM APTrPurchaseDtSN WHERE ItemID='''+quDetilItemID.AsString+''' '
       +'AND SNID='''+quSNSNID.AsString+''' ');
    Open;
    if quAct.FieldByName('SNID').AsString <> '' then
    begin
     Close;Clear;
     add(' Update APTrPurchaseDtSN SET FgJual=''Y'' WHERE ItemID='''+quDetilItemID.AsString+''' '
        +' AND SNID='''+quSNSNID.AsString+''' ');
     ExecSQL;
    end
    else
    begin
      Close;Clear;
      add(' Update APTrKonsinyasiDtSn SET FgJual=''Y'' WHERE ItemID='''+quDetilItemID.AsString+''' '
         +' AND SNID='''+quSNSNID.AsString+''' ');
      ExecSQL;
    end;
  end;
end;

end.
