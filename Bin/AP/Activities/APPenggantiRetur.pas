unit APPenggantiRetur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxEditor, dxDBELib, DBCtrls, dxDBTLCl, dxGrClms,
  Mask, dxDBEdtr;

type
  TfmAPPenggantiRetur = class(TfmStdLv4)
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
    quMainTransDate: TDateTimeField;
    quMainSuppID: TStringField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainLuSupplier: TStringField;
    dbgReturnID: TdxDBGridButtonColumn;
    dbgItemID: TdxDBGridButtonColumn;
    dbgItemName: TdxDBGridColumn;
    dbgQty: TdxDBGridColumn;
    dbgItemRepName: TdxDBGridColumn;
    dbgHarga: TdxDBGridColumn;
    dbgLocation: TdxDBGridButtonColumn;
    quMainReturnRepID: TStringField;
    quDetilReturnRepID: TStringField;
    quDetilReturnID: TStringField;
    quDetilItemID: TStringField;
    quDetilQty: TBCDField;
    quDetilPrice: TBCDField;
    quDetilItemRepID: TStringField;
    quDetilStatus: TStringField;
    quDetilLuItemName: TStringField;
    quDetilLuItemRepName: TStringField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    dbgItemRepID: TdxDBGridButtonColumn;
    quWareHouse: TADOQuery;
    Label13: TLabel;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    DBText2: TDBText;
    Label11: TLabel;
    DBText3: TDBText;
    dbgStatus: TdxDBGridImageColumn;
    quDetilWareHouseID: TStringField;
    quDetilLWareHouseName: TStringField;
    quDetilLastPrice: TBCDField;
    quMainCurrID: TStringField;
    Label12: TLabel;
    DBText4: TDBText;
    DBText6: TDBText;
    quValuta: TADOQuery;
    quMainLCurrName: TStringField;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    GroupBox3: TGroupBox;
    DBText7: TDBText;
    Label14: TLabel;
    quTotal: TADOQuery;
    dsTotal: TDataSource;
    quTotalTotal: TBCDField;
    quMainTTLReturRep: TBCDField;
    dbgListValuta: TdxDBGridColumn;
    dbgSNReturRep: TdxDBGrid;
    Label15: TLabel;
    quSN: TADOQuery;
    dsSN: TDataSource;
    bbSN: TdxButton;
    dbgSNReturRepReturnRepID: TdxDBGridMaskColumn;
    dbgSNReturRepReturnID: TdxDBGridMaskColumn;
    dbgSNReturRepItemID: TdxDBGridMaskColumn;
    dbgSNReturRepUpdDate: TdxDBGridDateColumn;
    dbgSNReturRepUpdUser: TdxDBGridMaskColumn;
    quSNSNID: TStringField;
    quSNReturnRepID: TStringField;
    quSNReturnID: TStringField;
    quSNItemID: TStringField;
    quSNUpdDate: TDateTimeField;
    quSNUpdUser: TStringField;
    dbgSNReturRepSNID: TdxDBGridColumn;
    quSNFgJual: TStringField;

    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dbgEnter(Sender: TObject);
    procedure dbgReturnIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure dsDetilStateChange(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure dbgItemIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgItemRepIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgLocationButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilItemIDChange(Sender: TField);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure quMainBeforeEdit(DataSet: TDataSet);
    procedure quDetilBeforeEdit(DataSet: TDataSet);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dsSNStateChange(Sender: TObject);
    procedure quSNNewRecord(DataSet: TDataSet);
    procedure quSNAfterPost(DataSet: TDataSet);
    procedure quSNBeforeInsert(DataSet: TDataSet);
    procedure quSNBeforePost(DataSet: TDataSet);
    procedure quSNBeforeDelete(DataSet: TDataSet);
    procedure quSNBeforeEdit(DataSet: TDataSet);
    procedure bbSNClick(Sender: TObject);
  private
    { Private declarations }
    Procedure CekStatus;
    Procedure CekSerialNumber;    
    procedure UpdateTTlH;
  public
    { Public declarations }
  end;

var
  fmAPPenggantiRetur: TfmAPPenggantiRetur;

implementation

uses StdLv2, StdLv1, StdLv3, StdLv0, Search, UnitGeneral, ConMain, MyUnit, Allitem;

{$R *.dfm}
Procedure TfmAPPenggantiRetur.CekStatus;
Begin //cek apakah sudah ada pembayaran kalo sudah ada tidak bisa di utak atik
with quAct, SQL do
     begin
        Close; Clear;
        Add(' SELECT A.PayReturnRepId FROM APTrPayReturnRepDt A INNER JOIN APTrPayReturnRepHd B ON A.PayReturnRepId=B.PayReturnRepId'+
            ' WHERE A.returnRepID='''+quMainReturnRepID.Value+'''');
        Open;
        if not IsEmpty then
        begin
           MsgInfo('Sudah ada pembayaran ['+quAct.Fieldbyname('PayReturnRepId').AsString +'], tidak bisa edit/Delete lagi');
           Abort;
        end;
     end;
End;

Procedure TfmAPPenggantiRetur.CekSerialNumber;
Begin //cek apakah sudah dipakai di Penjualan kalo sudah ada tidak bisa di utak atik
  with quAct, SQL do
  begin
     Close;Clear;
     Add('SELECT SNID,SaleID FROM ArTrPenjualanSN WHERE ItemID='''+quSNItemID.AsString+''' AND SNID='''+quSNSNID.AsString+''' ');
     Open;
     if not IsEmpty then
     begin
        ShowMessage('Data Sudah di pakai di Transaksi Penjualan dengan No Nota ['+quAct.Fieldbyname('SaleID').AsString +'], tidak bisa Delete lagi');
        Abort;
     end;
  end;
End;

procedure TfmAPPenggantiRetur.UpdateTTlH;
Begin
 With quAct,sql do
 Begin
   Close;Clear;
   add(' Update APTrReturnRepHd SET TTLReturRep='''+Formatcurr('0.00',quTotalTotal.AsCurrency)+''''
      +' WHERE ReturnRepID='''+quMainReturnRepID.AsString+'''');
   ExecSQL;
 End;
  //ShowMessage(quTotalPerValutaTotal.AsString);
End;
procedure TfmAPPenggantiRetur.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), ReturnRepID';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dbg);
  inherited;
  quTotal.Active := TRUE;;
  quSN.Active := TRUE;;
  quTotalTotal.DisplayFormat := sDisFormat;
  quDetilQty.DisplayFormat := sDisFormat1;
  quDetilQty.EditFormat := sEditformat;
  quDetilPrice.DisplayFormat:=sDisFormat;
  quDetilPrice.EditFormat:=sEditformat;
  SettingDxGrid(dbg);
end;

procedure TfmAPPenggantiRetur.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBButtonEdit1,qumain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit2,qumain.State<>dsInsert);
  SetReadOnly(dxDBDateEdit1,quMain.State<>dsInsert);
end;

procedure TfmAPPenggantiRetur.dbgEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then
     quDetil.Append;
end;

procedure TfmAPPenggantiRetur.dbgReturnIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try                                                              //AND E.Price=B.Price GANTI SUPPID DIBUANG
       Title := 'Nota Pengganti Retur Pembelian';
       SQLString := ' SELECT distinct A.ReturnID as Nota_Pengganti_Retur, '
                   +' Convert(Varchar(10),Transdate,103) as Tgl_Retur,B.WareHouseId as Kode_Gudang,'
                   +' isnull(Sum(Qty),0)-(Select isnull(SUM(QTy),0) FROM APTrReturnRepDt E WHERE ItemId='''+quDetilItemID.Value+''''
                   +' AND E.ReturnId=A.ReturnId ) as Sisa'
                   +' FROM APTrReturnHd A INNER JOIN APTrReturnDt B ON A.ReturnId=B.ReturnId '
                   +' WHERE B.ItemID = ''' + quDetilItemID.Value + ''' AND A.SuppId='''+quMainSuppID.Value+''' '
                   +' AND FlagRetur=''R'''
                   +' GROUP BY A.ReturnID,A.TransDate,B.WareHouseID ';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilReturnID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmAPPenggantiRetur.dxDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmAPPenggantiRetur.quDetilBeforePost(DataSet: TDataSet);
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
     MsgInfo('Kode Item tidak ada dalam Master !');
     quDetilItemID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilReturnID.Value)='' then
  begin
     MsgInfo('Nota Retur tidak boleh kosong !');
     quDetilReturnID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilWareHouseID.value) = ''  then
  begin
     MsgInfo('Gudang tidak boleh kosong');
     quDetilWareHouseID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilLWareHouseName.value) = ''  then
  begin
     MsgInfo('Gudang tidak ada dalam Master');
     quDetilWareHouseID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilItemRepID.Value)='' then
  begin
     MsgInfo('Kode Item Pengganti tidak boleh kosong !');
     quDetilItemRepID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilLuItemRepName.Value)='' then
  begin
     MsgInfo('Kode Item Pengganti tidak ada dalam Master !');
     quDetilItemRepID.FocusControl;
     Abort;
  end;

  if quDetilQty.value <= 0  then
  begin
     MsgInfo('Jumlah Barang harus lebih besar dari 0');
     quDetilQty.FocusControl;
     Abort;
  end else
  begin
    with quAct,sql do
    Begin
      Close;Clear;
      Add('  SELECT  B.FlagRetur,Isnull(Sum(Qty),0) -'
         +' ( SELECT isnull(Sum(Qty),0) FROM APTrReturnRepDt WHERE ReturnID=''' +quDetilReturnID.AsString +''''
         +'    AND ItemID=''' + quDetilItemID.AsString +''''// AND WareHouseId='''+quDetilWareHouseID.Value+''''
         +'    AND ReturnRepID<>'''+quMainReturnRepID.Value+''' ) as PegRetur '
         +'  FROM APTrReturnDt A INNER JOIN APTrReturnHd B ON A.ReturnId=B.ReturnId WHERE A.ReturnId=''' +quDetilReturnID.AsString +''''
         +'  AND B.SuppId='''+quMainSuppID.Value+''' AND A.ItemId='''+quDetilItemID.Value+''' AND B.FlagRetur=''R'''
         +'  GROUP BY B.FlagRetur');
       Open;
     if IsEmpty then
     Begin
        MsgInfo('Data tidak ada pada Nota Retur');
        quDetilItemID.FocusControl;
        Abort;
     End;
    End;

    if quDetilQty.Value > quAct.FieldByName ('PegRetur').AsInteger  then
    begin
      MsgInfo('Jumlah barang melebihi Jumlah yang di Retur'+#13+'jumlah/sisa diretur adalah '
             +'['+quAct.FieldByName ('PegRetur').AsString+']');
      quDetilQty.FocusControl;
      Abort;
    end;
  end;

  if quDetil.State = dsInsert then
  begin
     with quAct, SQL do
     begin
        Close; Clear;
        Add(' SELECT Count(ItemID) FROM APTrReturnRepDt WHERE ReturnRepID=:ReturnRepID AND ReturnID=:ReturnID'
           +' AND ItemID=:ItemID AND WareHouseID=:WareHouseID ');
        with Parameters do
        begin
           ParamByName('ReturnRepID').Value := quMainReturnRepID.Value;
           ParamByName('ReturnID').Value  := quDetilReturnID.Value;
           ParamByName('ItemID').Value := quDetilItemID.Value;
           ParamByName('WareHouseId').Value := quDetilWareHouseID.Value;
        end;
        Open;
        if Fields[0].AsInteger > 0 then
        begin
           MsgInfo('Item sudah ada dalam List');
           abort;
        end;
     end;
  end;

  if quDetilStatus.Value ='G' Then
  Begin
    if quDetilItemID.Value <> quDetilItemRepID.Value then
    Begin
      quDetilItemRepID.Value:=quDetilItemID.Value;
      MsgInfo('Karena Status Ganti Maka Barang Pengganti sama dengan barang yang di ganti');
    End;
  End;

  quDetilUpdUser.AsString := dmMain.UserId;
  quDetilUpdDate.AsDateTime := GetServerDateTime;
 {  if quDetil.State = dsInsert then
    quDetilSeq.Value := GenerateSeqNumber('APTrPurchaseDt','Seq','PurchaseID',quMainPurchaseID.Value);}
