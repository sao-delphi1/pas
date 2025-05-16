unit CFQRRptBalanceSheet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv1, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TfmCFQRRptBalanceSheet = class(TfmRptLv1)
    QRDBText6: TQRDBText;
    QRShape1: TQRShape;
    bnd001: TQRSubDetail;
    GroupFooterBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel37: TQRLabel;
    bnd002: TQRSubDetail;
    qu002: TADOQuery;
    ds002: TDataSource;
    qu003: TADOQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    quAct: TADOQuery;
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure bnd001BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bnd002AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bnd002BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bnd001AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Total,GT : currency;
    FlagLaporan,PrdSampai,PrdSebelum : string;
  end;

var
  fmCFQRRptBalanceSheet: TfmCFQRRptBalanceSheet;

implementation

uses RptLv0, MyUnit;

{$R *.dfm}

procedure TfmCFQRRptBalanceSheet.BndDetailBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  GT := 0;
  MyReport.NewColumn;
end;

procedure TfmCFQRRptBalanceSheet.QRDBText3Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Value)
end;

procedure TfmCFQRRptBalanceSheet.bnd001BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  Total := 0;
end;

procedure TfmCFQRRptBalanceSheet.bnd002AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  Total := Total + qu003.FieldByName('Total').AsCurrency;
//  GT := GT + qu003.FieldByName('Total').AsCurrency;
end;

procedure TfmCFQRRptBalanceSheet.GroupFooterBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  QRLabel1.Caption := 'Total '+qu001.FieldByName('Nama').AsString+' : ' + FormatRptkurung(CurrToStr(GT));
end;

procedure TfmCFQRRptBalanceSheet.bnd002BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var Nilai : currency;
begin
  inherited;
  if FlagLaporan = 'NOL' then
    PrintBand := qu003.FieldByName('Total').AsCurrency <> 0;
  if (qu003.FieldByName('GroupRekID').AsString = '3.11002') or (qu003.FieldByName('GroupRekID').AsString = '3.11003') then
  begin
    QRLabel2.Enabled := True; QRDBText3.Enabled := False;
{    with quAct,SQL do
    begin
      Close;Clear;
      add('SELECT '
         +'(SELECT ISNULL(SUM(K.Jumlah),0) as Jumlah FROM ('
         +'SELECT DISTINCT A.GroupRekID,ISNULL((SELECT SUM(CASE WHEN K.Jenis=''K'' THEN K.Amount ELSE K.Amount*-1 END) FROM ('
         +'SELECT X.RekeningID,Y.Transdate,X.Amount,X.Jenis,Y.FgPayment FROM CFTrKKBBDt X INNER JOIN CFTrKKBBHd Y ON X.VoucherID=Y.VoucherID UNION ALL '
         +'SELECT RekeningU,Transdate,ISNULL(TTLKj-(CASE WHEN FgTax=''T'' THEN Discount ELSE Discount*1.1 END),0),''D'',''T'' FROM ARTrKonInvPelHd UNION ALL '
         +'SELECT RekeningK,Transdate,ISNULL(StKj-(StKj*Discount*0.01),0),''K'',''T'' FROM ARTrKonInvPelHd UNION ALL '
         +'SELECT RekeningP,Transdate,ISNULL(CASE WHEN FgTax=''T'' THEN 0 ELSE (StkJ-(StKj*Discount*0.01))*0.1 END,0),''K'',''T'' FROM ARTrKonInvPelHd UNION ALL '
         +'SELECT RekeningU,Transdate,ISNULL(TTLKS,0),''K'',''T'' FROM APTrKonsinyasiInvHD UNION ALL '
         +'SELECT RekeningP,Transdate,ISNULL(PPN,0),''D'',''T'' FROM APTrKonsinyasiInvHD UNION ALL '
         +'SELECT RekeningK,Transdate,ISNULL(SubTotal,0),''D'',''T'' FROM APTrKonsinyasiInvHD) as K '
         +'INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID WHERE CONVERT(VARCHAR(8),K.Transdate,112) < '''+PrdSebelum+''' AND L.GroupRekID=A.GroupRekID AND K.FgPayment=''T''),0) as Jumlah,B.Componen as Kode '
         +'FROM CFMsRekening A INNER JOIN CFMsGroupRek B ON A.GroupRekID=B.GroupRekID) as K WHERE K.Jumlah <> 0 AND K.Kode<>7) as Awal,'
         +'(SELECT ISNULL(SUM(K.Jumlah),0) as Jumlah FROM ('
         +'SELECT DISTINCT A.GroupRekID,ISNULL((SELECT SUM(CASE WHEN K.Jenis=''K'' THEN K.Amount ELSE K.Amount*-1 END) FROM ('
         +'SELECT X.RekeningID,Y.Transdate,X.Amount,X.Jenis,Y.FgPayment FROM CFTrKKBBDt X INNER JOIN CFTrKKBBHd Y ON X.VoucherID=Y.VoucherID UNION ALL '
         +'SELECT RekeningU,Transdate,ISNULL(TTLKj-(CASE WHEN FgTax=''T'' THEN Discount ELSE Discount*1.1 END),0),''D'',''T'' FROM ARTrKonInvPelHd UNION ALL '
         +'SELECT RekeningK,Transdate,ISNULL(StKj-(StKj*Discount*0.01),0),''K'',''T'' FROM ARTrKonInvPelHd UNION ALL '
         +'SELECT RekeningP,Transdate,ISNULL(CASE WHEN FgTax=''T'' THEN 0 ELSE (StKj-(StKj*Discount*0.01))*0.1 END,0),''K'',''T'' FROM ARTrKonInvPelHd UNION ALL '
         +'SELECT RekeningU,Transdate,ISNULL(TTLKS,0),''K'',''T'' FROM APTrKonsinyasiInvHD UNION ALL '
         +'SELECT RekeningP,Transdate,ISNULL(PPN,0),''D'',''T'' FROM APTrKonsinyasiInvHD UNION ALL '
         +'SELECT RekeningK,Transdate,ISNULL(SubTotal,0),''D'',''T'' FROM APTrKonsinyasiInvHD) as K '
         +'INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID WHERE CONVERT(VARCHAR(8),K.Transdate,112) '
         +'BETWEEN '''+PrdSebelum+''' AND '''+PrdSampai+''' AND L.GroupRekID=A.GroupRekID AND K.FgPayment=''T''),0) as Jumlah,B.Componen as Kode '
         +'FROM CFMsRekening A INNER JOIN CFMsGroupRek B ON A.GroupRekID=B.GroupRekID) as K WHERE K.Jumlah <> 0 AND K.Kode<>7) as Akhir');
      Open;
    end;
    if qu003.FieldByName('GroupRekID').AsString = '312' then
    begin
      Nilai := quAct.FieldByName('Awal').AsCurrency;
    end else
    begin
      Nilai := quAct.FieldByName('Akhir').AsCurrency;
    end;
    QRLabel2.Caption := FormatRptkurung(CurrToStr(qu003.FieldByName('Total').AsCurrency+Nilai));}
  end else
  begin
    QRLabel2.Enabled := False; QRDBText3.Enabled := True;
  end;
end;

procedure TfmCFQRRptBalanceSheet.bnd001AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  GT := GT + qu002.FieldByName('GT').AsCurrency;
end;

end.
