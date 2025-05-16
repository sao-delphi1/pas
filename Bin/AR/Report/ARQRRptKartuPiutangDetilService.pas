unit ARQRRptKartuPiutangDetilService;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, StdCtrls, QRCtrls, ExtCtrls, DateUtils;

type
  TfmARQRRptKartuPiutangDetilService = class(TfmRptLv4)
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    SummaryBand1: TQRBand;
    ds003: TDataSource;
    qu004: TADOQuery;
    QRSubDetail1: TQRSubDetail;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    qlbTelat: TQRLabel;
    QRDBText7: TQRDBText;
    GroupFooterBand2: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape2: TQRShape;
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure bnd002AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure BndDetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure bnd002BeforePrint(Sender: TQRCustomBand;
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
  fmARQRRptKartuPiutangDetilService: TfmARQRRptKartuPiutangDetilService;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmARQRRptKartuPiutangDetilService.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
   TotalIDR := 0;
   TotalUSD := 0;
   TotalPI :=0;
end;

procedure TfmARQRRptKartuPiutangDetilService.QRLabel8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Sisa Piutang Invoice Service '+qu002.FieldByName('InvServiceId').AsString+' :';
end;

procedure TfmARQRRptKartuPiutangDetilService.bnd002AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
   TotalPI:=TotalPI-qu003.FieldByname('Amount').AsCurrency;
end;

procedure TfmARQRRptKartuPiutangDetilService.QRLabel9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Currtostr(TotalPI));
     TotalIDR:=TotalIDR+TotalPI;
  TotalPI := 0;
end;

procedure TfmARQRRptKartuPiutangDetilService.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value)
end;

procedure TfmARQRRptKartuPiutangDetilService.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value:=FormatRptkurung(Value);
end;

procedure TfmARQRRptKartuPiutangDetilService.QRLabel13Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrtoStr(TotalUSD));
end;

procedure TfmARQRRptKartuPiutangDetilService.QRLabel12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrtoStr(TotalIDR));
end;

procedure TfmARQRRptKartuPiutangDetilService.bnd001AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
   With qu003,sql do
    Begin
       Close;Clear;
       add(' Select A.InvServiceID,B.PiutInvServiceId, '
          +' Convert(varchar(20),B.TransDate,103) as Tanggal,isnull(ValuePayment,0) as Amount'
          +' ,B.Transdate as TglBayar FROM ARTrPiutInvServiceDt A'
          +' INNER JOIN ARTrInvServiceHd C ON A.InvServiceId=C.InvServiceId INNER JOIN ARTrPiutInvServiceHd B ON A.PiutInvServiceId=B.PiutInvServiceId'
          +' INNER JOIN ARTrServiceHd D ON C.ServiceId=D.ServiceId'
          +' WHERE D.CustId='''+qu001.Fieldbyname('CustId').AsString+''''
          +' AND A.InvServiceID='''+qu002.Fieldbyname('InvServiceId').AsString+''''
          +' AND CONVERT(varchar(8),B.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''''
          +' ORDER BY Convert(varchar(20),B.TransDate,112)');
       Open;
    End;
  TotalPI:=0;
  TotalPI:=qu002.FieldByName('TTLPI').AsCurrency;  
end;                                    //  B.JatuhTempo as Jth

procedure TfmARQRRptKartuPiutangDetilService.BndDetailAfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
   With qu002,sql do
    Begin
       Close;Clear;
       add(' Select C.CustId,B.InvServiceId,Convert(varchar(20),B.TransDate,103) as Tanggal,'
          +' isnull(B.TTLSV,0) As TTLPI,dateadd(Day, isnull(B.JatuhTempo,0),B.Transdate) as jth FROM ARTrInvServiceHd B '
          +' INNER JOIN ARTrServiceHd C ON B.ServiceId=C.ServiceID'
          +' WHERE C.CustId='''+qu001.fieldbyname('CustId').AsString+''''
          +' AND isnull(B.TTLSV,0) ');
          if bCheckced then
          Add(' -isnull((Select isnull(Sum(ValuePayment),0) FROM ARTrPiutInvServiceDt P '
             +' INNER JOIN ARTrPiutInvServiceHd Q ON P.PiutInvServiceId=Q.PiutInvServiceId '
            +'  WHERE P.InvServiceId=B.InvServiceID AND CONVERT(varchar(8),Q.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+'''),0)');

          Add(' <> 0 AND CONVERT(varchar(8),B.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''''
          +' '
          +' ORDER BY Convert(varchar(20),B.TransDate,112)');

        Open;
    End;
end;

procedure TfmARQRRptKartuPiutangDetilService.bnd002BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
   qlbTelat.Caption := '';
  if Not qu003.IsEmpty then
  Begin
   if FormatDateTime('yyyy/MM/dd', qu002.FieldByName('jth').AsDateTime) >=
      FormatDateTime('yyyy/MM/dd', qu003.FieldByName('TglBayar').AsDateTime) then
      qlbTelat.Caption := ''
   else
    qlbTelat.Caption := inttostr(DaysBetween(qu002.FieldByName('jth').AsDateTime, qu003.FieldByName('TglBayar').AsDateTime))+' Hari';
  End;
end;

end.
