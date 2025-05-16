unit ARQRRptPenjPerSales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, QRCtrls, DB, ADODB, QuickRpt, StdCtrls, ExtCtrls;

type
  TfmARQRRptPenjPerSales = class(TfmRptLv4)
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText5: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel29: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel31: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel40: TQRLabel;
    quModal: TADOQuery;
    qrlModal: TQRLabel;
    quLBRG: TADOQuery;
    QRLabel41: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    qlbSerialNumber: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    qrlLBRG: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel23: TQRLabel;
    qlbRModal: TQRLabel;
    quCek: TADOQuery;
    qlbStatusModal: TQRLabel;
    QRLabel24: TQRLabel;
    qlbOmzet: TQRLabel;
    qlbSales: TQRLabel;
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure bnd002BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bnd002AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel43Print(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRDBText14Print(sender: TObject; var Value: String);
    procedure qlbOmzetPrint(sender: TObject; var Value: String);
    procedure qlbSalesPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    TanggalSampai,TanggalDari : TDateTime ;
    TotalLBRG,TotalIDR,TotalUSD,GrandTotalLBRG,GrandTotalIDR,GrandTotalUSD : currency ;
    Modal,RateModal,LBRG,StatusBeli,Omzet : Currency;
  end;

var
  fmARQRRptPenjPerSales: TfmARQRRptPenjPerSales;

implementation

uses MyUnit, UnitGeneral, RptLv3;

{$R *.dfm}

procedure TfmARQRRptPenjPerSales.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(value);
end;

procedure TfmARQRRptPenjPerSales.BndDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  Omzet := 0;
  TotalIDR := 0;
  TotalUSD := 0;
  TotalLBRG := 0;
end;

procedure TfmARQRRptPenjPerSales.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  if UpperCase(qu002.FieldByName('CurrId').AsString)='IDR' then
  begin
     TotalIDR := TotalIDR + qu002.FieldByName('Total').AsCurrency;
     Omzet := Omzet + qu002.FieldByName('Total').AsCurrency;
  end else
  begin
     TotalUSD := TotalUSD + qu002.FieldByName('Total').AsCurrency;
     Omzet := Omzet + (qu002.FieldByName('Total').AsCurrency * qu002.FieldByName('RJual').AsCurrency);
  end;

  if UpperCase(qu002.FieldByName('CurrId').AsString)='IDR' then
     GrandTotalIDR := GrandTotalIDR + qu002.FieldByName('Total').AsCurrency
  Else
     GrandTotalUSD := GrandTotalUSD + qu002.FieldByName('Total').AsCurrency;
end;

procedure TfmARQRRptPenjPerSales.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Currtostr(totalIDR));
end;

procedure TfmARQRRptPenjPerSales.QRLabel18Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Currtostr(totalUSD));
end;

procedure TfmARQRRptPenjPerSales.MyReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  Omzet := 0;
  GrandTotalIDR := 0;
  GrandTotalUSD := 0;
  GrandTotalLBRG := 0;
end;

procedure TfmARQRRptPenjPerSales.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Currtostr(GrandTotalIDR));
end;

procedure TfmARQRRptPenjPerSales.QRLabel22Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Currtostr(GrandTotalUSD));
end;

