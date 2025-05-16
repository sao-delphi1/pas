unit ARMsTeknisi;

interface

uses                                                                                 
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, dxEdLib, dxDBELib, dxEditor, DB, DBCtrls,
  ActnList, dxCntner, ADODB, dxTL, dxDBCtrl, dxDBGrid, dxPageControl,
  dxButton, StdCtrls, ExtCtrls, Buttons, dxCore, dxContainer;

type
  TfmARMsTeknisi = class(TfmStdLv4)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBText2: TDBText;
    Label4: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    dbgListSalesID: TdxDBGridMaskColumn;
    dbgListSalesName: TdxDBGridMaskColumn;
    dbgListAddress: TdxDBGridMaskColumn;
    dbgListPhone: TdxDBGridMaskColumn;
    dbgListHP: TdxDBGridMaskColumn;
    Label11: TLabel;
    Label13: TLabel;
    dbgListEmail: TdxDBGridColumn;
    dbgListNote: TdxDBGridColumn;
    quMainTeknisiID: TStringField;
    quMainTeknisiName: TStringField;
    quMainAddress: TStringField;
    quMainPhone: TStringField;
    quMainHP: TStringField;
    quMainEmail: TStringField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBMemo2: TdxDBMemo;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActNewExecute(Sender: TObject);
    procedure ActSaveExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure ActDeleteExecute(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
  private
    { Private declarations }
    Procedure Status;
  public
    { Public declarations }
    CallFromAnotherMenu : boolean;
  End;
var
  fmARMsTeknisi: TfmARMsTeknisi;

implementation

uses ConMain, UnitGeneral, Search;

{$R *.dfm}


Procedure TfmARMsTeknisi.Status;
Begin
  with quAct,sql do
  Begin
    Close;Clear;
    Add('Select TeknisiId FROM ARTrInvServiceHd WHERE TeknisiId='''+quMainTeknisiID.Value+'''');
    Open;
    if not IsEmpty then
    Begin
       MsgInfo('Kode Teknisi sudah di pakai');
       Abort;
    End;
 End;
End;


procedure TfmARMsTeknisi.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBEdit1,qumain.state <> dsInsert);
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
end;

procedure TfmARMsTeknisi.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(quMainTeknisiID.Value)='' then
 begin
  MsgInfo('Kode Teknisi tidak boleh kosong');
  quMainTeknisiID.FocusControl;
  Abort;
 end;

 if quMain.State = dsInsert then
 Begin
  With quAct,Sql do
  Begin
    Close;Clear;
    add('Select TeknisiId from ARMsTeknisi Where TeknisiId='''+quMainTeknisiID.Value+''' ');
    Open;
    If Not IsEmpty then
    Begin
      MsgInfo('Kode Teknisi sudah dipakai Kode Teknisi lain');
      quMainTeknisiID.FocusControl;
      Abort;
    End;
  End;
 End;

 If Trim(quMainTeknisiName.Value)='' then
 begin
  MsgInfo('Nama Teknisi tidak boleh kosong');
  quMainTeknisiName.FocusControl;
  Abort;
 end;

 quMainUpdDate.Value := Date;
 quMainUpdUser.value := dmMain.UserId;

end;

procedure TfmARMsTeknisi.dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARMsTeknisi.FormShow(Sender: TObject);
begin
  inherited;
   quMain.Active := TRUE;
   if CallFromAnotherMenu then
   begin
     ActNewExecute(bbNew);
   End;
end;

procedure TfmARMsTeknisi.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
  SettingDxGrid(dbgList);
  CallFromAnotherMenu:=False;
end;

procedure TfmARMsTeknisi.ActNewExecute(Sender: TObject);
begin
  inherited;
  quMainTeknisiID.FocusControl;
end;

procedure TfmARMsTeknisi.ActSaveExecute(Sender: TObject);
begin
  inherited;
  if CallFromAnotherMenu then ModalResult:=MrOk;
end;

procedure TfmARMsTeknisi.ActCancelExecute(Sender: TObject);
begin
  inherited;
  if CallFromAnotherMenu then ModalResult:=MrOk;
end;

procedure TfmARMsTeknisi.ActDeleteExecute(Sender: TObject);
begin
  Status;
  inherited;

end;

procedure TfmARMsTeknisi.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Master Teknisi';
         SQLString := ' Select TeknisiId as Kode_Teknisi,TeknisiName as Nama_Teknisi,'
                     +' Address as Alamat,HP,Phone as Telepon,Email,Note as Keterangan'
                     +' from ARMsTeknisi ';
         if ShowModal = MrOk then
         begin
            qumain.Locate('TeknisiId',Res[0],[]);
         end;
       finally
         free;
       end;
    end;
end;

end.
