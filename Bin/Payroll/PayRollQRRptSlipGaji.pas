unit PayRollQRRptSlipGaji;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TfmRptSlipGaji = class(TfmRptLv0)
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape1: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape2: TQRShape;
    qlbTerbilang: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    qlbTotalPenghasilan: TQRLabel;
    qlbBayar: TQRLabel;
    qlbKasbon: TQRLabel;
    quCalc: TADOQuery;
    qu002: TADOQuery;
    qlbBayarKasbon: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel43: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel46: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel47: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel24: TQRLabel;
    qlbKerajinan: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel50: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel51: TQRLabel;
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    TotalBayar,GajiPokok,TMakan,TKerajinan,DTelat,DAlpa : Currency;
    dari,sampai : String;
    Rajin : integer;
  end;

var
  fmRptSlipGaji: TfmRptSlipGaji;

implementation

uses UnitGeneral, MyUnit, Payroll;

{$R *.dfm}

procedure TfmRptSlipGaji.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:= FormatRptkurung(Value);
end;

procedure TfmRptSlipGaji.BndDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  with quCalc,SQL do
  begin
     Close;Clear;
     Add('SELECT SUM(CASE WHEN CONVERT(VARCHAR(10),JamMasuk,108) > ''10:30:00'' THEN 1 ELSE 0 END) as Rajin '
        +'FROM TrAbsensi WHERE SalesID='''+qu001.FieldByName('SalesID').AsString+''' and '
        +'CONVERT(VARCHAR(8),tanggal,112) BETWEEN '''+dari+''' and '''+sampai+''' ');
     Open;
  end;
  Rajin := quCalc.FieldByName('Rajin').AsInteger;
  if (Rajin = 0) and (qu001.FieldByName('Alpa').AsInteger=0) then
    TKerajinan := qu001.FieldByName('Kerajinan').AsCurrency
  else
    TKerajinan := 0;
  qlbKerajinan.Caption := CurrToStr(TKerajinan);
  GajiPokok := qu001.FieldByName('UangBulanan').AsCurrency;
  TMakan := qu001.FieldByName('TMakan').AsFloat;
  DTelat := qu001.FieldByName('DTelat').AsCurrency;
  DAlpa := qu001.FieldByName('DAlpa').AsCurrency;
  with quCalc,SQL do                       
  begin
    Close;Clear;
    Add('SELECT DISTINCT K.Actor,(SELECT ISNULL(SUM(M.Amount),0) FROM CFTrKKBBHd L INNER JOIN CFTrKKBBDt M ON L.VoucherID=M.VoucherID '
       +'WHERE L.Actor=K.Actor AND L.CurrID=K.CurrID AND L.FlagKKBB IN (31,32))-(SELECT ISNULL(SUM(L.ValuePayment),0) FROM CFTrPiutangInternalDt L '
       +'INNER JOIN CFTrPiutangInternalHd M ON L.PiutangID=M.PiutangID WHERE M.SalesID=K.Actor AND M.CurrID=K.CurrID)- '
       +'(SELECT ISNULL(SUM(L.ValuePayment),0) FROM PayrollKasBon L INNER JOIN PayrollDT M ON L.PayrollID=M.PayrollID WHERE L.SalesID=M.SalesID) as Piutang,'
       +'(SELECT ISNULL(SUM(A.ValuePayment),0) FROM PayrollKasBon A WHERE A.SalesID=K.Actor AND '
       +'A.PayrollID='''+qu001.FieldByName('PayrollID').AsString+''') as BayarKasBon '
       +'FROM CFTrKKBBHd K WHERE K.Actor='''+qu001.FieldByName('SalesID').AsString+''' AND K.CurrID=''IDR'' AND K.FlagKKBB IN (31,32)');
    Open;
  end;
  TotalBayar :=GajiPokok+TMakan+TKerajinan-quCalc.FieldByName('BayarKasBon').AsCurrency+DTelat+DAlpa;
  qlbKasbon.Caption := CurrToStr(quCalc.FieldByName('Piutang').AsCurrency);
  qlbBayar.Caption := CurrToStr(TotalBayar);
  qlbTotalPenghasilan.Caption := CurrToStr(GajiPokok+TMakan+TKerajinan+DAlpa+DTelat);
  qlbTerbilang.Caption :=  '* Terbilang '+ convert(FormatFloat(sEditFormat, TotalBayar))+'rupiah #';
  qlbBayarKasbon.Caption := CurrToStr(quCalc.FieldByName('BayarKasBon').AsCurrency);
end;

end.
