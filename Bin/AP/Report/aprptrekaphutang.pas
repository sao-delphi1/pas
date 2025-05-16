unit aprptrekaphutang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxEdLib;

type
  TfmAPRptRekapHutang = class(TfmRptDlg)
    quActCustID: TStringField;
    quActCustName: TStringField;
    quActTanggal: TDateTimeField;
    quActIP: TStringField;
    quActSOID: TStringField;
    quActKredit: TBCDField;
    quActDebit: TBCDField;
    quActLTotal: TCurrencyField;
    dbgPembelian: TdxDBGrid;
    dbgPembelianColumn1: TdxDBGridColumn;
    dbgPembelianColumn2: TdxDBGridColumn;
    dbgPembelianColumn3: TdxDBGridColumn;
    dbgPembelianColumn4: TdxDBGridColumn;
    dbgPembelianColumn5: TdxDBGridColumn;
    dbgPembelianColumn6: TdxDBGridColumn;
    dbgPembelianColumn7: TdxDBGridColumn;
    dbgPembelianColumn8: TdxDBGridColumn;
    GroupBox1: TGroupBox;
    dt1: TdxDateEdit;
    CheckBox1: TCheckBox;
    Button1: TButton;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    saveDlg: TSaveDialog;
    procedure dsActStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure quActCalcFields(DataSet: TDataSet);
    procedure bbCancelClick(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshData;
  public
    { Public declarations }
    FgForm : string;
  end;

var
  fmAPRptRekapHutang: TfmAPRptRekapHutang;

implementation

uses MyUnit, UnitGeneral;

{$R *.dfm}
procedure TfmAPRptRekapHutang.RefreshData;
begin
  if FgForm='AR' then
  begin

    with quAct, SQL do
    begin
      Close;Clear;
      Add(' SELECT K.CustID,L.CustName,K.Transdate as Tanggal, '
         +' CASE WHEN K.Nama='''' THEN K.SaleID ELSE K.SaleID+'' (''+K.Nama+'')'' END as IP,K.SOID,ISNULL(K.TTLPj-K.Kredit,0) as Kredit, '
         +' ISNULL(K.Debit,0) as Debit FROM ( '
         +' SELECT A.CustID,A.CurrID,A.Transdate,A.SaleID,A.Nama,ISNULL(A.TTLPj,0) as TTLPj,A.SOID, '
         +' ISNULL((SELECT ISNULL(SUM(Price*Qty),0) FROM ARTrReturPenjualanDt F INNER JOIN ARTrReturPenjualanHd G '
         +' ON F.ReturnId=G.ReturnId WHERE G.FlagRetur=''B'' AND F.SaleId=A.SaleId '
         +' AND G.CustId=A.CustId AND CONVERT(VARCHAR(8),G.Transdate,112) <= '''+FormatDateTime('yyyymmdd',dt1.Date)+'''),0) as Kredit, '
         +' (SELECT ISNULL(SUM(L.Amount),0) FROM CFTrKKBBdt L INNER JOIN CFTrKKBBHd Q ON L.VoucherID=Q.VoucherID '
         +' WHERE L.Note = A.SaleID AND L.RekeningID='''+sDRPj+''' AND CONVERT(VARCHAR(8),Q.Transdate,112) <= '''+FormatDateTime('yyyymmdd',dt1.Date)+''') as Debit '
         +' FROM ARTrPenjualanHd A '
         +' ) as K '
         +' INNER JOIN ARMsCustomer L ON K.CustID=L.CustID '
         +' WHERE ISNULL(K.TTLPj-K.Kredit,0)<>0 '
         +' AND CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyymmdd',dt1.Date)+''' ');
      if CheckBox1.Checked then
      Add(' AND ISNULL(K.TTLPj-K.Kredit-K.Debit,0)<>0 ');
      Add(' ORDER BY K.Transdate ');
      Open;
    end;

  end else
  begin

    with quAct, SQL do
    begin
      Close;Clear;
      Add(' SELECT K.SuppID as CustID,L.SuppName as CustName,K.Transdate as Tanggal,K.PurchaseID as IP,'
         +' K.SOID,ISNULL(K.Kredit,0) as Kredit,K.Debit '
         +' FROM ( '
         +' SELECT A.SuppID,A.TransDate,A.PurchaseID,A.CurrID,ISNULL(A.TTLPb,0)-ISNULL((Select ISNULL(SUM(Price*Qty),0) FROM APTrReturnDt F '
         +' INNER JOIN APTrReturnHd G  ON F.ReturnID=G.ReturnID WHERE G.FlagRetur=''B'' AND F.purchaseID=A.PurchaseID AND G.SuppID=A.SuppID '
         +' AND CONVERT(varchar(8),G.Transdate,112) <= '''+FormatDateTime('yyyymmdd',dt1.Date)+'''),0) as Kredit,A.PurchaseID as SOID, '
         +' ISNULL((SELECT ISNULL(SUM(L.Amount),0) FROM Cftrkkbbdt L INNER JOIN cftrkkbbhd H ON L.voucherid=H.voucherid '
         +' WHERE L.note=A.PurchaseID AND H.Actor=A.SuppID '
         +' AND CONVERT(VARCHAR(8),H.Transdate,112) <='''+FormatDateTime('yyyymmdd',dt1.Date)+'''),0) as Debit '
         +' FROM APTrPurchaseHd A '
         +' ) as K '
         +' INNER JOIN APMsSupplier L on K.SuppID=L.SuppID '
         +' WHERE K.Kredit <> 0 '
         +' AND CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyymmdd',dt1.Date)+''' ');
      if CheckBox1.Checked then
      Add(' AND ISNULL(K.Kredit-K.Debit,0) > 0 ');
      Add(' ORDER BY K.Transdate ');
      Open;
    end;

  end;
end;

procedure TfmAPRptRekapHutang.dsActStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgPembelianColumn1,TRUE);
  SetReadOnly(dbgPembelianColumn2,TRUE);
  SetReadOnly(dbgPembelianColumn3,TRUE);
  SetReadOnly(dbgPembelianColumn4,TRUE);
  SetReadOnly(dbgPembelianColumn5,TRUE);
  SetReadOnly(dbgPembelianColumn6,TRUE);
  SetReadOnly(dbgPembelianColumn7,TRUE);
  SetReadOnly(dbgPembelianColumn8,TRUE);
end;

procedure TfmAPRptRekapHutang.FormShow(Sender: TObject);
begin
  inherited;
  if FgForm='AR' then
  begin
    Caption := 'Rekap Piutang Penjualan';
    dbgPembelianColumn3.Caption := 'Kode Customer';
    dbgPembelianColumn4.Caption := 'Nama Customer';
  end else
  begin
    Caption := 'Rekap Hutang Pembelian';
    dbgPembelianColumn3.Caption := 'Kode Supplier';
    dbgPembelianColumn4.Caption := 'Nama Supplier';
    dbgPembelianColumn5.Visible := False;
  end;
  dt1.Date := Date;
  RefreshData;
end;

procedure TfmAPRptRekapHutang.Button1Click(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfmAPRptRekapHutang.quActCalcFields(DataSet: TDataSet);
begin
  inherited;
  quActLTotal.AsCurrency := quActKredit.AsCurrency - quActDebit.AsCurrency ;
end;

procedure TfmAPRptRekapHutang.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmAPRptRekapHutang.bbExcelClick(Sender: TObject);
begin
  inherited;
  if saveDlg.Execute then
  begin
    if Pos('.XLS', uppercase(saveDlg.FileName)) > 0 then
      dbgPembelian.SaveToXLS(saveDlg.FileName, true)
    else
      dbgPembelian.SaveToXLS(saveDlg.FileName + '.xls', true);
  end;
end;

end.
