unit INMsWareHouse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, DB, ActnList,
  dxCntner, ADODB, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls,
  Buttons, dxCore, dxContainer, dxDBELib, dxEditor, DBCtrls;

type
  TfmINMsWareHouse = class(TfmStdLv4)
    dbgListWarehouseID: TdxDBGridColumn;
    dbgListWarehouseName: TdxDBGridColumn;
    dbgListAddress: TdxDBGridColumn;
    dbgListCity: TdxDBGridColumn;
    dbgListContactPerson: TdxDBGridColumn;
    dbgListPhone: TdxDBGridColumn;
    dbgListFax: TdxDBGridColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    quMainWarehouseID: TStringField;
    quMainWarehouseName: TStringField;
    quMainAddress: TStringField;
    quMainCity: TStringField;
    quMainContactPerson: TStringField;
    quMainPhone: TStringField;
    quMainFax: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    DBText2: TDBText;
    Label8: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    procedure dsMainStateChange(Sender: TObject);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure ActNewExecute(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure pcMainChanging(Sender: TObject; NewPage: TdxTabSheet;
      var AllowChange: Boolean);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quMainBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CekStatus;
  public
    { Public declarations }
  end;

var
  fmINMsWareHouse: TfmINMsWareHouse;

implementation

uses UnitGeneral, StdLv1, ConMain, Search, StdLv2, MyUnit;

{$R *.dfm}
procedure TfmINMsWareHouse.CekStatus;
Begin
 With quAct,sql do
 Begin
  Close;Clear;
  Add(' SELECT top 1 1 as kode FROM APTrPurchaseDt WHERE WareHouseId=:kdbrg1'+
      ' union select top 1 2 as kode from ARTrPenjualanDt where WareHouseId=:kdbrg2'+
      ' union select top 1 3 as kode from INTrTransferItemHd where WareHouseSrc=:kdbrg3'+
      ' union select top 1 4 as kode from INTrAdjustmentHd where WareHouseId=:kdbrg4'+
      ' union select top 1 5 as kode from ARTrKonTransBrgHd where WareHouseId=:kdbrg5'+
      ' union select top 1 6 as kode from APTrKonsinyasiHd where WareHouseId=:kdbrg6 '+
      ' union select top 1 7 as kode from APTrReturnRepDt where WareHouseId=:kdbrg7 '+
      ' union select top 1 8 as kode from ARTrPenggantiReturPenjDt where WareHouseId=:kdbrg8 '+
      ' union select top 1 9 as kode from APTrReturnDt where WareHouseId=:kdbrg9 '+
      ' union select top 1 10 as kode from ARTrReturPenjualanDt  where WareHouseId=:kdbrg10' +
      ' union select top 1 11 as kode from ARTrServiceHd where WareHouseId=:kdbrg11 '+
      ' union select top 1 12 as kode from ARTrServiceDtPS where WareHouseId=:kdbrg12 ');
      Parameters.ParamByName('kdbrg1').Value := quMainWarehouseID.AsString;
      Parameters.ParamByName('kdbrg2').Value := quMainWarehouseID.AsString;
      Parameters.ParamByName('kdbrg3').Value := quMainWarehouseID.AsString;
      Parameters.ParamByName('kdbrg4').Value := quMainWarehouseID.AsString;
      Parameters.ParamByName('kdbrg5').Value := quMainWarehouseID.AsString;
      Parameters.ParamByName('kdbrg6').Value := quMainWarehouseID.AsString;
      Parameters.ParamByName('kdbrg7').Value := quMainWarehouseID.AsString;
      Parameters.ParamByName('kdbrg8').Value := quMainWarehouseID.AsString;
      Parameters.ParamByName('kdbrg9').Value := quMainWarehouseID.AsString;
      Parameters.ParamByName('kdbrg10').Value := quMainWarehouseID.AsString;
      Parameters.ParamByName('kdbrg11').Value := quMainWarehouseID.AsString;
      Parameters.ParamByName('kdbrg12').Value := quMainWarehouseID.AsString;
      Open;
      if Not IsEmpty then
      begin
        case quAct.FieldByName('kode').AsInteger of
          1 : pesan('Kode Gudang sedang digunakan di transaksi PEMBELIAN');
          2 : pesan('Kode Gudang sedang digunakan di transaksi PENJUALAN');
          3 : pesan('Kode Gudang sedang digunakan di transaksi TRANSFER Antar Cabang');
          4 : pesan('Kode Gudang sedang digunakan di transaksi Adjusment');
          5 : pesan('Kode Gudang sedang digunakan di transaksi TRANSFER Konsiyasi');
          6 : pesan('Kode Gudang sedang digunakan di transaksi Terima Barang Konsiyasi');
          7 : pesan('Kode Gudang sedang digunakan di transaksi Pengganti Retur Pembelian');
          8 : pesan('Kode Gudang sedang digunakan di transaksi Pengganti Retur Penjualan');
          9 : pesan('Kode Gudang sedang digunakan di transaksi Retur Pembelian');
          10 : pesan('Kode Gudang sedang digunakan di transaksi Retur Penjualan');
          11 : pesan('Kode Gudang sedang digunakan di transaksi Service');
          12 : pesan('Kode Gudang sedang digunakan di transaksi Pengunaan SparePart');
        end;
        Abort;
     end;
  End;   
End;


procedure TfmINMsWareHouse.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBEdit1,qumain.State<>dsinsert);
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
end;

