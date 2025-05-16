unit QRRptRincianPayroll;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv2, DB, ADODB, QRCtrls, StdCtrls, QuickRpt, ExtCtrls;

type
  TfmQRRptRincianPayroll = class(TfmRptLv2)
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRShape2: TQRShape;
    SummaryBand1: TQRBand;
    QRLabel17: TQRLabel;
    qlbTotal: TQRLabel;
    qlbTerbilang: TQRLabel;
    qlbVoucherID: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    qlbKeterangan: TQRLabel;
    QRLabel2: TQRLabel;
    qlbOmzet: TQRLabel;
    quCalc: TADOQuery;
    qu002: TADOQuery;
    QRLabel11: TQRLabel;
    QRDBText1: TQRDBText;
    qlbTotalGaji: TQRLabel;
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qlbOmzetPrint(sender: TObject; var Value: String);
    procedure qlbTotalGajiPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    dari,sampai  : string;
    Omzet,Gaji,UMakan,URajin,UAlpa,TGaji : Currency;
  end;

var
  fmQRRptRincianPayroll: TfmQRRptRincianPayroll;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmQRRptRincianPayroll.QRDBText4Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(value);
end;

procedure TfmQRRptRincianPayroll.BndDetailBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  dari := qu002.FieldByName('Tahun').AsString+qu002.FieldByName('Dari').AsString;
  sampai := qu002.FieldByName('Tahun').AsString+qu002.FieldByName('Sampai').AsString;
   with quCalc,SQL do
   begin
     Close;Clear;
     Add('SELECT ISNULL(SUM(K.Total),0) as Total FROM ( '
        +'SELECT ISNULL(SUM(CASE WHEN CurrID=''IDR'' THEN TTLPj ELSE TTLPj*Rate end),0) as Total FROM ARTrPenjualanHd '
        +'WHERE SalesID='''+qu001.FieldByName('SalesID').AsString+''' and CONVERT(VARCHAR(8),Transdate,112) BETWEEN '''+dari+''' and '''+sampai+''' '
        +'UNION ALL SELECT ISNULL(SUM(TTLSV),0) as Total FROM ARTrInvServiceHD WHERE TeknisiID='''+qu001.FieldByName('SalesID').AsString+''' '
        +'and CONVERT(VARCHAR(8),Transdate,112) BETWEEN '''+dari+''' and '''+sampai+''' UNION ALL '
        +'SELECT -1*ISNULL(SUM(CASE WHEN C.CurrID=''IDR'' THEN B.Qty*B.Price ELSE B.Qty*B.Price*C.Rate END),0) as Total '
        +'FROM ARTrReturPenjualanHd A INNER JOIN ARTrReturPenjualanDt B ON A.ReturnID=B.ReturnID INNER JOIN ARTrPenjualanHd C ON B.SaleID=C.SaleID '
        +'WHERE FlagRetur=''B'' AND C.SalesID='''+qu001.FieldByName('SalesID').AsString+''' AND CONVERT(VARCHAR(8),C.Transdate,112) '
        +'BETWEEN '''+dari+''' and '''+sampai+''') as K ');
     Open;
   end;
   Omzet := quCalc.FieldByName('Total').AsCurrency;
end;

procedure TfmQRRptRincianPayroll.qlbOmzetPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(CurrtoStr(Omzet));
end;

procedure TfmQRRptRincianPayroll.qlbTotalGajiPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Gaji := qu001.FieldByName('UangBulanan').AsCurrency;
  UMakan := qu001.FieldByName('TMakan').AsCurrency;
  URajin := qu001.FieldByName('TKerajinan').AsCurrency;
  UAlpa := Gaji/qu001.FieldByName('HrKerja').AsCurrency*qu001.FieldByName('Alpa').AsInteger;
  TGaji := Gaji+UMakan+URajin-UAlpa;
  Value := FormatRptqtykurung(CurrtoStr(TGaji));
end;

end.
