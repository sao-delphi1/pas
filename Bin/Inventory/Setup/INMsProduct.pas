unit INMsProduct;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, dxPageControl,
  dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons, dxCore, dxContainer,
  dxTL, dxDBCtrl, dxDBGrid;

type
  TfmINMsProduct = class(TfmStdLv31)
    dbgProduct: TdxDBGrid;
    dbgProductProductID: TdxDBGridColumn;
    dbgProductName: TdxDBGridColumn;
    quMainProductID: TStringField;
    quMainProductDesc: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    dbgProductUser: TdxDBGridColumn;
    dbgProductUpdDate: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActNewExecute(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    procedure cekStatus;
  public
    { Public declarations }
    CallFromAnotherMenu : boolean;
  end;

var
  fmINMsProduct: TfmINMsProduct;

implementation

uses UnitGeneral, ConMain, Search;

{$R *.dfm}
procedure TfmINMsProduct.cekStatus;
Begin
 With quAct,sql do
  Begin
    Close;Clear;
    Add('Select Top 1 ProductId FROM INMsItem WHERE ProductId='''+quMainProductID.Value+'''');
    Open;
    if not IsEmpty then
    Begin
      MsgInfo('kode Produk ini sudah di pakai di Master Barang');
      Abort;
    End;
  End;
End;

procedure TfmINMsProduct.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
  SettingDxGrid(dbgProduct);
end;

procedure TfmINMsProduct.FormShow(Sender: TObject);
begin
  inherited;
  qumain.Active:=TRUE;
end;

procedure TfmINMsProduct.ActNewExecute(Sender: TObject);
begin
  inherited;
 quMainProductId.FocusControl;
end;

procedure TfmINMsProduct.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
   if Trim(quMainProductId.value)='' then
   Begin
     MsgInfo('Kode tidak boleh kosong');
     quMainProductId.FocusControl;
     Abort;
   End;

   if Trim(quMainProductDesc.value)='' then
   Begin
     MsgInfo('Nama Product belum diisi');
     quMainProductDesc.FocusControl;
     Abort;
   End;

   If quMain.State = dsInsert then
   begin
      With quAct,SQL do
      begin
         Close;Clear;
         add('Select ProductID FROM INMsProduct WHERE ProductID='''+quMainProductId.Value+'''');
         Open;
         If Not IsEmpty then
         begin
           MsgInfo('Kode ini sudah dipakai');
           quMainProductId.FocusControl;
           Abort;
         end;
      End;
   end;

  quMainUpdDate.Value:= GetServerDateTime;
  quMainUpdUser.Value:= dmMain.UserId;
end;

procedure TfmINMsProduct.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Cari Master Product';
         SQLString := 'SELECT ProductId as Product_ID,ProductDesc as Description from INMsProduct';
         if ShowModal = MrOk then
         begin
            qumain.Locate('ProductId',Res[0],[]);
         end;
       finally
         free;
       end;
    end;
end;

procedure TfmINMsProduct.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgProductProductID,quMain.State<>dsInsert);
  SetReadOnly(dbgProductUser,quMain.State<>dsInsert);
  SetReadOnly(dbgProductUpdDate,quMain.State<>dsInsert);
end;
procedure TfmINMsProduct.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
     cekStatus;
end;

end.
