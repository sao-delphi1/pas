unit CFQRRptKeuanganDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv1, QuickRpt, DB, ADODB, StdCtrls, QRCtrls, ExtCtrls;

type
  TfmCFQRRptKeuangan = class(TfmRptLv1)
    ChildBand1: TQRChildBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    qu002: TADOQuery;
    SummaryBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    ds002: TDataSource;
    quAwal: TADOQuery;
    QRDBText6: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    qrlTotal: TQRLabel;
    GroupFooterBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrlTotalPrint(sender: TObject; var Value: String);
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel9Print(sender: TObject; var Value: String);

  private
    { Private declarations }
  public
    { Public declarations }
    TanggalDari,TanggalSampai : TDateTime;
    Awal,Akhir : currency;
  end;

var
  fmCFQRRptKeuangan: TfmCFQRRptKeuangan;

implementation

uses UnitGeneral, MyUnit, RptLv0;

{$R *.dfm}

procedure TfmCFQRRptKeuangan.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatRptkurung(Value)
end;

procedure TfmCFQRRptKeuangan.QRDBText4Print(sender: TObject;
  var Value: String);
begin
  inherited;
   value := FormatRptkurung(Value)
end;

procedure TfmCFQRRptKeuangan.MyReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  Awal :=0;
  Akhir := 0;
end;

procedure TfmCFQRRptKeuangan.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  inherited;
   Value :='Saldo Awal '+qu001.Fieldbyname('ValutaiD').AsString+' Tanggal '+FormatDateTime('dd/MM/yyyy',TanggalDari)+' : '+FormatRptkurung(CurrToStr(Awal));
end;

procedure TfmCFQRRptKeuangan.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  if (qu002.FieldByName('GroupRekId').AsString =sDGRPj) or (qu002.FieldByName('GroupRekID').AsString=sDGRPLL)Then
  Begin
    QRDBText2.Left := 711;
    Awal := Awal + qu002.FieldByName('Amount').AsCurrency;
  End
  else
  if (qu002.FieldByName('GroupRekId').AsString =sDGRPb) or (qu002.FieldByName('GroupRekID').AsString=sDGRBi) Then
  Begin
    QRDBText2.Left := 804;
    Awal := Awal - qu002.FieldByName('Amount').AsCurrency;
  End
  Else
    PrintBand := False;
end;

procedure TfmCFQRRptKeuangan.qrlTotalPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(Currtostr(awal))
end;

procedure TfmCFQRRptKeuangan.BndDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   with quAwal,sql do
  Begin
    Close;Clear;
    Add(' Select ISNULL(SUM(Case WHEN B.GroupRekId IN('''+sDGRPj+''','''+sDGRPLL+''') THEN B.Amount'
       +'                        WHEN B.GroupRekId IN('''+sDGRPb+''','''+sDGRBi+''') THEN B.Amount * - 1 END),0) as Saldo'
       +'  FROM ALLMONEY B WHERE CONVERT(VARCHAR(8),B.TransDate,112)<'''+FormatDateTime('yyyyMMdd',TanggalDari)+''''
       +' AND ValutaId='''+qu001.Fieldbyname('ValutaId').AsString+''' AND FgBBKK IN(''KM'',''KK'',''PIK'')');
      Open;
  End;
  Awal := quAwal.fieldbyname('Saldo').AsCurrency;
end;

procedure TfmCFQRRptKeuangan.QRLabel9Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value :='Saldo Akhir '+qu001.Fieldbyname('ValutaiD').AsString+' Tanggal '+FormatDateTime('dd/MM/yyyy',TanggalSampai)+' : '+FormatRptkurung(currtostr(Awal));
end;

end.


