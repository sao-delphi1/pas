unit ARRptRekapSO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxExEdtr, ExtCtrls, ComCtrls, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, dxEdLib, dxEditor, StdCtrls, DB, ADODB, Buttons, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore;

type
  TfmARRptRekapSODlg = class(TfmRptDlg)
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    GrbBulan: TGroupBox;
    BitBtn1: TBitBtn;
    dxBulan: TdxImageEdit;
    dxTahun: TdxSpinEdit;
    dgrReport: TdxDBGrid;
    GrbTanggal: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    bbRefresh: TBitBtn;
    dtpSmp: TDateTimePicker;
    dtpDari: TDateTimePicker;
    RgPeriode: TRadioGroup;
    quCalc: TADOQuery;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    bbExp: TBitBtn;
    bbColp: TBitBtn;
    quActPOID: TStringField;
    quActTglSO: TStringField;
    quActCustName: TStringField;
    quActSalesName: TStringField;
    quActSaleID: TStringField;
    quActTglInvoice: TStringField;
    quActGBUID: TStringField;
    quActTglPO: TStringField;
    quActSuppName: TStringField;
    quActKonsinyasiID: TStringField;
    quActTglTerima: TStringField;
    quActPurchaseID: TStringField;
    quActTglBeli: TStringField;
    quActItemName: TStringField;
    quActQty: TIntegerField;
    quActPrice: TBCDField;
    quActModal: TBCDField;
    dgrReportPOID: TdxDBGridColumn;
    dgrReportTglSO: TdxDBGridColumn;
    dgrReportCustName: TdxDBGridColumn;
    dgrReportSalesName: TdxDBGridColumn;
    dgrReportSaleID: TdxDBGridColumn;
    dgrReportTglInvoice: TdxDBGridColumn;
    dgrReportGBUID: TdxDBGridColumn;
    dgrReportTglPO: TdxDBGridColumn;
    dgrReportSuppName: TdxDBGridColumn;
    dgrReportKonsinyasiID: TdxDBGridColumn;
    dgrReportTglTerima: TdxDBGridColumn;
    dgrReportPurchaseID: TdxDBGridColumn;
    dgrReportTglBeli: TdxDBGridColumn;
    dgrReportItemName: TdxDBGridColumn;
    dgrReportQty: TdxDBGridColumn;
    dgrReportPrice: TdxDBGridColumn;
    dgrReportModal: TdxDBGridColumn;
    quActTaxID: TStringField;
    dgrReportTaxID: TdxDBGridColumn;
    quActFPSID: TStringField;
    dgrReportFPSID: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure bbExpClick(Sender: TObject);
    procedure bbColpClick(Sender: TObject);
    procedure RgPeriodeClick(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
  private
    { Private declarations }
    sQuery : string;
  public
    { Public declarations }
    Periode1,Periode2 : TDateTime;
  end;

var
  fmARRptRekapSODlg: TfmARRptRekapSODlg;

implementation

uses ConMain, UnitGeneral;

{$R *.dfm}

procedure TfmARRptRekapSODlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Active := TRUE;
  dtpDari.Date := dmMain.FSysPrd1;
  dtpSmp.Date := dmMain.FSysPrd2;
  Periode1 := dmMain.FSysPrd1;
  Periode2 := dmMain.FSysPrd2;
  dxTahun.Text := FormatDateTime('YYYY',Date);
  dxBulan.Text := FormatDateTime('MM',Date);
  bbRefreshClick(bbRefresh);
  dtpDari.SetFocus;
end;

procedure TfmARRptRekapSODlg.bbRefreshClick(Sender: TObject);
var dari,sampai : string;
begin
  inherited;
  if RgPeriode.ItemIndex = 0 then
  begin
    dari := FormatDateTime('yyyyMMdd',dtpDari.Date);
    sampai := FormatDateTime('yyyyMMdd',dtpSmp.Date);
    GrbTanggal.Visible := True;
    GrbBulan.Visible := False;
  end else
  begin
    dari := dxTahun.Text+dxBulan.Text+'01';
    sampai := dxTahun.Text+dxBulan.Text+'31';
    GrbTanggal.Visible := False;
    GrbBulan.Visible := True;
  end;

  sQuery := 'SELECT A.POID,CONVERT(VARCHAR(10),A.Transdate,103) as TglSO,D.CustName,E.SalesName,'
           +'X.SaleID,X.TaxID,CONVERT(VARCHAR(10),X.TglInvoice,103) as TglInvoice,Z.GBUID,CONVERT(VARCHAR(10),Z.TglPO,103) as TglPO,Z.SuppName,Z.KonsinyasiID,'
           +'CONVERT(VARCHAR(10),Z.TglTerima,103) as TglTerima,Z.PurchaseID,Z.FPSID,CONVERT(VARCHAR(10),Z.TglBeli,103) as TglBeli,'
           +'C.ItemName,ISNULL(B.Qty,0) as Qty,ISNULL(B.Price,0) as Price,ISNULL(Z.Price,0) as Modal '
           +'FROM ARTrPurchaseOrderHd A '
           +'INNER JOIN ARTrPurchaseOrderDt B ON A.POID=B.POID '
           +'INNER JOIN INMsItem C ON B.ItemID=C.ItemID '
           +'INNER JOIN ARMsCustomer D ON A.CustID=D.CustID '
           +'INNER JOIN ARMsSales E ON A.SalesID=E.SalesID '
           +'LEFT JOIN ('
           +'  SELECT A.SaleID,A.TaxID,A.TransDate as TglInvoice,B.ItemID,A.SOID,B.Price,A.CustID '
           +'  FROM ARTrPenjualanHd A INNER JOIN ARTrPenjualanDt B ON A.SaleID=B.SaleID '
           +') X ON A.POID=X.SOID AND A.CustID=X.CustID AND B.ItemID=X.ItemID '
           +'LEFT JOIN ('
           +'  SELECT A.GBUID,A.Transdate as TglPO,C.SuppName,B.ItemID,B.Price,A.SOID,Y.KonsinyasiID,Y.TglTerima,Y.PurchaseID,Y.FPSID,Y.TglBeli FROM ARTrPenawaranHd A '
           +'  INNER JOIN ARTrPenawaranDt B ON A.GBUID=B.GBUID '
           +'  INNER JOIN APMsSupplier C ON A.CustID=C.SuppID '
           +'  LEFT JOIN ('
           +'    SELECT A.KonsinyasiID,A.TransDate as TglTerima,A.SuppID,B.ItemID,A.POID,X.PurchaseID,X.FPSID,X.TransDate as TglBeli FROM APTrKonsinyasiHd A '
           +'    INNER JOIN APTrKonsinyasiDt B ON A.KonsinyasiID=B.KonsinyasiID '
           +'    LEFT JOIN ('
           +'      SELECT A.PurchaseID,A.TransDate,A.SuppID,B.ItemID,A.KonsinyasiID,A.FPSID FROM APTrPurchaseHd A '
           +'      INNER JOIN APTrPurchaseDt B ON A.PurchaseID=B.PurchaseID '
           +'    ) X ON A.KonsinyasiID=X.KonsinyasiID AND A.SuppID=X.SuppID AND B.ItemID=X.ItemID '
           +'  ) Y ON A.GBUID=Y.POID AND B.ItemID=Y.ItemID AND A.CustID=Y.SuppID '
           +') Z ON A.POID=Z.SOID AND B.ItemID=Z.ItemID '
           +'WHERE CONVERT(VARCHAR(8),A.Transdate,112) BETWEEN '''+dari+''' AND '''+sampai+''' '
           +'ORDER BY CONVERT(VARCHAR(10),A.Transdate,112),A.POID';

  with quAct do
    begin
      if active then close;
      SQL.Text := sQuery;
//      ShowMessage(Sql.text);
      Open;
    end;
end;

procedure TfmARRptRekapSODlg.bbExcelClick(Sender: TObject);
begin
  inherited;
  if saveDlg.Execute then
    begin
      if Pos('.XLS', uppercase(saveDlg.FileName)) > 0 then
        dgrReport.SaveToXLS(saveDlg.FileName, true)
      else
        dgrReport.SaveToXLS(saveDlg.FileName + '.xls', true)
    end;
end;

procedure TfmARRptRekapSODlg.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmARRptRekapSODlg.bbExpClick(Sender: TObject);
begin
  inherited;
  dgrReport.FullExpand;
end;

procedure TfmARRptRekapSODlg.bbColpClick(Sender: TObject);
begin
  inherited;
  dgrReport.FullCollapse;
end;

procedure TfmARRptRekapSODlg.RgPeriodeClick(Sender: TObject);
begin
  inherited;
  bbRefreshClick(bbRefresh);
end;

procedure TfmARRptRekapSODlg.dsActStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly2(dgrReportPOID,TRUE);
  SetReadOnly2(dgrReportTaxID,TRUE);
  SetReadOnly2(dgrReportTglSO,TRUE);
  SetReadOnly2(dgrReportCustName,TRUE);
  SetReadOnly2(dgrReportSalesName,TRUE);
  SetReadOnly2(dgrReportSaleID,TRUE);
  SetReadOnly2(dgrReportTglInvoice,TRUE);
  SetReadOnly2(dgrReportGBUID,TRUE);
  SetReadOnly2(dgrReportTglPO,TRUE);
  SetReadOnly2(dgrReportSuppName,TRUE);
  SetReadOnly2(dgrReportKonsinyasiID,TRUE);
  SetReadOnly2(dgrReportFPSID,TRUE);
  SetReadOnly2(dgrReportTglTerima,TRUE);
  SetReadOnly2(dgrReportPurchaseID,TRUE);
  SetReadOnly2(dgrReportTglBeli,TRUE);
  SetReadOnly2(dgrReportItemName,TRUE);
  SetReadOnly2(dgrReportQty,TRUE);
  SetReadOnly2(dgrReportPrice,TRUE);
  SetReadOnly2(dgrReportModal,TRUE);
end;

end.
