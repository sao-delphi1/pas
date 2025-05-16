{
  cuma ada new delete n find ditambah tombol save dan cancel
}


unit StdLv31;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv3, dxExEdtr, dxCntner, DB, ADODB, dxButton, dxTL, dxDBCtrl,
  dxDBGrid, ExtCtrls, Buttons, dxCore, dxContainer, dxPageControl, ActnList,
  StdCtrls, dxEdLib;

type
  TfmStdLv31 = class(TfmStdLv3)
    dxContainer7: TdxContainer;
    pcParent: TdxPageControl;
    ts01: TdxTabSheet;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    procedure dsMainStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmStdLv31: TfmStdLv31;

implementation

uses StdLv0, ConMain;

{$R *.dfm}

procedure TfmStdLv31.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDs);
end;

procedure TfmStdLv31.FormCreate(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDs);
end;

end.
