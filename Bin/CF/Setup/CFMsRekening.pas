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
    dbgListRekeningId: TdxDBGridMaskColumn;
    dbgListRekeningName: TdxDBGridMaskColumn;
    dbgListGroupRekId: TdxDBGridMaskColumn;
    dbgListUpdDate: TdxDBGridDateColumn;
    dbgListUpdUser: TdxDBGridMaskColumn;
    dbgListNote: TdxDBGridMaskColumn;
    dbgListGroupRekName: TdxDBGridLookupColumn;
    quMainTipe: TStringField;
    quMainFgTipe: TStringField;
    Label3: TLabel;
    DBRadioGroup3: TDBRadioGroup;
    quMainFgActive: TStringField;
    Label5: TLabel;
    quMainLBRG: TStringField;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBImageEdit1: TdxDBImageEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBMemo2: TdxDBMemo;
    dxDBImageEdit2: TdxDBImageEdit;
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActSaveExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure ActDeleteExecute(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quMainGroupRekIdChange(Sender: TField);
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

uses ConMain, UnitGeneral, Search, MyUnit;

{$R *.dfm}
Procedure TfmCFMsRekening.Status;
Begin
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT * FROM CFTrKKBBDt WHERE RekeningID=:RekeningID');
    Parameters.ParamByName('RekeningID').Value := quMainRekeningId.AsString;
    Open;
    if not IsEmpty then
    begin
      ShowMessage('Data sedang digunakan di transaksi lain. Tidak bisa dihapus lagi');
      Abort;
    end;
  end;
End;
procedure TfmCFMsRekening.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBEdit1,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit1,quMain.State<>dsInsert);
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
end;

procedure TfmCFMsRekening.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
{  if Trim(quMainRekeningId.Value)='' then
  begin
    MsgInfo('Kode Rekening tidak boleh kosong');
    quMainRekeningId.FocusControl;
    Abort;
  end;}
  if TRIM(quMainGroupRekId.AsString) = '' then
  begin
    pesan('Group Rekening tidak boleh kosong');
    quMainGroupRekId.FocusControl;
    Abort;
  end;

  if TRIM(quMainTipe.AsString) = '' then
  begin
    pesan('Tipe tidak boleh kosong');
    quMainTipe.FocusControl;
    Abort;
  end;

  if (TRIM(quMainTipe.AsString)='1') then quMainFgTipe.AsString := 'A' else
  if (TRIM(quMainTipe.AsString)='3') or (TRIM(quMainTipe.AsString)='2') or (TRIM(quMainTipe.AsString)='4') or (TRIM(quMainTipe.AsString)='5') then quMainFgTipe.AsString := 'P';
  if (TRIM(quMainTipe.AsString)='6')  or (TRIM(quMainTipe.AsString)='7') then quMainFgTipe.AsString := 'O';

 if quMain.State = dsInsert then
 Begin
   With quAct,SQL do
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
         Title := 'Master Rekening';
         SQLString := ' SELECT A.RekeningName as Nama_Rekening,'
                     +' A.GroupRekId,B.GroupRekName as Group_Rekening,CASE WHEN Tipe=''1'' THEN ''Assets'' '
                     +'                                                    WHEN Tipe=''2'' THEN ''Liabilities'' '
                     +'                                                    WHEN Tipe=''3'' THEN ''Capital'' '
                     +'                                                    WHEN Tipe=''4'' THEN ''Income'' '
                     +'                                                    WHEN Tipe=''5'' THEN ''Expense'' ELSE ''Others'' END as Tipe,'
                     +'Note as Keterangan,A.RekeningId as Kode_Rekening FROM CFMsRekening A INNER JOIN CFMsGroupRek B ON A.GroupRekID=B.GroupRekID '
                     +'ORDER BY A.GroupRekID,A.RekeningID';
         if ShowModal = MrOk then
         begin
            qumain.Locate('RekeningId',Res[5],[]);
         end;
       finally
         free;
       end;
    end;
end;

procedure TfmCFMsRekening.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainGroupRekId.FocusControl;
  quMainFgActive.AsString := 'Y';
  quMainTipe.AsString := '';
end;

procedure TfmCFMsRekening.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Group';
         SQLString := 'SELECT GroupRekName as Description,GroupRekID as Kode_Group_Rekening FROM CFMsGroupRek ORDER BY GroupRekID';
         if ShowModal = MrOk then
         begin
           if quMain.State = dsBrowse then quMain.edit;
              quMainGroupRekId.Value:= res[1];
         end;
       finally
         free;
       end;
  end;
end;

procedure TfmCFMsRekening.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  Status;
end;

procedure TfmCFMsRekening.quMainGroupRekIdChange(Sender: TField);
var ST: string;
begin
  inherited;
   ST := quMainGroupRekId.AsString+'.';
   quMainRekeningId.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'CFMsRekening', 'RekeningID', ST, '0') + 1);

end;

end.
