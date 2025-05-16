unit ARQRRptAbsensi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv2, DB, ADODB, QRCtrls, StdCtrls, QuickRpt, ExtCtrls;

type
  TfmARQRRptAbsensi = class(TfmRptLv2)
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    qrlStatus: TQRLabel;
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARQRRptAbsensi: TfmARQRRptAbsensi;

implementation

{$R *.dfm}

procedure TfmARQRRptAbsensi.BndDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if qu001.FieldByName('Hari').AsString = 'SABTU' then
  begin
     if qu001.FieldByName('JamMasuk').AsString > '10:00:00' then
       qrlStatus.Caption := 'Telat' else qrlStatus.Caption := '';
  end
  else
  if qu001.FieldByName('Hari').AsString = 'MINGGU' then
  begin
     if qu001.FieldByName('JamMasuk').AsString > '11:00:00' then
        qrlStatus.Caption := 'Telat' else qrlStatus.Caption := '';
  end
  else
  if (qu001.FieldByName('Hari').AsString <> 'SABTU') or (qu001.FieldByName('Hari').AsString <> 'MINGGU') then
  begin
     if qu001.FieldByName('JamMasuk').AsString > '09:30:00' then
        qrlStatus.Caption :='Telat' else qrlStatus.Caption := '';
  end;
end;

end.
