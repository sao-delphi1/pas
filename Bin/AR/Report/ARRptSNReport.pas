unit ARRptSNReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxEdLib, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore,
  Menus, DBTables, dxDBTLCl, dxGrClms, dxPgsDlg, dxPrnDlg, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk;
  {dxPSPrVwAdv,} // enable for use of ExpressBars in PrintPreview

type
  TfmARRptSNReport = class(TfmRptDlg)
    GrbTanggal: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    bbRefresh: TBitBtn;
    dtpDari: TdxDateEdit;
    dtpSmp: TdxDateEdit;
    quActSaleID: TStringField;
    quActTransdate: TDateTimeField;
    quActCustID: TStringField;
    quActCustName: TStringField;
    quActSalesID: TStringField;
    quActSalesName: TStringField;
    quActSOID: TStringField;
    quActItemID: TStringField;
    quActItemName: TStringField;
    quActSNID: TStringField;
    quActPrice: TBCDField;
    quActModal: TBCDField;
    quActPOID: TStringField;
    quActTglPO: TStringField;
    quActGRNID: TStringField;
    quActTglGRN: TStringField;
    quActInvoice: TStringField;
    quActTglInv: TStringField;
    quActModalBeli: TBCDField;
    dxComponentPrinter1: TdxComponentPrinter;
    dgrReport: TdxDBGrid;
    dgrReportColumn1: TdxDBGridColumn;
    dgrReportColumn2: TdxDBGridColumn;
    dgrReportColumn3: TdxDBGridColumn;
    dgrReportColumn4: TdxDBGridColumn;
    dgrReportColumn5: TdxDBGridColumn;
    dgrReportColumn6: TdxDBGridColumn;
    dgrReportColumn7: TdxDBGridColumn;
    dgrReportColumn8: TdxDBGridColumn;
    dgrReportColumn9: TdxDBGridColumn;
    dgrReportColumn10: TdxDBGridColumn;
    dgrReportColumn11: TdxDBGridColumn;
    dgrReportColumn12: TdxDBGridColumn;
    dgrReportColumn13: TdxDBGridColumn;
    dgrReportColumn14: TdxDBGridColumn;
    dgrReportColumn15: TdxDBGridColumn;
    dgrReportColumn16: TdxDBGridColumn;
    dgrReportColumn17: TdxDBGridColumn;
    dgrReportColumn18: TdxDBGridColumn;
    dgrReportColumn19: TdxDBGridColumn;
    dxComponentPrinter1Link1: TdxDBGridReportLink;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    Label4: TLabel;
    bbExcel: TBitBtn;
    saveDlg: TSaveDialog;
    quActKomisi: TBCDField;
    quActTitipan: TBCDField;
    quActPPNFee: TBCDField;
    quActPriceInc: TBCDField;
    dgrReportColumn20: TdxDBGridColumn;
    dgrReportColumn21: TdxDBGridColumn;
    dgrReportColumn22: TdxDBGridColumn;
    dgrReportColumn23: TdxDBGridColumn;
    quActFgTax: TStringField;
    quActRate: TBCDField;
    quActModalInc: TBCDField;
    dgrReportColumn24: TdxDBGridColumn;
    dgrReportColumn25: TdxDBGridColumn;
    dgrReportColumn26: TdxDBGridColumn;
    quActFPSID: TStringField;
    dgrReportColumn27: TdxDBGridColumn;
    quActSO_Beli: TStringField;
    dgrReportColumn28: TdxDBGridColumn;
    quActAMargin: TCurrencyField;
    quActRMargin: TCurrencyField;
    dgrReportColumn29: TdxDBGridColumn;
    dgrReportColumn30: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure quActCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure RefreshData;
  public
    { Public declarations }
  end;

var
  fmARRptSNReport: TfmARRptSNReport;

implementation

{$R *.dfm}

uses MyUnit, UnitGeneral, UnitDate, Search, ConMain;

procedure TfmARRptSNReport.FormShow(Sender: TObject);
begin
  inherited;
  dtpDari.Date := EncodeDate(GetYear(Date),GetMonth(Date),1);
  dtpSmp.Date := Date;

  bbRefreshClick(bbRefresh);
end;

