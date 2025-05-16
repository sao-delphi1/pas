unit Progress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv0, ComCtrls, dxExEdtr, dxCntner, DB, ADODB;

type
  TfmProgress = class(TfmStdLv0)
    pgBar: TProgressBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmProgress: TfmProgress;

implementation

{$R *.dfm}

end.
