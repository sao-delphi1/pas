unit ARQRRptSisaTransferBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv3, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls;

type
  TfmARQRRptSisaTransferBarang = class(TfmRptLv3)
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
    QRBand1: TQRBand;
    qrlTotalAsset: TQRLabel;
    qlbAsset: TQRLabel;
    quCalc: TADOQuery;
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure BndDetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qlbAssetPrint(sender: TObject; var Value: String);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qrlTotalAssetPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    Tgldari : TDateTime;
    iHPP,TotalAsset : Currency;
  end;

var
  fmARQRRptSisaTransferBarang: TfmARQRRptSisaTransferBarang;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmARQRRptSisaTransferBarang.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value := FormatRptqtykurung(Value)
end;

procedure TfmARQRRptSisaTransferBarang.BndDetailAfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
   with qu002,sql do
       begin
          Close;Clear;
          add(' select B.KonTransBrgId,Convert(varchar(10),Transdate,103) as tgl,A.ItemID, A.ItemId+'' - ''+C.ItemName as ItemName,'
             +' isnull(A.Qty,0)-(Select Isnull(sum(qty),0) FROM ARTrKonInvPelDt D '
             +' WHERE D.ItemId=A.ItemId AND D.KonTransBrgId=A.KonTransBrgId )'
             +' -(Select Isnull(Sum(qty),0) FROM ARTrKonReturDt G WHERE G.ItemId=A.ItemId And G.KonTransBrgId=A.KonTransBrgId'
             +' ) as Sisa'
             +' FROM ARTrKonTransBrgDt A INNER JOIN ARTrKonTransBrgHd B ON A.KonTransBrgId=B.KonTransBrgId'
             +' INNER JOIN INMsItem C ON A.ItemId=C.ItemId'
             +' WHERE B.CustID='''+qu001.Fieldbyname('CustId').AsString+''''
             +' AND isnull(A.Qty,0)-(Select Isnull(sum(qty),0) FROM ARTrKonInvPelDt D '
             +' WHERE D.ItemId=A.ItemId AND D.KonTransBrgId=A.KonTransBrgId )'
             +' -(Select Isnull(Sum(qty),0) FROM ARTrKonReturDt G WHERE G.ItemId=A.ItemId And G.KonTransBrgId=A.KonTransBrgId'
             +'  )<> 0'
             +' AND Convert(varchar(8),B.Transdate,112)<='''+FormatDateTime('yyyyMMdd',Tgldari)+''' ');
          Open;
         end;
end;

procedure TfmARQRRptSisaTransferBarang.bnd001BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  with quCalc,SQL do
  Begin
    Close;Clear;
    Add('SELECT ISNULL( SUM(CASE WHEN K.CurrID=''USD'' THEN (K.Qty*K.Price*K.Rate)- ((K.Qty*K.Price*K.Rate*K.Disc)/100) '
       +'ELSE (K.Qty*K.Price)-((K.Qty*K.Price*K.Disc)/100) END),0)/SUM(K.Qty) as Modal FROM '
       +'(SELECT B.Transdate,B.CurrID,B.Rate,A.Itemid,A.Qty,A.Price,A.Disc '
       +'FROM APTrPurchaseDt A INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID UNION ALL '
       +'SELECT B.Transdate,B.CurrID,B.Rate,A.ItemID,A.Qty,A.Price,A.Disc '
       +'FROM APTrKonsinyasiInvDt A INNER JOIN APTrKonsinyasiInvHd B ON A.KonsinyasiInvID=B.KonsinyasiInvID) as K '
       +'WHERE K.ItemID='''+qu002.FieldByName('ItemID').AsString+''' '
       +' AND Convert(varchar(10),K.Transdate,112)<='''+ FormatDateTime('yyyyMMdd',Tgldari) +'''');
    Open;
    iHpp := quCalc.FieldByName('Modal').AsCurrency;
    qlbAsset.Caption := CurrToStr(iHpp * qu002.FieldByName('Sisa').AsInteger);
    TotalAsset := TotalAsset + (iHPP * qu002.FieldByName('Sisa').AsInteger);
  End;
end;

procedure TfmARQRRptSisaTransferBarang.qlbAssetPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value)
end;

procedure TfmARQRRptSisaTransferBarang.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  TotalAsset := 0;
end;

procedure TfmARQRRptSisaTransferBarang.qrlTotalAssetPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'Total Asset (IDR): '+FormatRptkurung(CurrToStr(TotalAsset))
end;

end.
