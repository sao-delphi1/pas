//PT PAS

unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv011, dxCntner, dxEditor, dxEdLib, StdCtrls, dxExEdtr, DB,
  ADODB, Buttons, dxCore, dxContainer, jpeg, ExtCtrls, dxButton,inifiles;

type
  TfmLogin = class(TfmStdLv011)
    Label1: TLabel;
    Label2: TLabel;
    quUser: TADOQuery;
    dsUser: TDataSource;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;  
    CbUser: TComboBox;
    edPassword: TdxEdit;
    lblasli: TLabel;
    quUserUserId: TStringField;
    dxButton12: TdxButton;
    dxButton8: TdxButton;
    dxButton16: TdxButton;
    dxButton6: TdxButton;
    dxButton9: TdxButton;
    dxButton13: TdxButton;
    dxButton7: TdxButton;
    dxButton10: TdxButton;
    dxButton14: TdxButton;
    dxButton5: TdxButton;
    dxButton11: TdxButton;
    dxButton15: TdxButton;
    bbOK1: TdxButton;
    bbCancel1: TdxButton;
    Label3: TLabel;
    procedure edUserIdKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dxButton8Click(Sender: TObject);
    procedure bbOK1Click(Sender: TObject);
    procedure bbCancel1Click(Sender: TObject);
  private
    { Private declarations }
    procedure CetakAngka(data : string);
  public
    { Public declarations }
  end;

var
  fmLogin: TfmLogin;

implementation

uses MyUnit, ConMain, Utama, UnitGeneral;

{$R *.dfm}
procedure TfmLogin.CetakAngka(data : string);
var sData : string;
begin
  lblasli.Caption:=edPassword.Text;
  sData := data;
  if (sData <> '10') and (sData <> '11') then
   begin
     if length(lblasli.Caption) < 20 then
      lblasli.Caption := lblasli.Caption + sData
   end
  else
   begin
      if sData = '10' then
        begin
         lblasli.Caption := copy (lblasli.Caption, 1, length(lblasli.Caption) -1);
        end
      else
        begin
          //close;
        end;
   end;
   edPassword.Text :=lblasli.Caption;
end;


procedure TfmLogin.edUserIdKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmLogin.FormShow(Sender: TObject);
var Versi : string;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT versi FROM SAMsSet');
    Open;
  end;
  Versi := quAct.FieldByName('versi').AsString;
  if version <> Versi then
  begin
    if MessageDlg('Applikasi sudah ada perubahan. Update sekarang ? ', mtInformation, [mbYes, mbNo], 0) = mrYes then
    begin
      Application.Terminate;
      WinExec('Update.bat',SW_Normal);
    end else
    begin
      Application.Terminate;
    end;
  end;

  quUser.Close;
  quUser.Open;
  quUser.First;
  CbUser.Clear;
  While Not quUser.Eof do
  Begin
    CbUser.Items.Add(quUser.Fieldbyname('UserId').AsString);
    quUser.Next;
  End;
  CbUser.ItemIndex:=0;
  edPassword.Text:='';
  edPassword.SetFocus;
  lblasli.Caption := ''
end;

procedure TfmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
{ if ( (key >= '0') and (key <= '9') ) or (key = #13) or (key = #8) then
    begin
      if ( (key >= '0') and (key <= '9') )  then
        CetakAngka(key)
      else
        if key = #13 then
           bbOKClick(bbOK)
        else
          CetakAngka('10');
      edPassword.SetFocus;
    end;  }
end;

procedure TfmLogin.dxButton8Click(Sender: TObject);
begin
  inherited;
  CetakAngka(TBitBtn(sender).Hint);
end;

procedure TfmLogin.bbOK1Click(Sender: TObject);
Var MyIniFile : TIniFile;
    Login : String;
begin
  inherited;
   MyIniFile  := TIniFile.Create('C:\Windows\Setting.ini');
   Login := MyIniFile.ReadString('Server','08','');

   //--Cek user n password bener kagak
  with quAct,SQL do
  begin
     Close; Clear;
     Add('SELECT PassWd FROM SysMsUser WHERE UserId=:UserID');
     Parameters.ParamByName('UserId').Value := CbUser.Text;
     if Login <> '' then
     begin
       if CbUser.Text <> Login then
         begin
           ShowMessage('Komputer ini hanya bisa login dengan user '+Login);
           CbUser.SetFocus;
           abort;
         end;
     end;

     Open;
     IF Not IsEmpty THEN
     begin
        if Decrypt(Fields[0].AsString)=edPassword.Text then
        begin
          dmMain.UserId := CbUser.Text;
          Application.CreateForm(TfmUtama, fmUtama);
          Self.Hide;
          fmUtama.ShowModal;
          Self.Show;
        end else
        begin
          MsgInfo('Invalid User Id OR Password !');
          lblasli.Caption:='';
          edPassword.Text:=lblasli.Caption;
          edPassword.SetFocus;
          Exit;
        end;
     end else
     begin
         MsgInfo('Invalid User Id OR Password !');
         lblasli.Caption:='';
         edPassword.Text:=lblasli.Caption;
         edPassword.SetFocus;
         Exit;
     end;
  end;
end;

procedure TfmLogin.bbCancel1Click(Sender: TObject);
begin
  inherited;
  Application.Terminate;
end;

end.
