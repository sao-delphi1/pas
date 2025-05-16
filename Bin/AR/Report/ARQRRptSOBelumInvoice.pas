unit ARQRRptSOBelumInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv4, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls;

type
  TfmARQRRptSOBelumInvoice = class(TfmRptLv4)
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel10: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel12: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText17: TQRDBText;
    procedure BndDetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRDBText11Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure bnd002BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    TotalIDR,GrandTotalIDR : currency ;
    iStatus : string;
    Tgldari : TDateTime;
    FGGRN : string;
  end;

var
  fmARQRRptSOBelumInvoice: TfmARQRRptSOBelumInvoice;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmARQRRptSOBelumInvoice.BndDetailAfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;

  with qu002,SQL do
  begin
    Close;Clear;
    add(' SELECT K.ItemID,K.POID as SOID,Convert(varchar(10),K.Transdate,103) as Tanggal, ');
    if iStatus = 'P' then  
    Add(' N.SalesName, ')
    else
    Add(' M.CustName as SalesName, ');
    Add(' L.ItemName,K.JumSO,K.JumInv,K.JumSO-K.JumInv as Sisa,K.Price,(K.JumSO-K.JumInv)*K.Price as Total, '
       +' ISNULL((SELECT SUM(W.JumGRN) FROM ( '
       +' select Y.SOID,X.ItemID,X.Qty,ISNULL((SELECT SUM(M.Qty) FROM APTrKonsinyasiDT M inner join APTrKonsinyasiHD N on M.KonsinyasiID=N.KonsinyasiID '
       +' WHERE N.POID=X.GBUID AND X.ItemID=M.ItemID),0)  as JumGRN '
       +' from ARTrPenawaranDt X inner join ARTrPenawaranHd Y on X.GBUID=Y.GBUID '
       +' ) as W WHERE W.ItemID=K.ItemID AND W.SOID=K.POID ),0) as JumGRN, '
       +' CASE WHEN K.FGCetak=''Y'' THEN ''C'' ELSE ''I'' END as FgInt '
       +' FROM ( '
       +' SELECT B.FgCetak,B.TransDate,B.POID,B.SalesID,B.CustID,A.ItemID,ISNULL(A.Qty,0) as JumSO, '
       +' ISNULL((SELECT SUM(X.Qty) FROM ARTrPenjualanDt X Inner join ARtrPenjualanHd Y on X.SaleID=Y.SaleID '
       +' Where Y.SOID=A.POID AND X.ItemID=A.ItemID),0) as JumInv, '
       +' A.Price '
       +' FROM ARTrPurchaseOrderDt A '
       +' INNER JOIN ARTrPurchaseOrderHd B ON A.POID=B.POID AND ISNULL(B.FgClose,''T'')=''T'' AND B.Jenis=''Y'' '
       +' ) as K '
       +' INNER JOIN INMsItem L on K.ItemID=L.ItemID '
       +' INNER JOIN ARMSCustomer M on K.CustID=M.CustID '
       +' INNER JOIN ARMSSales N on N.SalesID=K.SalesID '
       +' WHERE K.JumSO-K.JumInv > 0 '
       +' AND Convert(varchar(8),K.Transdate,112)<='''+FormatDateTime('yyyyMMdd',Tgldari)+''' ');
    if iStatus = 'P' then
    Add(' AND K.CustID='''+qu001.Fieldbyname('CustId').AsString+''' ')
    else
    Add(' AND K.SalesID='''+qu001.Fieldbyname('CustId').AsString+''' ');
    Add(' ORDER BY K.POID,L.ItemName ');
    Open;
  end;

end;

procedure TfmARQRRptSOBelumInvoice.QRDBText11Print(sender: TObject;
  var Value: String);
begin
  inherited;
     Value := FormatRptkurung(Value);
end;

procedure TfmARQRRptSOBelumInvoice.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
      Value := FormatRptQtykurung(Value);
end;

procedure TfmARQRRptSOBelumInvoice.QRLabel21Print(sender: TObject;
  var Value: String);
begin
  inherited;
     Value := FormatRptkurung(currtostr(GrandTotalIDR));
end;

procedure TfmARQRRptSOBelumInvoice.MyReportBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
    GrandTotalIDR := 0;
end;

procedure TfmARQRRptSOBelumInvoice.QRLabel17Print(sender: TObject;
  var Value: String);
begin
  inherited;
    Value := FormatRptkurung(currtostr(totalIDR));
end;

procedure TfmARQRRptSOBelumInvoice.BndDetailBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
   TotalIDR := 0;
end;

procedure TfmARQRRptSOBelumInvoice.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
   TotalIDR := TotalIDR + qu002.fieldbyname('Total').AsCurrency;
   GrandTotalIDR := GrandTotalIDR + qu002.fieldbyname('Total').AsCurrency;

   if FGGRN<>'X' then
   with qu003,SQL do
   begin
     Close;Clear;
     Add('select CONVERT(VARCHAR(10),B.Transdate,103) as Tgl,A.KonsinyasiID,'''' as NomorDO,D.SuppName,A.Qty from APTrKonsinyasiDt A '
        +'inner join APTrKonsinyasiHd B on A.KonsinyasiID=B.KonsinyasiID '
        +'inner join ARTrPenawaranHd C on B.POID=C.GBUID '
        +'inner join APMsSupplier D on B.SuppID=D.SuppID '
        +'WHERE C.SOID='''+qu002.FieldByName('SOID').ASString+''' AND A.ItemID='''+qu002.FieldByName('ItemID').ASString+''' '
        +'ORDER BY B.TransDate ');
     Open;
   end;

end;

procedure TfmARQRRptSOBelumInvoice.bnd002BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if FGGRN<>'X' then
  if qu003.IsEmpty then PrintBand := False;
end;

end.
