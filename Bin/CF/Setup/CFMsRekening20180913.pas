unit CFMsRekening;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, dxEdLib, dxDBELib, dxEditor, DB, DBCtrls,
  ActnList, dxCntner, ADODB, dxTL, dxDBCtrl, dxDBGrid, dxPageControl,
  dxButton, StdCtrls, ExtCtrls, Buttons, dxCore, dxContainer, dxDBTLCl,
  dxGrClms;

type
  TfmCFMsRekening = class(TfmStdLv4)
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    DBText2: TDBText;
    Label4: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    Label13: TLabel;
    quMainRekeningId: TStringField;
    quMainRekeningName: TStringField;
    quMainGroupRekId: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    DBText4: TDBText;
    quMainNote: TStringField;
    quGroupRek: TADOQuery;
    quMainGroupRekName: TStringField;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBMemo2: TdxDBMemo;
    dbgListRekeningId: TdxDBGridMaskColumn;
    dbgListRekeningName: TdxDBGridMaskColumn;
    dbgListGroupRekId: TdxDBGridMaskColumn;
    dbgListUpdDate: TdxDBGridDateColumn;
    dbgListUpdUser: TdxDBGridMaskColumn;
    dbgListNote: TdxDBGridMaskColumn;
    dbgListGroupRekName: TdxDBGridLookupColumn;
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
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    Procedure Status;
  public
    { Public declarations }
    CallFromAnotherMenu : boolean;
  End;
var
  fmCFMsRekening: TfmCFMsRekening;

implementation

uses ConMain, UnitGeneral, Search;

{$R *.dfm}
Procedure TfmCFMsRekening.Status;
Begin
  // Nanti Dolo INGETTTTTTTTTTT
 { with quAct,sql do
  Begin
    Close;Clear;
    Add('Select RekeningId FROM CFMsRekening WHERE RekeningId='''+quMainRekeningId.Value+'''');
    Open;
    if not IsEmpty then
    Begin
       MsgInfo('Kode Supplier sudah di pakai di Penjualan');
       Abort;
    End;
 End;}
End;
procedure TfmCFMsRekening.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBEdit1,qumain.state <> dsInsert);
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
end;

procedure TfmCFMsRekening.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(quMainRekeningId.Value)='' then
 begin
  MsgInfo('Kode Rekening tidak boleh kosong');
  quMainRekeningId.FocusControl;
  Abort;
 end;

 if quMain.State = dsInsert then
 Begin
  With quAct,Sql do
  Begin
    Close;Clear;
    add('Select RekeningId from CFMsRekening Where RekeningId='''+quMainRekeningId.Value+''' ');
    Open;
    If Not IsEmpty then
    Begin
      MsgInfo('Kode Rekening sudah dipakai Kode Rekening lain');
      quMainRekeningId.FocusControl;
      Abort;
    End;
  End;
 End;

 If Trim(quMainRekeningName.Value)='' then
 begin
  MsgInfo('Nama Rekening tidak boleh kosong');
  quMainRekeningName.FocusControl;
  Abort;
 end;

 If Trim(quMainGroupRekId.Value)='' then
 begin
  MsgInfo('Kode Group Rekening tidak boleh kosong');
  quMainGroupRekId.FocusControl;
  Abort;
 end;

 If Trim(quMainGroupRekName.Value)='' then
 begin
  MsgInfo('Kode Group Rekening tidak ada dalam Master');
  quMainGroupRekId.FocusControl;
  Abort;
 end;

 quMainUpdDate.Value := Date;
 quMainUpdUser.value := dmMain.UserId;

end;

procedure TfmCFMsRekening.dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmCFMsRekening.FormShow(Sender: TObject);
begin
  inherited;
   quMain.Active := TRUE;
   if CallFromAnotherMenu then
   begin
     ActNewExecute(bbNew);
   End;
end;

procedure TfmCFMsRekening.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
  SettingDxGrid(dbgList);
  CallFromAnotherMenu:=False;
end;

procedure TfmCFMsRekening.ActNewExecute(Sender: TObject);
begin
  inherited;
  quMainRekeningId.FocusControl;
end;

procedure TfmCFMsRekening.ActSaveExecute(Sender: TObject);
begin
  inherited;
  if CallFromAnotherMenu then ModalResult:=MrOk;
end;

procedure TfmCFMsRekening.ActCancelExecute(Sender: TObject);
begin
  inherited;
  if CallFromAnotherMenu then ModalResult:=MrOk;
end;

procedure TfmCFMsRekening.ActDeleteExecute(Sender: TObject);
begin
   Status;
  inherited;

end;

procedure TfmCFMsRekening.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Cari Master Rekening';
         SQLString := ' Select RekeningId as Kode_Rekening,RekeningName as Nama_Rekening,'
                     +' GroupRekId,Note as Keterangan'
                     +' from CFMsRekening ';
         if ShowModal = MrOk then
         begin
            qumain.Locate('RekeningId',Res[0],[]);
         end;
       finally
         free;
       end;
    end;
end;

procedure TfmCFMsRekening.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainRekeningId.FocusControl;
end;

procedure TfmCFMsRekening.dxDBButtonEdit1ButtonClick(Sender: TObject;
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
              quMainGroupRekId.Value:= res[0];
         end;
       finally
         free;
       end;
  end;
end;

end.
