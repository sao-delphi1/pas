{
  cuma ada new delete n find tanpa ada tombol save dan cancel
}

unit StdLv3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, dxExEdtr, dxCntner, DB, ADODB, dxButton, ExtCtrls,
  dxCore, dxContainer, dxTL, dxDBCtrl, dxDBGrid, dxEdLib, dxDBELib,
  StdCtrls, dxEditor, Buttons, ActnList;

type
  TfmStdLv3 = class(TfmStdLv2)
    paLeft: TdxContainer;
    paOperation: TdxContainer;
    pa3: TdxContainer;
    pa1: TdxContainer;
    paBottom: TdxContainer;
    pa2: TdxContainer;
    ActNew: TAction;
    ActDelete: TAction;
    ActCancel: TAction;
    ActSave: TAction;
    quDetil: TADOQuery;
    dsDetil: TDataSource;
    bbNew: TdxButton;
    bbDelete: TdxButton;
    bbFind: TdxButton;
    ceContinuousAdd: TdxCheckEdit;
    procedure ActNewExecute(Sender: TObject);
    procedure ActDeleteExecute(Sender: TObject);
    procedure ActSaveExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure quMainAfterDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quMainAfterOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    sPrintBO : string;     
  protected
     procedure DataSourceStateChange; //--ini berguna untuk yang query bukan qumain--/
     procedure ContinuousAdd;

  public
    { Public declarations }
  end;

var
  fmStdLv3: TfmStdLv3;

implementation

uses StdLv0, StdLv1, ConMain, UnitGeneral;

{$R *.dfm}



procedure TfmStdLv3.ActNewExecute(Sender: TObject);
begin
  inherited;  
   if (FActDs <> nil) and (FActDs.DataSet <> nil) then
    FActDs.DataSet.Append;
end;

procedure TfmStdLv3.ActDeleteExecute(Sender: TObject);
begin
  inherited;
   if (FActDs <> nil) and (FActDs.DataSet <> nil) and
     (MessageDlg('Hapus Data?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        FActDs.DataSet.Delete;
end;

procedure TfmStdLv3.ActSaveExecute(Sender: TObject);
begin
  inherited;
  if (FActDs <> nil) and (FActDs.DataSet <> nil) then
    FActDs.DataSet.Post;
end;

procedure TfmStdLv3.ActCancelExecute(Sender: TObject);
begin
  inherited;
  if (FActDs <> nil) and (FActDs.DataSet <> nil) then
    FActDs.DataSet.Cancel;
end;

procedure TfmStdLv3.dsMainStateChange(Sender: TObject);
begin
  inherited;
  DataSourceStateChange;
end;

procedure TfmStdLv3.FormCreate(Sender: TObject);
begin
  inherited;
  DataSourceStateChange;
  with quAct,SQL do
  begin
    close;clear;
    Add('SELECT sDPB FROM SAMsSET');
    Open;
  end;
  sPrintBO := quAct.FieldByName('sDPB').AsString;
  
end;

procedure TfmStdLv3.ContinuousAdd;
begin
   if (ceContinuousAdd.Checked)AND(LastState = dsInsert)AND(NOT(quDetil.Active)) then
      FActDS.DataSet.Append;
end;

procedure TfmStdLv3.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  ContinuousAdd;
end;

procedure TfmStdLv3.DataSourceStateChange;
begin
  SetBtnOperationEnable(bbNew,FActDS);
  SetBtnOperationEnable(bbDelete,FActDS);
  SetBtnOperationEnable(bbFind,FActDS);
end;

procedure TfmStdLv3.quMainAfterDelete(DataSet: TDataSet);
begin
  inherited;
  SetBtnOperationEnable(bbNew,FActDS);
  SetBtnOperationEnable(bbNew,FActDS);
  SetBtnOperationEnable(bbDelete,FActDS);
  SetBtnOperationEnable(bbFind,FActDS);
end;

procedure TfmStdLv3.FormShow(Sender: TObject);
var BtnCaption : String;
begin
  inherited;
  //BtnCaption       := GetBtnCaption(Self.Tag);
  bbNew.Caption    := bbNew.Caption + ' '+ BtnCaption;
  bbDelete.Caption := bbDelete.Caption + ' '+ BtnCaption;
  bbFind.Caption   := bbFind.Caption + ' ' + BtnCaption;
end;

procedure TfmStdLv3.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  if (ceContinuousAdd.Checked)AND(LastState=dsInsert) then
     quDetil.Append;  
end;

procedure TfmStdLv3.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  LastState := quDetil.State;
end;

procedure TfmStdLv3.quMainAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if (NOT quDetil.Active)AND(TRIM(quDetil.SQL.Text)<>'') then quDetil.Active := TRUE;
end;

procedure TfmStdLv3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  If (Self.quMain.State = dsEdit) or (Self.quMain.State = dsInsert) then
  begin
    ShowMessage('Data Belum disimpan');
    Abort;
  end;
  If (Self.quDetil.State = dsEdit) or (Self.quDetil.State = dsInsert) then
  begin
    ShowMessage('Data Detil Belum disimpan');
    Abort;
  end;
end;

end.
