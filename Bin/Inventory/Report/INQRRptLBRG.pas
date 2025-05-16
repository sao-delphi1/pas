unit INQRRptLBRG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv2, DB, ADODB, QRCtrls, StdCtrls, QuickRpt, ExtCtrls;

type
  TfmINQRRptLBRG = class(TfmRptLv2)
    quRate: TADOQuery;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    quCalc: TADOQuery;
    qu002: TADOQuery;
    QRDBText2: TQRDBText;
    qrlAkhir: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    qrlHpp: TQRLabel;
    qrlJual: TQRLabel;
    qrlbeli: TQRLabel;
    qrlStok: TQRLabel;
    S_LRLB: TADOStoredProc;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    qlbDisc: TQRLabel;
    QRLabel8: TQRLabel;
    qlbBiaya: TQRLabel;
    QRLabel10: TQRLabel;
    qlbService: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape2: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    qlbPendLL: TQRLabel;
    QRLabel18: TQRLabel;
    procedure qrlHppPrint(sender: TObject; var Value: String);
    procedure qrlAkhirPrint(sender: TObject; var Value: String);
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure BndDetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel14Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    TanggalDari,TanggalSampai : TDateTime ;
    RateHpp,iBeli,iJual,iStok,jStok,bStok,iAkhir,iHpp,GrandTotalIDR,Discount,Service,Biaya,TotalLBRG,PendLL  : Currency;
  end;

var
  fmINQRRptLBRG: TfmINQRRptLBRG;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmINQRRptLBRG.qrlHppPrint(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value)+'/'+qu002.Fieldbyname('UOMId').AsString ;
end;

procedure TfmINQRRptLBRG.qrlAkhirPrint(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value);
end;

