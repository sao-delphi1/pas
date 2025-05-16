unit APTrOtorisasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxTL, dxDBCtrl, dxDBGrid, dxEditor;

type
  TfmAPTrOtorisasi = class(TfmStdLv31)
    dxDBGrid1: TdxDBGrid;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2Column1: TdxDBGridColumn;
    dxDBGrid2Column2: TdxDBGridColumn;
    dxDBGrid2Column5: TdxDBGridColumn;
    BtlBrg: TdxButton;
    dxDBGrid2Column8: TdxDBGridColumn;
    dxDBGrid2Column9: TdxDBGridColumn;
    RadioGroup2: TRadioGroup;
    quMainSuppID: TStringField;
    quMainSuppName: TStringField;
    quMainTanggal: TStringField;
    quMainTerm: TIntegerField;
    quMainJthTempo: TStringField;
    quMainIP: TStringField;
    quMainFgTax: TStringField;
    quMainKredit: TBCDField;
    quMainDebit: TBCDField;
    dt1: TdxDateEdit;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column4: TdxDBGridColumn;
    dxDBGrid1Column5: TdxDBGridColumn;
    dxDBGrid1Column6: TdxDBGridColumn;
    dxDBGrid1Column7: TdxDBGridColumn;
    dxDBGrid1Column8: TdxDBGridColumn;
    quMainSisa: TCurrencyField;
    dxDBGrid1Column9: TdxDBGridColumn;
    quDetilPurchaseID: TStringField;
    quDetilItemID: TStringField;
    quDetilQty: TBCDField;
    quDetilPrice: TBCDField;
    quDetilTotal: TBCDField;
    quDetilItemName: TStringField;
    quSN: TADOQuery;
    dsSN: TDataSource;
    quSNPurchaseID: TStringField;
    quSNitemID: TStringField;
    quSNSNID: TStringField;
    quSNFgJual: TStringField;
    quSNSaleID: TStringField;
    quSNPrice: TBCDField;
    quSNCustName: TStringField;
    quSNTgl: TStringField;
    quSNStatus: TIntegerField;
    dxDBGrid3: TdxDBGrid;
    dxDBGrid3Column1: TdxDBGridColumn;
    dxDBGrid3Column2: TdxDBGridColumn;
    dxDBGrid3Column3: TdxDBGridColumn;
    dxDBGrid3Column4: TdxDBGridColumn;
    quSNLKeterangan: TStringField;
    quSNFgTax: TStringField;
    dxDBGrid3Column5: TdxDBGridColumn;
    procedure BtlBrgClick(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dsDetilStateChange(Sender: TObject);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure quSNCalcFields(DataSet: TDataSet);
    procedure dsSNStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAPTrOtorisasi: TfmAPTrOtorisasi;

implementation

{$R *.dfm}
uses Search, ConMain, UnitGeneral, UnitDate, MyUnit;

procedure TfmAPTrOtorisasi.BtlBrgClick(Sender: TObject);
begin
  inherited;
  with quMain,SQL do
  begin
    Close;Clear;
    Add('SELECT K.SuppID,L.SuppName,CONVERT(VARCHAR(10),K.Transdate,103) as Tanggal,K.JatuhTempo as Term,'
       +'CONVERT(VARCHAR(10),K.Transdate+K.JatuhTempo,103) as JthTempo,K.PurchaseID as IP,K.FgTax,ISNULL(K.Kredit,0) as Kredit,'
       +'ISNULL((SELECT ISNULL(SUM(L.ValuePayment),0) FROM APTrPaymentDt L INNER JOIN APTrPaymentHd H ON L.PaymentID=H.PaymentID '
       +'WHERE L.PurchaseID=K.PurchaseID AND H.SuppID=K.SuppID AND CONVERT(VARCHAR(8),H.Transdate,112) <='''+FormatDatetime('yyyymmdd',dt1.Date)+'''),0) + '
       +'ISNULL((SELECT ISNULL(SUM(L.ValuePayment),0) FROM APTrPaymentKonsDt L INNER JOIN APTrPaymentKonsHd H ON L.PaymentKonsID=H.PaymentKonsID '
       +'WHERE L.KonsinyasiInvID=K.PurchaseID AND H.SuppID=K.SuppID AND CONVERT(VARCHAR(8),H.Transdate,112) <='''+FormatDatetime('yyyymmdd',dt1.Date)+'''),0) as Debit '
       +'FROM ( '
       +'SELECT A.SuppID,A.TransDate,A.PurchaseID,A.CurrID,A.JatuhTempo,A.FgTax, '
       +'ISNULL(A.TTLPb,0)-ISNULL((Select ISNULL(SUM(Price*Qty),0) FROM APTrReturnDt F INNER JOIN APTrReturnHd G  ON F.ReturnID=G.ReturnID '
       +'WHERE G.FlagRetur=''B'' AND F.purchaseID=A.PurchaseID AND G.SuppID=A.SuppID AND CONVERT(varchar(8),G.Transdate,112) <= '''+FormatDatetime('yyyymmdd',dt1.Date)+'''),0) as Kredit '
       +'FROM APTrPurchaseHd A '
       +'UNION ALL '
       +'SELECT A.SuppID,A.TransDate,A.KonsinyasiInvID,A.CurrID,A.JatuhTempo,A.Fgtax,ISNULL(A.TTLKs,0) FROM APTrKonsinyasiInvHD A '
       +'UNION ALL '
       +'SELECT A.SuppID,A.Transdate,A.VoucherNo,A.CurrID,0,''T'',ISNULL(A.Amount,0) FROM CFTrCreditCard A '
       +') as K INNER JOIN APMsSupplier L on K.SuppID=L.SuppID '
       +'WHERE K.CurrID=''IDR'' AND K.Kredit <> 0 '
       +'AND ISNULL(K.Kredit-ISNULL((SELECT ISNULL(SUM(L.ValuePayment),0) FROM APTrPaymentDt L INNER JOIN APTrPaymentHd H ON L.PaymentID=H.PaymentID '
       +'WHERE L.PurchaseID=K.PurchaseID AND H.SuppID=K.SuppID AND CONVERT(VARCHAR(8),H.Transdate,112) <='''+FormatDatetime('yyyymmdd',dt1.Date)+'''),0)- '
       +'ISNULL((SELECT ISNULL(SUM(L.ValuePayment),0) FROM APTrPaymentKonsDt L INNER JOIN APTrPaymentKonsHd H ON L.PaymentKonsID=H.PaymentKonsID '
       +'WHERE L.KonsinyasiInvID=K.PurchaseID AND H.SuppID=K.SuppID AND CONVERT(VARCHAR(8),H.Transdate,112) <='''+FormatDatetime('yyyymmdd',dt1.Date)+'''),0),0) > 0 ');
    if RadioGroup2.ItemIndex = 0 then
    begin
    Add('AND CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDatetime('yyyymmdd',dt1.Date)+''' '
       +'ORDER BY CONVERT(VARCHAR(8),K.Transdate,112) ')
    end else
    begin
    Add('AND CONVERT(VARCHAR(8),K.Transdate+K.JatuhTempo,112) <= '''+FormatDatetime('yyyymmdd',dt1.Date)+''' '
       +'ORDER BY CONVERT(VARCHAR(8),K.Transdate+K.JatuhTempo,112) ');
    end;
    Open;
  end;
end;

procedure TfmAPTrOtorisasi.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'INVOICE';
     SQLString := 'SELECT K.PurchaseID as Invoice,L.SuppName,CONVERT(VARCHAR(10),K.Transdate,103) as Tanggal,K.JatuhTempo as Term,'
                 +'CONVERT(VARCHAR(10),K.Transdate+K.JatuhTempo,103) as JthTempo,K.FgTax,ISNULL(K.Kredit,0) as Kredit,'
                 +'ISNULL((SELECT ISNULL(SUM(L.ValuePayment),0) FROM APTrPaymentDt L INNER JOIN APTrPaymentHd H ON L.PaymentID=H.PaymentID '
                 +'WHERE L.PurchaseID=K.PurchaseID AND H.SuppID=K.SuppID AND CONVERT(VARCHAR(8),H.Transdate,112) <='''+FormatDatetime('yyyymmdd',dt1.Date)+'''),0) + '
                 +'ISNULL((SELECT ISNULL(SUM(L.ValuePayment),0) FROM APTrPaymentKonsDt L INNER JOIN APTrPaymentKonsHd H ON L.PaymentKonsID=H.PaymentKonsID '
                 +'WHERE L.KonsinyasiInvID=K.PurchaseID AND H.SuppID=K.SuppID AND CONVERT(VARCHAR(8),H.Transdate,112) <='''+FormatDatetime('yyyymmdd',dt1.Date)+'''),0) as Debit '
                 +'FROM ( '
                 +'SELECT A.SuppID,A.TransDate,A.PurchaseID,A.CurrID,A.JatuhTempo,A.FgTax, '
                 +'ISNULL(A.TTLPb,0)-ISNULL((Select ISNULL(SUM(Price*Qty),0) FROM APTrReturnDt F INNER JOIN APTrReturnHd G  ON F.ReturnID=G.ReturnID '
                 +'WHERE G.FlagRetur=''B'' AND F.purchaseID=A.PurchaseID AND G.SuppID=A.SuppID '
                 +'AND CONVERT(varchar(8),G.Transdate,112) <= '''+FormatDatetime('yyyymmdd',dt1.Date)+'''),0) as Kredit '
                 +'FROM APTrPurchaseHd A '
                 +'UNION ALL '
                 +'SELECT A.SuppID,A.TransDate,A.KonsinyasiInvID,A.CurrID,A.JatuhTempo,A.Fgtax,ISNULL(A.TTLKs,0) FROM APTrKonsinyasiInvHD A '
                 +'UNION ALL '
                 +'SELECT A.SuppID,A.Transdate,A.VoucherNo,A.CurrID,0,''T'',ISNULL(A.Amount,0) FROM CFTrCreditCard A '
                 +') as K INNER JOIN APMsSupplier L on K.SuppID=L.SuppID '
                 +'WHERE K.CurrID=''IDR'' AND K.Kredit <> 0 '
                 +'AND ISNULL(K.Kredit-ISNULL((SELECT ISNULL(SUM(L.ValuePayment),0) FROM APTrPaymentDt L INNER JOIN APTrPaymentHd H ON L.PaymentID=H.PaymentID '
                 +'WHERE L.PurchaseID=K.PurchaseID AND H.SuppID=K.SuppID AND CONVERT(VARCHAR(8),H.Transdate,112) <='''+FormatDatetime('yyyymmdd',dt1.Date)+'''),0)- '
                 +'ISNULL((SELECT ISNULL(SUM(L.ValuePayment),0) FROM APTrPaymentKonsDt L INNER JOIN APTrPaymentKonsHd H ON L.PaymentKonsID=H.PaymentKonsID '
                 +'WHERE L.KonsinyasiInvID=K.PurchaseID AND H.SuppID=K.SuppID AND CONVERT(VARCHAR(8),H.Transdate,112) <='''+FormatDatetime('yyyymmdd',dt1.Date)+'''),0),0) > 0 ';
    if RadioGroup2.ItemIndex = 0 then
      SQLString := SQLString + 'AND CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDatetime('yyyymmdd',dt1.Date)+''' ORDER BY CONVERT(VARCHAR(8),K.Transdate,112) '
    else
      SQLString := SQLString + 'AND CONVERT(VARCHAR(8),K.Transdate+K.JatuhTempo,112) <= '''+FormatDatetime('yyyymmdd',dt1.Date)+''' ORDER BY CONVERT(VARCHAR(8),K.Transdate+K.JatuhTempo,112) ';

     if ShowModal = MrOK then
     begin
       quMain.Locate('IP',Res[0],[]);
     end;
  finally
     free;
  end;
end;

procedure TfmAPTrOtorisasi.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmAPTrOtorisasi.FormShow(Sender: TObject);
begin
  inherited;
  quSn.Active := True;
  dt1.DAte := Date;
  RadioGroup2.Top := 88; dt1.Top := 22; BtlBrg.Top := 51;
  RadioGroup2.Left := 23; dt1.Left := 23; BtlBrg.Left := 23;
  BtlBrgClick(BtlBrg);
end;

procedure TfmAPTrOtorisasi.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid1Column1,TRUE);
  SetReadOnly(dxDBGrid1Column2,TRUE);
  SetReadOnly(dxDBGrid1Column3,TRUE);
  SetReadOnly(dxDBGrid1Column4,TRUE);
  SetReadOnly(dxDBGrid1Column5,TRUE);
  SetReadOnly(dxDBGrid1Column6,TRUE);
  SetReadOnly(dxDBGrid1Column7,TRUE);
  SetReadOnly(dxDBGrid1Column8,TRUE);
  SetReadOnly(dxDBGrid1Column9,TRUE);
end;

procedure TfmAPTrOtorisasi.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid2Column1,TRUE);
  SetReadOnly(dxDBGrid2Column2,TRUE);
  SetReadOnly(dxDBGrid2Column5,TRUE);
  SetReadOnly(dxDBGrid2Column8,TRUE);
  SetReadOnly(dxDBGrid2Column9,TRUE);
end;

procedure TfmAPTrOtorisasi.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  quMainSisa.AsCurrency := quMainKredit.AsCurrency - quMainDebit.AsCurrency ;
end;

procedure TfmAPTrOtorisasi.quSNCalcFields(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quSNSaleID.AsString) <> '-' then
    quSNLKeterangan.AsString := 'Terjual ke ' + quSNCustName.ASString + ' dengan harga ' + FormatRptKurung(quSNPrice.AsString) + ' nota no ' + quSNSaleID.aSString
  else
    quSNLKeterangan.ASString := 'Stock';
end;

procedure TfmAPTrOtorisasi.dsSNStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid3Column3,TRUE);
  SetReadOnly(dxDBGrid3Column4,TRUE);
  SetReadOnly(dxDBGrid3Column5,TRUE);
end;

end.
