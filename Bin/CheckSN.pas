unit CheckSN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, DB, ActnList, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxCore, dxContainer, Buttons, dxTL, dxDBCtrl, dxDBGrid,
  dxButton, dxDBTLCl, dxGrClms;

type
  TfmCheckSN = class(TfmStdLv2)
    dbgData: TdxDBGrid;
    quMainTanggal: TStringField;
    quMainPurchaseID: TStringField;
    quMainSuppName: TStringField;
    quMainTotal: TBCDField;
    dbgDataTanggal: TdxDBGridColumn;
    dbgDataPurchaseID: TdxDBGridColumn;
    dbgDataSuppName: TdxDBGridColumn;
    dbgDataTotal: TdxDBGridColumn;
    dxButton1: TdxButton;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    dbgDataUpdDate: TdxDBGridColumn;
    dbgDataUpdUser: TdxDBGridColumn;
    quDetil: TADOQuery;
    quDetilPurchaseID: TStringField;
    quDetilItemID: TStringField;
    quDetilQty: TBCDField;
    quDetilWarehouseID: TStringField;
    quDetilPrice: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilLuItemName: TStringField;
    quDetilCTotal: TFloatField;
    quDetilSuppId: TStringField;
    quDetilDisc: TFloatField;
    dsDetil: TDataSource;
    dbgDetail: TdxDBGrid;
    quMainSuppID: TStringField;
    dbgDetailPurchaseID: TdxDBGridColumn;
    dbgDetailItemID: TdxDBGridColumn;
    dbgDetailLuItemName: TdxDBGridColumn;
    dbgDetailQty: TdxDBGridColumn;
    dbgDetailWarehouseID: TdxDBGridColumn;
    dbgDetailPrice: TdxDBGridColumn;
    dbgDetailUpdDate: TdxDBGridColumn;
    dbgDetailUpdUser: TdxDBGridColumn;
    dbgDetailCTotal: TdxDBGridColumn;
    dbgDetailLWareHouse: TdxDBGridColumn;
    dbgDetailSuppId: TdxDBGridColumn;
    dbgDetailDisc: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dbgDataDblClick(Sender: TObject);
    procedure dsDetilStateChange(Sender: TObject);
    procedure quDetilCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCheckSN: TfmCheckSN;

implementation

uses StdLv1, SerialNumber, UnitGeneral, StdLv0;

{$R *.dfm}

procedure TfmCheckSN.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
end;

procedure TfmCheckSN.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Open;
  quDetil.Open;
  dxButton1.SetFocus;
end;

procedure TfmCheckSN.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgDataTanggal,TRUE);
  SetReadOnly(dbgDataSuppName,TRUE);
  SetReadOnly(dbgDataPurchaseID,TRUE);
  SetReadOnly(dbgDataTotal,TRUE);
  SetReadOnly(dbgDataUpdDate,TRUE);
  SetReadOnly(dbgDataUpdUser,TRUE);
end;

procedure TfmCheckSN.dbgDataDblClick(Sender: TObject);
begin
  inherited;
  with TfmSerialNumber.Create(self) do
  try
    dxEdit1.Text := quMainTanggal.AsString;
    dxEdit2.Text := quMainPurchaseID.AsString;
    dxEdit3.Text := quMainSuppName.AsString;
    dxEdit5.Text := FormatCurr('#,0',quMainTotal.AsCurrency);
    Nota := quMainPurchaseID.AsString;
    KodeSupplier := quMainSuppID.AsString;
    ShowModal;
  finally
    free;
  end;
  quMain.Requery();
end;

procedure TfmCheckSN.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgDetailItemID,TRUE);
  SetReadOnly(dbgDetailLuItemName,TRUE);
  SetReadOnly(dbgDetailQty,TRUE);
  SetReadOnly(dbgDetailPrice,TRUE);
  SetReadOnly(dbgDetailCTotal,TRUE);
  SetReadOnly(dbgDetailUpdDate,TRUE);
  SetReadOnly(dbgDetailUpdUser,TRUE);
end;

procedure TfmCheckSN.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT B.ItemName,A.Qty*A.Price as Total '
       +'FROM APTrPurchaseDt A INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
       +'WHERE A.ItemID='''+quDetilItemID.AsString+''' AND A.PurchaseID='''+quMainPurchaseID.AsString+''' ');
    Open;
  end;
  quDetilCTotal.AsCurrency := quAct.FieldByName('Total').AsCurrency;
  quDetilLuItemName.AsString := quAct.FieldByName('ItemName').AsString;
end;

end.
