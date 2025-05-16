unit ARTrCariModal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxCore, dxContainer, Buttons, dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms, DBCtrls;

type
  TfmARTrCariModal = class(TfmStdLv2)
    dbgPenjualan: TdxDBGrid;
    Label13: TLabel;
    dbgPenjualanSaleID: TdxDBGridColumn;
    dbgPenjualanItemID: TdxDBGridColumn;
    dbgPenjualanItemName: TdxDBGridColumn;
    dbgPenjualanWarehouse: TdxDBGridColumn;
    dbgPenjualanQty: TdxDBGridColumn;
    dbgPenjualanPrice: TdxDBGridColumn;
    quCostItem: TADOQuery;
    quCostItemPurchaseID: TStringField;
    quCostItemSaleID: TStringField;
    quCostItemItemID: TStringField;
    quCostItemPrice: TBCDField;
    quCostItemWarehouseID: TStringField;
    quCostItemQty: TIntegerField;
    quCostItemUpdDate: TDateTimeField;
    quCostItemUpdUser: TStringField;
    dsCostItem: TDataSource;
    dbgCost: TdxDBGrid;
    dbgCostPurchaseID: TdxDBGridButtonColumn;
    dbgCostSaleID: TdxDBGridMaskColumn;
    dbgCostItemID: TdxDBGridMaskColumn;
    dbgCostPrice: TdxDBGridCurrencyColumn;
    dbgCostWarehouseID: TdxDBGridMaskColumn;
    dbgCostUpdDate: TdxDBGridDateColumn;
    dbgCostQty: TdxDBGridColumn;
    dbgCostUpdUser: TdxDBGridMaskColumn;
    Label1: TLabel;
    quAct1: TADOQuery;
    DBText4: TDBText;
    quMainTransdate: TDateTimeField;
    quMainSaleID: TStringField;
    quMainItemID: TStringField;
    quMainWarehouseID: TStringField;
    quMainQty: TIntegerField;
    quMainPrice: TBCDField;
    quMainItemName: TStringField;
    procedure FormShow(Sender: TObject);
    procedure dbgCostPurchaseIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quCostItemPurchaseIDChange(Sender: TField);
    procedure dsCostItemStateChange(Sender: TObject);
    procedure quCostItemNewRecord(DataSet: TDataSet);
    procedure quCostItemBeforePost(DataSet: TDataSet);
    procedure quCostItemAfterPost(DataSet: TDataSet);
    procedure quCostItemBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARTrCariModal: TfmARTrCariModal;

implementation

uses MyUnit, ConMain, UnitGeneral, Search, StdLv1;

{$R *.dfm}

procedure TfmARTrCariModal.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),B.TransDate,112), A.SaleID';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dbgPenjualan);
  SettingDxGrid(dbgCost);
  inherited;
  quMain.Active := TRUE;
  quCostItem.Active := TRUE;
end;

