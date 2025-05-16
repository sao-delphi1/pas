unit APChangeSN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxCore, dxContainer, Buttons, dxTL, dxDBCtrl, dxDBGrid;

type
  TfmAPChangeSN = class(TfmStdLv2)
    quMainTesterField: TStringField;
    dbg: TdxDBGrid;
    dbgColumn1: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAPChangeSN: TfmAPChangeSN;

implementation

{$R *.dfm}

procedure TfmAPChangeSN.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;
end;

procedure TfmAPChangeSN.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

end.
