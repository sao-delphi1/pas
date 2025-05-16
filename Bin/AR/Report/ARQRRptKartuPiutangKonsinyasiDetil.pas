unit ARQRRptKartuPiutangKonsinyasiDetil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, StdCtrls, QRCtrls, ExtCtrls, dateUtils;

type
  TfmARQRRptKartuPiutangKonsinyasiDetil = class(TfmRptLv4)
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
    QRLabel3: TQRLabel;
    qlbTelat: TQRLabel;
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
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
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
  fmARQRRptKartuPiutangKonsinyasiDetil: TfmARQRRptKartuPiutangKonsinyasiDetil;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmARQRRptKartuPiutangKonsinyasiDetil.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
   TotalIDR := 0;
   TotalUSD := 0;
   TotalPI :=0;
end;

procedure TfmARQRRptKartuPiutangKonsinyasiDetil.QRLabel8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Sisa Piutang Konsinyasi Invoice Penj '+qu003.FieldByName('KonInvPelID').AsString+' Valuta '+qu002.FieldByName('Currid').AsString +' :';
end;

procedure TfmARQRRptKartuPiutangKonsinyasiDetil.bnd002AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
   With qu004,sql do
    Begin
       Close;Clear;
       add(' Select A.KonInvPelID,B.KonPiutangID,Convert(varchar(20),B.TransDate,103) as Tanggal,'
          +' B.Transdate as TglBayar,isnull(ValuePayment,0) as Amount FROM ARTrKonPiutangDt A'
          +' INNER JOIN ARTrKonInvPelHd C ON A.KonInvPelID=C.KonInvPelID INNER JOIN ARTrKonPiutangHd B ON A.KonPiutangID=B.KonPiutangID'
          +' WHERE C.CustId='''+qu001.Fieldbyname('CustId').AsString+''''
          +' AND C.CurrId='''+qu002.Fieldbyname('CurrId').AsString+''''
          +' AND A.KonInvPelID='''+qu003.Fieldbyname('KonInvPelID').AsString+''''
          +' AND CONVERT(varchar(8),B.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''''
          +' ORDER BY Convert(varchar(20),B.TransDate,112)');
       Open;
    End;
  TotalPI:=0;
  TotalPI:=qu003.FieldByName('TTLPI').AsCurrency;
end;

procedure TfmARQRRptKartuPiutangKonsinyasiDetil.QRSubDetail1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  TotalPI:=TotalPI-qu004.FieldByname('Amount').AsCurrency;
end;

procedure TfmARQRRptKartuPiutangKonsinyasiDetil.QRLabel9Print(sender: TObject;
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

procedure TfmARQRRptKartuPiutangKonsinyasiDetil.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value)
end;

procedure TfmARQRRptKartuPiutangKonsinyasiDetil.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptKartuPiutangKonsinyasiDetil.QRLabel13Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrtoStr(TotalUSD));
end;

procedure TfmARQRRptKartuPiutangKonsinyasiDetil.QRLabel12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrtoStr(TotalIDR));
end;

procedure TfmARQRRptKartuPiutangKonsinyasiDetil.bnd001AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
   With qu003,sql do
    Begin
       Close;Clear;
       add(' Select B.CustId,B.CurrId,B.KonInvPelID,Convert(varchar(20),B.TransDate,103) as Tanggal,'
          +' isnull(B.TTLKJ,0) As TTLPI, dateadd(Day, isnull(B.JatuhTempo,0),B.Transdate) as jth FROM ARTrKonInvPelHd B '
          +' WHERE B.CustId='''+qu001.fieldbyname('CustId').AsString+''' AND B.CurrId='''+qu002.fieldbyname('CurrId').AsString+''' '
          +' AND isnull(B.TTLKJ,0)');
           if bCheckced then
         Add(' -isnull((Select isnull(Sum(ValuePayment),0) FROM ARTrKonPiutangDt M INNER JOIN ARTrKonPiutangHd N ON M.KonPiutangId=N.KonPiutangId'
            +'  WHERE M.KonInvPelID=B.KonInvPelID AND CONVERT(varchar(8),N.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+'''),0)');

         Add(' <>0 AND CONVERT(varchar(8),B.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''''
            +' ORDER BY Convert(varchar(20),B.TransDate,112)');

       Open;
    End;
end;

procedure TfmARQRRptKartuPiutangKonsinyasiDetil.QRSubDetail1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
    qlbTelat.Caption := '';
  if Not qu004.IsEmpty then
  Begin
   if FormatDateTime('yyyy/MM/dd', qu003.FieldByName('jth').AsDateTime) >=
      FormatDateTime('yyyy/MM/dd', qu004.FieldByName('TglBayar').AsDateTime) then
      qlbTelat.Caption := ''
   else
    qlbTelat.Caption := inttostr(DaysBetween(qu003.FieldByName('jth').AsDateTime, qu004.FieldByName('TglBayar').AsDateTime))+' Hari';
  End;

end;

end.
