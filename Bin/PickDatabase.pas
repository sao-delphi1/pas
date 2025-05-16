unit PickDatabase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv0, dxExEdtr, dxCntner, DB, ADODB, dxCore, dxButton,
  dxEditor, dxEdLib, dxDBELib, StdCtrls,inifiles;

type
  TfmPickDatabase = class(TfmStdLv0)
    bbOK1: TdxButton;
    Label1: TLabel;
    cmbDatabase: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure bbOK1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SServer,ServerVPN,Server,Passdb,database,DataNm,DataName,StClient,DBPass,Password : string;
  end;

var
  fmPickDatabase: TfmPickDatabase;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmPickDatabase.FormShow(Sender: TObject);
var MyIniFile : TIniFile;
begin
  inherited;
  cmbDatabase.Items.Clear;
  MyIniFile  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'Setting.ini');
  SServer    := Decrypt (MyIniFile.ReadString('Server','02','(Local)'));
  ServerVPN  := Decrypt (MyIniFile.ReadString('Server','08','(Local)'));
  Passdb     := Decrypt (MyIniFile.ReadString('Server','03','upi'));
  DBPass     := Decrypt (MyIniFile.ReadString('Server','09','upi'));
  StClient   := Decrypt (MyIniFile.ReadString('Server','07','upi'));
  DataName   := Decrypt (MyIniFile.ReadString('Server','01','upi'));
  DataNm   := Decrypt (MyIniFile.ReadString('Server','05','upi'));
  with cmbDatabase do
  begin
    Items.Add (Decrypt (MyIniFile.ReadString('Server','02','UPIData')));
    Items.Add (Decrypt (MyIniFile.ReadString('Server','08','UPIData')));
  end;
  cmbDatabase.ItemIndex :=0;
end;

procedure TfmPickDatabase.bbOK1Click(Sender: TObject);
begin
  inherited;
  if cmbDatabase.Text = '' then
  begin
    ShowMessage('Koneksi belum dipilih');
    cmbDatabase.SetFocus;
    Abort;
  end;
  if cmbDatabase.ItemIndex = 0 then
  begin
    Server := SServer;
    database := DataName;
    Password := Passdb;
  end else
  if cmbDatabase.ItemIndex = 1 then
  begin
    Server := ServerVPN;
    database := DataNm;
    Password := DBPass;
  end;
  ModalResult := mrOk ;
end;

end.
