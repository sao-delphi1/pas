unit CFQRRptBiaya;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv1, DB, ADODB, StdCtrls, QRCtrls, QuickRpt, ExtCtrls;

type
  TfmCFQRRptBiaya = class(TfmRptLv1)
    ChildBand1: TQRChildBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText5: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    GroupFooterBand2: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel3: TQRLabel;
    GroupFooterBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape2: TQRShape;
    QRLabel13: TQRLabel;
    qu002: TADOQuery;
    ds002: TDataSource;
    ds003: TDataSource;
    qu003: TADOQuery;
    qu003Transdate: TDateTimeField;
    qu003Tanggal: TStringField;
    qu003VoucherNo: TStringField;
    qu003Note: TStringField;
    qu003Amount: TBCDField;
    qu003GroupRekId: TStringField;
    qu003BankName: TStringField;
    qu003CaraBayar: TStringField;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QRBand1: TQRBand;
    QRLabel10: TQRLabel;
    qlbTotal: TQRLabel;
    qu003Rate: TBCDField;
    procedure BndDetailBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRLabel3Print(sender: TObject; var Value: String);
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel13Print(sender: TObject; var Value: String);
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qlbTotalPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    TanggalDari,TanggalSampai : TDateTime;
    Awal,Akhir,Keluar,sKeluar,tKeluar : currency;
  end;

var
  fmCFQRRptBiaya: TfmCFQRRptBiaya;

implementation

uses MyUnit;

{$R *.dfm}

procedure TfmCFQRRptBiaya.BndDetailBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  Keluar := 0;
  PrintBand := qu001.FieldByName('Total').AsCurrency <> 0
end;

procedure TfmCFQRRptBiaya.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
  with qu003,sql do
  begin
     Close;Clear;
     add(' SELECT A.Transdate,VoucherNo,CONVERT(VARCHAR(10),Transdate,103) as Tanggal,A.Note,A.Amount,A.GroupRekId,B.BankName,'
        +' CASE WHEN A.FgBBKK=''KK'' THEN ''KAS'' ELSE A.TempField1 END as CaraBayar,ISNULL(A.Rate,0) as Rate '
        +' FROM AllMoney A LEFT JOIN CFMsbank B ON A.TempField=B.BankId WHERE A.GroupRekID='''+sDGRBi+''' AND'
        +' CONVERT(VARCHAR(8),TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',TanggalDari)+''' AND '''+FormatDateTime('yyyyMMdd',TanggalSampai)+''''
        +' AND ValutaId='''+qu001.FieldByName('ValutaID').AsString+''' AND RekeningId='''+qu002.Fieldbyname('RekeningId').AsString+'''');
     add(' order by Convert(varchar(8),TransDate,112),NumAll');
     Open;
  end;
end;

procedure TfmCFQRRptBiaya.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  sKeluar := 0;
end;

procedure TfmCFQRRptBiaya.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  sKeluar := sKeluar + qu003.FieldByName('Amount').AsCurrency;
  Keluar := Keluar + qu003.FieldByName('Amount').AsCurrency;
  if qu001.FieldByName('ValutaID').AsString = 'IDR' then
    tKeluar := tKeluar + qu003.FieldByName('Amount').AsCurrency
  else
    tKeluar := tKeluar + (qu003.FieldByName('Amount').AsCurrency * qu003.FieldByName('Rate').AsCurrency);
end;

procedure TfmCFQRRptBiaya.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatRptkurung(Value)
end;

procedure TfmCFQRRptBiaya.QRLabel3Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(sKeluar))
end;

procedure TfmCFQRRptBiaya.QRLabel6Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(Keluar));
end;

procedure TfmCFQRRptBiaya.QRLabel14Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'TOTAL PER REKENING '+qu002.Fieldbyname('RekeningName').AsString+' :';
end;

procedure TfmCFQRRptBiaya.QRLabel13Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := 'TOTAL PER VALUTA '+qu001.FieldByName('ValutaId').AsString+' :';
end;

procedure TfmCFQRRptBiaya.MyReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  tKeluar := 0;
end;

procedure TfmCFQRRptBiaya.qlbTotalPrint(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatRptkurung(CurrToStr(tKeluar));
end;

end.
