unit CFQRRptKeuanganBank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv1, QuickRpt, DB, ADODB, StdCtrls, QRCtrls, ExtCtrls;

type
  TfmCFQRRptKeuanganBank = class(TfmRptLv1)
    ChildBand1: TQRChildBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    qu002: TADOQuery;
    SummaryBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    ds002: TDataSource;
    quAwal: TADOQuery;
    QRSubDetail2: TQRSubDetail;
    qu003: TADOQuery;
    QRDBText3: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    qrlTotal: TQRLabel;
    QRDBText6: TQRDBText;
    GroupFooterBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    qlbSaldoAwal: TQRLabel;
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure qrlTotalPrint(sender: TObject; var Value: String);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure qlbSaldoAwalPrint(sender: TObject; var Value: String);
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
    TanggalDari,TanggalSampai : TDateTime;
    Awal,Akhir : currency;
  end;

var
  fmCFQRRptKeuanganBank: TfmCFQRRptKeuanganBank;

implementation

uses UnitGeneral, MyUnit, RptLv0;

{$R *.dfm}

procedure TfmCFQRRptKeuanganBank.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatRptkurung(Value)
end;

procedure TfmCFQRRptKeuanganBank.QRDBText4Print(sender: TObject;
  var Value: String);
begin
  inherited;
   value := FormatRptkurung(Value)
end;

procedure TfmCFQRRptKeuanganBank.MyReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  Awal :=0;
  Akhir := 0;
end;

procedure TfmCFQRRptKeuanganBank.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
//   Value :='Saldo Awal Bank '+qu001.Fieldbyname('BankName').AsString+' Valuta '+qu002.Fieldbyname('ValutaiD').AsString+' Tanggal '+FormatDateTime('dd/MM/yyyy',TanggalDari)+' : '+FormatRptkurung(currtostr(Awal));
end;

procedure TfmCFQRRptKeuanganBank.qrlTotalPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(Awal))
end;

procedure TfmCFQRRptKeuanganBank.QRSubDetail2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
   if (qu003.FieldByName('GroupRekId').AsString = '100') or(qu003.FieldByName('GroupRekId').AsString =sDGRPLL) Then
  Begin
    QRDBText2.Left := 470;
    Awal := Awal + qu003.fieldbyname('Amount').AsCurrency;
  End
  else
  if (qu003.FieldByName('GroupRekId').AsString = '200') or(qu003.FieldByName('GroupRekId').AsString =sDGRBi) Then
  Begin
    QRDBText2.Left := 571;
    Awal := Awal - qu003.fieldbyname('Amount').AsCurrency;
  End
  Else
    PrintBand := False;
end;

procedure TfmCFQRRptKeuanganBank.QRLabel6Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value :='Saldo Akhir Piutang '+qu001.Fieldbyname('BankName').AsString+' Tanggal '+FormatDateTime('dd/MM/yyyy',TanggalSampai)+' : '+FormatRptkurung(currtostr(Awal));
end;

procedure TfmCFQRRptKeuanganBank.qlbSaldoAwalPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(Awal))
end;

procedure TfmCFQRRptKeuanganBank.BndDetailBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  with quAwal,SQL do
  Begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(CASE WHEN K.GroupRekID=''100'' THEN K.Amount ELSE K.Amount*-1 END),0) as Saldo FROM ('
       +'SELECT TransDate,SaleID as VoucherNo,''Penjualan'' as Note,ISNULL(TTLPj,0) as Amount,''100'' as GroupRekID,CustID,CurrID '
       +'FROM ARTrPenjualanHd UNION ALL SELECT A.Transdate1,A.VoucherID,''Pembayaran'',B.Amount,''200'',A.Actor,A.CurrId '
       +'FROM CFTrKKBBHd A INNER JOIN CFTrKKBBDt B ON A.VoucherID=B.VoucherID WHERE A.FlagKKBB IN (''ARK'',''ARB'',''ARC'')) as K '
       +'WHERE K.CustID='''+qu001.Fieldbyname('TempField').AsString+''' '
       +'AND K.CurrID='''+qu002.Fieldbyname('ValutaId').AsString+''' AND CONVERT(VARCHAR(8),K.TransDate,112) < '''+FormatDateTime('yyyyMMdd',TanggalDari)+''' ');
    Open;
  End;
  Awal := quAwal.FieldByName('Saldo').AsCurrency;
end;

end.


