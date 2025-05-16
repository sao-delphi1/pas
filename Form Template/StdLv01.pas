unit StdLv01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv0, dxExEdtr, dxCntner, DB, ADODB, dxCore, dxContainer;

type
  TfmStdLv01 = class(TfmStdLv0)
    paUp: TdxContainer;
    paBottom: TdxContainer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmStdLv01: TfmStdLv01;

implementation

uses ConMain;

{$R *.dfm}

end.
