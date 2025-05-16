unit INMsGroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, dxPageControl,
  dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons, dxCore, dxContainer,
  dxTL, dxDBCtrl, dxDBGrid;

type
  TfmINMsGroup = class(TfmStdLv31)
    dbgGroup: TdxDBGrid;
    dbgGroupGroupID: TdxDBGridColumn;
    dbgGroupName: TdxDBGridColumn;
    quMainGroupID: TStringField;
    quMainGroupDesc: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    dbgGroupUser: TdxDBGridColumn;
    dbgGroupUpdDate: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActNewExecute(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CekStatus;
  public
    { Public declarations }
    CallFromAnotherMenu : boolean; 
  end;

var
  fmINMsGroup: TfmINMsGroup;

implementation

uses UnitGeneral, ConMain, Search, StdLv0;

{$R *.dfm}
procedure TfmINMsGroup.CekStatus;
Begin
  With quAct,sql do
  Begin
    Close;Clear;
    Add('Select Top 1 GroupId FROM INMsItem WHERE GroupId='''+quMainGroupID.Value+'''');
    Open;
    if not IsEmpty then
    Begin
      MsgInfo('kode Group ini sudah di pakai di Master Barang');
      Abort;
    End;
  End;
End;

procedure TfmINMsGroup.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
  SettingDxGrid(dbgGroup);
end;

procedure TfmINMsGroup.FormShow(Sender: TObject);
begin
  inherited;
  qumain.Active:=TRUE;
end;

procedure TfmINMsGroup.ActNewExecute(Sender: TObject);
begin
  inherited;
 quMainGroupId.FocusControl;
end;

procedure TfmINMsGroup.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
   if Trim(quMainGroupId.value)='' then
   Begin
     MsgInfo('Kode tidak boleh kosong');
     quMainGroupId.FocusControl;
     Abort;
   End;

   If quMain.State = dsInsert then
   begin
      With quAct,Sql do
      begin
         Close;Clear;
         add('Select GroupID FROM INMsGroup WHERE GroupID='''+quMainGroupId.Value+'''');
         Open;
         If Not IsEmpty then
         begin
           MsgInfo('Kode ini sudah dipakai');
           quMainGroupId.FocusControl;
           Abort;
         end;
      End;
   end;
  quMainUpdDate.Value:= GetServerDateTime;
  quMainUpdUser.Value:= dmMain.UserId;
end;

procedure TfmINMsGroup.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Cari Master Group';
         SQLString := 'SELECT GroupId as Group_ID,GroupDesc as Description from INMsGroup';
         if ShowModal = MrOk then
         begin
            qumain.Locate('GroupId',Res[0],[]);
         end;
       finally
         free;
       end;
    end;
end;

procedure TfmINMsGroup.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgGroupGroupID,quMain.State<>dsInsert);
  SetReadOnly(dbgGroupUser,quMain.State<>dsInsert);
  SetReadOnly(dbgGroupUpdDate,quMain.State<>dsInsert);
end;

procedure TfmINMsGroup.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
end;

end.