procedure TfmINQRRptLBRG.BndDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  with quCalc,SQL do
  Begin
    Close;Clear;
    Add('Select isnull(Sum(Case when '''+qu002.FieldByName('CurrId').AsString+'''=''USD'' then '
       +'                  Case when K.Currid='''+qu002.FieldByName('CurrId').AsString+''' then K.Rate*K.Price*K.Qty else Qty*Price end '
       +'                When '''+qu002.FieldByName('CurrId').AsString+'''=''IDR'' then '
       +'                  Case when K.Currid='''+qu002.FieldByName('CurrId').AsString+''' then K.Price*K.Qty else K.Qty*K.Price*K.Rate end end),0) as LBRG, '
       +' SUM(K.Qty) as Jumlah FROM ('
       +' SELECT ItemID,Rate,Price,Qty,CurrID,Transdate FROM AllSale '
       +' ) as K WHERE K.ItemId='''+qu002.FieldByName('ItemId').AsString+''''
       +' AND Convert(varchar(10),K.Transdate,112) BETWEEN '''+ FormatDateTime('yyyyMMdd',TanggalDari)+'''AND '''+ FormatDateTime('yyyyMMdd',TanggalSampai)+'''');
    Open;
    iJual := quCalc.Fieldbyname('LBRG').AsCurrency;
    jStok := quCalc.FieldByName('Jumlah').AsInteger;
    qrlJual.Caption := quCalc.Fieldbyname('LBRG').AsString;
    qrlStok.Caption := quCalc.FieldByName('Jumlah').AsString;
  End;

  with quCalc,SQL do
  Begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(Qty*Price*Rate),0) as LBRG,ISNULL(SUM(Qty),0) as Jum_Beli,ISNULL((SUM(Qty*Price*Rate)/SUM(Qty)),0) as Modal '
       +'FROM AllModal WHERE ItemID='''+qu002.FieldByName('ItemID').AsString+''' '
       +' AND Convert(varchar(10),Transdate,112)<='''+ FormatDateTime('yyyyMMdd',TanggalSampai) +'''');
    Open;
    iBeli := quCalc.Fieldbyname('LBRG').AsCurrency;
    bStok := quCalc.FieldByName('Jum_Beli').AsCurrency;
    iHpp := quCalc.FieldByName('Modal').AsCurrency;
    qrlbeli.Caption := CurrToStr(iBeli);
    qrlHpp.Caption := CurrToStr(iHpp);
  End;

  with quCalc,SQL do
  begin
    Close; Clear;
    Add('Select ISNULL(SUM(Case WHEN B.FgTrans < 50  THEN B.QTy ELSE B.Qty * - 1 END),0) as Stok_Akhir '
       +'   FROM ALLITEM B Where CONVERT(VARCHAR(8),B.TransDate,112)<='''+FormatDateTime('YYYYMMDD',TanggalSampai)+''''
       +'   AND B.ItemID='''+qu002.FieldByName('ItemId').AsString+''' AND B.WareHouseId='''+sDGPj+''''
       +'   ');
    Open;
    iStok :=  quCalc.Fieldbyname('Stok_Akhir').AsCurrency;
   end;
   if bStok <> 0 then
     iAkhir :=  ijual-(jstok*iHpp)
   else
     iAkhir := 0;
   qrlAkhir.Caption := CurrToStr(iAkhir);
   PrintBand := iAkhir <> 0;
end;

procedure TfmINQRRptLBRG.MyReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  GrandTotalIDR := 0;
end;

procedure TfmINQRRptLBRG.BndDetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  GrandTotalIDR := GrandTotalIDR + iAkhir
end;

procedure TfmINQRRptLBRG.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Currtostr(GrandTotalIDR));
end;

procedure TfmINQRRptLBRG.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  with quCalc,SQL do
  begin
    Close;Clear;
    Add('SELECT '
       +'(SELECT ISNULL(SUM(CASE WHEN CurrID=''IDR'' THEN Discount ELSE Discount*Rate END),0) '
       +'FROM ARTrPenjualanHD WHERE CONVERT(VARCHAR(8),Transdate,112) '
       +'BETWEEN '''+ FormatDateTime('yyyyMMdd',TanggalDari)+'''AND '''+ FormatDateTime('yyyyMMdd',TanggalSampai)+''') as Disc, '
       +'(SELECT ISNULL(SUM(TTLSV),0) FROM ARTrInvServiceHd WHERE CONVERT(VARCHAR(8),Transdate,112) '
       +'BETWEEN '''+ FormatDateTime('yyyyMMdd',TanggalDari)+'''AND '''+ FormatDateTime('yyyyMMdd',TanggalSampai)+''') as Service, '
       +'(SELECT ISNULL(SUM(CASE WHEN ValutaID=''IDR'' THEN Amount ELSE Amount*Rate END),0) '
       +'FROM AllMoney WHERE GroupRekID ='''+sDGRBi+''' AND CONVERT(VARCHAR(8),Transdate,112) '
       +'BETWEEN '''+ FormatDateTime('yyyyMMdd',TanggalDari)+'''AND '''+ FormatDateTime('yyyyMMdd',TanggalSampai)+''') as Biaya, '
       +'(SELECT ISNULL(SUM(CASE WHEN ValutaID=''IDR'' THEN Amount ELSE Amount*Rate END),0) '
       +'FROM AllMoney WHERE GroupRekID ='''+sDGRPLL+''' AND CONVERT(VARCHAR(8),Transdate,112) '
       +'BETWEEN '''+ FormatDateTime('yyyyMMdd',TanggalDari)+'''AND '''+ FormatDateTime('yyyyMMdd',TanggalSampai)+''') as Pll ');
    Open;
  end;
  Discount := quCalc.FieldByName('Disc').AsCurrency;
  Biaya := quCalc.FieldByName('Biaya').AsCurrency;
  Service := quCalc.FieldByName('Service').AsCurrency;
  PendLL := quCalc.FieldByName('Pll').AsCurrency;
  qlbDisc.Caption := CurrToStr(Discount);
  qlbBiaya.Caption:= CurrToStr(Biaya);
  qlbService.Caption:= CurrToStr(Service);
  qlbPendLL.Caption := CurrToStr(PendLL);
end;

procedure TfmINQRRptLBRG.QRLabel14Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Currtostr(GrandTotalIDR-Discount-Biaya+Service+PendLL));
end;

end.
