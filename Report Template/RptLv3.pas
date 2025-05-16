unit RptLv3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv2, QuickRpt, DB, ADODB, StdCtrls, QRCtrls, ExtCtrls, jpeg;

type
  TfmRptLv3 = class(TfmRptLv2)
    qu002: TADOQuery;
    bnd001: TQRSubDetail;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRptLv3: TfmRptLv3;

implementation

{$R *.dfm}

end.
