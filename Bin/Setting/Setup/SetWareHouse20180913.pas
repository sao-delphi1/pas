unit SetWareHouse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, dxButton, ExtCtrls, ActnList, DB, dxExEdtr, dxCntner,
  ADODB, StdCtrls, Buttons, dxCore, dxContainer, DBCtrls, dxEditor,
  dxEdLib, dxDBELib,Printers;

type
  TfmSettingGudang = class(TfmStdLv2)
    Panel1: TPanel;
    quCust: TADOQuery;
    quWareHouse: TADOQuery;
    quMainLCustName: TStringField;
    quMainLDGPb: TStringField;
    quMainLDGPj: TStringField;
    quMainDGPb: TStringField;
    quMainDGPj: TStringField;
    quMainCustId: TStringField;
    quMainSalesId: TStringField;
    quSales: TADOQuery;
    quMainLsalesName: TStringField;
    quMainDGTr: TStringField;
    quMainDGK: TStringField;
    quMainDGS: TStringField;
    quMainLDGTr: TStringField;
    quMainLDGK: TStringField;
    quMainLDGS: TStringField;
    quMainDGR: TStringField;
    quMainDGPR: TStringField;
    quMainLDGR: TStringField;
    quMainLDGPR: TStringField;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    quRek: TADOQuery;
    quMainDRPb: TStringField;
    quMainDRPj: TStringField;
    quMainLDRPb: TStringField;
    quMainLDRPj: TStringField;
    quMainDGRPb: TStringField;
    quMainDGRPj: TStringField;
    quGroupRek: TADOQuery;
    quMainLDGRPb: TStringField;
    quMainLDGRPj: TStringField;
    quMainDGC: TStringField;
    quMainLDGC: TStringField;
    GroupBox1: TGroupBox;
    Label30: TLabel;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    Label8: TLabel;
    Label9: TLabel;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText13: TDBText;
    Label13: TLabel;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit5: TdxDBButtonEdit;
    dxDBButtonEdit9: TdxDBButtonEdit;
    dxDBButtonEdit8: TdxDBButtonEdit;
    dxDBButtonEdit6: TdxDBButtonEdit;
    dxDBButtonEdit7: TdxDBButtonEdit;
    dxDBButtonEdit13: TdxDBButtonEdit;
    Label7: TLabel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    dxDBButtonEdit3: TdxDBButtonEdit;
    DBText3: TDBText;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label10: TLabel;
    DBText4: TDBText;
    DBText10: TDBText;
    Label11: TLabel;
    Label12: TLabel;
    DBText11: TDBText;
    DBText12: TDBText;
    dxDBButtonEdit11: TdxDBButtonEdit;
    dxDBButtonEdit12: TdxDBButtonEdit;
    dxDBButtonEdit4: TdxDBButtonEdit;
    dxDBButtonEdit10: TdxDBButtonEdit;
    GroupBox5: TGroupBox;
    Label14: TLabel;
    quMainsDPB: TStringField;
    cmbPrinterBackOffice: TdxDBPickEdit;
    Label15: TLabel;
    DBText14: TDBText;
    dxDBButtonEdit14: TdxDBButtonEdit;
    quMainDGRBi: TStringField;
    quMainLDGRBi: TStringField;
    Label16: TLabel;
    dxDBGrPendLL: TdxDBButtonEdit;
    DBText15: TDBText;
    quMainDGRPLL: TStringField;
    quMainLDGRPLL: TStringField;
    DBRadioGroup2: TDBRadioGroup;
    quMainCetak: TStringField;
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bbSaveClick(Sender: TObject);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure dxDBButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit6ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit7ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit9ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit8ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit10ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit11ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit12ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit13ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit14ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrPendLLButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    query : string;
  public
    { Public declarations }
  end;

var
  fmSettingGudang: TfmSettingGudang;

implementation

uses UnitGeneral, Search, MyUnit, StdLv1, StdLv0;

{$R *.dfm}