procedure TfmARRptSNReport.RefreshData;
begin
  with quAct,SQL do
  begin
    Close;Clear;
    Add(' SELECT B.SaleID,B.Transdate,B.CustID,H.CustName,B.SalesID,I.SalesName,B.SOID,A.ItemID,C.ItemName,A.SNID,A.Price,A.Modal, '
       +' ISNULL(D.POID,'''') as POID,ISNULL(CONVERT(VARCHAR(10),G.Transdate,111),'''') as TglPO,G.SOID as SO_Beli,ISNULL(A.PurchaseID,'''') as GRNID, '
       +' ISNULL(CONVERT(VARCHAR(10),D.Transdate,111),'''') as TglGRN,ISNULL(F.PurchaseID,'''') as Invoice,'
       +' ISNULL(CONVERT(VARCHAR(10),F.Transdate,111),'''') as TglInv,isnull(E.Price,0) as ModalBeli, '
       +' J.Komisi,ISNULL(A.Price+J.Komisi,0) as Titipan,B.PPNFee,ISNULL(A.Price+J.Komisi,0)*(1+(B.PPNFee*0.01)) as PriceInc, '
       +' F.FgTax,F.Rate,isnull(E.Price*(1+(F.Rate*0.01)),0) as ModalInc,F.FPSID '
       +' from ARTrPenjualanHd B '
       +' inner join ARMsCustomer H on B.CustID=H.CustID '
       +' inner join ARMsSales I on B.SalesID=I.SalesID '
       +' left join ARTrPenjualanSN A on A.SaleID=B.SaleID '
       +' left join INMsItem C on A.ItemID=C.ItemID '
       +' left join APTrKonsinyasiHd D on A.PurchaseID=D.KonsinyasiID '
       +' left join APTrPurchaseDtSN E on A.SNID=E.SNID AND A.ItemID=E.ItemID '
       +' left join APTrPurchaseHd F on E.PurchaseID=F.PurchaseID '
       +' left join ARTrPenawaranHd G on D.POID=G.GBUID '
       +' left join ARTrPenjualanDt J on A.itemid=J.ItemID AND B.SaleID=J.SaleID '
       +' where convert(varchar(10),b.transdate,112) between '''+FormatDateTime('yyyymmdd',dtpDari.date)+''' and '''+FormatDateTime('yyyymmdd',dtpSmp.date)+''' '
       +' order by b.transdate,b.saleid,c.itemname ');
    Open;
  end;
end;

procedure TfmARRptSNReport.bbRefreshClick(Sender: TObject);
begin
  inherited;
  RefreshData;
  dgrReport.FullExpand;
end;

procedure TfmARRptSNReport.dsActStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly2(dgrReportColumn1,TRUE);
  SetReadOnly2(dgrReportColumn2,TRUE);
  SetReadOnly2(dgrReportColumn3,TRUE);
  SetReadOnly2(dgrReportColumn4,TRUE);
  SetReadOnly2(dgrReportColumn5,TRUE);
  SetReadOnly2(dgrReportColumn6,TRUE);
  SetReadOnly2(dgrReportColumn7,TRUE);
  SetReadOnly2(dgrReportColumn8,TRUE);
  SetReadOnly2(dgrReportColumn9,TRUE);
  SetReadOnly2(dgrReportColumn10,TRUE);
  SetReadOnly2(dgrReportColumn11,TRUE);
  SetReadOnly2(dgrReportColumn12,TRUE);
  SetReadOnly2(dgrReportColumn13,TRUE);
  SetReadOnly2(dgrReportColumn14,TRUE);
  SetReadOnly2(dgrReportColumn15,TRUE);
  SetReadOnly2(dgrReportColumn16,TRUE);
  SetReadOnly2(dgrReportColumn17,TRUE);
  SetReadOnly2(dgrReportColumn18,TRUE);
  SetReadOnly2(dgrReportColumn19,TRUE);
  SetReadOnly2(dgrReportColumn20,TRUE);
  SetReadOnly2(dgrReportColumn21,TRUE);
  SetReadOnly2(dgrReportColumn22,TRUE);
  SetReadOnly2(dgrReportColumn23,TRUE);
  SetReadOnly2(dgrReportColumn24,TRUE);
  SetReadOnly2(dgrReportColumn25,TRUE);
  SetReadOnly2(dgrReportColumn26,TRUE);
  SetReadOnly2(dgrReportColumn27,TRUE);
  SetReadOnly2(dgrReportColumn28,TRUE);
  SetReadOnly2(dgrReportColumn29,TRUE);
  SetReadOnly2(dgrReportColumn30,TRUE);
end;

procedure TfmARRptSNReport.bbPreviewClick(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1Link1.Preview;
end;

procedure TfmARRptSNReport.BitBtn1Click(Sender: TObject);
begin
  inherited;
  dgrReport.ColumnsCustomizing;
end;

procedure TfmARRptSNReport.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  dgrReport.FullExpand;
end;

procedure TfmARRptSNReport.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  dgrReport.FullCollapse;
end;

procedure TfmARRptSNReport.bbExcelClick(Sender: TObject);
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

procedure TfmARRptSNReport.quActCalcFields(DataSet: TDataSet);
begin
  inherited;
  quActAMargin.AsCurrency := quActPrice.AsCurrency-quActModal.AsCurrency;

  if (TRIM(quActInvoice.AsString)='') then
  quActRMargin.AsCurrency := 0
  else
  quActRMargin.AsCurrency := quActPrice.AsCurrency-quActModalBeli.AsCurrency;
end;

end.
