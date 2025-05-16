unit INQRRptUmurBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv2, DB, ADODB, QRCtrls, StdCtrls, QuickRpt, ExtCtrls, DateUtils;

type
  TfmINQRRptUmurBarang = class(TfmRptLv2)
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRDBText3: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel8: TQRLabel;
    qlbTelat: TQRLabel;
    qu002: TADOQuery;
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    TanggalDari : TDateTime;    
  end;

var
  fmINQRRptUmurBarang: TfmINQRRptUmurBarang;

implementation

{$R *.dfm}

procedure TfmINQRRptUmurBarang.QRSubDetail2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  if FormatDateTime('yyyy/MM/dd', qu002.FieldByName('jth').AsDateTime) >=
     FormatDateTime('yyyy/MM/dd', TanggalDari) then
    qlbTelat.Caption := '0'
  else
    qlbTelat.Caption := inttostr(DaysBetween(qu002.FieldByName('jth').AsDateTime, TanggalDari))+' Hari';

end;

end.
