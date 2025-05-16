unit APQRRptSisaTerimaBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv3, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls;

type
  TfmAPQRRptSisaTerimaBarang = class(TfmRptLv3)
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    qrlTotalUSD: TQRBand;
    qrlTotalIDR: TQRLabel;
    quCalc: TADOQuery;
    ChildBand1: TQRChildBand;
    quSN: TADOQuery;
    qlbSerilNumber: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    lbNilai: TQRLabel;
    QRLabel10: TQRLabel;
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrlTotalIDRPrint(sender: TObject; var Value: String);
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel4Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure qrlTotalUSDAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Tgldari : TDateTime;
    TotalIDR,TotalUSD,TotalAsset,Nilai : Currency;
    SerialNumber : string;
  end;

var
  fmAPQRRptSisaTerimaBarang: TfmAPQRRptSisaTerimaBarang;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmAPQRRptSisaTerimaBarang.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value := FormatRptqtykurung(Value)
end;

procedure TfmAPQRRptSisaTerimaBarang.bnd001BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
{  with quCalc,SQL do
  begin
    Close;Clear;
    Add('SELECT TOP 1 K.Price,K.CurrID,ISNULL((SELECT TOP 1 Rate FROM SaTrRate '
       +'WHERE CONVERT(VARCHAR(8),Transdate,112)<= '''+FormatDateTime('yyyyMMdd',Tgldari)+''' '
       +'ORDER BY CONVERT(VARCHAR(8),Transdate,112) DESC),0) as Rate FROM ('
       +'SELECT A.ItemID,B.CurrID,A.Price,B.Transdate FROM APTrPurchaseDt A '
       +'INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID UNION ALL '
       +'SELECT A.ItemID,B.CurrID,A.Price,B.Transdate FROM APTrKonsinyasiInvDt A '
       +'INNER JOIN APTrKonsinyasiInvHd B ON A.KonsinyasiInvID=B.KonsinyasiInvID) as K '
       +'WHERE K.ItemID='''+qu002.FieldByName('ItemID').AsString+''' '
       +'ORDER BY CONVERT(VARCHAR(8),K.Transdate,112) DESC');
    Open;
  end;
  if quCalc.FieldByName('CurrID').AsString = 'IDR' then
    Nilai := quCalc.FieldByName('Price').AsCurrency * qu002.FieldByName('Sisa').AsInteger
  else
    Nilai := quCalc.FieldByName('Price').AsCurrency * quCalc.FieldByName('Rate').AsCurrency * qu002.FieldByName('Sisa').AsInteger;
  lbNilai.Caption := FormatRptkurung(CurrToStr(Nilai));
  PrintBand := qu002.FieldByName('KonsinyasiID').AsString <> '';}
  Nilai := qu002.FieldByName('Sisa').AsInteger * qu002.FieldByName('Price').AsCurrency;
  lbNilai.Caption := FormatRptkurung(CurrToStr(Nilai));
  PrintBand := qu002.FieldByName('KonsinyasiID').AsString <> '';
end;

procedure TfmAPQRRptSisaTerimaBarang.qrlTotalIDRPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(TotalIDR))
end;

procedure TfmAPQRRptSisaTerimaBarang.BndDetailBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  PrintBand := qu001.FieldByName('SuppID').AsString <> '';
end;

procedure TfmAPQRRptSisaTerimaBarang.ChildBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  with quSN,SQL do
  begin
    Close;Clear;
    Add('SELECT SNID FROM APTrKonsinyasiDtSN WHERE KonsinyasiID='''+qu002.FieldByName('KonsinyasiID').AsString+''' '
       +'AND ItemID='''+qu002.FieldByName('ItemID').AsString+''' ');
    Open;
  end;
  PrintBand := quSN.FieldByName('SNID').AsString <> '';
  while not quSN.Eof do
  begin
    SerialNumber := SerialNumber +'   '+ quSN.FieldbyName('SNID').AsString;
    quSN.Next;
  end;
  if SerialNumber <> '' then
    qlbSerilNumber.Caption := 'Serial Number: '+ SerialNumber
  else
    qlbSerilNumber.Caption := '';
  SerialNumber := '';
end;

procedure TfmAPQRRptSisaTerimaBarang.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value)
end;

procedure TfmAPQRRptSisaTerimaBarang.bnd001AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  if UpperCase(qu002.FieldByName('CurrID').AsString)='IDR' then
    TotalIDR := TotalIDR + (qu002.FieldByName('Sisa').AsCurrency * qu002.FieldByName('Price').AsCurrency)
  else
    TotalUSD := TotalUSD + (qu002.FieldByName('Sisa').AsCurrency * qu002.FieldByName('Price').AsCurrency);
  TotalAsset := TotalAsset + Nilai;
end;

procedure TfmAPQRRptSisaTerimaBarang.QRLabel4Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(TotalUSD))
end;

procedure TfmAPQRRptSisaTerimaBarang.QRLabel10Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(TotalAsset))
end;

procedure TfmAPQRRptSisaTerimaBarang.qrlTotalUSDAfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  TotalIDR   := 0;
  TotalUSD   := 0;
  TotalAsset := 0;
end;

end.
