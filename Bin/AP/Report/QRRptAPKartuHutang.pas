unit QRRptAPKartuHutang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, StdCtrls, QRCtrls, ExtCtrls;

type
  TfmAPQRRptKartuHutang = class(TfmRptLv4)
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
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure bnd002AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    tglDari  : TDateTime;
    tglsmp   : TDateTime;
    TotalIDR : Currency;
    TotalUSD : Currency;
    bCheckced : Boolean;
  end;

var
  fmAPQRRptKartuHutang: TfmAPQRRptKartuHutang;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmAPQRRptKartuHutang.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  With qu003,SQL do
    Begin
       Close;Clear;
       add('SELECT K.SuppID,CONVERT(VARCHAR(10),K.Transdate,103) as Tanggal,K.PurchaseID as IP,ISNULL(K.Kredit,0) as Kredit,'
          +'ISNULL((SELECT ISNULL(SUM(L.Amount),0) FROM CFTrKKBBDt L INNER JOIN CFTrKKBBHd H ON L.voucherid=H.voucherid '
          +'WHERE L.Note=K.PurchaseID AND CONVERT(VARCHAR(8),H.Transdate,112) <='''+FormatDateTime('yyyyMMdd',tglDari)+'''),0) as Debit '
          +'FROM ( '
          +'SELECT A.SuppID,A.TransDate,A.PurchaseID,A.CurrID,ISNULL(A.TTLPb,0)-ISNULL((Select ISNULL(SUM(Price*Qty),0) FROM APTrReturnDt F '
          +'INNER JOIN APTrReturnHd G  ON F.ReturnID=G.ReturnID WHERE G.FlagRetur=''B'' AND F.purchaseID=A.PurchaseID AND G.SuppID=A.SuppID AND '
          +'CONVERT(varchar(8),G.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+'''),0) as Kredit '
          +'FROM APTrPurchaseHd A) as K '
          +'WHERE K.SuppID = '''+qu001.Fieldbyname('SuppId').AsString+''' AND K.CurrID='''+qu002.FieldByname('CurrId').AsString+''' AND K.Kredit <> 0 ');
       if bCheckced then
       add('AND ISNULL(K.Kredit,0)-ISNULL((SELECT ISNULL(SUM(L.Amount),0) FROM CFTrKKBBDt L INNER JOIN CFTrKKBBHd H ON L.voucherid=H.voucherid '
          +'WHERE L.Note=K.PurchaseID AND CONVERT(VARCHAR(8),H.Transdate,112) <='''+FormatDateTime('yyyyMMdd',tglDari)+'''),0) > 0 ');
       add('AND CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',tglDari)+''' '
          +'ORDER BY CONVERT(VARCHAR(8),K.Transdate,112)');
       Open;
    End;

end;

procedure TfmAPQRRptKartuHutang.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(Value);
end;

procedure TfmAPQRRptKartuHutang.QRLabel9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Total Hutang Per Supplier '+qu001.Fieldbyname('SuppName').AsString+' Per '+qu002.FieldByname('CurrId').AsString+' :';
end;

procedure TfmAPQRRptKartuHutang.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  TotalIDR :=0;
  TotalUSD :=0;
end;

procedure TfmAPQRRptKartuHutang.QRLabel12Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrToStr(TotalIDR));
end;

procedure TfmAPQRRptKartuHutang.QRLabel13Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value:=FormatRptkurung(CurrToStr(TotalUSD));
end;

procedure TfmAPQRRptKartuHutang.bnd002AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  If LeftJust(UpperCase(qu002.FieldByName('CurrId').AsString),3)='IDR' Then
  Begin
   TotalIDR:=TotalIDR+(qu003.FieldByName('Kredit').AsCurrency-qu003.FieldByName('Debit').AsCurrency);
  End
  Else
  Begin
   TotalUSD:=TotalUSD+(qu003.FieldByName('Kredit').AsCurrency-qu003.FieldByName('Debit').AsCurrency);
  End;
end;

end.
