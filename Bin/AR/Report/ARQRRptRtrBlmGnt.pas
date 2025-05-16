unit ARQRRptRtrBlmGnt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv3, DB, ADODB, QuickRpt, QRCtrls, StdCtrls, ExtCtrls;

type
  TfmARQRRptRtrBlmGnt = class(TfmRptLv3)
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure BndDetailAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Tgldari : TDateTime;
  end;

var
  fmARQRRptRtrBlmGnt: TfmARQRRptRtrBlmGnt;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmARQRRptRtrBlmGnt.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value := FormatRptqtykurung(Value)
end;

procedure TfmARQRRptRtrBlmGnt.BndDetailAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  with qu002,sql do
       begin
          Close;Clear;
          add(' select A.ReturnId,Convert(varchar(10),A.Transdate,103) as tgl,C.ItemId,B.ItemName,'
             +'  isnull(Sum(C.Qty),0)'
             +' -(Select isnull(SUM(Qty),0) FROM ARTrPenggantiReturPenjdt E  WHERE E.ItemId=C.ItemId'
             +'  AND E.ReturnId=A.ReturnId'
             +' ) as Sisa'
             +'  FROM ARTrReturPenjualanHd A INNER JOIN ARTrReturPenjualanDt C ON A.ReturnId=C.ReturnId'
             +'  INNER JOIN INMsItem B ON B.ItemId=C.ItemId'
             +'  WHERE A.CustID='''+qu001.fieldbyname('CustId').AsString+''''
             +'  AND (Select isnull(Sum(F.Qty),0) FROM ARTrReturPenjualanDt F WHERE F.returnId=A.ReturnId AND F.Itemid=C.ItemId)'
             +' -(Select isnull(SUM(Qty),0) FROM ARTrPenggantiReturPenjdt E  WHERE E.ItemId=C.ItemId'
             +'  AND E.ReturnId=A.ReturnId)<> 0 AND FlagRetur=''R'''
             +'  AND Convert(varchar(8),A.Transdate,112)<='''+FormatDateTime('yyyyMMdd',Tgldari)+''''
             +'  GROUP BY A.ReturnId,A.Transdate,C.ItemId,B.ItemName');
          Open;
         end;
end;

end.