procedure TfmARTrCariModal.dbgCostPurchaseIDButtonClick(Sender: TObject;
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
                  +'SELECT A.ItemID,A.KonsinyasiID,C.CustName,A.Qty - (SELECT ISNULL(SUM(X.Qty),0) FROM APTrReturnKonDT X '
                  +'WHERE X.KonsinyasiID=A.KonsinyasiID AND X.ItemID=A.ItemID),B.Transdate FROM APTrKonsinyasiDt A '
                  +'INNER JOIN APTrKonsinyasiHd B ON A.KonsinyasiID=B.KonsinyasiID INNER JOIN ARMsCustomer C ON B.CustID=C.CustID) as K '
                  +'WHERE K.ItemID='''+quMainItemID.AsString+''' AND K.Qty - (SELECT ISNULL(SUM(X.Qty),0) as Jumlah FROM ARTrPenjualanCost X '
                  +'INNER JOIN ARTrPenjualanDT Y ON X.SaleID=Y.SaleID AND X.ItemID=Y.ItemID WHERE X.ItemID=K.ItemID AND K.PurchaseID=X.PurchaseID AND Y.FlagRetur=''T'') - '
                  +'(SELECT ISNULL(SUM(X.Qty),0) FROM ARTrKonInvPelCost X INNER JOIN ARTrKonInvPelDT Y ON X.KonInvPelID=Y.KonInvPelID AND X.ItemID=Y.ItemID '
                  +'WHERE X.ItemID=K.ItemID AND K.PurchaseID=X.PurchaseID) > 0 '
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

procedure TfmARTrCariModal.quCostItemPurchaseIDChange(Sender: TField);
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
       +'SELECT A.ItemID,A.KonsinyasiID,C.CustName,A.Qty FROM APTrKonsinyasiDt A '
       +'INNER JOIN APTrKonsinyasiHd B ON A.KonsinyasiID=B.KonsinyasiID '
       +'INNER JOIN ARMsCustomer C ON B.CustID=C.CustID) as K '
       +'WHERE K.ItemID='''+quMainItemID.AsString+''' AND K.PurchaseID='''+quCostItemPurchaseID.AsString+''' ');
    Open;
  end;
  Jumlah := quAct.FieldByName('Sisa').AsInteger;
  with quAct1,SQL do
  begin
    Close;Clear;
    Add('SELECT A.Qty - (SELECT ISNULL(SUM(X.Qty),0) FROM ARTrPenjualanCost X WHERE X.ItemID=A.ItemID AND X.SaleID=A.SaleID) as Sisa '
       +'FROM ARTrPenjualanDT A WHERE A.SaleID='''+quMainSaleID.AsString+''' AND A.ItemID='''+quMainItemID.AsString+'''');
    Open;
  end;
  Sisa := quAct1.FieldByName('Sisa').AsInteger;
  if Jumlah > Sisa then
     quCostItemQty.AsInteger := Sisa
  else
     quCostItemQty.AsInteger := Jumlah;
end;

procedure TfmARTrCariModal.dsCostItemStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgCostPurchaseID,quCostItem.State<>dsInsert);
  SetReadOnly(dbgCostQty,TRUE);
end;

procedure TfmARTrCariModal.quCostItemNewRecord(DataSet: TDataSet);
begin
  inherited;
  quCostItemPurchaseID.FocusControl;
  quCostItemQty.AsInteger := 0;
end;

procedure TfmARTrCariModal.quCostItemBeforePost(DataSet: TDataSet);
begin
  inherited;
  if quCostItem.State = dsInsert then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
       add(' SELECT PurchaseID FROM ARTrPenjualanCost WHERE SaleID=:SaleID and PurchaseID=:PurchaseID and ItemID=:ItemID'
          +' AND WareHouseId=:WareHouseId AND Price=:Price');
          Parameters.ParamByName('SaleID').Value:= quMainSaleID.AsString;
          Parameters.ParamByName('PurchaseID').Value:= quCostItemPurchaseID.AsString;
          Parameters.ParamByName('ItemID').Value:= quMainItemID.AsString;
          Parameters.ParamByName('WareHouseID').Value:= quMainWarehouseID.AsString;
          Parameters.ParamByName('Price').Value:= quMainPrice.AsString;
       Open;
       If quAct.RecordCount <> 0 then
       Begin
          MsgInfo('Nota Pembelian sudah ada dalam daftar');
          quCostItemPurchaseID.FocusControl;
          Abort;
       End;
    end;
    with quAct1,SQL do
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
  quCostItemUpdDate.AsDateTime := GetServerDateTime;
  quCostItemUpdUser.AsString := dmMain.UserId;
end;

procedure TfmARTrCariModal.quCostItemAfterPost(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(Qty),0) as Jumlah FROM ARTrPenjualanCost WHERE '
       +'SaleID='''+quMainSaleID.AsString+''' AND ItemID='''+quMainItemID.AsString+''' ');
    Open;
  end;
  if quAct.FieldByName('Jumlah').AsInteger = quMainQty.AsInteger then
  begin
    quMain.Requery();
  End
  else
  begin
   quCostItem.Append;
  end;
end;

procedure TfmARTrCariModal.quCostItemBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  with quAct1,SQl do
  begin
    Close;Clear;
    Add('SELECT SNID FROM ARTrPenjualanSN WHERE SaleID='''+quMainSaleID.AsString+''' AND ItemID='''+quMainItemID.AsString+''' ');
    Open;
    if quAct1.RecordCount <> 0 then
    begin
      ShowMessage('Serial Number sudah ada, tidak usah input Nota Pembelian lagi');
      Abort;
    end;
  end;
  with quAct,SQL do
  begin
   Close;Clear;
    Add('SELECT ISNULL(SUM(Qty),0) as Jumlah FROM ARTrPenjualanCost WHERE '
       +'SaleID='''+quMainSaleID.AsString+''' AND ItemID='''+quMainItemID.AsString+''' ');
   Open;
  End;
  if quAct.FieldByName('Jumlah').AsInteger >= quMainQty.AsInteger then Abort;
end;

end.
