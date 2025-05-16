unit CFQRRptRekapPiutangInternal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, StdCtrls, QRCtrls, ExtCtrls;

type
  TfmCFQRRptRekapPiutangInternal = class(TfmRptLv4)
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    SummaryBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure bnd002AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure bnd002BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    tglDari  : TDateTime;
    tglsmp   : TDateTime;
    TotalIDR : Currency;
    TotalUSD : Currency;
    bCheckced : boolean
  end;

var
  fmCFQRRptRekapPiutangInternal: TfmCFQRRptRekapPiutangInternal;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmCFQRRptRekapPiutangInternal.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  With qu003,sql do
    Begin
       Close;Clear;
       add(' SELECT A.Actor, CONVERT(VARCHAR(10),A.Transdate,103) as Tanggal, A.VoucherID as IP, ISNULL(SUM(B.Amount),0) as Kredit,'
          +' (SELECT ISNULL(SUM(L.ValuePayment),0) FROM CFTrPiutangINternalDt L'
          +' INNER JOIN CFTrPiutangInternalHd H ON L.PiutangID=H.PiutangID WHERE L.VoucherID=A.VoucherID AND H.SalesID=A.Actor)+ '
          +'(SELECT ISNULL(SUM(L.ValuePayment),0) FROM PayrollKasbon L WHERE L.VoucherID=A.VoucherID) as Debit'
          +' FROM CFTrKKBBHd A INNER JOIN CFTrKKBBDt B ON A.VoucherID=B.VoucherID WHERE A.FlagKKBB IN (31,32)'
          +' AND A.Actor='''+qu001.FieldByName('SalesID').AsString+''' ');
       Add(' AND CONVERT(varchar(8),A.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''''
          +' GROUP BY A.Actor,A.Transdate,A.VoucherID ORDER BY Convert(varchar(20),A.Transdate,112)');
       Open;
    End;
end;

procedure TfmCFQRRptRekapPiutangInternal.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value:=FormatRptkurung(Value);
end;

procedure TfmCFQRRptRekapPiutangInternal.QRLabel9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Total Pinjaman Karyawan '+qu001.Fieldbyname('SalesName').AsString+' :';
end;

procedure TfmCFQRRptRekapPiutangInternal.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  TotalIDR :=0;
end;

procedure TfmCFQRRptRekapPiutangInternal.bnd002AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  TotalIDR:=TotalIDR+(qu003.FieldByName('Kredit').AsCurrency-qu003.FieldByName('Debit').AsCurrency);
end;

procedure TfmCFQRRptRekapPiutangInternal.QRLabel12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrtoStr(TotalIDR));
end;

procedure TfmCFQRRptRekapPiutangInternal.bnd002BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  if bCheckced then
    PrintBand := qu003.FieldByName('Kredit').AsCurrency <> qu003.FieldByName('Debit').AsCurrency;
end;

end.
