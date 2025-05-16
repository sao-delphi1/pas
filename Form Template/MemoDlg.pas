unit MemoDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv011, StdCtrls, dxExEdtr, dxCntner, DB, ADODB, Buttons,
  dxCore, dxContainer, dxEditor, dxEdLib;

type
  TfmShowDlg = class(TfmStdLv011)
    mmKet: TdxMemo;
    Label1: TLabel;
    procedure mmKetKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmShowDlg: TfmShowDlg;

implementation

{$R *.dfm}

procedure TfmShowDlg.mmKetKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

end.
