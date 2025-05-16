unit ARQRRptSegel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls, DateUtils, StrUtils;

type
  TfmQRRptSegel = class(TfmRptLv0)
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    latahun: TQRLabel;
    laTgl: TQRLabel;
    QRShape9: TQRShape;
    QRLabel13: TQRLabel;
    laTglj: TQRLabel;
    lbCoret: TQRDBText;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmQRRptSegel: TfmQRRptSegel;

implementation

{$R *.dfm}

procedure TfmQRRptSegel.BndDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var d,m,y : word;  begin
inherited;
   DecodeDate(Date,y,m,d);
   latahun.Caption := RightStr(FormatFloat('0000',y),2);
   laTgl.Caption := FormatFloat('00',d);
   if m = 1 then
   begin
     lbCoret.Left:=23;
     lbCoret.Top :=2;
   End;
   if m = 2 then
   begin
     lbCoret.Left:=38;
     lbCoret.Top :=2;
   End;
   if m = 3 then
   begin
     lbCoret.Left:=53;
     lbCoret.Top :=2;
   End;
   if m = 4 then
   begin
     lbCoret.Left:=68;
     lbCoret.Top :=2;
   End;
   if m = 5 then
   begin
     lbCoret.Left:=83;
     lbCoret.Top :=2;
   End;
   if m = 6 then
   begin
     lbCoret.Left:=98;
     lbCoret.Top :=2;
   End;
   if m = 7 then
   begin
     lbCoret.Left:=23;
     lbCoret.Top :=22;
   End;
   if m = 8 then
   begin
     lbCoret.Left:=38;
     lbCoret.Top :=22;
   End;
   if m = 9 then
   begin
     lbCoret.Left:=53;
     lbCoret.Top :=22;
   End;
   if m = 10 then
   begin
     lbCoret.Left:=68;
     lbCoret.Top :=21;
   End;
   if m = 11 then
   begin
     lbCoret.Left:=83;
     lbCoret.Top :=22;
   End;
   if m = 12 then
   begin
     lbCoret.Left:=98;
     lbCoret.Top :=22;
   End;

  laTglj.Caption := FormatDateTime('dd/MM/yyyy',IncDay(date, qu001.FieldByname('JangkaGarantee').asInteger));
end;

end.
