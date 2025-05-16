unit RptLv4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv3, DB, ADODB, QuickRpt, StdCtrls, QRCtrls, ExtCtrls, jpeg;

type
  TfmRptLv4 = class(TfmRptLv3)
    ds002: TDataSource;
    qu003: TADOQuery;
    bnd002: TQRSubDetail;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRptLv4: TfmRptLv4;

implementation

{$R *.dfm}

end.