end;

procedure TfmAPPenggantiRetur.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgReturnID,quDetil.State<>dsInsert);
  SetReadOnly(dbgStatus,qudetil.State<>dsinsert);
  SetReadOnly(dbgItemID,qudetil.State<>dsinsert);
  SetReadOnly(dbgItemRepID,quDetil.State<>dsinsert);
  SetReadOnly(dbgLocation,qudetil.State<>dsinsert);
  SetReadOnly(dbgItemName,TRUE);
  SetReadOnly(dbgItemRepName,TRUE);
end;

procedure TfmAPPenggantiRetur.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Supplier';
       SQLString := 'SELECT SuppID as Kode_Supplier, Suppname as Supplier,''Supplier Pembelian'' as Keterangan, Address as Alamat FROM APMsSupplier '
                   +'UNION ALL SELECT CustID, CustName,''Supplier Konsinyasi'',Address FROM ARMsCustomer '
                   +'ORDER BY SuppID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainSuppId.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmAPPenggantiRetur.quMainBeforePost(DataSet: TDataSet);
Var ST : String;
begin
  inherited;
{  if Trim(quMainReturnRepID.Value)='' then
  Begin
    MsgInfo('Nota bukti tidak boleh kosong');
    quMainReturnRepID.FocusControl;
    Abort;
  End;

  If qumain.State= dsinsert then
  Begin
    With quAct,Sql do
    Begin
       Close;Clear;
       add('Select ReturnRepID from APTrReturnRepHd WHERE ReturnRepID='''+quMainReturnRepID.Value+'''');
       Open;
       If Not IsEmpty then
       Begin
          MsgInfo('Nota sudah dipakai di transaksi penggantian Retur lain');
          quMainReturnRepID.FocusControl;
          Abort;
       End;
    End;
  End;   }

  if Trim(quMainTransDate.AsString)='' then
  begin
    MsgInfo('Tanggal transaksi tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  if Trim(quMainSuppId.Value)='' then
  begin
    MsgInfo('Kode Supplier tidak boleh kosong');
    quMainSuppId.FocusControl;
    Abort;
  End;

  if Trim(quMainLuSupplier.Value)='' then
  begin
    MsgInfo('Kode Supplier tidak ada dalam Master Supplier');
    quMainSuppid.FocusControl;
    Abort;
  End;

  if Trim(quMainCurrID.Value)='' then
  begin
    MsgInfo('Valuta tidak boleh kosong');
    quMainCurrID.FocusControl;
    Abort;
  End;

  if Trim(quMainLCurrName.Value)='' then
  begin
    MsgInfo('Valuta tidak ada dalam Master');
    quMainCurrID.FocusControl;
    Abort;
  End;

  if qumain.State=dsinsert then
  Begin
    ST := 'PRBR/'+PT+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
    quMainReturnRepID.Value  := ST + FormatFloat('0000', RunNumberGL(quAct, 'APTrReturnRepHd', 'ReturnRepID', ST, '0') + 1);
  End;

  quMainUpdUser.Value := dmMain.UserId;
  quMainUpddate.Value := GetServerDateTime;
end;

procedure TfmAPPenggantiRetur.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilQty.AsFloat := 1;
  quDetilPrice.AsFloat := 0;
  quDetilStatus.AsString := 'G';
  quDetilWareHouseID.AsString:=sDGPR;
  quDetilStatus.FocusControl;

//  quDetilStatus.Size := 2;
end;

procedure TfmAPPenggantiRetur.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime:=Date;
  quMainCurrID.AsString:='IDR';
  quMainTransDate.FocusControl;
end;

procedure TfmAPPenggantiRetur.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Transaksi Pengganti Retur';
       SQLString := ' SELECT A.ReturnRepID as Nota_Pengganti_Retur, '
                   +' Convert(varchar(10),A.TransDate,103) as Tanggal,'
                   +' A.SuppId as Kode_Supplier,B.SuppName as Nama_Supplier,'
                   +' A.Note as Keterangan'
                   +' FROM APTrReturnRepHd A'
                   +' INNER JOIN APMsSupplier  B on A.SuppID = B.SuppID'
                   +' WHERE '+FSQLWhere
                   +' ORDER BY A.ReturnRepID ';
       if ShowModal = MrOK then
       begin
         qumain.Locate('ReturnRepID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmAPPenggantiRetur.dbgItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Item';
       SQLString := ' SELECT distinct A.ItemID as Kode_Barang, E.ItemName as Nama_Barang,'
                   +' ProductDesc as Product, GroupDesc as Group_Barang '
                   +' FROM APTrReturnDt A INNER JOIN APTRReturnHd B ON A.ReturnId=B.ReturnId'
                   +' INNER JOIN INMsItem E ON A.ItemID=E.ItemID '
                   +' INNER JOIN INMsGroup C ON E.GroupID=C.GroupID '
                   +' INNER JOIN INMsProduct D ON E.ProductID=D.ProductID '
                   +' WHERE B.SuppID = ''' + quMainSuppID.Value + ''' AND B.FlagRetur=''R'' '
                   +' ORDER BY A.ItemID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
            quDetilItemID.Value := Res[0];
          if quDetilStatus.Value='G' then
            quDetilItemRepID.Value:= res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmAPPenggantiRetur.dbgItemRepIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Item';
       SQLString := ' SELECT A.ItemID as Kode_Barang, A.ItemName as Nama_Barang, '
                   +' B.GroupDesc as Group_Barang, C.ProductDesc as Product'
                   +' FROM INMsItem A'
                   +' INNER JOIN INMsGroup B ON A.GroupID=B.GroupID '
                   +' INNER JOIN INMsProduct C ON A.ProductID=C.ProductID '
                   +' ORDER BY A.ItemID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilItemRepID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmAPPenggantiRetur.dbgLocationButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Gudang';
       SQLString := ' SELECT Distinct A.WareHouseID as Kode_Gudang, WareHouseName as Nama_Gudang ' +
                    ' FROM INMsWareHouse A INNER JOIN APTrReturnDt B ON A.WareHouseId=B.WareHouseId ' +
                    ' INNER JOIN APTrReturnHd C ON B.ReturnId=C.Returnid '+
                    ' WHERE B.ItemId='''+quDetilItemID.Value+''' And B.ReturnId='''+quDetilReturnID.Value+''''+
                    ' AND C.FlagRetur=''R'''+
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

procedure TfmAPPenggantiRetur.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  quDetil.Append;
  quDetilStatus.FocusControl;
end;

procedure TfmAPPenggantiRetur.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTTlH;

  DeleteFromAllItem(quMainReturnRepID.Value,quDetilReturnID.Value,quDetilItemID.Value,quDetilWareHouseID.Value,6);
  InsertToAllItem1(quMainReturnRepID.Value,quDetilReturnID.Value,quDetilItemID.Value,quMainTransDate.Value,
                   quDetilWareHouseID.Value,quDetilItemRepID.Value,6,abs(quDetilQty.Value),'AP',quMainLuSupplier.Value);

  if MessageDlg('Apakah anda akan menginput serial number ? ', mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
     quSN.Last;
     quSN.Append;
     Abort;
  end else
  begin
    quDetil.Append;
    quDetilItemID.FocusControl;
  end;
//  quDetil.Append;
//  quDetilItemID.FocusControl;
end;

procedure TfmAPPenggantiRetur.quDetilItemIDChange(Sender: TField);
begin
  inherited;
  if quDetilStatus.Value='G' then
     quDetilItemRepID.Value:=quDetilItemID.Value;
end;

procedure TfmAPPenggantiRetur.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  DeleteFromAllItem(quMainReturnRepID.Value,quDetilReturnID.Value,quDetilItemID.Value,quDetilWareHouseID.Value,6);
end;

procedure TfmAPPenggantiRetur.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  DeleteFromAllItem(quMainReturnRepID.Value,6);
end;

procedure TfmAPPenggantiRetur.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTTlH;
end;

procedure TfmAPPenggantiRetur.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
end;

procedure TfmAPPenggantiRetur.quDetilBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
end;

procedure TfmAPPenggantiRetur.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
end;

procedure TfmAPPenggantiRetur.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Valuta';
       SQLString := 'SELECT CurrId as Kode_Valuta, CurrName as Nama_Valuta'
               +' FROM SAMsValuta'
               +' ORDER BY CurrId';
       if ShowModal = MrOk then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainCurrID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmAPPenggantiRetur.dsSNStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgSNReturRepSNID,quSN.State<>dsInsert);
end;

procedure TfmAPPenggantiRetur.quSNNewRecord(DataSet: TDataSet);
begin
  inherited;
  quSNSNID.FocusControl;
  quSNFgJual.AsString:= 'T';
end;

procedure TfmAPPenggantiRetur.quSNAfterPost(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
   Close;Clear;
   Add(' Select isnull(Count(SNId),0) as jumlah From APTrReturnRepSn WHERE ItemId='''+quDetilItemID.AsString+''''
      +' AND ReturnID='''+quDetilReturnID.AsString+''' AND ReturnRepID='''+quMainReturnRepID.AsString+''' ');
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
   //quSNSNID.FocusControl;
  end;
end;

procedure TfmAPPenggantiRetur.quSNBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CekSerialNumber;
  CekStatus;
  with quAct,SQL do
  begin
   Close;Clear;
   Add(' Select isnull(Count(SNId),0) as jumlah From APTrReturnRepSn WHERE ItemId='''+quDetilItemID.AsString+''''
      +' AND ReturnID='''+quDetilReturnID.AsString+''' AND ReturnRepID='''+quMainReturnRepID.AsString+''' ');
   Open;
  End;
  if quAct.FieldByName('jumlah').AsInteger >= quDetilQty.Value then Abort;
end;

procedure TfmAPPenggantiRetur.quSNBeforePost(DataSet: TDataSet);
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
       add(' SELECT SNID from APTrReturnRepSn WHERE ReturnRepID=:ReturnRepID AND ReturnID=:ReturnID and SNID=:SNID and ItemID=:ItemID');
          Parameters.ParamByName('ReturnRepID').Value:= quMainReturnRepID.AsString;
          Parameters.ParamByName('ReturnID').Value:= quDetilReturnID.AsString;
          Parameters.ParamByName('SNID').Value:= quSNSNID.AsString;
          Parameters.ParamByName('ItemID').Value:= quDetilItemID.AsString;
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
       add('SELECT K.SNID FROM (SELECT SNID,ItemID FROM APTrReturnRepSN '
          +'UNION ALL SELECT SNID,ItemID from APTrPurchaseDtSN '
          +'UNION ALL SELECT SNID,ItemID FROM APTrKonsinyasiDtSN) as K '
          +'WHERE K.SNID='''+quSNSNID.AsString+''' AND K.ItemID='''+quDetilItemID.AsString+''' ');
       Open;
       If quAct.RecordCount <> 0 then
       Begin
          MsgInfo('Serial Number ini sudah pernah masuk');
          quSNSNID.FocusControl;
          Abort;
       End;
    End;
  End;

  quSNUpdUser.Value := dmMain.UserId;
  quSNUpdDate.Value := GetServerDateTime;
end;

procedure TfmAPPenggantiRetur.quSNBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekSerialNumber;
  CekStatus;
end;

procedure TfmAPPenggantiRetur.quSNBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekSerialNumber;
  CekStatus;
end;

procedure TfmAPPenggantiRetur.bbSNClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := ' Serial Number ';
     SQLString :='SELECT A.SNID as Serial_Number, B.ReturnRepID as Nota_Pembelian, CONVERT(VARCHAR(10),B.Transdate,103) as Tgl, '
                +'B.SuppID as Kode_Supplier, C.SuppName as Supplier, A.ItemID as Kode_Barang, D.ItemName as Nama_Barang '
                +'FROM APTrReturnRepSN A INNER JOIN APTrReturnRepHD B ON A.ReturnRepID=B.ReturnRepID '
                +'INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID INNER JOIN INMsItem D ON A.ItemID=D.ItemID '
                +'ORDER BY A.SNID';
     if ShowModal = MrOK then
     begin
       quMain.Locate('ReturnRepID',Res[1],[]);
     end;
  finally
     free;
  end;
end;

end.
