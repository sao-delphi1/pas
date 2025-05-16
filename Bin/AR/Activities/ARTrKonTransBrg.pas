unit ARTrKonTransBrg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxDBTLCl, dxGrClms, dxEditor, dxDBELib, DBCtrls,Printers;

type
  TfmARTrKonTransBrg = class(TfmStdLv4)
    DBText1: TDBText;
    DBText2: TDBText;
    quGudang: TADOQuery;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    dbgListTransferID: TdxDBGridMaskColumn;
    dbgListTransferDate: TdxDBGridDateColumn;
    dbgListWareHouseSrc: TdxDBGridMaskColumn;
    dbgListWareHouseDest: TdxDBGridMaskColumn;
    dbgListNote: TdxDBGridMaskColumn;
    dbgListLWareHouseDest: TdxDBGridLookupColumn;
    dbgListLwareHouseSrc: TdxDBGridLookupColumn;
    quItem: TADOQuery;
    quMainKonTransBrgID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainCustID: TStringField;
    quMainWareHouseID: TStringField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quCustomer: TADOQuery;
    quMainLuCustomer: TStringField;
    quMainLuLocation: TStringField;
    quDetilKonTransBrgID: TStringField;
    quDetilItemID: TStringField;
    quDetilQty: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilLuProduct: TStringField;
    quDetilLuItemName: TStringField;
    quDetilLuGroup: TStringField;
    quSN: TADOQuery;
    dsSN: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    dbg: TdxDBGrid;
    dbgItemID: TdxDBGridButtonColumn;
    dbgItemName: TdxDBGridColumn;
    dbgQty: TdxDBGridColumn;
    dbgProduct: TdxDBGridColumn;
    dbgGroup: TdxDBGridColumn;
    Label13: TLabel;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2SaleId: TdxDBGridMaskColumn;
    dxDBGrid2ItemID: TdxDBGridMaskColumn;
    dxDBGrid2Price: TdxDBGridCurrencyColumn;
    dxDBGrid2WareHouseId: TdxDBGridMaskColumn;
    dxDBGrid2UpdDate: TdxDBGridDateColumn;
    dxDBGrid2UpdUser: TdxDBGridMaskColumn;
    Label6: TLabel;
    quSNKonTransBrgID: TStringField;
    quSNItemID: TStringField;
    quSNUpdDate: TDateTimeField;
    quSNUpdUser: TStringField;
    quSNSNID: TStringField;
    dxDBGrid2ReturnID: TdxDBGridColumn;
    quAct1: TADOQuery;
    quAct2: TADOQuery;
    quAct3: TADOQuery;
    quTemp: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    DateTimeField1: TDateTimeField;
    StringField10: TStringField;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    DBText3: TDBText;
    Label11: TLabel;
    DBText4: TDBText;
    dxDBGrid2SNID: TdxDBGridButtonColumn;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    dxButton6: TdxButton;
    dxButton7: TdxButton;
    dxButton8: TdxButton;
    dxButton9: TdxButton;
    bbCariSN: TdxButton;
    dxButton1: TdxButton;
    quSNPurchaseID: TStringField;
    quSNModal: TBCDField;
    quSNFgSN: TStringField;
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
    procedure quSNBeforePost(DataSet: TDataSet);
    procedure dsSNStateChange(Sender: TObject);
    procedure quSNBeforeInsert(DataSet: TDataSet);
    procedure quSNAfterPost(DataSet: TDataSet);
    procedure quSNNewRecord(DataSet: TDataSet);
    procedure dxButton1Click(Sender: TObject);
    procedure quMainBeforeEdit(DataSet: TDataSet);
    procedure quSNBeforeDelete(DataSet: TDataSet);
    procedure dxDBGrid2SNIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure bbCariSNClick(Sender: TObject);
    procedure TmbBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure dxButton6Click(Sender: TObject);
    procedure dxButton7Click(Sender: TObject);
    procedure dxButton8Click(Sender: TObject);
    procedure dxButton9Click(Sender: TObject);
    procedure quDetilBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CeKStatus;
    procedure CeKStatusDetil;
    procedure CeKretur;
    Procedure UpdateSNHeader;
    Procedure UpdateSNDetil;
  public
    { Public declarations }
  end;

var
  fmARTrKonTransBrg: TfmARTrKonTransBrg;

implementation

