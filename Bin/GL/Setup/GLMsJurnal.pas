unit GLMsJurnal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv3, ActnList, DB, dxExEdtr, dxCntner, ADODB, dxEdLib,
  dxButton, StdCtrls, ExtCtrls, Buttons, dxCore, dxContainer, dxTL,
  dxDBCtrl, dxDBGrid;

type
  TfmGLMsJurnal = class(TfmStdLv3)
    dbgList: TdxDBGrid;
    quMainJurnalID: TStringField;
    quMainJurnalDesc: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    dbgListJurnalID: TdxDBGridColumn;
    dbgListJurnalDesc: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmGLMsJurnal: TfmGLMsJurnal;

implementation

uses StdLv2, UnitGeneral, ConMain, StdLv1;

{$R *.dfm}

procedure TfmGLMsJurnal.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
  SettingDxGrid(dbgList);
end;

procedure TfmGLMsJurnal.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgListJurnalID,quMain.State<>dsInsert);
end;

procedure TfmGLMsJurnal.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
  
  if Trim(quMainJurnalID.Value)='' then
  begin
   MsgInfo('Kode Jurnal tidak boleh kosong');
   quMainJurnalID.FocusControl;
   Abort;
  end;

  if quMain.State = dsInsert then
  Begin
   With quAct,Sql do
   begin
     Close;Clear;
     Add('Select JurnalID from GlMsJurnal WHERE JurnalID='''+quMainJurnalID.Value+''' ');
     Open;
    if Not IsEmpty then
    Begin
      MsgInfo('Kode Jurnal sudah dipakai');
      quMainJurnalID.FocusControl;
      Abort;
    End;
   End;
  End;

  if Trim(quMainJurnalDesc.Value)='' then
  begin
   MsgInfo('Nama Jurnal tidak boleh kosong');
   quMainJurnalDesc.FocusControl;
   Abort;
  end;

  quMainUpdDate.Value := Now;
  quMainUpdUser.Value := dmMain.UserId;
end;

procedure TfmGLMsJurnal.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;
end;

end.
