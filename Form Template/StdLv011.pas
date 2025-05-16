unit StdLv011;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv01, dxExEdtr, dxCntner, DB, ADODB, dxCore, dxContainer,
  StdCtrls, Buttons;

type
  TfmStdLv011 = class(TfmStdLv01)
    bBCancel: TBitBtn;
    bbOK: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmStdLv011: TfmStdLv011;

implementation

uses ConMain;

{$R *.dfm}

end.
