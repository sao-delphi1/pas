unit SerialNumber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv0, dxExEdtr, dxCntner, DB, ADODB, StdCtrls, dxCore,
  dxButton, dxEditor, dxEdLib, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid;

type
  TfmSerialNumber = class(TfmStdLv0)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    dxEdit1: TdxEdit;
    dxEdit2: TdxEdit;
    dxEdit3: TdxEdit;
    dxEdit5: TdxEdit;
    dxButton1: TdxButton;
    Label4: TLabel;
    quMain: TADOQuery;
    dsMain: TDataSource;
    quDetil: TADOQuery;
    dsDetil: TDataSource;
    quMainItemID: TStringField;
    quMainItemName: TStringField;
    quMainQty: TBCDField;
    dbgDetail: TdxDBGrid;
    dxButtonEdit1: TdxButtonEdit;
    dbgDetailItemID: TdxDBGridColumn;
    dbgDetailItemName: TdxDBGridColumn;
    dbgDetailQty: TdxDBGridColumn;
    quDetilItemID: TStringField;
    quDetilItemName: TStringField;
    quDetilQty: TBCDField;
    dbgData: TdxDBGrid;
    dbgDataItemID: TdxDBGridColumn;
    dbgDataItemName: TdxDBGridColumn;
    dbgDataQty: TdxDBGridColumn;
    dxButton2: TdxButton;
    procedure dxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dsDetilStateChange(Sender: TObject);
    procedure dxButtonEdit1Change(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TglFormat,Nota,KodeSupplier,KodeBarang : string;
    Jumlah : Integer;
  end;

var
  fmSerialNumber: TfmSerialNumber;

implementation

uses ConMain, MyUnit, UnitGeneral, Search;

{$R *.dfm}

procedure TfmSerialNumber.dxButton1Click(Sender: TObject);
begin
  inherited;
  if TRIM(dxButtonEdit1.Text) = '' then
  begin
    pesan('Nota GRN tidak boleh kosong');
    dxButtonEdit1.SetFocus;
    Abort;
  end;
  if quMainItemID.AsString <> quDetilItemID.AsString then
  begin
    pesan('Data tidak sesuai');
    dxButtonEdit1.SetFocus;
    Abort;
  end else
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('UPDATE APTrPurchaseHd SET KonsinyasiID='''+dxButtonEdit1.Text+''' '
         +'WHERE PurchaseID='''+Nota+''' AND SuppID='''+KodeSupplier+''' ');
      ExecSQL;
    end;
    with quAct,SQL do
    begin
      Close;Clear;
      Add('INSERT APTrPurchaseDtSN (PurchaseID,ItemID,SuppId,WarehouseID,Price,SNID,UpdDate,UpdUser,FgJual,FgSN)');
      Add('SELECT A.PurchaseID,B.ItemID,A.SuppID,B.WarehouseID,B.Price,C.SNID,getdate(),'''+dmMain.UserId+''',C.FgJual,C.FgSN '
         +'FROM APTrPurchaseHd A INNER JOIN APTrPurchaseDt B ON A.PurchaseID=B.PurchaseID AND A.SuppID=B.SuppID '
         +'INNER JOIN APTrKonsinyasiDtSN C ON A.KonsinyasiID=C.KonsinyasiID AND B.ItemID=C.ItemID '
         +'WHERE A.PurchaseID='''+Nota+''' AND A.KonsinyasiID='''+dxButtonEdit1.Text+''' AND A.SuppID='''+KodeSupplier+''' ');
      ExecSQL;
    end;
  end;
  Self.Close;
end;

procedure TfmSerialNumber.FormShow(Sender: TObject);
begin
  inherited;
  dxButtonEdit1.SetFocus;
  with quMain,SQL do
  begin
    Close;Clear;
    Add('SELECT A.ItemID,B.ItemName,A.Qty FROM APTrPurchaseDt A '
       +'INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
       +'WHERE A.PurchaseID='''+Nota+''' AND A.SuppID='''+KodeSupplier+''' '
       +'ORDER BY A.ItemID');
    Open;
  end;
end;

procedure TfmSerialNumber.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgDetailItemID,TRUE);
  SetReadOnly(dbgDetailItemName,TRUE);
  SetReadOnly(dbgDetailQty,TRUE);
end;

procedure TfmSerialNumber.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
     try
        Title := 'Nota Penerimaan Barang';
        SQLString := 'SELECT KonsinyasiID,CONVERT(Varchar(10),Transdate,103) as Tanggal FROM ApTrKonsinyasiHD '
                    +'WHERE SuppID='''+KodeSupplier+''' AND KonsinyasiID NOT IN (SELECT ISNULL(KonsinyasiID,'''') FROM APTrPurchaseHD) ';
        if ShowModal = MrOK then
           dxButtonEdit1.Text := Res[0];
     finally
        free;
     end;
end;

procedure TfmSerialNumber.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgDataItemID,TRUE);
  SetReadOnly(dbgDataItemName,TRUE);
  SetReadOnly(dbgDataQty,TRUE);
end;

procedure TfmSerialNumber.dxButtonEdit1Change(Sender: TObject);
begin
  inherited;
  with quDetil,SQL do
  begin
    Close;Clear;
    Add('SELECT A.ItemID,B.ItemName,A.Qty '
       +'FROM APTrKonsinyasiDt A INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
       +'WHERE A.KonsinyasiID='''+dxButtonEdit1.Text+''' ORDER BY A.ItemID');
    Open;
  end;
end;

procedure TfmSerialNumber.dxButton2Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

end.
