unit QRRptAPKartuHutangKonsinyasiDetil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, StdCtrls, QRCtrls, ExtCtrls;

type
  TfmAPQRRptKartuHutangKonsinyasiDetil = class(TfmRptLv4)
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    SummaryBand1: TQRBand;
    ds003: TDataSource;
    qu004: TADOQuery;
    QRSubDetail1: TQRSubDetail;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText9: TQRDBText;
    QRShape2: TQRShape;
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure bnd002AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    tglDari : TDateTime;
    tglsmp  : TDateTime;
    TotalIDR : Currency;
    TotalUSD : Currency;
    TotalPI : Currency;
    bCheckced : boolean;
  end;

var
  fmAPQRRptKartuHutangKonsinyasiDetil: TfmAPQRRptKartuHutangKonsinyasiDetil;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmAPQRRptKartuHutangKonsinyasiDetil.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
   TotalIDR := 0;
   TotalUSD := 0;
   TotalPI :=0;
end;

procedure TfmAPQRRptKartuHutangKonsinyasiDetil.QRLabel8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Sisa Hutang Konsinyasi Invoice Pemb '+qu003.FieldByName('KonsinyasiInvId').AsString+' Valuta '+qu002.FieldByName('Currid').AsString +' :';
end;

procedure TfmAPQRRptKartuHutangKonsinyasiDetil.bnd002AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
   With qu004,sql do
    Begin
       Close;Clear;
       add(' Select A.KonsinyasiInvId,B.PaymentKonsID,Convert(varchar(20),B.TransDate,103) as Tanggal,'
          +' isnull(ValuePayment,0) as Amount FROM APTrPaymentKonsDt A'
          +' INNER JOIN APTrKonsinyasiInvHd C ON A.KonsinyasiInvId=C.KonsinyasiInvId INNER JOIN APTrPaymentKonsHd B ON A.PaymentKonsID=B.PaymentKonsID'
          +' WHERE C.CustId='''+qu001.Fieldbyname('CustId').AsString+''''
          +' AND C.CurrId='''+qu002.Fieldbyname('CurrId').AsString+''''
          +' AND A.KonsinyasiInvId='''+qu003.Fieldbyname('KonsinyasiInvId').AsString+''''
          +' AND CONVERT(varchar(8),B.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''''
          +' ORDER BY Convert(varchar(20),B.TransDate,112)');
       Open;
    End;
  TotalPI:=0;
  TotalPI:=qu003.FieldByName('TTLPI').AsCurrency;
end;

procedure TfmAPQRRptKartuHutangKonsinyasiDetil.QRSubDetail1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  TotalPI:=TotalPI-qu004.FieldByname('Amount').AsCurrency;
end;

procedure TfmAPQRRptKartuHutangKonsinyasiDetil.QRLabel9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Currtostr(TotalPI));
  if UpperCase(qu002.FieldByName('CurrId').AsString)='IDR' then
     TotalIDR:=TotalIDR+TotalPI
  else
     TotalUSD:=TotalUSD+TotalPI;
  TotalPI := 0;
end;

procedure TfmAPQRRptKartuHutangKonsinyasiDetil.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value)
end;

procedure TfmAPQRRptKartuHutangKonsinyasiDetil.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmAPQRRptKartuHutangKonsinyasiDetil.QRLabel13Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrtoStr(TotalUSD));
end;

procedure TfmAPQRRptKartuHutangKonsinyasiDetil.QRLabel12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrtoStr(TotalIDR));
end;

procedure TfmAPQRRptKartuHutangKonsinyasiDetil.bnd001AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
   With qu003,sql do
    Begin
       Close;Clear;
       add(' Select B.CustId,B.CurrId,B.KonsinyasiInvId,Convert(varchar(20),B.TransDate,103) as Tanggal,'
          +' isnull(B.TTLKS,0) As TTLPI FROM APTrKonsinyasiInvHd B '
          +' WHERE B.CustId='''+qu001.fieldbyname('CustId').AsString+''' AND B.CurrId='''+qu002.fieldbyname('CurrId').AsString+''' '
          +' AND isnull(B.TTLKS,0)');
         if bCheckced then
         Add(' -isnull((Select isnull(Sum(ValuePayment),0) FROM APTrPaymentKonsHd M INNER JOIN APTrPaymentKonsdt N ON M.PaymentKonsId=N.PaymentKonsId'
            +'  WHERE N.KonsinyasiInvId=B.KonsinyasiInvID AND M.CustId=B.CustId AND CONVERT(varchar(8),M.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+'''),0)');

         Add(' <>0 AND CONVERT(varchar(8),B.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''''
            +' ORDER BY Convert(varchar(20),B.TransDate,112)');
       Open;
    End;
end;

end.
