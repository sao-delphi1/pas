unit ARQRRptPenjPerCustTunai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv1, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TfmARQRRptPenjPerCustTunai = class(TfmRptLv1)
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARQRRptPenjPerCustTunai: TfmARQRRptPenjPerCustTunai;

implementation

{$R *.dfm}

end.