procedure TfmINMsWareHouse.dxDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmINMsWareHouse.ActNewExecute(Sender: TObject);
begin
  inherited;
 quMainWarehouseID.FocusControl;
end;

procedure TfmINMsWareHouse.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(quMainWarehouseID.Value)='' then
  begin
    MsgInfo('Kode Gudang tidak boleh kosong');
    quMainWarehouseID.FocusControl;
    Abort;
  end;

  if quMain.State = dsInsert then
  Begin
    With quAct,Sql do
    Begin
      Close;Clear;
      add('Select WareHouseID from INMsWareHouse Where wareHouseID='''+quMainWarehouseID.Value+''' ');
      Open;
      If Not IsEmpty then
      Begin
        MsgInfo('Kode Gudang sudah dipakai');
        quMainWarehouseID.FocusControl;
        Abort;
      End;
    End;
  End;

  If Trim(quMainWarehouseName.Value)='' then
  begin
    MsgInfo('Nama Gudang tidak boleh kosong');
    quMainWarehouseName.FocusControl;
    Abort;
  end;
  quMainUpdDate.Value := GetServerDateTime;
  quMainUpdUser.value := dmMain.UserId;
end;

procedure TfmINMsWareHouse.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
  SettingDxGrid(dbgList);
end;

procedure TfmINMsWareHouse.FormShow(Sender: TObject);
begin
  inherited;
 qumain.Active:=TRUE;
end;

procedure TfmINMsWareHouse.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Cari Master Gudang';
         SQLString := 'SELECT WareHouseId as Kode_Gudang, WarehouseName as Nama_Gudang, '
                     +' Address as Alamat, City as Kota, '
                     +' ContactPerson as Contact_Person, Phone as No_Telephone, Fax as No_Fax FROM INMsWareHouse';
         if ShowModal = MrOk then
         begin
            qumain.Locate('WareHouseID',Res[0],[]);
         end;
       finally
         free;
       end;
    end;
end;

procedure TfmINMsWareHouse.pcMainChanging(Sender: TObject;
  NewPage: TdxTabSheet; var AllowChange: Boolean);
begin
  inherited;
 AllowChange := FActDS.State=dsBrowse;
end;

procedure TfmINMsWareHouse.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
end;

procedure TfmINMsWareHouse.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
end;

end.
