unit ARTrInvService;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv41, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL,
  dxDBCtrl, dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls,
  Buttons, dxCore, dxContainer, dxDBTLCl, dxGrClms, dxDBELib, dxEditor,
  DBCtrls , DateUtils;

type
  TfmARTrInvService = class(TfmStdLv41)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label20: TLabel;
    quMainInvServiceID: TStringField;
    quMainServiceId: TStringField;
    quMainTeknisiID: TStringField;
    quMainJatuhTempo: TBCDField;
    quMainNote: TStringField;
    quMainTTLSV: TBCDField;
    Label13: TLabel;
    quMainTransdate: TDateTimeField;
    DBText5: TDBText;
    quTeknisi: TADOQuery;
    quService: TADOQuery;
    quMainLTeknisiName: TStringField;
    quMainLTglService: TStringField;
    DBText1: TDBText;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainServiceFee: TBCDField;
    DBText2: TDBText;
    quMainTglJtTempo: TDateTimeField;
    quLokasi: TADOQuery;
    quItem: TADOQuery;
    dbgListInvServiceID: TdxDBGridMaskColumn;
    dbgListServiceId: TdxDBGridMaskColumn;
    dbgListTeknisiID: TdxDBGridMaskColumn;
    dbgListJatuhTempo: TdxDBGridCurrencyColumn;
    dbgListNote: TdxDBGridMaskColumn;
    dbgListTransdate: TdxDBGridDateColumn;
    dbgListLTeknisiName: TdxDBGridLookupColumn;
    dbgListServiceFee: TdxDBGridCurrencyColumn;
    dbgListTglJtTempo: TdxDBGridColumn;
    Label10: TLabel;
    Label15: TLabel;
    DBText3: TDBText;
    Shape5: TShape;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBText4: TDBText;
    Shape4: TShape;
    Shape3: TShape;
    quTotal: TADOQuery;
    dsTotal: TDataSource;
    dxButton1: TdxButton;
    quDetilServiceID: TStringField;
    quDetilItemID: TStringField;
    quDetilQty: TBCDField;
    quDetilWarehouseID: TStringField;
    quDetilPrice: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilLitemName: TStringField;
    quDetilCTotal: TCurrencyField;
    Label8: TLabel;
    Label9: TLabel;
    quServiceItem: TADOQuery;
    dsServiceItem: TDataSource;
    quServiceItemServiceID: TStringField;
    quServiceItemItemID: TStringField;
    quServiceItemQty: TBCDField;
    quServiceItemUpdDate: TDateTimeField;
    quServiceItemUpdUser: TStringField;
    quServiceItemNote: TStringField;
    quProduct: TADOQuery;
    quGroup: TADOQuery;
    quServiceItemLProduk: TStringField;
    quServiceItemLGroup: TStringField;
    quServiceItemLProdukName: TStringField;
    quServiceItemLGroupName: TStringField;
    quServiceItemLItemName: TStringField;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dbg: TdxDBGrid;
    dbgItemID: TdxDBGridButtonColumn;
    dbgItemName: TdxDBGridColumn;
    dbgQty: TdxDBGridColumn;
    dbgProduct: TdxDBGridColumn;
    dbgGroup: TdxDBGridColumn;
    dbgPenjualan: TdxDBGrid;
    dbgPenjualanItemID: TdxDBGridButtonColumn;
    dbgPenjualanItemName: TdxDBGridColumn;
    dbgPenjualanWarehouseID: TdxDBGridButtonColumn;
    dbgPenjualanQty: TdxDBGridColumn;
    dbgPenjualanHarga: TdxDBGridColumn;
    dbgPenjualanTotal: TdxDBGridColumn;
    quMainLAddress: TStringField;
    quMainLNama: TStringField;
    quMainFgCetak: TStringField;
    Label11: TLabel;
    DBText7: TDBText;
    quMainCetak: TStringField;
    Label12: TLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    txtPelanggan: TdxDBButtonEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    quMainSOID: TStringField;
    quDetilNote: TStringField;
    dbgPenjualanNote: TdxDBGridColumn;
    quTotalInvServiceId: TStringField;
    quTotalSubtotal: TBCDField;
    quTotalTotal: TBCDField;
    procedure FormCreate(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure txtPelangganButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure dbgPenjualanItemIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dsDetilStateChange(Sender: TObject);
    procedure dbgPenjualanWarehouseIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure dxButton1Click(Sender: TObject);
    procedure dsServiceItemStateChange(Sender: TObject);
    procedure dbgEnter(Sender: TObject);
    procedure quMainBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
    Procedure UpdateTTlH;
    procedure CeKStatus;
  public
    { Public declarations }
  end;

var
  fmARTrInvService: TfmARTrInvService;

implementation

uses UnitGeneral, MyUnit, ConMain, Search, Allitem, StdLv1,
  ARQRRptTrInvService, ARQRRptInvService, ARQRRptStruck2, StdLv0;

{$R *.dfm}

procedure TfmARTrInvService.CeKStatus;
Begin
  with quAct, SQL do
     begin
        Close; Clear;
        Add(' SELECT top 1 PiutInvServiceID FROM ARTrPiutInvServiceDt '
           +' WHERE InvServiceID='''+quMainInvServiceID.Value+'''');
        Open;
        if not IsEmpty then
        begin
           MsgInfo('Sudah ada Invoice Service ['+quAct.fieldbyname('PiutInvServiceID').AsString+'], tidak bisa edit/Delete lagi');
           Abort;
        end;
     end;
End;

Procedure TfmARTrInvService.UpdateTTlH;
Var TotalPS : Currency;
Begin
 with quAct,SQL do
 begin
    close;clear;
    Add('SELECT CASE WHEN SUM(Qty*Price) <> 0 THEN SUM(Qty*Price) ELSE 0 END as TotalPS '
       +'FROM ArTrServiceDtPS WHERE ServiceID='''+quMainServiceId.AsString+''' ');
    open;
 end;
 TotalPS := quAct.FieldByName('TotalPS').AsCurrency;
 With quAct,sql do
 Begin
   Close;Clear;
   add(' Update ARTrInvServiceHd SET TTLSV='''+Formatcurr('0.00',quMainServiceFee.AsCurrency+TotalPS)+''''
      +' WHERE InvServiceID='''+quMainInvServiceID.AsString+'''');
   ExecSQL;
 End;
  //ShowMessage(quTotalPerValutaTotal.AsString);
End;
procedure TfmARTrInvService.FormCreate(Sender: TObject);
begin
  inherited;
   FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), InvServiceID';
   FFieldTgl   := 'TransDate';
   //SettingDxGrid(dbgPenjualan);
end;

procedure TfmARTrInvService.quMainBeforePost(DataSet: TDataSet);
var ST : string; i : Integer;
begin
  inherited;

  if TRIM(quMainTransdate.AsString)='' Then
  Begin
    MsgInfo('Tanggal tidak boleh kosong');
    quMainTransdate.FocusControl;
    Abort;
  End;

  if quMainServiceId.Value = '' then
  Begin
    MsgInfo('Nota Service tidak boleh kosong');
    quMainServiceId.FocusControl;
    Abort;
  End;

  if quMainLTglService.Value = '' then
  Begin
    MsgInfo('Nota Service tidak ada');
    quMainServiceId.FocusControl;
    Abort;
  End;

  if qumain.State=dsinsert then
  Begin
      With quact,sql do
      Begin
        Close;Clear;
        Add('Select * FROM ARTrInvServiceHd WHERE ServiceID='''+quMainServiceId.Value+'''');
        Open;
        if not IsEmpty then
        Begin
          MsgInfo('Kode Service ini sudah ada Invoicenya');
          quMainServiceId.FocusControl;
          Abort;
        End;
      End;
  End;

  if quMainLTglService.Value = '' then
  Begin
    MsgInfo('Nota Service tidak ada');
    quMainServiceId.FocusControl;
    Abort;
  End;

  i:= Length(dxDBEdit4.Text);
  if i < 5 then
  begin
    ShowMessage('No. Sales Order yang anda masukan kurang dari 5 char / digit');
    quMainSOID.FocusControl;
    Abort;
  end;

   If quMain.State = dsInsert then
   begin
      With quAct,Sql do
      begin
         Close;Clear;
         add('Select SOID FROM ARTrInvServiceHd WHERE SOID='''+quMainSOID.Value+'''');
         Open;
         If Not IsEmpty then
         begin
           MsgInfo('No Sales Order ini sudah dipakai');
           quMainSOID.FocusControl;
           Abort;
         end;
      End;
   end;

  if quMainTeknisiID.Value = '' then
  Begin
    MsgInfo('Teknisi belum diisi');
    quMainTeknisiID.FocusControl;
    Abort;
  End;

  if TRIM(quMainLTeknisiName.Value) = '' then
  Begin
    MsgInfo('Teknisi tidak terdaftar');
    quMainTeknisiID.FocusControl;
    Abort;
  End;

  if TRIM(quMainJatuhTempo.AsString)= '' then
  Begin
    MsgInfo('Jatuh tempo tidak tidak boleh kosong');
    quMainJatuhTempo.FocusControl;
    Abort;
  End;

  if quMainJatuhTempo.AsInteger < 0 then
  Begin
    MsgInfo('jatuh tempo tidak boleh lebih kecil dari 0');
    quMainJatuhTempo.FocusControl;
    Abort;
  End;

  {If qumain.State= dsinsert then
  Begin
    With quAct,Sql do
    Begin
       Close;Clear;
       add('SELECT SaleID from ARTrPenjualanHd WHERE SaleID=:SaleID');
       Parameters.ParamByName('SaleID').Value:= quMainSaleID.AsString;
       Open;
       If quAct.RecordCount <> 0 then
       Begin
          MsgInfo('Nota sudah dipakai di transaksi pembelian lain');
          quMainSaleID.FocusControl;
          Abort;
       End;
    End;
  End;  }

  if qumain.State=dsinsert then
  Begin
    ST := 'IS/'+PT+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
    quMainInvServiceID.Value  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrInvServiceHd', 'InvServiceID', ST, '0') + 1);
  End;

  quMainUpdUser.Value := dmMain.UserId;
  quMainUpddate.Value := GetServerDateTime;
end;

procedure TfmARTrInvService.dxDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmARTrInvService.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Cari Teknisi';
       SQLString := 'SELECT SalesID as Kode_Teknisi, SalesName as Nama_Teknisi'
                   +',Address, Phone, HP FROM ARMsSales WHERE '
                   +'FgActive <> 0 ORDER BY SalesID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainTeknisiID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrInvService.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransdate.AsDateTime:= date;
  quMainJatuhTempo.AsInteger:= 0;
  quMainTransdate.FocusControl;
  quMainServiceFee.AsFloat := 0;
  quMainFgCetak.AsString :='B';
end;

procedure TfmARTrInvService.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBDateEdit1,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit1,qumain.State<>dsinsert);
  SetReadOnly(dxDBEdit4,qumain.State<>dsinsert);
  SetReadOnly(txtPelanggan,qumain.State<>dsinsert);
end;

procedure TfmARTrInvService.txtPelangganButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Cari Nota Service';
       SQLString := ' SELECT Distinct ServiceID as Nota_Service, Convert(varchar(10),TransDate,103) as Tgl,'
                   +' A.CustId,B.CustName, A.Nama as Atas_Nama FROM ARTrServiceHd A'
                   +' INNER JOIN ArMsCustomer B ON A.CustId=B.CustId'
                   +' WHERE ServiceID NOT IN (Select ServiceID FROM ARTrInvServiceHd)'
                   +' AND FlagService <> ''B'' ORDER BY ServiceID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainServiceId.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrInvService.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  quMainTglJtTempo.AsDateTime := IncDay(quMainTransDate.AsDateTime, quMainJatuhTempo.AsInteger);
end;

procedure TfmARTrInvService.dbgPenjualanItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Cari Barang';
       SQLString := 'SELECT ItemId as Kode_Barang, Itemname as Nama_Barang, UserPrice, DealerPrice '
                    +' FROM INMsItem ORDER BY ItemID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilItemID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrInvService.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgPenjualanItemID,TRUE);
  SetReadOnly(dbgPenjualanItemName,TRUE);
  SetReadOnly(dbgPenjualanTotal,TRUE);
  SetReadOnly(dbgPenjualanWarehouseID,TRUE);
  SetReadOnly(dbgPenjualanQty,TRUE);
  SetReadOnly(dbgPenjualanHarga,TRUE);
  SetReadOnly(dbgPenjualanHarga,TRUE);
  SetReadOnly(dbgPenjualanNote,TRUE);  
end;

procedure TfmARTrInvService.dbgPenjualanWarehouseIDButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Cari Gudang';
       SQLString := 'SELECT WarehouseID as Kode_Gudang, Warehousename as Nama_Gudang'
                    +' FROM INMsWarehouse ORDER BY WarehouseID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilWarehouseID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrInvService.FormShow(Sender: TObject);
begin
  inherited;
  quTotal.open;
  quServiceItem.Open;
  quServiceItemQty.DisplayFormat := sDisFormat1;
  quDetilPrice.DisplayFormat :=  sDisFormat;
  quDetilPrice.EditFormat :=  sEditformat;
  quDetilQty.DisplayFormat :=  sDisFormat1;
  quDetilQty.EditFormat :=  sEditformat;
  quTotalSubTotal.DisplayFormat:=  sDisFormat;
  quTotalTotal.DisplayFormat :=  sDisFormat;
  quMainServiceFee.DisplayFormat:=  sDisFormat;
  quMainServiceFee.EditFormat:=  sEditformat;
  quDetilCTotal.DisplayFormat :=  sDisFormat;
end;

procedure TfmARTrInvService.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();  
  UpdateTTlH;
  With quAct,SQL do
  Begin
    Close;Clear;
    add(' Select A.ServiceId, A.Transdate, A.WareHouseId, B.ItemId, B.Qty ,A.CustId,C.CustName '
       +' FROM ARTrServiceHd A INNER JOIN ARTrServiceDt B ON A.ServiceID=B.ServiceId'
       +' INNER JOIN ARMsCustomer C ON A.CustId=C.CustId'
       +' WHERE A.ServiceId='''+quMainServiceId.Value+'''');
    Open;
    if not IsEmpty then
    Begin
      DeleteFromAllItem(quMainInvServiceId.Value,quAct.Fieldbyname('ItemId').AsString,60);
      InsertToAllItem(quMainInvServiceID.Value,quMainTransdate.value,quAct.Fieldbyname('WareHouseId').AsString,
                  quAct.Fieldbyname('ItemId').Value,60,abs(quAct.Fieldbyname('Qty').Value),0,'AR',quAct.Fieldbyname('CustName').Value);
    End;
  End;
//buat masukin ke table AllSale
    with quAct,SQL do
    begin
      Close;Clear;
      Add('DELETE FROM AllSale WHERE FgTrans=5 AND SourceNo='''+quMainInvServiceID.AsString+''' '
         +'AND ItemID='''+quServiceItemItemID.AsString+''' ');
      ExecSQL;
    end;

    with quAct,SQL do
    begin
      Close;Clear;
      Add('INSERT AllSale (SourceNo,Transdate,FgTrans,ItemID,Qty,CurrID,Price,Rate,CustID,SalesID,SOID)'
         +'VALUES (:SourceNo,:Transdate,:FgTrans,:ItemID,:Qty,:CurrID,:Price,:Rate,:CustID,:SalesID,:SOID)');
      with Parameters do
      begin
         ParamByName('SourceNo').Value := quMainInvServiceID.AsString;
         ParamByName('TransDate').Value := quMainTransDate.AsDateTime;
         ParamByName('FgTrans').Value := 5;
         ParamByName('ItemID').Value := quServiceItemItemID.AsString;
         ParamByName('Qty').Value := quServiceItemQty.AsInteger;
         ParamByName('CurrID').Value := 'IDR';
         ParamByName('Price').Value  := quTotalInvServiceId.AsInteger;
         ParamByName('Rate').Value := 1;
         ParamByName('CustID').Value := quMainLNama.AsString;
         ParamByName('SalesID').Value := quMainTeknisiID.AsString;
         ParamByName('SOID').Value := quMainSOID.AsString;
      end;
      ExecSQL;
    end;
end;

procedure TfmARTrInvService.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Transaksi Invoice Service';
       SQLString := ' SELECT A.InvServiceID as Nota,Convert(varchar(10),TransDate,103) as Tanggal,'
                   +' A.ServiceiD as Nota_Service, A.TeknisiID as Kode_Teknisi, B.SalesName as Nama_Teknisi,A.SOID as SO, A.Note'
                   +' FROM ARTrInvServiceHd A INNER JOIN ARMsSales B ON A.TeknisiId = B.SalesID'
                   +' WHERE '+FSQLWhere
                   +' ORDER BY InvServiceID ';
       if ShowModal = MrOK then
       begin
         qumain.Locate('InvServiceID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARTrInvService.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  quDetilCTotal.Value := quDetilPrice.Value*quDetilQty.Value;
end;

procedure TfmARTrInvService.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
   CeKStatus;
   DeleteFromAllItem(quMainInvServiceId.Value,60);
end;

procedure TfmARTrInvService.dxButton1Click(Sender: TObject);
var stotal : Currency;
begin
  inherited;
  with quAct,SQL do
  begin
     Close;Clear;
     Add(' Select isnull(TTLSV,0) as TTLSV FROM ARTrInvServiceHd Where InvServiceID='''+quMainInvServiceID.AsString+'''');
     Open;
  end;
  stotal := quAct.FieldByName('TTLSV').AsCurrency;

   with TfmQRRptInvService.Create(Self) do
//   with TfmARRptStruck2.Create(Self) do
     try
       qlbTerbilang.Caption :=  '* Terbilang '+ convert(FormatFloat(sEditFormat, stotal))+'rupiah';
       if quMainNote.AsString <> '' then
          qlbKet.Caption := '* '+quMainNote.AsString
       else
          qlbKet.Caption := '';
       with qu001,SQL do
       Begin
         Close;Clear;
         add(' Select A.ServiceId,InvServiceId,A.ServiceFee,TTLSV,'
            +' Convert(varchar(10),A.Transdate,103) as Tgl,B.CustId,C.CustName+'' (''+B.Nama+'')'' as CustName,'
            +' B.Address, C.Address as Address1, B.Barang +'' S/N: ''+ B.SeriNumber as barang'
            +' FROM ARTrInvServiceHd A INNER JOIN ARTrServiceHd B ON A.ServiceId=B.ServiceId'
            +' INNER JOIN ARMsCustomer C ON B.CustId=C.CustId'
            +' WHERE A.InvServiceId='''+quMainInvServiceID.Value+'''');
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

       With qu003,sql do
       Begin
         Close;Clear;
         add(' Select A.ItemId,B.ItemName,A.Note,B.UOMId,C.Productdesc, Qty,A.Price FROM ARTrServiceDtPS A'
            +' INNER JOIN INMsItem B ON A.Itemid=B.Itemid'
            +' INNER JOIN INMsProduct C ON B.ProductId=C.ProductId WHERE A.ServiceId=:ServiceId'
            +' ORDER BY A.ItemId');
         Open;
         if IsEmpty then
         begin
            GroupHeaderBand2.Enabled := False;
            QRSubDetail1.Enabled := False;
            QRLabel12.Caption := '';
            QRExpr1.Enabled := False;
            laGT.Caption := quMainServiceFee.AsString;
         end else
            laGT.Caption := quTotalTotal.AsString;
       End;
{
       if quMainLAddress.AsString <> '' then
          QRDBText10.Enabled := False;
}


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
        Add('Update ArTrInvServiceHd set FgCetak=''S'' where InvServiceID=:InvServiceID');
        with Parameters do
        begin
          ParamByName('InvServiceID').Value  := quMainInvServiceID.AsString;
        end;
        ExecSQL;
     end;
     quMain.Requery();
     quMain.Last;
end;

procedure TfmARTrInvService.dsServiceItemStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgItemID,TRUE);
  SetReadOnly(dbgItemName,TRUE);
  SetReadOnly(dbgQty,TRUE);
  SetReadOnly(dbgProduct,TRUE);
  SetReadOnly(dbgGroup,TRUE);
end;

procedure TfmARTrInvService.dbgEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
 
end;

procedure TfmARTrInvService.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
end;

end.