uses StdLv2, StdLv1, StdLv0, ConMain, Search, UnitGeneral, MyUnit, StdLv3,
  ARQRRptSegel, ARQRRptSuratJalan, Allitem;

{$R *.dfm}
Procedure TfmARTrKonTransBrg.UpdateSNHeader;
Begin //ubah FgJual serialnumber pada saat hapus detil
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE APTrPurchaseDtSN SET FgJual=''T'' WHERE SNID IN( '
       +'SELECT SNID FROM ARTrKonTransBrgDtSN  WHERE KonTransBrgID='''+quMainKonTransBrgID.AsString+''') ');
    Add('UPDATE APTrKonsinyasiDtSN SET FgJual=''T'' WHERE SNID IN( '
       +'SELECT SNID FROM ARTrKonTransBrgDtSN  WHERE KonTransBrgID='''+quMainKonTransBrgID.AsString+''') ');
    ExecSQL;
  end;
End;

Procedure TfmARTrKonTransBrg.UpdateSNDetil;
Begin //ubah FgJual serialnumber pada saat hapus detil
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE APTrPurchaseDtSN SET FgJual=''T'' WHERE SNID IN( '
       +'SELECT SNID FROM ARTrPenjualanSN WHERE SaleID='''+quMainKonTransBrgID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' )');
    Add('UPDATE APTrKonsinyasiDtSN SET FgJual=''T'' WHERE SNID IN( '
       +'SELECT SNID FROM ARTrPenjualanSN WHERE SaleID='''+quMainKonTransBrgID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' )');
    ExecSQL;
  end;
End;

procedure TfmARTrKonTransBrg.CeKStatus;
Begin
  with quAct, SQL do
     begin
        Close; Clear;
        Add(' SELECT TOP 1 KontransBrgID FROM ARtrpenjualanHD  '
           +' WHERE KonTransBrgID='''+quMainKonTransBrgID.Value+'''');
        Open;
        if not IsEmpty then
        begin
           MsgInfo('Sudah ada Invoice Konsinyasi ['+quAct.FieldByName('SaleID').AsString+'], tidak bisa edit/Delete lagi');
           Abort;
        end;
     end;
End;

procedure TfmARTrKonTransBrg.CekStatusDetil;
Begin
  {with quAct, SQL do
     begin
        Close; Clear;
        Add('SELECT TOP 1 KonInvPelID FROM ARTrKonInvPelDt '
           +' WHERE KonTransBrgID='''+quMainKonTransBrgID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' ');
        Open;
        if not IsEmpty then
        begin
           MsgInfo('Sudah ada Invoice Konsinyasi ['+quAct.FieldByName('KonInvPelID').AsString+'], tidak bisa edit/Delete lagi');
           Abort;
        end;
     end; }
End;