procedure TfmARQRRptPenjPerSales.bnd002BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if qu003.FieldByName('Status').AsString = '' then
  begin
    qlbSerialNumber.Caption := 'Modal barang belum ditentukan';
    with quCek,SQL do
    begin
      Close;Clear;
      Add('SELECT 0 as Status');
      Open;
    end;
  end else
  if qu003.FieldByName('Status').AsString = '0' then
  begin
    qlbSerialNumber.Caption := 'S/N: '+ qu003.FieldByName('SNID').AsString;
    with quCek,SQL do
    begin
      Close;Clear;
      Add('SELECT DISTINCT K.Status FROM(SELECT B.PurchaseID,A.SNID, CASE WHEN ISNULL(B.TTLPb,0)-(SELECT ISNULL(SUM(X.ValuePayment),0) '
         +'FROM APTrPaymentDt X WHERE X.PurchaseID=B.PurchaseID)=0 THEN 1 ELSE 0 END as Status FROM APTrPurchaseDtSN A '
         +'INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID UNION ALL SELECT C.KonsinyasiID,D.SNID, '
         +'CASE WHEN ISNULL(B.TTLKs,0) - (SELECT ISNULL(SUM(X.ValuePayment),0) FROM APTrPaymentKonsDt X '
         +'WHERE X.KonsinyasiInvID=B.KonsinyasiInvID)=0 THEN 1 ELSE 0 END as Status FROM APTrKonsinyasiInvDt A '
         +'INNER JOIN APTrKonsinyasiInvHd B ON A.KonsinyasiInvID=B.KonsinyasiInvID '
         +'INNER JOIN APTrKonsinyasiHD C ON A.KonsinyasiID=C.KonsinyasiID '
         +'INNER JOIN APTrKonsinyasiInvDtSN D ON B.KonsinyasiInvID=D.KonsinyasiInvID) as K '
         +'WHERE K.SNID='''+qu003.FieldByName('SNID').AsString+''' ');
      Open;
    end;
  end else
  if qu003.FieldByName('Status').AsString = '1' then
  begin
    qlbSerialNumber.Caption := 'Nota : '+ qu003.FieldByName('SNID').AsString;
    with quCek,SQL do
    begin
      Close;Clear;
      Add('SELECT DISTINCT K.Status FROM (SELECT B.PurchaseID,CASE WHEN ISNULL(B.TTLPb,0) - (SELECT ISNULL(SUM(X.ValuePayment),0) '
         +'FROM APTrPaymentDT X WHERE X.PurchaseID=B.PurchaseID) = 0 THEN 1 ELSE 0 END as Status FROM APTrPurchaseHD B UNION ALL '
         +'SELECT C.KonsinyasiID, CASE WHEN ISNULL(B.TTLKs,0) - (SELECT ISNULL(SUM(X.ValuePayment),0) FROM APTrPaymentKonsDt X '
         +'WHERE X.KonsinyasiInvID=B.KonsinyasiInvID)=0 THEN 1 ELSE 0 END as Status FROM APTrKonsinyasiInvDt A '
         +'INNER JOIN APTrKonsinyasiInvHd B ON A.KonsinyasiInvID=B.KonsinyasiInvID '
         +'INNER JOIN APTrKonsinyasiHD C ON A.KonsinyasiID=C.KonsinyasiID) as K '
         +'WHERE K.PurchaseID='''+qu003.FieldByName('SNID').AsString+''' ');
      Open;
    end;
  end;
  StatusBeli := quCek.FieldByName('Status').AsInteger;

  if  qu003.FieldByName('Status').AsInteger = 0 then
  begin
    with quModal,SQL do
    begin
      Close;Clear;
      Add('SELECT K.CurrID,K.Price,K.Rate FROM (SELECT B.CurrID,A.Price,A.SNID,A.PurchaseID,B.Rate '
         +'FROM APTrPurchaseDtSN A INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID UNION ALL '
         +'SELECT B.CurrID,B.Price,A.SNID,A.KonsinyasiID,C.Rate FROM APTrKonsinyasiDtSN A '
         +'INNER JOIN APTrKonsinyasiDt B ON A.KonsinyasiID=B.KonsinyasiID AND A.ItemID=B.ItemID '
         +'INNER JOIN APTrKonsinyasiHd C ON A.KonsinyasiID=C.KonsinyasiID AND B.KonsinyasiID=C.KonsinyasiID '
         +') as K '
         +'WHERE K.SNID='''+qu003.FieldByName('SNID').AsString+''' ');
{      Add('SELECT K.CurrID,K.Price,K.Rate FROM (SELECT B.CurrID,A.Price,A.SNID,A.PurchaseID,B.Rate '
         +'FROM APTrPurchaseDtSN A INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID UNION ALL '
         +'SELECT B.CurrID,A.Price,A.SNID,A.KonsinyasiInvID,B.Rate FROM APTrKonsinyasiInvDtSN A '
         +'INNER JOIN APTrKonsinyasiInvHD B ON A.KonsinyasiInvID=B.KonsinyasiInvID '
         +') as K '
         +'WHERE K.SNID='''+qu003.FieldByName('SNID').AsString+''' ');}
      Open;
    end;
  end else
  begin
    with quCek,SQL do  //Cek harga barangnya 0 apa tidak
    begin
      Close;Clear;
      Add('SELECT DISTINCT K.Price FROM (SELECT PurchaseID,ItemID,Price FROM APTrPurchaseDT UNION ALL '
         +'SELECT KonsinyasiID,ItemID,Price FROM APTrKonsinyasiInvDT) as K '
         +'WHERE K.PurchaseID='''+qu003.FieldByName('SNID').AsString+''' AND K.ItemID='''+qu002.FieldByName('ItemID').AsString+''' ');
      Open;
    end;
    if quCek.FieldByName('Price').AsCurrency <> 0 then //Cek harga belinya 0 apa tidak
    begin
      with quModal,SQL do
      begin
        Close;Clear;
        Add('SELECT K.CurrID,K.Price,K.Rate FROM (SELECT B.CurrID,A.Price,A.PurchaseID,B.Rate,A.ItemID '
           +'FROM APTrPurchaseDt A INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID UNION ALL '
           +'SELECT B.CurrID,A.Price,A.KonsinyasiID,B.Rate,A.ItemID FROM APTrKonsinyasiInvDt A '
           +'INNER JOIN APTrKonsinyasiInvHD B ON A.KonsinyasiInvID=B.KonsinyasiInvID '
           +') as K '
           +'WHERE K.PurchaseID='''+qu003.FieldByName('SNID').AsString+''' AND K.ItemID='''+qu002.FieldByName('ItemID').AsString+''' ');
        Open;
      end;
    end else
    begin
      with quModal,SQL do
      begin
        Close;Clear;
        Add('SELECT K.CurrID,K.Price,K.Rate FROM (SELECT B.CurrID,A.Price,A.PurchaseID,A.ItemID,B.Rate '
           +'FROM APTrPurchaseDt A INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID UNION ALL '
           +'SELECT B.CurrID,A.Price,A.KonsinyasiID,A.ItemID,B.Rate FROM APTrKonsinyasiInvDt A '
           +'INNER JOIN APTrKonsinyasiInvHD B ON A.KonsinyasiInvID=B.KonsinyasiInvID) as K '
           +'WHERE K.PurchaseID='''+qu003.FieldByName('SNID').AsString+''' AND K.ItemID='''+qu002.FieldByName('ItemID').AsString+''' ');
        Open;
      end;
    end;
  end;

     Modal := quModal.FieldByName('Price').AsCurrency;
     if TRIM(quModal.FieldByName('CurrID').AsString) = 'USD' then
       RateModal := quModal.FieldByName('Rate').AsCurrency
     else
       RateModal := 1;

  if StatusBeli = 1 then
  begin
     qlbStatusModal.Caption := 'Sudah Lunas';
  end else
  begin
     qlbStatusModal.Caption := 'Belum Lunas';
  end;
  qrlModal.Caption := CurrToStr(Modal);
  qlbRModal.Caption := CurrToStr(RateModal);
  if quModal.FieldByName('CurrID').AsString = 'USD' then qrlModal.Left := 377 else qrlModal.Left := 468;

  if qu003.FieldByName('Status').AsString = '' then
    LBRG := 0
  else
  if qu003.FieldByName('Status').AsInteger = 0 then //Cek Pakai Serial Number apa tidak
  begin
      if qu002.FieldByName('CurrID').AsString = 'IDR' then //Cek pakai Dollar apa Rupiah
      begin
        if quModal.IsEmpty then
          LBRG := 0
        else
          LBRG := qu002.FieldByName('Price').AsCurrency - (Modal*RateModal);
      end else
      begin
        if quModal.IsEmpty then
          LBRG := 0
        else
          LBRG := (qu002.FieldByName('Price').AsCurrency - Modal) * RateModal;
      end;
  end else
  if qu003.FieldByName('Status').AsInteger = 1 then
  begin
      if qu002.FieldByName('CurrID').AsString = 'IDR' then //Cek Jualnya pakai Dollar apa Rupiah
      begin
         if quModal.IsEmpty then
           LBRG := 0
         else
           LBRG := qu002.FieldByName('Total').AsInteger - (qu002.FieldByName('Qty').AsInteger * Modal * RateModal);
      end else
      begin
        if quModal.FieldByName('CurrID').AsString = 'IDR' then //Cek Modalnya pakai Dollar apa Rupiah
        begin
          if quModal.IsEmpty then
            LBRG := 0
          else
            LBRG := ((qu002.FieldByName('Price').AsCurrency * qu002.FieldByName('Rjual').AsCurrency) - (Modal * RateModal)) * qu003.FieldByName('Qty').AsInteger;
        end else
        begin
          if quModal.IsEmpty then
            LBRG := 0
          else
            LBRG := ((qu002.FieldByName('Price').AsCurrency - Modal) * qu003.FieldByName('Qty').AsInteger) * RateModal;
        end;
      end;
  end;
  qrlLBRG.Caption := CurrToStr(LBRG);
  if LBRG < 0 then bnd002.Color := clRed else bnd002.Color := clWhite;
  if (StatusBeli <> 1) or (qu003.FieldByName('Status').AsString = '')then bnd002.Color := clYellow;
end;

procedure TfmARQRRptPenjPerSales.bnd002AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  TotalLBRG := TotalLBRG + LBRG;
  GrandTotalLBRG := GrandTotalLBRG + LBRG;
end;

procedure TfmARQRRptPenjPerSales.QRLabel43Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Currtostr(TotalLBRG));
end;

procedure TfmARQRRptPenjPerSales.QRLabel16Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Currtostr(GrandTotalLBRG));
end;

procedure TfmARQRRptPenjPerSales.QRDBText14Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptqtykurung(value);
end;

procedure TfmARQRRptPenjPerSales.qlbOmzetPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(Omzet))
end;

procedure TfmARQRRptPenjPerSales.qlbSalesPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := qu001.FieldByName('Sales').AsString;
end;

end.
