unit RptLv1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, DB, ADODB, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, jpeg;

type
  TfmRptLv1 = class(TfmRptLv0)
    BndPF: TQRBand;
    QRSPageNumber: TQRSysData;
    qrlUserId: TQRLabel;
    qrlPrintDate: TQRLabel;
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure quSettingAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRptLv1: TfmRptLv1;

implementation

uses ConMain;

{$R *.dfm}

procedure TfmRptLv1.MyReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  qrlUserId.Caption    := dmMain.UserId;
  qrlPrintDate.Caption := '  '+FormatDateTime('DD-MMM-YYYY',Now);
end;

procedure TfmRptLv1.quSettingAfterOpen(DataSet: TDataSet);
begin
  inherited;
  BndPF.Color := quSettingClFooter.value;
end;

end.
