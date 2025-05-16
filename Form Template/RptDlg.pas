unit RptDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv0, StdCtrls, Buttons, ExtCtrls, dxExEdtr, dxCntner, DB,
  ADODB;

type
  TfmRptDlg = class(TfmStdLv0)
    paTop: TPanel;
    laTitle: TLabel;
    paCenter: TPanel;
    paBottom: TPanel;
    bbPreview: TBitBtn;
    bbPrint: TBitBtn;
    bbExit: TBitBtn;
    dsAct: TDataSource;
    procedure bbExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRptDlg: TfmRptDlg;

implementation

{$R *.dfm}

procedure TfmRptDlg.bbExitClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
