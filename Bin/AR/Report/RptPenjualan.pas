unit RptPenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, ComCtrls, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxEdLib, dxEditor;

type
  TfmRptPenjualan = class(TfmRptDlg)
    GrbTanggal: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    bbRefresh: TBitBtn;
    dgrReport: TdxDBGrid;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    bbExp: TBitBtn;
    bbColp: TBitBtn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    quActSaleID: TStringField;
    quActTgl: TStringField;
    quActCustName: TStringField;
    quActItemName: TStringField;
    quActFgTax: TStringField;
    quActJual: TBCDField;
    quActPPNOut: TBCDField;
    quActModal: TBCDField;
    quActPPNIn: TBCDField;
    quActMargin: TBCDField;
    quActPPNMargin: TBCDField;
    dgrReportSaleID: TdxDBGridColumn;
    dgrReportTgl: TdxDBGridColumn;
    dgrReportCustName: TdxDBGridColumn;
    dgrReportItemName: TdxDBGridColumn;
    dgrReportFgTax: TdxDBGridColumn;
    dgrReportJual: TdxDBGridColumn;
    dgrReportPPNOut: TdxDBGridColumn;
    dgrReportModal: TdxDBGridColumn;
    dgrReportPPNIn: TdxDBGridColumn;
    dgrReportMargin: TdxDBGridColumn;
    dgrReportPPNMargin: TdxDBGridColumn;
    dgrReportSalesName: TdxDBGridColumn;
    quActSalesID: TStringField;
    quActSalesName: TStringField;
    quActTransdate: TDateTimeField;
    dgrReportTanggal: TdxDBGridColumn;
    quCalc: TADOQuery;
    quActJumlah: TIntegerField;
    quActPrice: TBCDField;
    quActKomisi: TBCDField;
    quActGP: TBCDField;
    dgrReportKomisi: TdxDBGridColumn;
    quActHKomisi: TBCDField;
    dgrReportJumlah: TdxDBGridColumn;
    dgrReportPrice: TdxDBGridColumn;
    RgPeriode: TRadioGroup;
    GrbBulan: TGroupBox;
    BitBtn1: TBitBtn;
    dxBulan: TdxImageEdit;
    dxTahun: TdxSpinEdit;
    dgrReportHKomisi: TdxDBGridColumn;
    RgOption: TRadioGroup;
    quActJatuhTempo: TDateTimeField;
    quActTotalInv: TBCDField;
    quActBayar: TBCDField;
    quActLama: TIntegerField;
    quActPOID: TStringField;
    dgrReportPOID: TdxDBGridColumn;
    dtpDari: TdxDateEdit;
    dtpSmp: TdxDateEdit;
    quActTModal: TBCDField;
    quActTKomisi: TBCDField;
    dgrReportColumn19: TdxDBGridColumn;
    dgrReportColumn20: TdxDBGridColumn;
    quActModalInvBeli: TBCDField;
    dgrReportColumn21: TdxDBGridColumn;
    dgrReportColumn22: TdxDBGridColumn;
    quActMarginAll: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure dgrReportDblClick(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbExpClick(Sender: TObject);
    procedure bbColpClick(Sender: TObject);
    procedure RgPeriodeClick(Sender: TObject);
  private
    { Private declarations }
    sQuery : string;
  public
    { Public declarations }
    SalesID : string;
    Periode1,Periode2 : TDateTime;
  end;

var
  fmRptPenjualan: TfmRptPenjualan;

implementation

{$R *.dfm}
uses UnitDate,MyUnit,UnitGeneral, ConMain, ARtrPenjualanIDR,StdLv2,PeriodDlg;

procedure TfmRptPenjualan.FormShow(Sender: TObject);
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

procedure TfmRptPenjualan.bbRefreshClick(Sender: TObject);
var dari,sampai : string;
begin
  inherited;
  if RgPeriode.ItemIndex = 0 then
  begin
    dari := FormatDateTime('yyyyMMdd',dtpDari.Date);
    sampai := FormatDateTime('yyyyMMdd',dtpSmp.Date);
    GrbTanggal.Visible := True;
    GrbBulan.Visible := False;
    dgrReportHKomisi.Visible := False;
  end else
  begin
    dari := dxTahun.Text+dxBulan.Text+'01';
    sampai := dxTahun.Text+dxBulan.Text+'31';
    GrbTanggal.Visible := False;
    GrbBulan.Visible := True;
    dgrReportHKomisi.Visible := True;
  end;

  with quCalc,Sql do
  begin
    Close;Clear;
    Add('Select ISNULL(SalesID,''-'') as SalesID FROM SysMsUser Where UserID='''+dmmain.userID+''' ');
    Open;
  End;
  SalesID := quCalc.FieldByName('SalesID').AsString;

  sQuery := 'SELECT L.*,M.SalesName,CASE WHEN L.GP > ISNULL(M.TOmzet,0) THEN L.Margin*M.Kom1*0.01 ELSE L.Margin*M.Kom2*0.01 END as HKomisi FROM( '
           +'SELECT K.*,ISNULL(Jual-TModal,0) as Margin,ISNULL(MarginInvBeli,0) as MarginAll,ISNULL(PPNOut-PPNIn,0) as PPNMargin,'
           +'(SELECT ISNULL(SUM(X.Qty*(X.Price-X.Modal)),0) FROM ARTrPenjualanDt X INNER JOIN ARTrPenjualanHd Y ON X.SaleID=Y.SaleID '
           +'WHERE Y.SalesID=K.SalesID AND CONVERT(VARCHAR(8),Y.Transdate,112) BETWEEN '''+dari+''' AND '''+sampai+''') as GP,'
           +'ISNULL((SELECT SUM(A.Amount) FROM CFTrKKBBDt A '
           +'INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID AND B.FlagKKBB IN (''ARK'',''ARB'',''ARC'') '
           +'WHERE A.RekeningID='''+sDRPj+''' AND A.Note=K.SaleID),0) as Bayar,'
           +'(SELECT TOP 1 DATEDIFF(Day,K.JatuhTempo,B.TransDate) FROM CFTrKKBBDt A '
           +'INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID AND B.FlagKKBB IN (''ARK'',''ARB'',''ARC'') '
           +'WHERE A.RekeningID='''+sDRPj+''' AND A.Note=K.SaleID ORDER BY CONVERT(VARCHAR(8),B.Transdate,112) DESC) as Lama '
           +'FROM ('
           +'SELECT ISNULL(B.POID,'''') as POID,A.SaleID,B.SalesID,CONVERT(VARCHAR(10),B.TransDate,103) as Tgl,C.CustName,D.ItemName,B.FgTax,B.Transdate,ISNULL(A.Qty,0) as Jumlah,'
           +'ISNULL(A.Price,0) as Price,ISNULL(ROUND(A.Qty*A.Price,2),0) as Jual,DATEADD(DAY,B.JatuhTempo,B.TransDate) as JatuhTempo,'
           +'ISNULL(ROUND((CASE WHEN B.FgTax=''Y'' THEN (A.Qty*A.Price)*0.1 ELSE 0 END),2),0) as PPNOut,ISNULL(ROUND(A.Modal,2),0) as Modal,ISNULL(ROUND(A.Qty*A.Modal,2),0) as TModal,'
           +'ISNULL(ROUND((A.Qty*A.Modal/(1+(B.PPNFee*0.01))*0.1),2),0) as PPNIn,ISNULL(A.Komisi,0) as Komisi,ISNULL(A.Qty*A.Komisi,0) as TKomisi,ISNULL(B.TTLPj,0) as TotalInv, '
           +'ISNULL((SELECT SUM(Y.Price) FROM ARTrPenjualanSN X INNER JOIN APTrPurchaseDtSN Y on Y.SNID=X.SNID WHERE A.SaleID=X.SaleID AND X.ItemID=A.ItemID),0) as ModalInvBeli, '
           +'ISNULL((SELECT SUM(X.Price-Y.Price) FROM ARTrPenjualanSN X INNER JOIN APTrPurchaseDtSN Y on Y.SNID=X.SNID WHERE A.SaleID=X.SaleID AND X.ItemID=A.ItemID),0) as MarginInvBeli '
           +'FROM ARTrPenjualandt A '
           +'Inner join ARTrPenjualanHd B on A.SaleID=B.SaleID '
           +'INNER JOIN ARMsCustomer C on B.CustID=C.CustID '
           +'INNER JOIN INMsItem D on A.ItemID=D.ItemID '
           +') as K '
           +') as L '
           +'INNER JOIN ARMsSales M ON L.SalesID=M.SalesID '
           +'WHERE CONVERT(VARCHAR(8),L.Transdate,112) BETWEEN '''+dari+''' AND '''+sampai+''' ';
    if RgOption.ItemIndex = 1 then
      sQuery := sQuery +' AND L.TotalInv-L.Bayar <= 0 '
    else
      if RgOption.ItemIndex = 2 then
        sQuery := sQuery +' AND L.TotalInv-L.Bayar <= 0 AND L.Lama <= 30 ';

  if (Groupuser='Marketing') then
  begin
    sQuery := sQuery
             +' AND L.SalesID='''+SalesID+''' '
             +'ORDER BY CONVERT(VARCHAR(8),L.Transdate,112),L.SaleID,L.SalesID';
  end else
  begin
    sQuery := sQuery+'ORDER BY CONVERT(VARCHAR(8),L.Transdate,112),L.SaleID,L.SalesID';
  end;

  with quAct do
    begin
      if active then close;
      SQL.Text := sQuery;
      //ShowMessage(Sql.text);
      Open;
    end;
end;

procedure TfmRptPenjualan.bbExcelClick(Sender: TObject);
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

procedure TfmRptPenjualan.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmRptPenjualan.dgrReportDblClick(Sender: TObject);
var Voucherid : string;
begin
  inherited;
  voucherid := quActSaleID.AsString;
  dmMain.FSysPrd1 := dtpDari.Date;
  dmMain.FSysPrd2 := dtpsmp.Date;

  with TfmARTrPenjualanIDR.Create (Application) do
    try
    with quMain,Sql do
    begin
      Close;Clear;
      Add(' SELECT *,'
         +' Case When FgLunas =''T''  Then ''Belum Cetak'' '
         +'          When FgLunas = ''Y'' Then ''Sudah Cetak'' '
         +'          When FgLunas = ''B'' Then ''Belum Cetak'' '
         +'          When FgLunas = ''S'' Then ''Sudah Cetak'' end as FlagLunas, '
         +' Case When FlagCounter=''C'' Then ''PENJ CONTER'' '
         +'          When FlagCounter=''L'' Then ''PENJ RETAIL'' '
         +'          When FlagCounter=''D'' Then ''PENJ DISTRIBUSI'' '
         +'          When FlagCounter=''P'' Then ''PENJ CORPORATE''  end as Status, '
         +' Case When FgTax = ''Y'' then 10 else 0 end as Pajak '
         +' FROM ARTrPenjualanHd '
         +' where saleid='''+voucherid+''' and convert(varchar(10),Transdate,112) '
         +' between '''+formatdatetime('yyyymmdd',dtpdari.Date)+''' and '''+formatdatetime('yyyymmdd',dtpsmp.Date)+''' ');
      open;
    end;
    StatusForm := 'AR';
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfmRptPenjualan.dsActStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly2(dgrReportSaleID,TRUE);
  SetReadOnly2(dgrReportTanggal,TRUE);
  SetReadOnly2(dgrReportSalesName,TRUE);
  SetReadOnly2(dgrReportCustName,TRUE);
  SetReadOnly2(dgrReportItemName,TRUE);
  SetReadOnly2(dgrReportJual,TRUE);
  SetReadOnly2(dgrReportModal,TRUE);
  SetReadOnly2(dgrReportKomisi,TRUE);
  SetReadOnly2(dgrReportJumlah,TRUE);
  SetReadOnly2(dgrReportPrice,TRUE);
  SetReadOnly2(dgrReportMargin,TRUE);
  SetReadOnly2(dgrReportHKomisi,TRUE);
  SetReadOnly2(dgrReportColumn19,TRUE);
  SetReadOnly2(dgrReportColumn20,TRUE);
  SetReadOnly2(dgrReportColumn21,TRUE);
  SetReadOnly2(dgrReportColumn22,TRUE);
  SetReadOnly2(dgrReportPOID,TRUE);
end;

procedure TfmRptPenjualan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dmMain.FSysPrd1 := Periode1;
  dmMain.FSysPrd2 := Periode2;
end;

procedure TfmRptPenjualan.bbExpClick(Sender: TObject);
begin
  inherited;
  dgrReport.FullExpand;
end;

procedure TfmRptPenjualan.bbColpClick(Sender: TObject);
begin
  inherited;
  dgrReport.FullCollapse;
end;

procedure TfmRptPenjualan.RgPeriodeClick(Sender: TObject);
begin
  inherited;
  bbRefreshClick(bbRefresh);
end;

end.
