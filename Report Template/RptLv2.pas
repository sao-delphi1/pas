unit RptLv2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv1, DB, ADODB, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, jpeg;

type
  TfmRptLv2 = class(TfmRptLv1)
    bndCH: TQRBand;
    QRShape1: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRptLv2: TfmRptLv2;

implementation

{$R *.dfm}

end.
