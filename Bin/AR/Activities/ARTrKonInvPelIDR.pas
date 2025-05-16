unit ARTrKonInvPelIDR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxDBTLCl, dxGrClms, dxEditor, dxDBELib, DBCtrls, DateUtils;

type
  TfmARTrKonInvPelIDR = class(TfmStdLv4)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    quSN: TADOQuery;
    dsSN: TDataSource;
    DBText4: TDBText;
    dbgListKonInvPelID: TdxDBGridMaskColumn;
    dbgListTransDate: TdxDBGridDateColumn;
    dbgListCustID: TdxDBGridMaskColumn;
    dbgListNote: TdxDBGridMemoColumn;
    dbgListJatuhTempo: TdxDBGridMaskColumn;
    dbgListValutaID: TdxDBGridMaskColumn;
    dbgListPelangganName: TdxDBGridLookupColumn;
    quMainKonInvPelID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainCustID: TStringField;
    quMainSalesID: TStringField;
    quMainJatuhTempo: TIntegerField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quCustomer: TADOQuery;
    quSales: TADOQuery;
    quMainCustName: TStringField;
    quMainSalesName: TStringField;
    GroupBox2: TGroupBox;
    Label14: TLabel;
    DBText3: TDBText;
    Label15: TLabel;
    DBText6: TDBText;
    Label13: TLabel;
    Label8: TLabel;
    Shape7: TShape;
    Shape5: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape6: TShape;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    DBText7: TDBText;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBText8: TDBText;
    RbCetak: TRadioGroup;
    dxButton1: TdxButton;
    RbHarga: TRadioGroup;
    dxButton3: TdxButton;
    Label4: TLabel;
    DBText5: TDBText;
    quMainCJthTempo: TDateTimeField;
    quMainDiscount: TBCDField;
    quMainCurrID: TStringField;
    quMainDP: TBCDField;
    quDetilItemID: TStringField;
    quItem: TADOQuery;
    quLokasi: TADOQuery;
    quDetilLItemName: TStringField;
    quMainNote: TStringField;
    quDetilKonInvPelID: TStringField;
    quDetilPrice: TBCDField;
    quDetilQty: TIntegerField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilKonTransBrgId: TStringField;
    quDetilCTotal: TCurrencyField;
    quTotal: TADOQuery;
    quTotalSubTotal: TBCDField;
    quTotalDiscount: TBCDField;
    quTotalTotal: TBCDField;
    quTotalGT: TBCDField;
    dsTotal: TDataSource;
    quSNUpdDate: TDateTimeField;
    quSNUpdUser: TStringField;
    quSNKonInvPelID: TStringField;
    quSNItemID: TStringField;
    quSNKonTransBrgID: TStringField;
    quSNPrice: TBCDField;
    quSNSNID: TStringField;
    Label23: TLabel;
    DBText2: TDBText;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1ItemID: TdxDBGridButtonColumn;
    dxDBGrid1ItemName: TdxDBGridColumn;
    dxDBGrid1Konsinyasi: TdxDBGridButtonColumn;
    dxDBGrid1UserPrice: TdxDBGridColumn;
    dxDBGrid1Qty: TdxDBGridColumn;
    dxDBGrid1UpdDate: TdxDBGridDateColumn;
    dxDBGrid1UpdUser: TdxDBGridMaskColumn;
    dxDBGrid1ValueTotal: TdxDBGridColumn;
    dbgSerialNumber: TdxDBGrid;
    quValuta: TADOQuery;
    quMainLCurrName: TStringField;
    DBText10: TDBText;
    quMainTTLKJ: TBCDField;
    quMainSTKJ: TBCDField;
    Label22: TLabel;
    DBText9: TDBText;
    txtKonInvPelID: TdxDBEdit;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    quDetilKomisi: TBCDField;
    quDetilLKomisi: TCurrencyField;
    quMainRate: TBCDField;
    dbgSerialNumberSNID: TdxDBGridButtonColumn;
    Label24: TLabel;
    txtTransDate: TdxDBDateEdit;
    txtPelangganID: TdxDBButtonEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    txtJatuhTempo: TdxDBMaskEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    BtlBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    KrgBrg: TdxButton;
    TmbBrg: TdxButton;
    dxButton6: TdxButton;
    dxButton7: TdxButton;
    dxButton8: TdxButton;
    dxButton9: TdxButton;
    Label35: TLabel;
    dbgCost: TdxDBGrid;
    dbgCostPurchaseID: TdxDBGridButtonColumn;
    dbgCostKonInvPelID: TdxDBGridMaskColumn;
    dbgCostItemID: TdxDBGridMaskColumn;
    dbgCostPrice: TdxDBGridCurrencyColumn;
    dbgCostUpdDate: TdxDBGridDateColumn;
    dbgCostQty: TdxDBGridColumn;
    dbgCostUpdUser: TdxDBGridMaskColumn;
    dxButton2: TdxButton;
    dxButton4: TdxButton;
    dxButton5: TdxButton;
    dxButton10: TdxButton;
    quCostItem: TADOQuery;
    quCostItemPurchaseID: TStringField;
    quCostItemKonInvPelID: TStringField;
    quCostItemItemID: TStringField;
    quCostItemKonTransBrgID: TStringField;
    quCostItemPrice: TBCDField;
    quCostItemUpdDate: TDateTimeField;
    quCostItemUpdUser: TStringField;
    quCostItemQty: TIntegerField;
    dsCostItem: TDataSource;
    quCalc: TADOQuery;
    quMainSOID: TStringField;
    quCostItemModal: TBCDField;
    quSNModal: TBCDField;
    quSNPurchaseID: TStringField;
    quSNFgSN: TStringField;
    procedure FormShow(Sender: TObject);
    procedure txtPelangganIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure txtSalesIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure txtKonInvPelIDKeyPress(Sender: TObject; var Key: Char);
    procedure dsDetilStateChange(Sender: TObject);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure txtDiskonChange(Sender: TObject);
    procedure dxDBGrid1ItemIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure dxDBGrid1KonsinyasiButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure dsSNStateChange(Sender: TObject);
    procedure quSNBeforePost(DataSet: TDataSet);
    procedure quSNBeforeInsert(DataSet: TDataSet);
    procedure quSNNewRecord(DataSet: TDataSet);
    procedure quSNAfterPost(DataSet: TDataSet);
    procedure dxButton3Click(Sender: TObject);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
    procedure quDetilBeforeEdit(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quMainBeforeEdit(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButton1Click(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgSerialNumberSNIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure TmbBrgClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure dxButton6Click(Sender: TObject);
    procedure dxButton7Click(Sender: TObject);
    procedure dxButton8Click(Sender: TObject);
    procedure dxButton9Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure dxButton10Click(Sender: TObject);
    procedure quCostItemAfterPost(DataSet: TDataSet);
    procedure quCostItemBeforeDelete(DataSet: TDataSet);
    procedure quCostItemBeforeInsert(DataSet: TDataSet);
    procedure quCostItemBeforePost(DataSet: TDataSet);
    procedure quCostItemNewRecord(DataSet: TDataSet);
    procedure dbgCostPurchaseIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dsCostItemStateChange(Sender: TObject);
    procedure quCostItemPurchaseIDChange(Sender: TField);
  private
    { Private declarations }
    procedure TTLKJ;
    procedure CeKStatus;
  public
    { Public declarations }

  end;

var
  fmARTrKonInvPelIDR: TfmARTrKonInvPelIDR;

implementation

uses StdLv2, StdLv1, StdLv0, Search, UnitGeneral, ConMain, StdLv3, MyUnit,
  ARQRRptSegel, ARQRRptInvPenjualan, ARQRRptSuratJalan;

{$R *.dfm}

procedure TfmARTrKonInvPelIDR.CeKStatus;
Begin
  with quAct, SQL do
     begin
        Close; Clear;
        Add(' SELECT TOP 1 PiutangID FROM ARTrPiutangDt  '
           +' WHERE SaleID='''+quMainKonInvPelID.AsString+'''');
        Open;
        if not IsEmpty then
        begin
           MsgInfo('Sudah ada Pembayaran ['+quAct.fieldbyname('PiutangID').AsString+'], tidak bisa edit/Delete lagi');
           Abort;
        end;
     end;
End;

procedure TfmARTrKonInvPelIDR.TTLKJ;
Begin
  With quAct,sql do
  Begin
    Close;Clear;
    add(' Update ARTrKonInvPelHd SET TTLKJ='''+Formatcurr('0.00',quTotalTotal.AsCurrency)+''','
       +' STKJ='''+Formatcurr('0.00',quTotalSubTotal.AsCurrency)+''''
       +' WHERE KonInvpelID='''+quMainKonInvPelID.AsString+'''');
    ExecSQL;
  End;
End;

procedure TfmARTrKonInvPelIDR.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), KonInvPelID';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dxDBGrid1);
  inherited;
  quMain.Active  := TRUE;
  quDetil.Active := TRUE;
  quSN.Active := TRUE;
  quCostItem.Active := TRUE;
  quTotal.Active := TRUE;
  SettingDxGrid(dxDBGrid1);
  SettingDxGrid(dbgSerialNumber);
end;

procedure TfmARTrKonInvPelIDR.txtPelangganIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Pelanggan';
       SQLString := 'SELECT CustName as Nama_Pelanggan,CustId as Kode_Pelanggan, Address '
                   +' FROM ARMsCustomer WHERE Custid IN (Select CustID FROM ARTrKonTransBrgHd)'
                   +' ORDER BY CustId';
       if ShowModal = MrOK then
       begin
           if quMain.State = dsBrowse then quMain.Edit;
            quMainCustId.Value := Res[1];
       end;
    finally
       Free;
    end;
end;

procedure TfmARTrKonInvPelIDR.txtSalesIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Sales';
       SQLString := 'SELECT SalesId as Kode_Sales, SalesName as Nama_Sales'
                   +',Address '
                   +' FROM ARMsSales'
                   +' ORDER BY SalesId';
       if ShowModal = MrOK then
       begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainSalesID.Value := Res[0];
       end;
    finally
       Free;
    end;
end;

procedure TfmARTrKonInvPelIDR.quMainBeforePost(DataSet: TDataSet);
var ST: String; i : Integer;
begin
  inherited;
  if Trim(quMainTransDate.AsString)='' then
  begin
    MsgInfo('Tanggal transaksi tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  if Trim(quMainCustID.AsString)='' then
  begin
    MsgInfo('Kode Pelanggan tidak boleh kosong');
    quMainCustID.FocusControl;
    Abort;
  End;

  if Trim(quMainCustName.AsString)='' then
  begin
    MsgInfo('Kode Pelanggan tidak ada dalam Master');
    quMainCustID.FocusControl;
    Abort;
  End;

  if quMainSalesID.AsString = '' then
  Begin
    MsgInfo('Sales belum diisi');
    quMainSalesID.FocusControl;
    Abort;
  End;

  if TRIM(quMainSalesName.AsString) = '' then
  Begin
    MsgInfo('Sales tidak terdaftar');
    quMainSalesID.FocusControl;
    Abort;
  End;

  if Trim(quMainCurrID.AsString)='' then
  begin
    MsgInfo('Valuta tidak boleh kosong');
    quMainCurrID.FocusControl;
    Abort;
  End;

  if Trim(quMainLCurrName.AsString)='' then
  begin
    MsgInfo('Valuta tidak ada dalam Master');
    quMainCurrID.FocusControl;
    Abort;
  End;

  if Trim(quMainJatuhTempo.AsString)='' Then
  Begin
    MsgInfo('Lama Jatuh Tempo tidak boleh kosong');
    quMainJatuhTempo.FocusControl;
    Abort;
  End;

  if quMainJatuhTempo.Value < 0  Then
  Begin
    MsgInfo('Lama Jatuh Tempo tidak boleh lebih kecil dari 0');
    quMainJatuhTempo.FocusControl;
    Abort;
  End;

  i:= Length(dxDBEdit1.Text);
  if i < 5 then
  begin
    ShowMessage('No. Sales Order yang anda masukan kurang dari 5 char / digit');
    quMainSOID.FocusControl;
    Abort;
  end;

  if quMain.State=dsInsert then
  Begin
    With quAct,Sql do
    begin
       Close;Clear;
       add('SELECT K.SOID FROM (SELECT SOID FROM ArTrPenjualanHD UNION ALL '
          +'SELECT SOID FROM ARTrKonInvPelHd) as K WHERE K.SOID='''+quMainSOID.AsString+'''');
       Open;
       If Not IsEmpty then
       begin
         MsgInfo('No Sales Order ini sudah dipakai');
         quMainSOID.FocusControl;
         Abort;
       end;
    End;
    ST := PT+'.K'+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
    quMainKonInvPelID.Value  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrKonInvPelHd', 'KonInvPelID', ST, '0') + 1);
  End;

  if quMain.State = dsInsert then
  Begin
    CarirateNew(quAct,quMainTransDate.AsDateTime);
    quMainRate.Value := quAct.fieldbyname('Rate').AsCurrency;
  End;

  quMainUpdDate.AsDateTime := GetServerDateTime;
  quMainUpdUser.AsString := dmMain.UserId;

end;

procedure TfmARTrKonInvPelIDR.dsMainStateChange(Sender: TObject);
begin
  inherited;

  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(txtKonInvPelID,TRUE);
  SetReadOnly(txtTransDate,quMain.State<>dsInsert);
  SetReadOnly(txtPelangganID,qumain.state<>dsinsert);
  SetReadOnly(dxDBButtonEdit2,qumain.state<>dsinsert);
  SetReadOnly(dxDBButtonEdit1,qumain.state<>dsinsert);
end;

procedure TfmARTrKonInvPelIDR.txtKonInvPelIDKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARTrKonInvPelIDR.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid1ItemID,quDetil.State<>dsInsert);
  SetReadOnly(dxDBGrid1ItemName,TRUE);
  SetReadOnly(dxDBGrid1ItemID,quDetil.State<>dsInsert);
  SetReadOnly(dxDBGrid1ValueTotal,TRUE);
  SetReadOnly(dxDBGrid1UserPrice,qudetil.State<>dsInsert);
  SetReadOnly(dxDBGrid1Konsinyasi,qudetil.State<>dsinsert);
end;

procedure TfmARTrKonInvPelIDR.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
 quDetilCTotal.Value := quDetilQty.Value*quDetilPrice.Value;
end;

procedure TfmARTrKonInvPelIDR.dxDBGrid1Enter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmARTrKonInvPelIDR.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.Value:= date;
  quMainJatuhTempo.Value:=0;
  quMainCurrID.AsString := 'IDR';
  quMainDiscount.Value:=0;
  quMainDP.Value:=0;
  qumaintransdate.FocusControl;
end;

procedure TfmARTrKonInvPelIDR.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilQty.Value:=1;
  quDetilPrice.Value:=0;
  quDetilItemID.FocusControl;
end;

procedure TfmARTrKonInvPelIDR.bbFindClick(Sender: TObject);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Invoice Konsinyasi Penjualan';

       SQLString := ' SELECT KonInvPelID as Invoice_Konsinyasi_Penjualan '
                   +' ,Convert(varchar(10),TransDate,103) as Tanggal '
                   +' ,A.CustID as Kode_Pelanggan '
                   +' ,B.Custname as Nama_Pelanggan,A.CurrID as Valuta,A.Note as Keterangan'
                   +' FROM ARTrKonInvPelHd A '
                   +' INNER JOIN ARMsCustomer B ON A.CustId=B.CustID '
                   +' WHERE '+FSQLWhere
                   +' ORDER BY KonInvPelID';

       if ShowModal = MrOK then
       begin
         quMain.Locate('KonInvPelID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARTrKonInvPelIDR.txtDiskonChange(Sender: TObject);
begin
  inherited;
  {
  if txtDiskon.Text <> '' then
  begin
    with quAct, SQL do
    begin
      Close; Clear;
      Add('SELECT SUM(Harga * Qty) - (Convert(Float, ' + txtDiskon.Text + ') / Convert(Float, 100) * SUM(Harga * Qty)) as Total FROM ARTrDPenjualan WHERE KonInvPelID=''' + quMainKonInvPelID.AsString + ''' GROUP BY KonInvPelID');
      Open;
    end;
    txtTotal.Caption := FormatCurr('Rp ,0.00;-Rp ,0.00', quAct.FieldByName('Total').AsFloat);
  end;
  }
end;

procedure TfmARTrKonInvPelIDR.dxDBGrid1ItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Item';
       SQLString := ' SELECT A.KonTransBrgId,convert(varchar(10),Transdate,103) as Tgl_Konsinyasi,'+
                    ' A.ItemID as Kode_Barang,C.ItemName as Nama_Barang, ' +
                    ' isnull(A.Qty,0)-(Select Isnull(sum(qty),0) FROM ARTrKonInvPelDt D INNER JOIN ARTrKonInvPelHd E '+
                    ' ON D.KonInvPelId=E.KonInvPelId WHERE D.ItemId=A.ItemId'+
                    ' AND D.KonTransBrgId=B.KonTransBrgId AND E.CustId=B.CustId '+ //
                    ' )-(Select Isnull(Sum(qty),0) FROM ARTrKonReturDt G INNER JOIN ARTrKonReturHd H'+
                    ' ON G.KonReturId=H.KonReturID WHERE G.ItemId=A.ItemId And G.KonTransBrgId=B.KonTransBrgId'+
                    ' AND H.CustId=B.CustId)'+
                    ' as Sisa'+
                    ' FROM ARTrKonTransBrgDt A INNER JOIN ARTrKonTransBrgHd B ON A.KonTransBrgID=B.KonTransBrgID ' +
                    ' INNER JOIN INMsItem C ON A.ItemId=C.ItemId'+
                    ' WHERE B.CustId = ''' + quMainCustID.Value + ''' ' +
                    ' AND  isnull(A.Qty,0)-(Select Isnull(sum(qty),0) FROM ARTrKonInvPelDt D INNER JOIN ARTrKonInvPelHd E '+
                    ' ON D.KonInvPelId=E.KonInvPelId WHERE D.ItemId=A.ItemId'+
                    ' AND D.KonTransBrgId=A.KonTransBrgId AND E.CustId=B.CustId '+ //
                    ' )-(Select Isnull(Sum(qty),0) FROM ARTrKonReturDt G INNER JOIN ARTrKonReturHd H'+
                    ' ON G.KonReturId=H.KonReturID WHERE G.ItemId=A.ItemId And G.KonTransBrgId=A.KonTransBrgId'+
                    ' AND H.CustId=B.CustId)'+
                    ' <> 0 '+
                    ' ORDER by B.KonTransBrgId';
   
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilItemID.Value := Res[2];
          quDetilKonTransBrgID.Value := Res[0];
          quDetilQty.asstring := Res[4];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrKonInvPelIDR.quDetilBeforePost(DataSet: TDataSet);
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
        Add(' SELECT Top 1 ItemId FROM  ARTrKonInvPelDt  WHERE KonInvPelID='''+quMainKonInvPelID.Value+''''
           +' AND ItemId='''+quDetilItemID.Value+''' AND KonTransBrgId='''+quDetilKonTransBrgId.Value+''''
           +' AND Price='''+quDetilPrice.AsString+'''');
        Open;
        if not IsEmpty then
        begin
           MsgInfo('Kode Item sudah ada dalam List');
           quDetilItemID.FocusControl;
           Abort;
        end;
     end;
  end;

  if TRIM(quDetilQty.AsString) ='' then
  begin
     MsgInfo('Jumlah Barang Tidak boleh kosong');
     quDetilQty.FocusControl;
     Abort;
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
    Add(' SELECT isnull(A.Qty,0)-(Select Isnull(sum(qty),0) FROM ARTrKonInvPelDt D INNER JOIN ARTrKonInvPelHd E '+
        ' ON D.KonInvPelId=E.KonInvPelId WHERE D.ItemId=A.ItemId'+
        ' AND D.KonTransBrgId=B.KonTransBrgId AND E.CustId=B.CustId )+'
       +' isnull((Select isnull(Qty,0) as Qty FROM ARTrKonInvPelDt WHERE KonInvPelId='''+quMainKonInvPelID.Value+''' AND'
       +' KonTransBrgId='''+quDetilKonTransBrgId.Value+''' AND ItemId='''+quDetilItemID.Value+''''
       +' AND Price='''+quDetilPrice.AsString+'''),0)'+
        ' -(Select Isnull(Sum(qty),0) FROM ARTrKonReturDt G INNER JOIN ARTrKonReturHd H'+
        ' ON G.KonReturId=H.KonReturID WHERE G.ItemId=A.ItemId And G.KonTransBrgId=B.KonTransBrgId'+
        ' AND H.CustId=B.CustId)'+
        ' as Sisa'+
        ' FROM ARTrKonTransBrgDt A INNER JOIN ARTrKonTransBrgHd B ON A.KonTransBrgID=B.KonTransBrgID ' +
        ' INNER JOIN INMsItem C ON A.ItemId=C.ItemId'+
        ' WHERE B.CustId = ''' + quMainCustID.Value + ''' AND A.ItemId='''+quDetilItemID.Value+''''+
        ' AND B.KonTransBrgId='''+quDetilKonTransBrgId.Value+''''+
        ' ORDER by B.KonTransBrgId ');
    Open;
    If IsEmpty then
    Begin
      MsgInfo('Data tidak terdapat pada Konsinyasi');
      quDetilItemID.FocusControl;
      Abort;
    End;
  End;

  if quDetilQty.Value > quAct.FieldByName('Sisa').AsCurrency then
  begin
    MsgInfo('Jumlah Barang melebihi jumlah Di Nota konsinyasi '+#13
           +' Sisa Konsinyasi adalah ['+ quAct.FieldByName('Sisa').AsString +']');
    quDetilQty.FocusControl;
    Abort;
  end;

  quDetilKomisi.Value := quDetilLKomisi.Value ;

  quDetilUpdUser.Value := dmMain.UserId;
  quDetilUpdDate.Value := GetServerDateTime;
end;

procedure TfmARTrKonInvPelIDR.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  quMainCJthTempo.AsDateTime := IncDay(quMainTransDate.AsDateTime, quMainJatuhTempo.AsInteger);
end;

procedure TfmARTrKonInvPelIDR.dxDBGrid1KonsinyasiButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
        Title := 'Nota Konsinyasi';
       SQLString := ' SELECT Distinct A.KonTransBrgID as Nota_Konsinyasi_Penjualan' +
                    ' FROM ARTrKonTransBrgHd A INNER JOIN ARTrKonTransBrgDt B ON A.KonTransBrgId=B.KonTransBrgId' +
                    ' WHERE A.CustID = ''' + quMainCustID.Value + ''' And ItemId='''+quDetilItemID.Value+''' ' +
                    ' ORDER by A.KonTransBrgID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilKonTransBrgId.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrKonInvPelIDR.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  TTLKJ;
//Buat masukin ke table AllSale
  if quMainCurrID.AsString = 'IDR' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('DELETE FROM AllSale WHERE FgTrans=2 AND SourceNo='''+quMainKonInvPelID.AsString+''' '
         +'AND ItemID='''+quDetilItemID.AsString+''' ');
      ExecSQL;
    end;

    with quAct,SQL do
    begin
      Close;Clear;
      Add('INSERT AllSale (SourceNo,Transdate,FgTrans,ItemID,Qty,CurrID,Price,Rate,CustID,SalesID)'
         +'VALUES (:SourceNo,:Transdate,:FgTrans,:ItemID,:Qty,:CurrID,:Price,:Rate,:CustID,:SalesID)');
      with Parameters do
      begin
         ParamByName('SourceNo').Value := quMainKonInvPelID.AsString;
         ParamByName('TransDate').Value := quMainTransDate.AsDateTime;
         ParamByName('FgTrans').Value := 2;
         ParamByName('ItemID').Value := quDetilItemID.AsString;
         ParamByName('Qty').Value := quDetilQty.AsInteger;
         ParamByName('CurrID').Value := quMainCurrID.AsString;
         ParamByName('Price').Value  := quDetilPrice.AsInteger;
         ParamByName('Rate').Value := 1;
         ParamByName('CustID').Value := quMainCustID.AsString;
         ParamByName('SalesID').Value := quMainSalesID.AsString;
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
    quCostItem.Last;
    quCostItem.Append;
    Abort;
  end;
end;

procedure TfmARTrKonInvPelIDR.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  TTLKJ;
end;

procedure TfmARTrKonInvPelIDR.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
   qutotal.Requery();
   TTLKJ;
end;

procedure TfmARTrKonInvPelIDR.dsSNStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgSerialNumberSNID,qusn.State<>dsinsert);
end;

procedure TfmARTrKonInvPelIDR.quSNBeforePost(DataSet: TDataSet);
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
       add(' SELECT SNID from ARTrKonInvPelDtSN WHERE KonInvPelID=:KonInvPelID and KonTransBrgId=:KonTransBrgId '
          +' AND ItemID=:ItemID AND Price=:Price AND SNId=:SNID');
          Parameters.ParamByName('KonInvPelID').Value:= quMainKonInvPelID.AsString;
          Parameters.ParamByName('KonTransBrgId').Value:= quDetilKonTransBrgId.AsString;
          Parameters.ParamByName('ItemID').Value:= quDetilItemID.AsString;
          Parameters.ParamByName('Price').Value:= quDetilPrice.AsString;
          Parameters.ParamByName('SNId').Value:= quSNSNID.AsString;
       Open;
       If quAct.RecordCount <> 0 then
       Begin
          MsgInfo('Serial Number sudah ada');
          quSNSNID.FocusControl;
          Abort;
       End;
    End;
  End;
  if quSN.State=dsInsert then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT SNID FROM ARTrKonInvPelDtSN WHERE SNID='''+quSNSNID.AsString+''' ');
      Open;
    end;
    if quAct.FieldByName('SNID').AsString <> '' then
    begin
      ShowMessage('Barang dengan serial number ini sudah ada invoicenya!!!');
      quSNSNID.FocusControl;
      Abort;
    end;
  end;
  if quSN.State = dsInsert then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT SNID FROM ARTrKonTransBrgDtSN WHERE SNID='''+quSNSNID.AsString+''' ');
      Open;
    end;
    if quAct.FieldByName('SNID').AsString = '' then
    begin
      ShowMessage('Serial number ini tidak pernah dikirim ke pelanggan ini!!!');
      quSNSNID.FocusControl;
      Abort;
    end;
  end;
  if quSN.State = dsInsert then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT A.SNID FROM ARTrKonReturDtSN A INNER JOIN ARTrKonReturHd B ON A.KonReturID=B.KonReturID '
         +'WHERE B.CustID='''+quMainCustID.AsString+''' AND A.SNID='''+quSNSNID.AsString+''' '
         +'AND A.ItemID='''+quDetilItemID.AsString+''' AND A.KonTransBrgID='''+quDetilKonTransBrgId.AsString+''' ');
      Open;
    end;
    if quAct.FieldByName('SNID').AsString <> '' then
    begin
      ShowMessage('Serial Number untuk barang ini sudah ditarik');
      quSNSNID.FocusControl;
      Abort;
    end;
  end;
  quSNUpdUser.Value := dmMain.UserId;
  quSNUpdDate.Value := GetServerDateTime;
end;

procedure TfmARTrKonInvPelIDR.quSNBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
   Close;Clear;
   Add(' Select Count(SNId) as jumlah From ARTrKonInvPelDtSN WHERE ItemId='''+quDetilItemID.Value+''''
      +' AND KonTransBrgId='''+quDetilKonTransBrgId.Value+''' And KonInvPelId='''+quMainKonInvPelID.Value+''''
      +' AND Price='''+quDetilPrice.AsString+'''');
   Open;
  End;
  if quAct.FieldByName('jumlah').AsInteger >= quDetilQty.Value then Abort;
end;

procedure TfmARTrKonInvPelIDR.quSNNewRecord(DataSet: TDataSet);
begin
  inherited;
  quSNSNID.FocusControl;
end;

procedure TfmARTrKonInvPelIDR.quSNAfterPost(DataSet: TDataSet);
begin
  inherited;
    with quAct,SQL do
  begin
   Close;Clear;
    Add(' Select Count(SNId) as jumlah From ARTrKonInvPelDtSN WHERE ItemId='''+quDetilItemID.Value+''''
      +' AND KonTransBrgId='''+quDetilKonTransBrgId.Value+''' And KonInvPelId='''+quMainKonInvPelID.Value+''''
      +' AND Price='''+quDetilPrice.AsString+'''');
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

procedure TfmARTrKonInvPelIDR.dxButton3Click(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Cari Serial Number';
       SQLString := ' SELECT SNID,C.KoninvPelId as Nota_Konsinyasi_Penjualan,Convert(varchar(10),C.TransDate,103) as Tgl_Nota,'
                   +' C.CustId as Kode_Pelanggan,'
                   +' D.CustName as Nama_Pelanggan,B.ItemId as Kode_Barang,'
                   +' F.ItemName as Nama_Barang'
                   +' FROM ARTrKonInvPelDtSN A'
                   +' INNER JOIN ARTrKonInvPeldt B ON A.KonInvPelID=B.KonInvPelID AND A.ItemID=B.ItemID'
                   +' AND A.KonTransBrgID=B.KonTransBrgID AND A.Price=B.Price'
                   +' INNER JOIN ARTrKonInvPelHd C ON B.KonInvPelId=C.KonInvPelId'
                   +' INNER JOIN ARMsCustomer D ON C.CustID = D.CustID'
                   +' INNER JOIN INMsItem F ON F.ItemId=B.ItemId'
                   +' ORDER BY SNID ';
       if ShowModal = MrOK then
       begin
         quMain.Locate('KonInvPelID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARTrKonInvPelIDR.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
end;

procedure TfmARTrKonInvPelIDR.quDetilBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
end;

procedure TfmARTrKonInvPelIDR.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
end;

procedure TfmARTrKonInvPelIDR.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
end;

procedure TfmARTrKonInvPelIDR.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
end;

procedure TfmARTrKonInvPelIDR.dxDBButtonEdit2ButtonClick(Sender: TObject;
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

procedure TfmARTrKonInvPelIDR.dxButton1Click(Sender: TObject);
var sTotal : Currency;
begin
  inherited;
  if RbCetak.ItemIndex = 0 then
  Begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add(' Select isnull(TTLKj,0) as TTLKj FROM ARTrKonInvPelHd Where KonInvPelID='''+quMainKonInvPelID.AsString+'''');
      Open;
    end;
  if quAct.FieldByName('TTLKj').AsCurrency = 0 then
    stotal := quTotalGT.AsCurrency
  else
    stotal := quAct.FieldByName('TTLKj').AsCurrency;
     with TfmQRRptInvPenjualan.Create(Self) do
     try
       if UpperCase(quMainCurrId.Value) ='IDR' then
       begin
          qlbTerbilang.Caption :=  '* Terbilang '+ convert(FormatFloat(sEditFormat, stotal))+'rupiah #';
          qlbCurr1.Caption := 'Rp ';
          qlbCurr2.Caption := 'Rp ';
          qlbCurr3.Caption := 'Rp ';
          qlbCurr4.Caption := 'Rp ';
          qlbCurr5.Caption := 'Rp ';
          qlbCurr6.Caption := 'Rp ';
       end;
       if UpperCase(quMainCurrId.Value) ='USD' then
       begin
          qlbTerbilang.Caption :=  '* Terbilang '+ convert(FormatFloat(sEditFormat, stotal))+'dollar #';
          qlbCurr1.Caption := 'US ';
          qlbCurr2.Caption := 'US ';
          qlbCurr3.Caption := 'US ';
          qlbCurr4.Caption := 'US ';
          qlbCurr5.Caption := 'US ';
          qlbCurr6.Caption := 'US ';
       end;
       QRLabel31.Enabled := False;QRLabel32.Enabled := False;
       with qu001,SQL do
       Begin
         Close;Clear;
         add(' Select ''T'' as FgTax,KonInvPelID as SaleId,KonInvPelId, CurrId,A.Discount,A.DP,isnull(TTLKJ,0) as Total,'
            +' Convert(varchar(10),getdate(),103) as Tgl,A.CustId,C.CustName,C.Address,C.City,D.SalesName as Sales '
            +' FROM ARTrKonInvPelHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId'
            +' INNER JOIN ARMsSales D ON A.SalesID=D.SalesID '
            +' WHERE A.KonInvPelID='''+quMainKonInvPelID.AsString+'''');
         Open;
       End;

       With qu002,sql do
       Begin
         Close;Clear;
         add(' Select A.ItemId,B.ItemName,B.UOMId,C.Productdesc, Sum(Qty) as Qty,A.Price, '''' as Note FROM ARTrKonInvPelDt A'
            +' INNER JOIN INMsItem B ON A.Itemid=B.Itemid'
            +' INNER JOIN INMsProduct C ON B.ProductId=C.ProductId WHERE A.KonInvPelID=:KonInvPelID'
            +' GROUP BY A.ItemId,B.ItemName,B.UOMId,C.Productdesc,A.Price');
         Open;
       End;

       LaDiskon.Caption := quMainDiscount.AsString;
       laGT.Caption := quTotalGT.AsString;
       if quMainJatuhTempo.Value <> 0 then
       Begin
         qlbJatuhTempo.Caption := 'Pembayaran     : '+FormatFloat('##0', quMainJatuhTempo.AsInteger) + ' hari';
         qlbTempo.Caption :=  FormatDateTime('dd/MM/yyyy', IncDay(quMainTransDate.AsDateTime, quMainJatuhTempo.AsInteger));
       End
       Else
       Begin
         qlbJatuhTempo.Caption :='';
         qlbTempo.Caption := '';
         QRLabel29.Enabled := False; QRLabel17.Enabled := False;
       End;
       if quMainNote.AsString <> '' then
          qlbKet.Caption := '* ' + quMainNote.AsString
       else
          qlbKet.Caption := '';

       if RbHarga.ItemIndex=1 then
       Begin
          QRLabel9.Enabled := False;
          QRLabel10.Enabled := False;
          QRExpr2.Enabled := False;
          QRDBText9.Enabled := False;
       End
       Else
       Begin
         QRLabel9.Enabled := TRUE;
         QRLabel10.Enabled := TRUE;
         QRExpr2.Enabled := TRUE;
         QRDBText9.Enabled := TRUE;
       End;

       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;

     finally
        free;
     end;
  End;

  if RbCetak.ItemIndex = 1 then
  Begin
     with TfmQRRptSuratJalan.Create(Self) do
     try

     with qu001,SQL do
       Begin
         Close;Clear;
         add(' SELECT ''T'' as FgTax,KonInvPelID as SaleId,KonInvPelId, CurrId,A.Discount,A.DP,isnull(TTLKJ,0) as Total,'
            +' Convert(varchar(10),getdate(),103) as Tgl,A.CustId,C.CustName,C.Address '
            +' FROM ARTrKonInvPelHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId'
            +' WHERE A.KonInvPelID='''+quMainKonInvPelID.Value+'''');
         Open;
       End;

       With qu002,sql do
       Begin
         Close;Clear;
         add(' Select A.ItemId,B.ItemName,B.UOMId,C.Productdesc, Sum(Qty) as Qty,A.Price, '''' as Note FROM ARTrKonInvPelDt A'
            +' INNER JOIN INMsItem B ON A.Itemid=B.Itemid'
            +' INNER JOIN INMsProduct C ON B.ProductId=C.ProductId WHERE A.KonInvPelID=:KonInvPelID'
            +' GROUP BY A.ItemId,B.ItemName,B.UOMId,C.Productdesc,A.Price');
         Open;
       End;

       if quMainNote.AsString <> '' then
          qlbKet.Caption := '* ' + quMainNote.AsString
       else
          qlbKet.Caption := '';

      MyReport.PreviewModal;
      finally
        free;
     end;
  End;
end;

procedure TfmARTrKonInvPelIDR.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Cari Sales';
       SQLString := 'SELECT Salesname as Nama_Sales,SalesID as Kode_Sales'
                   +',Address, Phone, HP FROM ARMsSales WHERE FgActive <> 0'
                   +' ORDER BY SalesID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainSalesID.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrKonInvPelIDR.dbgSerialNumberSNIDButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Serial Number ';
       SQLString := 'SELECT K.SNID,L.KonTransBrgID,K.PurchaseID,CASE WHEN K.CurrID=''IDR'' THEN K.Price ELSE K.Price*K.Rate END as Modal,K.FgSN FROM ('
                   +'SELECT A.SNID,A.PurchaseID,A.ItemID,B.CurrID,B.Rate,A.Price,A.FgSN FROM APTrPurchaseDtSN A '
                   +'INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID UNION ALL '
                   +'SELECT A.SNID,A.KonsinyasiID,A.ItemID,C.CurrID,B.Rate,C.Price,A.FgSN FROM APTrKonsinyasiDtSN A '
                   +'INNER JOIN APTrKonsinyasiHd B ON A.KonsinyasiID=B.KonsinyasiID '
                   +'INNER JOIN APTrKonsinyasiDt C ON A.KonsinyasiID=C.KonsinyasiID AND B.KonsinyasiID=C.KonsinyasiID AND A.ItemID=C.ItemID) as K '
                   +'INNER JOIN ARTrKonTransBrgDtSN L ON K.SNID=L.SNID AND K.ItemID=L.ItemID '
                   +'WHERE K.ItemID='''+quDetilItemID.AsString+''' AND L.KonTransBrgID='''+quDetilKonTransBrgId.AsString+''' AND '
                   +'K.SNID NOT IN (SELECT P.SNID FROM ARTrKonInvPelDtSN P INNER JOIN ARTrKonInvPelHd Q ON P.KonInvPelID=Q.KonInvPelID '
                   +'WHERE Q.CustID='''+quMainCustID.AsString+''') AND K.SNID NOT IN (SELECT P.SNID FROM ARTrKonReturDtSN P '
                   +'INNER JOIN ARTrKonReturHd Q ON P.KonReturID=Q.KonReturID WHERE Q.CustID='''+quMainCustID.AsString+''' '
                   +'AND P.KonTransBrgID='''+quDetilKonTransBrgId.AsString+''') ORDER BY K.SNID';
       if ShowModal = MrOK then
       begin
          if quSN.State = dsBrowse then quSN.Edit;
             quSNSNID.Value :=Res[0];
             quSNModal.Value := StrToCurr(Res[3]);
             quSNPurchaseID.Value := Res[2];
             quSNFgSN.Value := Res[4];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrKonInvPelIDR.TmbBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmARTrKonInvPelIDR.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmARTrKonInvPelIDR.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmARTrKonInvPelIDR.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmARTrKonInvPelIDR.dxButton6Click(Sender: TObject);
begin
  inherited;
  quSN.Append;
end;

procedure TfmARTrKonInvPelIDR.dxButton7Click(Sender: TObject);
begin
  inherited;
  if quSN.IsEmpty then Abort;
  if (dsSN <> nil) and (dsSN.DataSet <> nil) and
     (MessageDlg('Hapus SN ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsSN.DataSet.Delete;
end;

procedure TfmARTrKonInvPelIDR.dxButton8Click(Sender: TObject);
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

procedure TfmARTrKonInvPelIDR.dxButton9Click(Sender: TObject);
begin
  inherited;
  quSN.Cancel;
end;

procedure TfmARTrKonInvPelIDR.dxButton2Click(Sender: TObject);
begin
  inherited;
  quCostItem.Append;
end;

procedure TfmARTrKonInvPelIDR.dxButton4Click(Sender: TObject);
begin
  inherited;
  if quCostItem.IsEmpty then Abort;
  if (dsCostItem <> nil) and (dsCostItem.DataSet <> nil) and
     (MessageDlg('Hapus Data ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsCostItem.DataSet.Delete;
end;

procedure TfmARTrKonInvPelIDR.dxButton5Click(Sender: TObject);
begin
  inherited;
  if Self.quCostItem.State = dsInsert then
  begin
   Self.quCostItem.Edit;
   Self.quCostItem.Post;
   Self.quCostItem.Requery();
  end;
  if Self.quCostItem.State = dsEdit then
  begin
   quCostItem.Post;
  end;
end;

procedure TfmARTrKonInvPelIDR.dxButton10Click(Sender: TObject);
begin
  inherited;
  quCostItem.Cancel;
end;

procedure TfmARTrKonInvPelIDR.quCostItemAfterPost(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(Qty),0) as Jumlah FROM ARTrKonInvPelCost WHERE '
       +'KonInvPelID='''+quMainKonInvPelID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' '
       +'AND KonTransBrgID='''+quDetilKonTransBrgId.AsString+''' ');
    Open;
  end;
  if quAct.FieldByName('Jumlah').AsInteger = quDetilQty.AsInteger then
  begin
    quDetil.Last;
    qudetil.Append;
    Abort;
  End else
  begin
   quCostItem.Append;
  end;
end;

procedure TfmARTrKonInvPelIDR.quCostItemBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CeKStatus;
end;

procedure TfmARTrKonInvPelIDR.quCostItemBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  with quCalc,SQl do
  begin
    Close;Clear;
    Add('SELECT SNID FROM ARTrKonInvPelDtSN WHERE KonInvPelID='''+quMainKonInvPelID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' ');
    Open;
    if quCalc.RecordCount <> 0 then
    begin
      ShowMessage('Serial Number sudah ada, tidak usah input Nota Pembelian lagi');
      Abort;
    end;
  end;
  with quAct,SQL do
  begin
   Close;Clear;
    Add('SELECT ISNULL(SUM(Qty),0) as Jumlah FROM ARTrKonInvPelCost WHERE '
       +'KonInvPelID='''+quMainKonInvPelID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' ');
   Open;
  End;
  if quAct.FieldByName('Jumlah').AsInteger >= quDetilQty.AsInteger then Abort;
end;

procedure TfmARTrKonInvPelIDR.quCostItemBeforePost(DataSet: TDataSet);
begin
  inherited;
  if quCostItem.State = dsInsert then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
       add('SELECT PurchaseID FROM ARTrKonInvPelCost WHERE KonInvPelID=:KonInvPelID AND PurchaseID=:PurchaseID '
          +'AND ItemID=:ItemID AND Price=:Price');
          Parameters.ParamByName('KonInvPelID').Value:= quMainKonInvPelID.AsString;
          Parameters.ParamByName('PurchaseID').Value:= quCostItemPurchaseID.AsString;
          Parameters.ParamByName('ItemID').Value:= quDetilItemID.AsString;
          Parameters.ParamByName('Price').Value:= quDetilPrice.AsString;
       Open;
       If quAct.RecordCount <> 0 then
       Begin
          MsgInfo('Nota Pembelian sudah ada dalam daftar');
          quCostItemPurchaseID.FocusControl;
          Abort;
       End;
    end;
    with quCalc,SQL do
    begin
      Close;Clear;
      Add('SELECT K.PurchaseID FROM (SELECT PurchaseID FROM APTrPurchaseHD UNION ALL SELECT KonsinyasiID FROM APTrKonsinyasiHD) as K '
         +'WHERE K.PurchaseID = '''+quCostItemPurchaseID.AsString+''' ');
      Open;
      if IsEmpty then
      begin
        ShowMessage('Nota Pembelian tidak terdaftar');
        quCostItemPurchaseID.FocusControl;
        Abort;
      end;
    end;
  end;
  if quCostItemQty.AsInteger <= 0 then
  begin
    ShowMessage('Jumlah barang yang mau dikeluarkan sudah habis');
    quCostItemPurchaseID.FocusControl;
    Abort;
  end;
  quCostItemUpdDate.AsDateTime := GetServerDateTime;
  quCostItemUpdUser.AsString := dmMain.UserId;
end;

procedure TfmARTrKonInvPelIDR.quCostItemNewRecord(DataSet: TDataSet);
begin
  inherited;
  quCostItemPurchaseID.FocusControl;
  quCostItemQty.AsInteger := 0;
end;

procedure TfmARTrKonInvPelIDR.dbgCostPurchaseIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Nota Barang Masuk';
       SQLString :='SELECT K.PurchaseID,CONVERT(VARCHAR(10),K.Transdate,103) as Tgl_Beli,K.SuppName,K.Qty -  '
                  +'(SELECT ISNULL(SUM(X.Qty),0)FROM ARTrPenjualanCost X INNER JOIN ARTrPenjualanDT Y ON X.SaleID=Y.SaleID AND X.ItemID=Y.ItemID '
                  +'WHERE X.ItemID=K.ItemID AND K.PurchaseID=X.PurchaseID AND Y.FlagRetur=''T'') - (SELECT ISNULL(SUM(X.Qty),0) FROM ARTrKonInvPelCost X '
                  +'INNER JOIN ARTrKonInvPelDT Y ON X.KonInvPelID=Y.KonInvPelID AND X.ItemID=Y.ItemID WHERE X.ItemID=K.ItemID AND K.PurchaseID=X.PurchaseID) '
                  +'as Sisa FROM (SELECT A.ItemID,A.PurchaseID,B.SuppName,A.Qty - (SELECT ISNULL(SUM(X.Qty),0) '
                  +'FROM APTrReturnDT X INNER JOIN APTrReturnHD Y ON X.ReturnID=Y.ReturnID '
                  +'WHERE Y.FlagRetur=''B'' AND X.PurchaseID=A.PurchaseID AND X.ItemID=A.ITemID) as Qty, C.Transdate FROM APTrPurchaseDT A '
                  +'INNER JOIN APTrPurchaseHD C ON A.PurchaseID=C.PurchaseID INNER JOIN APMsSupplier B ON A.SuppID=B.SuppID UNION ALL '
                  +'SELECT A.ItemID,A.KonsinyasiID,C.SuppName,A.Qty - (SELECT ISNULL(SUM(X.Qty),0) FROM APTrReturnKonDT X '
                  +'WHERE X.KonsinyasiID=A.KonsinyasiID AND X.ItemID=A.ItemID),B.Transdate FROM APTrKonsinyasiDt A '
                  +'INNER JOIN APTrKonsinyasiHd B ON A.KonsinyasiID=B.KonsinyasiID INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID) as K '
                  +'WHERE K.ItemID='''+quDetilItemID.AsString+''' AND K.Qty - (SELECT ISNULL(SUM(X.Qty),0) as Jumlah FROM ARTrPenjualanCost X '
                  +'INNER JOIN ARTrPenjualanDT Y ON X.SaleID=Y.SaleID AND X.ItemID=Y.ItemID WHERE X.ItemID=K.ItemID AND K.PurchaseID=X.PurchaseID AND Y.FlagRetur=''T'') - '
                  +'(SELECT ISNULL(SUM(X.Qty),0) FROM ARTrKonInvPelCost X INNER JOIN ARTrKonInvPelDT Y ON X.KonInvPelID=Y.KonInvPelID AND X.ItemID=Y.ItemID '
                  +'WHERE X.ItemID=K.ItemID AND K.PurchaseID=X.PurchaseID) > 0 '
                  +'AND CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',quMainTransDate.AsDateTime)+''' '
                  +'ORDER BY CONVERT(VARCHAR(8),K.Transdate,112),K.PurchaseID';
       if ShowModal = MrOK then
       begin
          if quCostItem.State = dsBrowse then quCostItem.Edit;
             quCostItemPurchaseID.Value :=Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrKonInvPelIDR.dsCostItemStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgCostPurchaseID,quCostItem.State<>dsInsert);
  SetReadOnly(dbgCostQty,TRUE);
end;

procedure TfmARTrKonInvPelIDR.quCostItemPurchaseIDChange(Sender: TField);
var Sisa,Jumlah : Integer;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT K.Qty - (SELECT ISNULL(SUM(X.Qty),0) FROM ARTrKonInvPelCost X WHERE X.ItemID=K.ItemID AND K.PurchaseID=X.PurchaseID) - '
       +'(SELECT ISNULL(SUM(X.Qty),0) FROM ARTrPenjualanCost X INNER JOIN ARTrPenjualanDT Y ON X.SaleID=Y.SaleID AND X.ItemID=Y.ItemID '
       +'WHERE X.ItemID=K.ItemID AND K.PurchaseID=X.PurchaseID AND Y.FlagRetur=''T'') as Sisa FROM( '
       +'SELECT A.ItemID,A.PurchaseID,B.SuppName,A.Qty FROM APTrPurchaseDT A '
       +'INNER JOIN APMsSupplier B ON A.SuppID=B.SuppID UNION ALL '
       +'SELECT A.ItemID,A.KonsinyasiID,C.SuppName,A.Qty FROM APTrKonsinyasiDt A '
       +'INNER JOIN APTrKonsinyasiHd B ON A.KonsinyasiID=B.KonsinyasiID '
       +'INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID) as K '
       +'WHERE K.ItemID='''+quDetilItemID.AsString+''' AND K.PurchaseID='''+quCostItemPurchaseID.AsString+''' ');
    Open;
  end;
  Jumlah := quAct.FieldByName('Sisa').AsInteger;
  with quCalc,SQL do
  begin
    Close;Clear;
    Add('SELECT A.Qty - (SELECT ISNULL(SUM(X.Qty),0) FROM ARTrKonInvPelCost X WHERE X.ItemID=A.ItemID AND X.KonInvPelID=A.KonInvPelID) as Sisa '
       +'FROM ARTrKonInvPelDT A WHERE A.KonInvPelID='''+quMainKonInvPelID.AsString+''' AND A.ItemID='''+quDetilItemID.AsString+'''');
    Open;
  end;
  Sisa := quCalc.FieldByName('Sisa').AsInteger;
  if Jumlah > Sisa then
     quCostItemQty.AsInteger := Sisa
  else
     quCostItemQty.AsInteger := Jumlah;
end;

end.
