unit ARRptBuktiPotong;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib, dxTL, dxDBCtrl, dxDBGrid;

type
  TfmARRptBuktiPotong = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    dt1: TdxDateEdit;
    bbRefresh: TBitBtn;
    quActSaleID: TStringField;
    quActItemID: TStringField;
    quActItemName: TStringField;
    quActQty: TIntegerField;
    quActUOMID: TStringField;
    quActPrice: TBCDField;
    quActTotal: TBCDField;
    quActFgPPH: TStringField;
    quActNilaiPPH: TBCDField;
    quActPPH: TBCDField;
    quActBuktiPotong: TStringField;
    quActTglBukti: TDateTimeField;
    quActCustName: TStringField;
    quActSalesName: TStringField;
    quActTransdate: TDateTimeField;
    quActJmlBPBD: TIntegerField;
    CheckBox1: TCheckBox;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column4: TdxDBGridColumn;
    dxDBGrid1Column5: TdxDBGridColumn;
    dxDBGrid1Column6: TdxDBGridColumn;
    dxDBGrid1Column7: TdxDBGridColumn;
    dxDBGrid1Column8: TdxDBGridColumn;
    dxDBGrid1Column9: TdxDBGridColumn;
    dxDBGrid1Column10: TdxDBGridColumn;
    dxDBGrid1Column11: TdxDBGridColumn;
    dxDBGrid1Column12: TdxDBGridColumn;
    dxDBGrid1Column13: TdxDBGridColumn;
    dxDBGrid1Column14: TdxDBGridColumn;
    dxDBGrid1Column15: TdxDBGridColumn;
    dxDBGrid1Column16: TdxDBGridColumn;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    saveDlg: TSaveDialog;
    quActTaxID: TStringField;
    dxDBGrid1Column17: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshData;
  public
    { Public declarations }
  end;

var
  fmARRptBuktiPotong: TfmARRptBuktiPotong;

implementation

{$R *.dfm}

uses MyUnit, UnitGeneral, ConMain, ARRptPPHConfirm;

procedure TfmARRptBuktiPotong.RefreshData;
begin
  with quAct, SQL do
  begin
    Close;Clear;
    Add(' SELECT X.* FROM ( '
       +' SELECT K.*,CASE WHEN K.PPH<>0 THEN CASE WHEN ISNULL(K.BuktiPotong,'''')='''' THEN 1 ELSE 0 END ELSE 0 END as JmlBPBD '
       +' FROM ( '
       +' select A.SaleID,B.TaxID,A.ItemID,A.Note as ItemName,A.Qty,A.UOMID,A.Price,ISNULL(A.Qty*A.Price,0) as Total, '
       +' CASE WHEN A.FgPPH=''A'' THEN ''Rp'' ELSE ''%'' END as FgPPH,ISNULL(A.PPH,0) as NilaiPPH, '
       +' ISNULL(CASE WHEN A.FgPPH=''A'' THEN A.PPH ELSE A.Qty*A.Price*A.PPH*0.01 END,0) as PPH, '
       +' A.BuktiPotong,A.TglBukti,C.CustName,D.SalesName,B.Transdate '
       +' from ARTrPenjualanDt A '
       +' inner join ARTrPenjualanHd B on A.SaleID=B.SaleID and B.FgForm=''AR'' '
       +' inner join ARMsCustomer C on B.CustID=C.CustID '
       +' inner join ARMsSales D on B.SalesID=D.SalesID '
       +' ) as K '
       +' ) as X '
       +' WHERE X.PPH<>0 AND convert(varchar(10),X.Transdate,112) <= '''+FormatDateTime('yyyymmdd',dt1.Date)+''' ');
    if CheckBox1.Checked then
    Add(' AND X.JmlBPBD<>0 ');
    Add(' ORDER BY X.Transdate,X.SaleID,X.ItemName ');
    Open;
  end;

end;

procedure TfmARRptBuktiPotong.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date := Date;

  quAct.Open;

  bbRefreshClick(bbRefresh);
end;

procedure TfmARRptBuktiPotong.bbRefreshClick(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfmARRptBuktiPotong.dsActStateChange(Sender: TObject);
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
  SetReadOnly(dxDBGrid1Column10,TRUE);
  SetReadOnly(dxDBGrid1Column11,TRUE);
  SetReadOnly(dxDBGrid1Column12,TRUE);
  SetReadOnly(dxDBGrid1Column13,TRUE);
  SetReadOnly(dxDBGrid1Column14,TRUE);
  SetReadOnly(dxDBGrid1Column15,TRUE);
  SetReadOnly(dxDBGrid1Column16,TRUE);
  SetReadOnly(dxDBGrid1Column17,TRUE);
end;

procedure TfmARRptBuktiPotong.dxDBGrid1DblClick(Sender: TObject);
begin
  inherited;

    with TfmARRptPPHConfirm.Create(Self) do
    try
      FgForm := 'D';
      Label5.Caption := Self.quActSaleID.AsString;
      Label6.Caption := Self.quActItemID.AsString;
      if TRIM(quActTglBukti.ASString)='' then
      dt1.Date := Date
      else
      dt1.Date := Self.quActTglBukti.AsDateTime;
      Edit1.Text := Self.quActBuktiPotong.AsString;
      CheckBox1.Visible := False;
      ShowModal;
    finally
      free;
    end;
    RefreshData;

end;

procedure TfmARRptBuktiPotong.bbExcelClick(Sender: TObject);
begin
  inherited;
  if saveDlg.Execute then
  begin
    if Pos('.XLS', uppercase(saveDlg.FileName)) > 0 then
      dxDBGrid1.SaveToXLS(saveDlg.FileName, true)
    else
      dxDBGrid1.SaveToXLS(saveDlg.FileName + '.xls', true)
  end;
end;

procedure TfmARRptBuktiPotong.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
