unit StdLv41;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxButton, StdCtrls, ExtCtrls, Buttons, dxCore,
  dxContainer, dxEdLib;

type
  TfmStdLv41 = class(TfmStdLv4)
    pcColumn: TdxPageControl;
    ts0201: TdxTabSheet;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    ActCari: TAction;
    procedure dsMainStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmStdLv41: TfmStdLv41;

implementation

uses StdLv0, ConMain;

{$R *.dfm}

procedure TfmStdLv41.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,FActDS);
  SetBtnOperationVisible(bbCancel,FActDS);
end;

end.
