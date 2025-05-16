unit PassChange;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv01, dxCntner, dxEditor, dxEdLib, StdCtrls, dxButton,
  dxExEdtr, DB, ADODB, dxCore, dxContainer;

type
  TfmPassChange = class(TfmStdLv01)
    bbOK: TdxButton;
    bbCancel: TdxButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edlama: TdxEdit;
    edPass1: TdxEdit;
    edPass2: TdxEdit;
    quMain: TADOQuery;
    procedure bbOKClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edlamaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    FUserId : String;
    CallerFromAnotherForm : Boolean;
  end;

var
  fmPassChange: TfmPassChange;

implementation

uses UnitGeneral, MyUnit, ConMain;

{$R *.dfm}

procedure TfmPassChange.bbOKClick(Sender: TObject);
var PassLama : String;
begin
  inherited;
 with quMain,SQL do
  begin
     Close; Clear;
     Add('SELECT PassWd FROM SysMsUser WHERE UserId=:UserId');
     if CallerFromAnotherForm then
        Parameters.ParamByName('UserId').Value := FUserId
     else
        Parameters.ParamByName('UserId').Value := dmMain.UserId;
     Open;
     PassLama := Decrypt(Fields[0].AsString);
  end;

  if PassLama <> edLama.Text then
  begin
     pesan('Password lama salah');
     edLama.SetFocus;
     Abort;
  end;

  if edPass1.Text <> edPass2.Text then
  begin
     pesan('Password baru tidak sama');
     edPass1.SetFocus;
     Abort;
  end;

  with quAct,SQL do
  begin
     Close; Clear;
     Add('Update SysMsUser set PassWd=''' + Crypt(edPass1.Text) + ''' where ');
    if CallerFromAnotherForm then
     Add(' UserId='''+FUserId+''' ')
    else
     Add(' UserId='''+dmMain.UserId+''' ');  
     ExecSQL;
  end;
  MsgInfo('Password sudah diganti');
  Close;
end;

procedure TfmPassChange.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmPassChange.FormShow(Sender: TObject);
begin
  inherited;
  edlama.SetFocus;
end;

procedure TfmPassChange.FormCreate(Sender: TObject);
begin
  inherited;
  FUserId := '';
  CallerFromAnotherForm := FALSE;
end;

procedure TfmPassChange.edlamaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

end.
