unit StdLv4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv3, DB, ActnList, dxExEdtr, dxCntner, ADODB, dxButton,
  ExtCtrls, Buttons, dxCore, dxContainer, dxPageControl, dxTL, dxDBCtrl,
  dxDBGrid, StdCtrls, dxEdLib;

type
  TfmStdLv4 = class(TfmStdLv3)
    pcMain: TdxPageControl;
    ts01: TdxTabSheet;
    ts02: TdxTabSheet;
    dbgList: TdxDBGrid;
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dbgListDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure quMainAfterOpen(DataSet: TDataSet);
    procedure pcMainChanging(Sender: TObject; NewPage: TdxTabSheet;
      var AllowChange: Boolean);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quMainBeforeEdit(DataSet: TDataSet);
    procedure quMainBeforeInsert(DataSet: TDataSet);
    procedure quDetilBeforeEdit(DataSet: TDataSet);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
     Procedure CekClient;
  public
    { Public declarations }
  end;

var
  fmStdLv4: TfmStdLv4;

implementation

uses UnitGeneral, ConMain;

{$R *.dfm}

Procedure TfmStdLv4.CekClient;
Begin //ubah FgJual serialnumber
  if Not FileExists('c:/windows/shoeney.dll') then
  Begin
   ShowMessage('Komputer anda tidak dapat digunakan untuk tambah, hapus maupun ubah data');
   Abort;
  End;
End;

procedure TfmStdLv4.dsMainStateChange(Sender: TObject);
begin
  inherited;
 // dbgList.ApplyBestFit(nil);

end;

procedure TfmStdLv4.quMainAfterInsert(DataSet: TDataSet);
begin
  inherited;
  pcMain.ActivePage := ts02;
end;

procedure TfmStdLv4.FormCreate(Sender: TObject);
begin
  inherited;
  pcMain.ActivePage := ts01;
  SettingDxGrid(dbgList);
end;

procedure TfmStdLv4.dbgListDblClick(Sender: TObject);
begin
  inherited;
  pcMain.ActivePage := ts02;
end;

procedure TfmStdLv4.FormShow(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfmStdLv4.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  dbgList.ApplyBestFit(nil);
end;

procedure TfmStdLv4.quMainAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dbgList.ApplyBestFit(nil);
end;

procedure TfmStdLv4.pcMainChanging(Sender: TObject; NewPage: TdxTabSheet;
  var AllowChange: Boolean);
begin
  inherited;
  AllowChange := FActDS.State = dsBrowse;
end;

procedure TfmStdLv4.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekClient;
end;

procedure TfmStdLv4.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekClient;
end;

procedure TfmStdLv4.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekClient;
end;

procedure TfmStdLv4.quMainBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CekClient;
end;

procedure TfmStdLv4.quDetilBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekClient;
end;

procedure TfmStdLv4.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CekClient;
end;

end.
