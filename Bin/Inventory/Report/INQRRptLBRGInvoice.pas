unit INQRRptLBRGInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv2, DB, ADODB, QRCtrls, StdCtrls, QuickRpt, ExtCtrls;

type
  TfmINQRRptLBRGInvoice = class(TfmRptLv2)
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    quCalc: TADOQuery;
    SummaryBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel4: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel12: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel14: TQRLabel;
    qlbDisc: TQRLabel;
    QRLabel15: TQRLabel;
    qlbBiaya: TQRLabel;
    QRLabel16: TQRLabel;
    qlbService: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape2: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    qlbPendLL: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape3: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    bnd001: TQRSubDetail;
    qrlModal: TQRLabel;
    qlbSerialNumber: TQRLabel;
    qrlLBRG: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel27: TQRLabel;
    qlbRModal: TQRLabel;
    qu002: TADOQuery;
    QRShape4: TQRShape;
    quModal: TADOQuery;
    QRLabel2: TQRLabel;
    qlbStatus: TQRLabel;
    QRLabel28: TQRLabel;
    qlbStatusModal: TQRLabel;
    quCek: TADOQuery;
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure BndDetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    TanggalDari,TanggalSampai : TDateTime ;
    GrandTotalIDR,Discount,Service,Biaya,TotalLBRG,PendLL,Omzet  : Currency;
    iLBRG,RateModal,Modal,StatusBeli,StatusJual : Currency;
  end;

var
  fmINQRRptLBRGInvoice: TfmINQRRptLBRGInvoice;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmINQRRptLBRGInvoice.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(value);
end;

procedure TfmINQRRptLBRGInvoice.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(value);
end;

procedure TfmINQRRptLBRGInvoice.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Currtostr(GrandTotalIDR)) + ' ( '+FormatRptkurung(CurrToStr(GrandTotalIDR/Omzet))+' %)';
end;

procedure TfmINQRRptLBRGInvoice.SummaryBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
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

procedure TfmINQRRptLBRGInvoice.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Currtostr(GrandTotalIDR-Discount-Biaya+Service+PendLL));
end;

