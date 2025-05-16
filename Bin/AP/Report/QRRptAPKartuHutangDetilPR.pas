unit QRRptAPKartuHutangDetilPR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, StdCtrls, QRCtrls, ExtCtrls;

type
  TfmAPQRRptKartuHutangDetilPR = class(TfmRptLv4)
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
  fmAPQRRptKartuHutangDetilPR: TfmAPQRRptKartuHutangDetilPR;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmAPQRRptKartuHutangDetilPR.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
   TotalIDR := 0;
   TotalUSD := 0;
   TotalPI :=0;
end;

procedure TfmAPQRRptKartuHutangDetilPR.QRLabel8Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Sisa Hutang Invoice Pengganti Retur '+qu003.FieldByName('ReturnRepId').AsString+' Valuta '+qu002.FieldByName('Currid').AsString +' :';
end;

procedure TfmAPQRRptKartuHutangDetilPR.bnd002AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
   With qu004,sql do
    Begin
       Close;Clear;
       add(' Select A.ReturnRepID,B.PayReturnrepId,Convert(varchar(20),B.TransDate,103) as Tanggal,isnull(ValuePayment,0) as Amount FROM APTrPayReturnrepDt A'
          +' INNER JOIN APTrReturnRepHd C ON A.ReturnRepId=C.ReturnrepId INNER JOIN APTrPayReturnrepHd B ON A.PayReturnRepId=B.PayReturnrepId'
          +' WHERE C.SuppId='''+qu001.Fieldbyname('SuppId').AsString+''''
          +' AND C.CurrId='''+qu002.Fieldbyname('CurrId').AsString+''''
          +' AND A.ReturnRepID='''+qu003.Fieldbyname('ReturnRepId').AsString+''''
          +' AND CONVERT(varchar(8),B.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''''
          +' ORDER BY Convert(varchar(20),B.TransDate,112)');
       Open;
    End;
  TotalPI:=0;
  TotalPI:=qu003.FieldByName('TTLPI').AsCurrency;
end;

procedure TfmAPQRRptKartuHutangDetilPR.QRSubDetail1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  TotalPI:=TotalPI-qu004.FieldByname('Amount').AsCurrency;
end;

procedure TfmAPQRRptKartuHutangDetilPR.QRLabel9Print(sender: TObject;
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

procedure TfmAPQRRptKartuHutangDetilPR.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value)
end;

procedure TfmAPQRRptKartuHutangDetilPR.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmAPQRRptKartuHutangDetilPR.QRLabel13Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrtoStr(TotalUSD));
end;

procedure TfmAPQRRptKartuHutangDetilPR.QRLabel12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrtoStr(TotalIDR));
end;

procedure TfmAPQRRptKartuHutangDetilPR.bnd001AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
   With qu003,sql do
    Begin
       Close;Clear;
       add(' Select B.SuppId,B.CurrId,B.ReturnRepId,Convert(varchar(20),B.TransDate,103) as Tanggal,'
          +' isnull(B.TTLreturRep,0) As TTLPI FROM APTrReturnRepHd B '
          +' WHERE B.SuppId='''+qu001.fieldbyname('SuppId').AsString+''' AND B.CurrId='''+qu002.fieldbyname('CurrId').AsString+''' '
          +' AND isnull(B.TTLReturRep,0)');
         if bCheckced then
         Add(' -isnull((Select isnull(Sum(ValuePayment),0) FROM APTrPayReturnRepDt N INNER JOIN '
            +' APTrPayReturnRepHd M ON M.PayReturnRepId=N.PayReturnRepId WHERE N.ReturnRepId=B.ReturnrepID'
            +' AND CONVERT(varchar(8),M.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+'''  ),0)');
         Add(' <>0 AND CONVERT(varchar(8),B.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''''
            +' ORDER BY Convert(varchar(20),B.TransDate,112)');
        Open;
    End;
end;

end.