procedure TfmARTrKonTransBrg.CeKretur;
Begin
 { with quAct, SQL do
     begin
        Close; Clear;
        Add(' SELECT top 1 KonReturID FROM ARTrKonReturDt  '
           +' WHERE KonTransBrgID='''+quMainKonTransBrgID.Value+'''');
        Open;
        if not IsEmpty then
        begin
           MsgInfo('Sudah ditarik dengan nota retur ['+quAct.FieldByName('KonReturID').AsString+'], tidak bisa edit/Delete lagi');
           Abort;
        end;
     end; }
End;

procedure TfmARTrKonTransBrg.FormCreate(Sender: TObject);
begin
  inherited;
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), KonTransBrgID';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dbg);
  SettingDxGrid(dxDBGrid2);
end;

procedure TfmARTrKonTransBrg.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;
  quDetil.Active := TRUE;
  quSN.Active := TRUE;
  SettingDxGrid(dbg);
  SettingDxGrid(dxDBGrid2);
  quDetilQty.DisplayFormat:=sDisFormat1;
  quDetilQty.EditFormat := sEditformat;
end;

procedure TfmARTrKonTransBrg.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBDateEdit1,qumain.state <>dsInsert);
  SetReadOnly(dxDBButtonEdit1,qumain.state <>dsInsert);
  SetReadOnly(dxDBButtonEdit2,qumain.state <>dsInsert);
end;

procedure TfmARTrKonTransBrg.dxDBButtonEdit1ButtonClick(Sender: TObject;
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

procedure TfmARTrKonTransBrg.dxDBButtonEdit2ButtonClick(Sender: TObject;
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

procedure TfmARTrKonTransBrg.dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARTrKonTransBrg.pcMainChanging(Sender: TObject;
  NewPage: TdxTabSheet; var AllowChange: Boolean);
begin
  inherited;
  AllowChange := FActDS.State=dsBrowse;
end;

procedure TfmARTrKonTransBrg.quMainBeforePost(DataSet: TDataSet);
var
  ST: String;
begin
  inherited;
  If Trim(quMainTransDate.AsString)='' then
  Begin
    MsgInfo('Tanggal Konsinyasi tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  If Trim(quMainWareHouseID.Value)='' then
  Begin
    MsgInfo('Dari tidak boleh kosong');
    quMainWareHouseID.FocusControl;
    Abort;
  End;

  If Trim(quMainLuLocation.Value)='' then
  Begin
    MsgInfo('Gudang Dari tidak ada dalam Master');
    quMainWareHouseID.FocusControl;
    Abort;
  End;

  If Trim(quMainCustID.Value)='' then
  Begin
    MsgInfo('Ke Pelanggan tidak boleh kosong');
    quMainCustID.FocusControl;
    Abort;
  End;

  If Trim(quMainLuCustomer.Value)='' then
  Begin
    MsgInfo('Ke Pelanggan tidak ada dalam Master');
    quMainCustID.FocusControl;
    Abort;
  End;

 if qumain.State=dsinsert then
  Begin
    ST := 'KJ/'+PT+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
    quMainKonTransBrgID.Value  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrKonTransBrgHd', 'KonTransBrgID', ST, '0') + 1);
  End;

  quMainUpdUser.Value := dmMain.UserId;
  quMainUpddate.Value := GetServerDateTime;
  
end;

procedure TfmARTrKonTransBrg.dbgEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmARTrKonTransBrg.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.Value:=date;
  quMainWareHouseID.Value:=sDGPj;
  quMainTransDate.FocusControl;
end;

procedure TfmARTrKonTransBrg.dbgItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Cari Master Item';
       SQLString := ' SELECT A.ItemName as Nama_Barang, A.ItemID as Kode_Barang,'
                   +' B.GroupDesc as Group_Barang, C.ProductDesc as Product'
                   +' FROM INMsItem A INNER JOIN INMsGroup B ON A.GroupID=B.GroupID '
                   +' INNER JOIN INMsProduct C ON A.ProductID=C.ProductID '
                   +' WHERE A.FgActive=''Y'' ORDER BY A.ItemID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilItemID.Value   := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrKonTransBrg.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quDetilItemID.Value)='' then
  begin
     MsgInfo('Kode Item tidak boleh kosong !');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilLUItemName.Value)='' then
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
        Add(' SELECT Count(*) FROM  ARTrKonTransBrgDt WHERE KonTransBrgId=:KonTransBrgId AND ItemId=:ItemId');
        with Parameters do
        begin
           ParamByName('KonTransBrgId').Value := quMainKonTransBrgID.Value;
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

  if TRIM(quDetilQty.AsString)='' then
  Begin
     MsgInfo('Jumlah barang tidak boleh kosong');
     quDetilQty.FocusControl;
     Abort;
  End;

  if quDetilQty.Value <=0 then
  begin
     MsgInfo('Jumlah Barang Tidak boleh lebih kecil sama dengan 0');
     quDetilQty.FocusControl;
     Abort;
  end;

  quDetilUpdUser.Value := dmMain.UserId;
  quDetilUpdDate.Value := GetServerDateTime;

end;

procedure TfmARTrKonTransBrg.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilQty.Value:=0;
  quDetilItemID.FocusControl;
end;

procedure TfmARTrKonTransBrg.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgItemID,quDetil.State<>dsInsert);
  SetReadOnly(dbgItemName,TRUE);
  SetReadOnly(dbgProduct,TRUE);
  SetReadOnly(dbgGroup,TRUE);
end;

procedure TfmARTrKonTransBrg.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Terima Konsinyasi Barang';
       SQLString := ' SELECT KonTransBrgID as Kode_Konsinyasi_Transfer'
                   +' ,Convert(Varchar(10),Transdate,103) as Tgl_Konsinyasi'
                   +' ,A.CustID as Kode_Pelanggan'
                   +' ,B.CustName as Nama_Pelanggan'
                   +' ,A.WareHouseID as Kode_Gudang'
                   +' ,C.WareHouseName as Nama_Gudang'
                   +' ,A.Note as Keterangan'
                   +' FROM ARTrKonTransBrgHd A INNER JOIN ARMsCustomer B ON A.CustId=B.CustId'
                   +' INNER JOIN INMswareHouse C ON A.WareHouseId=C.WareHouseId'
                   +' WHERE '+FSQLWhere
                   +' ORDER BY KonTransBrgID';
       if ShowModal = MrOK then
       begin
         qumain.Locate('KonTransBrgID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARTrKonTransBrg.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
  CeKretur;
  UpdateSNHeader;
  DeleteFromAllItem(quMainKonTransBrgID.Value,59);
end;

procedure TfmARTrKonTransBrg.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
  CeKretur;
  UpdateSNDetil;;
  DeleteFromAllItem(quMainKonTransBrgID.Value,quDetilItemID.Value,59);
end;

procedure TfmARTrKonTransBrg.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllItem(quMainKonTransBrgID.Value,quDetilItemID.Value,59);
  InsertToAllItem(quMainKonTransBrgID.Value,quMainTransDate.value,quMainWareHouseID.Value,quDetilItemID.Value
                  ,59,abs(qudetilqty.Value),0,'AR',quMainLuCustomer.Value);

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

procedure TfmARTrKonTransBrg.quSNBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(quSNSNID.AsString)='' then
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
       add(' SELECT SNID from ARTrKonTransBrgDtSN WHERE KonTransBrgId=:KonTransBrgId and SNID=:SNID and ItemID=:ItemID ');
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

  if quSN.State = dsInsert then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT K.FgJual,K.SNID FROM (SELECT ItemID,SNID,FgJual FROM APTrPurchaseDtSN '
         +'UNION ALL SELECT ItemID,SNID,FgJual FROM APTrKonsinyasiDtSn) as K '
         +'WHERE K.SNID='''+quSNSNID.AsString+''' AND K.ItemID='''+quDetilItemID.AsString+''' ');
      Open;
    end;
    if quAct.FieldByName('FgJual').AsString = 'Y' then
    begin
      ShowMessage('Serial Number ini sudah pernah dipakai');
      quSNSNID.FocusControl;
      Abort;
    end;
    if quAct.FieldByName('SNID').AsString = '' then
    begin
      ShowMessage('Serial number untuk barang ini tidak pernah masuk');
      quSNSNID.FocusControl;
      Abort;
    end;
  end;

{  if quSN.State = dsInsert then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT SNID,KonReturID FROM ARTrKonReturDtSN WHERE SNID='''+quSNSNID.AsString+''' '
         +'AND ItemID='''+quDetilItemID.AsString+''' ');
      Open;
    end;
    if quAct.RecordCount <> 0 then
    begin
      ShowMessage('Serial Number ini sudah pernah digunakan di Transaksi tarik barang konsinyasi.'+#13
                 +'Dengan no transaksi ['+quAct.Fieldbyname('KonReturID').AsString +'], tidak bisa digunakan lagi.'+#13
                 +'Hanya bisa digunakan di form Transaksi Penjualan');
      quSNSNID.FocusControl;
      Abort;
    end;
  end;
}
  quSNUpdUser.Value := dmMain.UserId;
  quSNUpdDate.Value := GetServerDateTime;
end;

procedure TfmARTrKonTransBrg.dsSNStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid2SNID,quSN.State<>dsinsert);
end;

procedure TfmARTrKonTransBrg.quSNBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
  CeKretur;
  with quAct,SQL do
  begin
   Close;Clear;
   add(' SELECT Count(SNID) as Jumlah from ARTrKonTransBrgDtSN WHERE KonTransBrgId=:KonTransBrgId and ItemID=:ItemID'
      +' ');
    Parameters.ParamByName('KonTransBrgId').Value:= quSNKonTransBrgID.AsString;
    Parameters.ParamByName('ItemID').Value:= quSNItemID.AsString;
   Open;
  End;
  if quAct.FieldByName('jumlah').AsInteger >= quDetilQty.Value then Abort;
end;

procedure TfmARTrKonTransBrg.quSNAfterPost(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
   Close;Clear;
   add(' SELECT SNID FROM APTrPurchaseDtSN WHERE ITEMID='''+quDetilItemID.AsString+''' '
      +' AND SNID='''+quSNSNID.AsString+'''');
   open;
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
  with quAct,SQL do
  begin
   Close;Clear;
   add(' SELECT Count(SNID) as Jumlah from ARTrKonTransBrgDtSN WHERE KonTransBrgId=:KonTransBrgId and ItemID=:ItemID'
      +' ');
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
  end;
end;

procedure TfmARTrKonTransBrg.quSNNewRecord(DataSet: TDataSet);
begin
  inherited;
  quSNSNID.FocusControl;
end;

procedure TfmARTrKonTransBrg.dxButton1Click(Sender: TObject);
var  iPrint : Integer;
begin
  inherited;
  with quAct3,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(Qty),0) as Jumlah,(SELECT COUNT(*) FROM ARTrKonTransBrgDtSN B '
       +'WHERE A.KonTransBrgID=B.KonTransbrgID) as Total FROM ARTrKonTransbrgDt A '
       +'WHERE A.KonTransBrgID='''+quMainKonTransBrgID.AsString+''' GROUP BY A.KonTransBrgID');
    Open;
  end;
  if quAct3.FieldByName('Jumlah').AsInteger <> quAct3.FieldByName('Total').AsInteger then
  begin
    ShowMessage('Terjadi kesalahan dalam prosedur input data. Coba cek SN apakah sudah lengkap');
    Abort;
  end;
  iPrint := Printer.Printers.IndexOf(sDPB);
  with TfmQRRptSuratJalan.Create(Self) do
     try
       MyReport.PrinterSettings.PrinterIndex := iPrint;
       with qu001,SQL do
       Begin
         Close;Clear;
         add(' Select KonTransBrgID,KonTransBrgID as SaleId,Convert(varchar(10),getdate(),103) as Tgl,A.CustId,C.CustName,C.Address '
            +' FROM ARTrKonTransBrgHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId'
            +' WHERE A.KonTransBrgID='''+quMainKonTransBrgID.Value+'''');
         Open;
       End;

       With qu002,SQL do
       Begin
         Close;Clear;
         add(' Select A.ItemId,B.ItemName,B.UOMId,C.Productdesc, Sum(Qty) as Qty FROM ARTrKonTransBrgDt A'
            +' INNER JOIN INMsItem B ON A.Itemid=B.Itemid'
            +' INNER JOIN INMsProduct C ON B.ProductId=C.ProductId WHERE A.KonTransBrgId=:KonTransBrgId'
            +' GROUP BY A.ItemId,B.ItemName,B.UOMId,C.Productdesc');
         Open;
       End;
       if quMainNote.AsString = '' then qlbKet.Caption := '' else
       begin
         qlbKet.Top := 51;
         qlbKet.Caption := '* '+quMainNote.AsString;
       end;

       qlbJatuhTempo.Caption := '';
       qlbTempo.Caption :=  '';
       QRLabel9.Enabled := False;
       QRDBText2.Enabled := False;

       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;

      finally
        free;
     end;
end;

procedure TfmARTrKonTransBrg.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
  CeKretur;
end;

procedure TfmARTrKonTransBrg.quSNBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
  CeKretur;
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
   end
   else
   begin
      Close;Clear;
      add(' Update APTrKonsinyasiDtSn SET FgJual=''T'' WHERE ItemID='''+quDetilItemID.AsString+''' '
         +' AND SNID='''+quSNSNID.AsString+''' ');
      ExecSQL;
   end;
  end;  
end;

procedure TfmARTrKonTransBrg.dxDBGrid2SNIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Serial Number ';
       SQLString :=   ' SELECT K.SNID as Serial_Number,K.PurchaseId as Nota_Pembelian, '
                     +' Convert(varchar(10),K.TransDate,103) as Tanggal_Nota, '
                     +' K.SuppId as Kode_Supplier, K.SuppName as Nama_Supplier, '
                     +' K.ItemId as Kode_Barang , K.ItemName as Nama_Barang,'
                     +'CASE WHEN K.CurrID=''IDR'' THEN K.Price ELSE K.Price*K.Rate END as Modal,K.FgSN  FROM '
                     +' (SELECT A.SNID, C.PurchaseId, C.TransDate, C.SuppId, D.SuppName, '
                     +' B.ItemId, F.ItemName, A.FgJual,A.Price,C.CurrID,C.Rate,A.FgSN FROM APTrPurchaseDtSN A '
                     +' INNER JOIN APTrPurchasedt B ON A.PurchaseID=B.PurchaseID AND A.ItemID=B.ItemID '
                     +' AND A.WareHouseID=B.WareHouseID AND A.Price=B.Price AND A.SuppId=B.SuppId '
                     +' INNER JOIN APTrPurchaseHd C ON B.PurchaseId=C.PurchaseId and B.SuppId=C.SuppId'
                     +' INNER JOIN APMsSupplier D ON C.SuppID = D.SuppID '
                     +' INNER JOIN INMsItem F ON F.ItemId=B.ItemId '
                     +' UNION ALL SELECT A.SNID, C.KonsinyasiID, C.Transdate, C.SuppID, D.SuppName, '
                     +' B.ItemID, F.ItemName, A.FgJual,B.Price,B.CurrID,C.Rate,A.FgSN FROM APTrKonsinyasiDtSn A '
                     +' INNER JOIN APTrKonsinyasiDt B ON A.KonsinyasiID=B.KonsinyasiID AND A.ItemID=B.ItemID '
                     +' INNER JOIN APTrKonsinyasiHd C ON B.KonsinyasiID=C.KonsinyasiID '
                     +' INNER JOIN APMsSupplier D ON C.SuppID=D.SuppID '
                     +' INNER JOIN INMsItem F ON F.ItemID=B.ItemID) as K '
                     +' WHERE K.ItemID='''+quDetilItemID.AsString+''' AND K.FgJual=''T'' '
                     +' ORDER BY K.SNID ';
       if ShowModal = MrOK then
       begin
          if quSN.State = dsBrowse then quSN.Edit;
             quSNSNID.Value :=Res[0];
             quSNPurchaseID.AsString := Res[1];
             quSNModal.Value := StrToCurr(Res[7]);
             quSNFgSN.Value := Res[8];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrKonTransBrg.bbCariSNClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := ' Serial Number ';
     SQLString :=   ' SELECT SNID as Serial_Number,C.KonTransBrgID as Nota_Konsinyasi, '
                   +' Convert(varchar(10),C.TransDate,103) as Tanggal_Nota, '
                   +' C.CustId as Kode_Pelanggan, '
                   +' D.CustName as Nama_Pelanggan,'
                   +' B.ItemId as Kode_Barang ,'
                   +' F.ItemName as Nama_Barang '
                   +' FROM ARTrKonTransBrgDtSN A '
                   +' INNER JOIN ARTrKonTransBrgDt B ON A.KonTransBrgID=B.KonTransBrgID AND A.ItemID=B.ItemID '
                   +' INNER JOIN ARTrKonTransBrgHd C ON B.KonTransBrgID=C.KonTransBrgID '
                   +' INNER JOIN ARMsCustomer D ON C.CustID = D.CustID '
                   +' INNER JOIN INMsItem F ON F.ItemId=B.ItemId '
                   +' ORDER BY SNID ';
     if ShowModal = MrOK then
     begin
       quMain.Locate('KonTransBrgID',Res[1],[]);
     end;
  finally
     free;
  end;
end;

procedure TfmARTrKonTransBrg.TmbBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmARTrKonTransBrg.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmARTrKonTransBrg.bbSimpanDetilClick(Sender: TObject);
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
  end;end;

procedure TfmARTrKonTransBrg.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmARTrKonTransBrg.dxButton6Click(Sender: TObject);
begin
  inherited;
  quSN.Append;
end;

procedure TfmARTrKonTransBrg.dxButton7Click(Sender: TObject);
begin
  inherited;
  if (dsSN <> nil) and (dsSN.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsSN.DataSet.Delete;
end;

procedure TfmARTrKonTransBrg.dxButton8Click(Sender: TObject);
begin
  inherited;
  if Self.quSN.State = dsInsert then
  begin
   Self.quSN.Edit;
   Self.quSN.Post;
   Self.quSN.Requery();
  end;
  if Self.quSN.State = dsEdit then
  begin
   quSN.Post;
  end;
end;

procedure TfmARTrKonTransBrg.dxButton9Click(Sender: TObject);
begin
  inherited;
  quSN.Cancel;
end;

procedure TfmARTrKonTransBrg.quDetilBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CeKStatusDetil;
  CeKretur;
end;

end.
