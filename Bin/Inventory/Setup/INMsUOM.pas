unit INMsUOM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv3, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ActnList,
  DB, ADODB, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons, dxCore,
  dxContainer;

type
  TfmINMsUOM = class(TfmStdLv3)
    dbgUOM: TdxDBGrid;
    quMainUOMId: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    dbgUOMUOMId: TdxDBGridColumn;
    dbgUOMUpdUser: TdxDBGridColumn;
    dbgUOMUpdDate: TdxDBGridColumn;
    quMainKodeSatuan: TStringField;
    dbgUOMColumn4: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActNewExecute(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINMsUOM: TfmINMsUOM;

implementation

uses UnitGeneral, ConMain, Search;

{$R *.dfm}

procedure TfmINMsUOM.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
  SettingDxGrid(dbgUOM);
end;

procedure TfmINMsUOM.FormShow(Sender: TObject);
begin
  inherited;
 qumain.Active:=TRUE;
end;

procedure TfmINMsUOM.ActNewExecute(Sender: TObject);
begin
  inherited;
 quMainUOMId.FocusControl;
end;

procedure TfmINMsUOM.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
   if Trim(quMainUOMId.value)='' then
   Begin
     MsgInfo('Satuan tidak boleh kosong');
     quMainUOMId.FocusControl;
     Abort;
   End;

   If quMain.State = dsInsert then
   begin
      With quAct,Sql do
      begin
         Close;Clear;
         add('Select UOMID FROM INMsUOM WHERE UOMID='''+quMainUOMId.Value+'''');
         Open;
         If Not IsEmpty then
         begin
           MsgInfo('Satuan ini sudah dipakai');
           quMainUOMId.FocusControl;
           Abort;
         end;
      End;
   end;

  quMainUpdDate.Value:= GetServerDateTime;
  quMainUpdUser.Value:= dmMain.UserId;    
end;

procedure TfmINMsUOM.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Cari Master Satuan';
         SQLString := 'SELECT UOMId as Nama_Satuan,KodeSatuan as Kode_Satuan from INMsUOM';
         if ShowModal = MrOk then
         begin
            qumain.Locate('UOMId',Res[0],[]);
         end;
       finally
         free;
       end;
    end;
end;

procedure TfmINMsUOM.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgUOMUOMId,quMain.State<>dsInsert);
  SetReadOnly(dbgUOMUpdUser,quMain.State<>dsInsert);
  SetReadOnly(dbgUOMUpdDate,quMain.State<>dsInsert);
end;

procedure TfmINMsUOM.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  With quAct,sql do
  Begin
    Close;Clear;
    Add('Select Top 1 UOMId FROM INMsItem WHERE UOMId='''+quMainUOMId.Value+'''');
    Open;
    if not IsEmpty then
    Begin
      MsgInfo('kode Satuan ini sudah di pakai di Master Barang');
      Abort;
    End;
  End;
end;

end.