procedure TfmSettingGudang.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;

  if TRIM(quMainDGPb.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Pembelian tidak boleh kosong');
    quMainDGPb.FocusControl;
    Abort;
  End;

  if TRIM(quMainLDGPb.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Pembelian tidak ada dalam Master');
    quMainDGPb.FocusControl;
    Abort;
  End;

  if TRIM(quMainDGPj.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Penjualan tidak boleh kosong');
    quMainDGPj.FocusControl;
    Abort;
  End;

  if TRIM(quMainLDGPj.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Penjualan tidak ada dalam Master');
    quMainDGPj.FocusControl;
    Abort;
  End;


  if TRIM(quMainDGK.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Konsinyasi tidak boleh kosong');
    quMainDGK.FocusControl;
    Abort;
  End;

  if TRIM(quMainLDGK.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Konsinyasi tidak ada dalam Master');
    quMainDGK.FocusControl;
    Abort;
  End;

  if TRIM(quMainDGTr.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Transfer tidak boleh kosong');
    quMainDGTr.FocusControl;
    Abort;
  End;

  if TRIM(quMainLDGTr.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Transfer tidak ada dalam Master');
    quMainDGTr.FocusControl;
    Abort;
  End;

  if TRIM(quMainDGR.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Retur tidak boleh kosong');
    quMainDGR.FocusControl;
    Abort;
  End;

  if TRIM(quMainLDGR.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Retur tidak ada dalam Master');
    quMainDGR.FocusControl;
    Abort;
  End;

  if TRIM(quMainDGPR.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Pengganti Retur tidak boleh kosong');
    quMainDGPR.FocusControl;
    Abort;
  End;

  if TRIM(quMainLDGPR.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Pengganti Retur tidak ada dalam Master');
    quMainDGPR.FocusControl;
    Abort;
  End;

  if TRIM(quMainDGS.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Service tidak boleh kosong');
    quMainDGS.FocusControl;
    Abort;
  End;

  if TRIM(quMainLDGS.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Service tidak ada dalam Master');
    quMainDGS.FocusControl;
    Abort;
  End;

  if TRIM(quMainCustId.Value)='' then
  Begin
    MsgInfo('Kode Default Pelanggan Counter tidak boleh kosong');
    quMainCustId.FocusControl;
    Abort;
  End;

  if TRIM(quMainLCustName.Value)='' then
  Begin
    MsgInfo('Kode Default Pelanggan Counter tidak ada dalam Master');
    quMainCustId.FocusControl;
    Abort;
  End;

  if TRIM(quMainDGC.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Counter tidak boleh kosong');
    quMainDGC.FocusControl;
    Abort;
  End;

  if TRIM(quMainLDGC.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Counter tidak ada dalam Master');
    quMainDGC.FocusControl;
    Abort;
  End;

  if TRIM(quMainDGRPb.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Rekening Pembelian tidak boleh kosong');
    quMainDGRPb.FocusControl;
    Abort;
  End;

  if TRIM(quMainLDGRPb.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Rekening Pembelian tidak ada dalam Master');
    quMainDGRPb.FocusControl;
    Abort;
  End;


  if TRIM(quMainDGRPj.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Rekening Penjualan tidak boleh kosong');
    quMainDGRPj.FocusControl;
    Abort;
  End;

  if TRIM(quMainLDGRPj.Value)='' then
  Begin
    MsgInfo('Kode Default Gudang Rekening Penjualan tidak ada dalam Master');
    quMainDGRPj.FocusControl;
    Abort;
  End;

  if TRIM(quMainDRPb.Value)='' then
  Begin
    MsgInfo('Kode Default Rekening Pembelian tidak boleh kosong');
    quMainDRPb.FocusControl;
    Abort;
  End;

  if TRIM(quMainLDRPb.Value)='' then
  Begin
    MsgInfo('Kode Default Rekening Pembelian tidak ada dalam Master');
    quMainDRPb.FocusControl;
    Abort;
  End;

  if TRIM(quMainDRPj.Value)='' then
  Begin
    MsgInfo('Kode Default Rekening Penjualan tidak boleh kosong');
    quMainDRPj.FocusControl;
    Abort;
  End;

  if TRIM(quMainLDRPj.Value)='' then
  Begin
    MsgInfo('Kode Default Rekening Penjualan tidak ada dalam Master');
    quMainDRPj.FocusControl;
    Abort;
  End;

  if TRIM(cmbPrinterBackOffice.Text) <> '' then
  begin
     query := 'update SAMsSET set sDPB = ' + QuotedStr(cmbPrinterBackOffice.Text) +' ';
  end;
  RunQuery(quAct,query);

end;

procedure TfmSettingGudang.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
end;

procedure TfmSettingGudang.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Open;
  cmbPrinterBackOffice.Items := printer.Printers;
end;

procedure TfmSettingGudang.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmSettingGudang.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
    with TfmSearch.Create(Self) do
    try
       Title := 'Gudang';
       SQLString := 'SELECT WarehouseID as Kode_Gudang, Warehousename as Nama_Gudang'
                    +' FROM INMsWarehouse ORDER BY WarehouseID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
           quMainDGPb.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSettingGudang.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Gudang';
       SQLString := 'SELECT WarehouseID as Kode_Gudang, Warehousename as Nama_Gudang'
                    +' FROM INMsWarehouse ORDER BY WarehouseID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
           quMainDGPj.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSettingGudang.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
    with TfmSearch.Create(Self) do
    try
       Title := 'Pelanggan';
       SQLString := 'SELECT CustID as Kode_Pelanggan, Custname as Nama_Pelanggan'
                   +',Address, City, Phone, Fax, CustType '
                   +' FROM ARMsCustomer'
                   +' ORDER BY CustID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainCustID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSettingGudang.dxDBButtonEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmSettingGudang.bbSaveClick(Sender: TObject);
begin
  inherited;
  quMain.Post;
end;

procedure TfmSettingGudang.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
    sDGPb   := quMainDGPb.Value;
    sDGPj   := quMainDGPj.Value;
    sCustC  := quMainCustId.Value;
    sSalesC := quMainSalesId.Value;
    sDGK    := quMainDGK.Value;
    sDGTr   := quMainDGTr.Value;
    sDGS    := quMainDGS.Value;
    sDGR    := quMainDGR.Value;
    sDGPR   := quMainDGPR.Value;
    sDRPb   := quMainDRPb.Value;
    sDRPj   := quMainDRPj.Value;
    sDGRPb  := quMainDGRPb.Value;
    sDGRPj  := quMainDGRPj.Value;
    sDGC    := quMainDGC.Value;
    sDPB    := quMainsDPB.Value;
    sCetak  := quMainCetak.Value;
end;

procedure TfmSettingGudang.dxDBButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := ' SELECT Distinct A.RekeningId as Kode_Rekening, RekeningName as Nama_Rekening,'
                   +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                   +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                   +' ORDER BY A.RekeningID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainDRPb.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSettingGudang.dxDBButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Gudang';
       SQLString := 'SELECT WarehouseID as Kode_Gudang, Warehousename as Nama_Gudang'
                    +' FROM INMsWarehouse ORDER BY WarehouseID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
           quMainDGTr.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSettingGudang.dxDBButtonEdit6ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Gudang';
       SQLString := 'SELECT WarehouseID as Kode_Gudang, Warehousename as Nama_Gudang'
                    +' FROM INMsWarehouse ORDER BY WarehouseID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
           quMainDGK.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSettingGudang.dxDBButtonEdit7ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Gudang';
       SQLString := 'SELECT WarehouseID as Kode_Gudang, Warehousename as Nama_Gudang'
                    +' FROM INMsWarehouse ORDER BY WarehouseID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
           quMainDGS.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSettingGudang.dxDBButtonEdit9ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Gudang';
       SQLString := 'SELECT WarehouseID as Kode_Gudang, Warehousename as Nama_Gudang'
                    +' FROM INMsWarehouse ORDER BY WarehouseID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
           quMainDGR.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSettingGudang.dxDBButtonEdit8ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Gudang';
       SQLString := 'SELECT WarehouseID as Kode_Gudang, Warehousename as Nama_Gudang'
                    +' FROM INMsWarehouse ORDER BY WarehouseID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
           quMainDGPR.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSettingGudang.dxDBButtonEdit10ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := ' SELECT Distinct A.RekeningId as Kode_Rekening, RekeningName as Nama_Rekening,'
                   +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                   +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                   +' ORDER BY A.RekeningID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainDRPj.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSettingGudang.dxDBButtonEdit11ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Group';
         SQLString := 'SELECT GroupRekID as Kode_Group_Rekening, GroupRekName as Description'
                     +' FROM CFMsGroupRek'
                     +' ORDER BY GroupRekID';
         if ShowModal = MrOk then
         begin
           if quMain.State = dsBrowse then quMain.edit;
              quMainDGRPb.Value:= res[0];
         end;
       finally
         free;
       end;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit12ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Group';
         SQLString := 'SELECT GroupRekID as Kode_Group_Rekening, GroupRekName as Description'
                     +' FROM CFMsGroupRek'
                     +' ORDER BY GroupRekID';
         if ShowModal = MrOk then
         begin
           if quMain.State = dsBrowse then quMain.edit;
              quMainDGRPj.Value:= res[0];
         end;
       finally
         free;
       end;
  end;
end;

procedure TfmSettingGudang.dxDBButtonEdit13ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Gudang';
       SQLString := ' SELECT WarehouseID as Kode_Gudang, Warehousename as Nama_Gudang'
                   +' FROM INMsWarehouse ORDER BY WarehouseID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
           quMainDGC.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSettingGudang.dxDBButtonEdit14ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Group';
         SQLString := 'SELECT GroupRekID as Kode_Group_Rekening, GroupRekName as Description'
                     +' FROM CFMsGroupRek'
                     +' ORDER BY GroupRekID';
         if ShowModal = MrOk then
         begin
           if quMain.State = dsBrowse then quMain.edit;
              quMainDGRBi.Value:= res[0];
         end;
       finally
         free;
       end;
  end;
end;

procedure TfmSettingGudang.dxDBGrPendLLButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Group';
         SQLString := 'SELECT GroupRekID as Kode_Group_Rekening, GroupRekName as Description'
                     +' FROM CFMsGroupRek'
                     +' ORDER BY GroupRekID';
         if ShowModal = MrOk then
         begin
           if quMain.State = dsBrowse then quMain.edit;
              quMainDGRPLL.Value:= res[0];
         end;
       finally
         free;
       end;
  end;
end;

end.