procedure TfmINQRRptLBRGInvoice.bnd001BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if qu002.FieldByName('Status').AsString = '' then
    qlbSerialNumber.Caption := 'Modal barang belum ditentukan' else
  if qu002.FieldByName('Status').AsString = '0' then
  begin
    qlbSerialNumber.Caption := 'S/N: '+ qu002.FieldByName('SNID').AsString;
    with quCek,SQL do
    begin
      Close;Clear;
      Add('SELECT DISTINCT CASE WHEN ISNULL(K.TTLPb,0)-ISNULL(K.Bayar,0) = 0 THEN 1 ELSE 0 END as Status FROM( '
         +'SELECT A.SNID,B.TTLPb,(SELECT ISNULL(SUM(X.ValuePayment),0) FROM APTrPaymentDt X '
         +'INNER JOIN APTrPaymentHD Y ON X.PaymentID=Y.PaymentID WHERE X.PurchaseID=B.PurchaseID AND Y.SuppID=B.SuppID)as Bayar '
         +'FROM APTrPurchaseDtSN A INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID UNION ALL '
         +'SELECT D.SNID,B.TTLKs,(SELECT ISNULL(SUM(X.ValuePayment),0) FROM APTrPaymentDt X '
         +'INNER JOIN APTrPaymentHD Y ON X.PaymentID=Y.PaymentID WHERE X.PurchaseID=B.KonsinyasiInvID AND Y.SuppID=B.SuppID) '
         +'FROM APTrKonsinyasiInvDt A INNER JOIN APTrKonsinyasiInvHd B ON A.KonsinyasiInvID=B.KonsinyasiInvID '
         +'INNER JOIN APTrKonsinyasiHD C ON A.KonsinyasiID=C.KonsinyasiID '
         +'INNER JOIN APTrKonsinyasiInvDtSN D ON B.KonsinyasiInvID=D.KonsinyasiInvID UNION ALL '
         +'SELECT A.SNID,C.TTLPb,(SELECT ISNULL(SUM(X.ValuePayment),0) FROM APTrPaymentDt X INNER JOIN APTrPaymentHD Y ON X.PaymentID=Y.PaymentID '
         +'WHERE X.PurchaseID=B.PurchaseID AND Y.SuppID=C.SuppID)FROM APTrReturnRepSN A INNER JOIN APTrReturnDT B ON A.ReturnID=B.ReturnID '
         +'INNER JOIN APTrPurchaseHD C ON B.PurchaseID=C.PurchaseID) as K '
         +'WHERE K.SNID='''+qu002.FieldByName('SNID').AsString+''' ');
      Open;
    end;
  end else
  if qu002.FieldByName('Status').AsString = '1' then   //Cek Barangnya Pake Serial Number apa tidak
  begin
    qlbSerialNumber.Caption := 'Nota : '+ qu002.FieldByName('SNID').AsString;
    with quCek,SQL do
    begin
      Close;Clear;
      Add('SELECT DISTINCT K.Status FROM (SELECT B.PurchaseID,CASE WHEN ISNULL(B.TTLPb,0) - (SELECT ISNULL(SUM(X.ValuePayment),0) '
         +'FROM APTrPaymentDT X INNER JOIN APTrPaymentHD Y ON X.PaymentID=Y.PaymentID '
         +'WHERE X.PurchaseID=B.PurchaseID AND Y.SuppID=B.SuppID) = 0 THEN 1 ELSE 0 END as Status,C.ItemID '
         +'FROM APTrPurchaseHD B INNER JOIN APTrPurchaseDT C ON B.PurchaseID=C.PurchaseID UNION ALL '
         +'SELECT C.KonsinyasiID, CASE WHEN ISNULL(B.TTLKs,0) - (SELECT ISNULL(SUM(X.ValuePayment),0) FROM APTrPaymentDT X INNER JOIN APTrPaymentHD Y ON X.PaymentID=Y.PaymentID '
         +'WHERE X.PurchaseID=B.KonsinyasiInvID)=0 THEN 1 ELSE 0 END as Status,A.ItemID FROM APTrKonsinyasiInvDt A '
         +'INNER JOIN APTrKonsinyasiInvHd B ON A.KonsinyasiInvID=B.KonsinyasiInvID INNER JOIN APTrKonsinyasiHD C ON A.KonsinyasiID=C.KonsinyasiID) as K '
         +'WHERE K.PurchaseID='''+qu002.FieldByName('SNID').AsString+''' AND K.ItemID='''+qu001.FieldByName('ItemID').AsString+''' ');
      Open;
    end;
  end;
  StatusBeli := quCek.FieldByName('Status').AsInteger;

  if  qu002.FieldByName('Status').AsInteger = 0 then
  begin
    with quModal,SQL do
    begin
      Close;Clear;
      Add('SELECT K.CurrID,K.Price,K.Rate FROM (SELECT B.CurrID,(A.Price-(A.Price*E.Disc/100)) as Price,A.SNID,D.Rate FROM APTrPurchaseDtSN A '
         +'INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID INNER JOIN APTrPaymentDT C ON A.PurchaseID=C.PurchaseID INNER JOIN APTrPurchaseDt E ON A.PurchaseID=E.PurchaseID '
         +'INNER JOIN APTrPaymentHD D ON C.PaymentID=D.PaymentID UNION ALL SELECT B.CurrID,(A.Price-(A.Price*E.Disc/100)) as Price,A.SNID,D.Rate FROM APTrKonsinyasiInvDtSN A '
         +'INNER JOIN APTrKonsinyasiInvHD B ON A.KonsinyasiInvID=B.KonsinyasiInvID INNER JOIN APTrPaymentDt C ON A.KonsinyasiInvID=C.PurchaseID '
         +'INNER JOIN APTrPaymentHD D ON C.PaymentID=D.PaymentID INNER JOIN APTrKonsinyasiInvDt E ON A.KonsinyasiInvID=E.KonsinyasiInvID UNION ALL '
         +'SELECT DISTINCT E.CurrID,B.Price+D.Price as Price,A.SNID,G.Rate FROM APTrReturnRepSN A '
         +'INNER JOIN APTrReturnRepDT B ON A.ReturnRepID=B.ReturnRepID INNER JOIN APTrReturnDT C ON A.ReturnID=C.ReturnID '
         +'INNER JOIN APTrPurchaseDT D ON C.PurchaseID=D.PurchaseID INNER JOIN APTrPurchaseHD E ON D.PurchaseID=E.PurchaseID '
         +'INNER JOIN APTrPaymentDT F ON E.PurchaseID=F.PurchaseID INNER JOIN APTrPaymentHD G ON G.PaymentID=F.PaymentID) as K '
         +'WHERE K.SNID='''+qu002.FieldByName('SNID').AsString+''' ');
      Open;
    end;
  end else
  begin
    with quCek,SQL do  //Cek harga barangnya 0 apa tidak
    begin
      Close;Clear;
      Add('SELECT DISTINCT K.Price FROM (SELECT PurchaseID,ItemID,Price FROM APTrPurchaseDT UNION ALL '
         +'SELECT KonsinyasiID,ItemID,Price FROM APTrKonsinyasiInvDT) as K '
         +'WHERE K.PurchaseID='''+qu002.FieldByName('SNID').AsString+''' AND K.ItemID='''+qu001.FieldByName('ItemID').AsString+''' ');
      Open;
    end;
    if quCek.FieldByName('Price').AsCurrency <> 0 then //Cek harga belinya 0 apa tidak
    begin
      with quModal,SQL do
      begin
        Close;Clear;
        Add('SELECT K.CurrID,K.Price,K.Rate FROM (SELECT B.CurrID,(A.Price-(A.Price*A.Disc/100)) as Price,A.PurchaseID,D.Rate,A.ItemID '
           +'FROM APTrPurchaseDt A INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID '
           +'INNER JOIN APTrPaymentDT C ON A.PurchaseID=C.PurchaseID INNER JOIN APTrPaymentHD D ON C.PaymentID=D.PaymentID UNION ALL '
           +'SELECT B.CurrID,(A.Price-(A.Price*A.Disc/100)) as Price,A.KonsinyasiID,D.Rate,A.ItemID FROM APTrKonsinyasiInvDt A '
           +'INNER JOIN APTrKonsinyasiInvHD B ON A.KonsinyasiInvID=B.KonsinyasiInvID '
           +'INNER JOIN APTrPaymentDT C ON A.KonsinyasiInvID=C.PurchaseID '
           +'INNER JOIN APTrPaymentHD D ON C.PaymentID=D.PaymentID) as K '
           +'WHERE K.PurchaseID='''+qu002.FieldByName('SNID').AsString+''' AND K.ItemID='''+qu001.FieldByName('ItemID').AsString+''' ');
        Open;
      end;
    end else
    begin
      with quModal,SQL do
      begin
        Close;Clear;
        Add('SELECT K.CurrID,K.Price,K.Rate FROM (SELECT B.CurrID,(A.Price-(A.Price*A.Disc/100)) as Price,A.PurchaseID,A.ItemID,B.Rate '
           +'FROM APTrPurchaseDt A INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID UNION ALL '
           +'SELECT B.CurrID,(A.Price-(A.Price*A.Disc/100)) as Price,A.KonsinyasiID,A.ItemID,B.Rate FROM APTrKonsinyasiInvDt A '
           +'INNER JOIN APTrKonsinyasiInvHD B ON A.KonsinyasiInvID=B.KonsinyasiInvID) as K '
           +'WHERE K.PurchaseID='''+qu002.FieldByName('SNID').AsString+''' AND K.ItemID='''+qu001.FieldByName('ItemID').AsString+''' ');
        Open;
      end;
    end;
  end;

  Modal := quModal.FieldByName('Price').AsCurrency;
  if quModal.FieldByName('CurrID').AsString = 'USD' then
    RateModal := quModal.FieldByName('Rate').AsCurrency
  else
    RateModal := 1;
  if StatusBeli = 1 then
    qlbStatusModal.Caption := 'Sudah Lunas'
  else
    qlbStatusModal.Caption := 'Belum Lunas';
{  if StatusBeli = 1 then
  begin
    qlbStatusModal.Caption := 'Sudah Lunas';
    Modal := quModal.FieldByName('Price').AsCurrency;
    if quModal.FieldByName('CurrID').AsString = 'USD' then
      RateModal := quModal.FieldByName('Rate').AsCurrency
    else
      RateModal := 1;
  end else
  begin
    qlbStatusModal.Caption := 'Belum Lunas';
    Modal := 0;
    RateModal := 0;
  end;}
  qrlModal.Caption := CurrToStr(Modal);
  qlbRModal.Caption := CurrToStr(RateModal);
  if quModal.FieldByName('CurrID').AsString = 'USD' then qrlModal.Left := 531 else qrlModal.Left := 440;

  if qu002.FieldByName('Status').AsString = '' then
    iLBRG := 0
  else
  if qu002.FieldByName('Status').AsInteger = 0 then //Cek Pakai Serial Number apa tidak
  begin
    if StatusBeli = 1 then //Cek sudah lunas apa belum
    begin
      if qu001.FieldByName('CurrID').AsString = 'IDR' then //Cek pakai Dollar apa Rupiah
        iLBRG := qu001.FieldByName('Price').AsCurrency - (Modal*RateModal)
      else
        iLBRG := (qu001.FieldByName('Price').AsCurrency - Modal) * RateModal
    end else
      iLBRG := 0;
  end else
  if qu002.FieldByName('Status').AsInteger = 1 then
  begin
    if (StatusBeli = 1) and (qu002.FieldByName('Status').AsString <> '') then //Cek sudah lunas apa belum
    begin
      if qu001.FieldByName('CurrID').AsString = 'IDR' then //Cek Jualnya pakai Dollar apa Rupiah
          iLBRG := (qu001.FieldByName('Price').AsInteger - (Modal * RateModal)) * qu002.FieldByName('Qty').AsInteger
      else
      begin
        if quModal.FieldByName('CurrID').AsString = 'IDR' then //Cek Modalnya pakai Dollar apa Rupiah
          iLBRG := ((qu001.FieldByName('Price').AsCurrency * qu001.FieldByName('Rate').AsCurrency) - (Modal * RateModal)) * qu002.FieldByName('Qty').AsInteger
        else
          iLBRG := ((qu001.FieldByName('Price').AsCurrency - Modal) * qu002.FieldByName('Qty').AsInteger) * RateModal
      end;
    end else
    begin
      if TRIM(quModal.FieldByName('CurrID').AsString) = 'IDR' then
      begin
      if qu001.FieldByName('CurrID').AsString = 'IDR' then //Cek Jualnya pakai Dollar apa Rupiah
          iLBRG := (qu001.FieldByName('Price').AsInteger - (Modal * RateModal)) * qu002.FieldByName('Qty').AsInteger
      else
          iLBRG := ((qu001.FieldByName('Price').AsCurrency * qu001.FieldByName('Rate').AsCurrency) - (Modal * RateModal)) * qu002.FieldByName('Qty').AsInteger;
      end else
        iLBRG := 0;
    end;
  end;
  qrlLBRG.Caption := CurrToStr(iLBRG);
  if iLBRG < 0 then bnd001.Color := clRed else bnd001.Color := clWhite;
  if (StatusBeli <> 1) or (qu002.FieldByName('Status').AsString = '')then bnd001.Color := clGreen;
  if StatusJual <> 1 then bnd001.Color := clBlue;
end;

procedure TfmINQRRptLBRGInvoice.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  GrandTotalIDR := GrandTotalIDR + iLBRG
end;

procedure TfmINQRRptLBRGInvoice.BndDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  with quCek,SQL do
  begin
    Close;Clear;
    Add('SELECT K.Status FROM (SELECT B.SaleID, CASE WHEN ISNULL(B.TTLPj,0) - '
       +'(SELECT ISNULL(SUM(X.ValuePayment),0) FROM ARTrPiutangDT X WHERE X.SaleID=B.SaleID) = 0 THEN 1 ELSE 0 END as Status '
       +'FROM ARTrPenjualanHD B UNION ALL SELECT B.KonInvPelID,CASE WHEN ISNULL(B.TTLKj,0) - '
       +'(SELECT ISNULL(SUM(X.ValuePayment),0) FROM ARTrKonPiutangDt X WHERE X.KonInvPelID=B.KonInvPelID) = 0 THEN 1 ELSE 0 END as Status '
       +'FROM ARTrKonInvPelHd B) as K WHERE K.SaleID='''+qu001.FieldByName('SaleID').AsString+''' ');
    Open;
    StatusJual := quCek.FieldByName('Status').AsInteger;
    if  StatusJual = 0 then
      qlbStatus.Caption := 'Belum Lunas'
    else
      qlbStatus.Caption := 'Sudah Lunas';
  end;
end;

procedure TfmINQRRptLBRGInvoice.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  Omzet := 0;
end;

procedure TfmINQRRptLBRGInvoice.BndDetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Omzet := Omzet + qu001.FieldByName('Total').AsCurrency;
end;

end.
