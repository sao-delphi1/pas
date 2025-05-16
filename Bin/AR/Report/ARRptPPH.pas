unit ARRptPPH;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxCore, dxButton, dxEdLib, dxEditor, dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms;

type
  TfmARRptPPH = class(TfmRptDlg)
    quActDt: TADOQuery;
    dsActDt: TDataSource;
    quActTransdate: TDateTimeField;
    quActSaleID: TStringField;
    quActCustID: TStringField;
    quActPPH: TBCDField;
    quActJmlBPBD: TIntegerField;
    quActLSO: TStringField;
    quActLCustName: TStringField;
    quActLSTPj: TCurrencyField;
    quActLPPN: TCurrencyField;
    quActLTTLKJ: TCurrencyField;
    quCalc: TADOQuery;
    GroupBox2: TGroupBox;
    dxDateEdit1: TdxDateEdit;
    dxTahun: TdxSpinEdit;
    dxBulan: TdxImageEdit;
    GroupBox1: TGroupBox;
    dxDateEdit2: TdxDateEdit;
    dxSpinEdit1: TdxSpinEdit;
    RadioGroup1: TRadioGroup;
    bbCari: TdxButton;
    quActDtSaleID: TStringField;
    quActDtItemID: TStringField;
    quActDtItemName: TStringField;
    quActDtQty: TIntegerField;
    quActDtUOMID: TStringField;
    quActDtPrice: TBCDField;
    quActDtTotal: TBCDField;
    quActDtFgPPH: TStringField;
    quActDtNilaiPPH: TBCDField;
    quActDtPPH: TBCDField;
    quActDtBuktiPotong: TStringField;
    quActDtTglBukti: TDateTimeField;
    quActDtJmlBPBD: TIntegerField;
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
    dxDBGrid1Column13: TdxDBGridColumn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    quActBPC: TIntegerField;
    CheckBox3: TCheckBox;
    dxDBGrid1Column12: TdxDBGridColumn;
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbCariClick(Sender: TObject);
    procedure quActCalcFields(DataSet: TDataSet);
    procedure dsActStateChange(Sender: TObject);
    procedure dsActDtStateChange(Sender: TObject);
    procedure bbExitClick(Sender: TObject);
    procedure dgrReportDblClick(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure CekPeriode;
    procedure RefreshData;
  public
    { Public declarations }
    Periode : string;
  end;

var
  fmARRptPPH: TfmARRptPPH;

implementation

{$R *.dfm}

uses MyUnit, Search, ConMain, UnitGeneral, ARRptPPHConfirm;

procedure TfmARRptPPH.CekPeriode;
begin
  if RadioGroup1.ItemIndex = 0 then
  begin
    Periode := 'CONVERT(VARCHAR(10),X.Transdate,112) BETWEEN '''+dxSpinEdit1.Text+'0101'' AND '''+dxSpinEdit1.Text+'1231'' ';
  end else
  begin
    Periode := 'CONVERT(VARCHAR(10),X.Transdate,112) BETWEEN '''+dxTahun.Text+dxBulan.Text+'01'' AND '''+dxTahun.Text+dxBulan.Text+'31'' ';
  end;
end;

procedure TfmARRptPPH.RefreshData;
begin
  CekPeriode;

  with quAct,SQL do
  begin
    Close;Clear;
    Add(' SELECT DISTINCT X.* FROM ( '
       +' SELECT K.Transdate,K.SaleID,K.CustID,SUM(K.PPH) as PPH, '
       +' SUM(CASE WHEN K.PPH<>0 THEN CASE WHEN ISNULL(K.BuktiPotong,'''')='''' THEN 1 ELSE 0 END ELSE 0 END) as JmlBPBD, '
       +' SUM(CASE WHEN K.PPH<>0 THEN 1 ELSE 0 END) as BPC '
       +' FROM ( '
       +' select B.Transdate,A.SaleID,B.CustID, '
       +' CASE WHEN A.FgPPH=''A'' THEN ''Rp'' ELSE ''%'' END as FgPPH,ISNULL(A.PPH,0) as NilaiPPH, '
       +' ISNULL(CASE WHEN A.FgPPH=''A'' THEN A.PPH ELSE A.Qty*A.Price*A.PPH*0.01 END,0) as PPH, '
       +' A.BuktiPotong,A.TglBukti '
       +' from ARTrPenjualanDt A inner join ARTrPenjualanHd B on A.SaleID=B.SaleID where B.FgForm=''AR'' '
       +' ) as K '
       +' GROUP BY K.TransDate,K.SaleID,K.CustID '
       +' ) as X '
       +' WHERE X.BPC<>0 AND '+Periode);
    if CheckBox1.Checked then
    Add(' AND X.JmlBPBD<>0 ');
    Add(' ORDER BY X.Transdate ');
    Open;
  end;

  with quActDt,SQL do
  begin
    Close;Clear;
    Add(' SELECT X.* FROM ( ');
    Add(' SELECT K.*,CASE WHEN K.PPH<>0 THEN CASE WHEN ISNULL(K.BuktiPotong,'''')='''' THEN 1 ELSE 0 END ELSE 0 END as JmlBPBD FROM ( '
       +' select A.SaleID,A.ItemID,A.Note as ItemName,A.Qty,A.UOMID,A.Price,ISNULL(A.Qty*A.Price,0) as Total, '
       +' CASE WHEN A.FgPPH=''A'' THEN ''Rp'' ELSE ''%'' END as FgPPH,ISNULL(A.PPH,0) as NilaiPPH, '
       +' ISNULL(CASE WHEN A.FgPPH=''A'' THEN A.PPH ELSE A.Qty*A.Price*A.PPH*0.01 END,0) as PPH, '
       +' A.BuktiPotong,A.TglBukti '
       +' from ARTrPenjualanDt A inner join ARTrPenjualanHd B on A.SaleID=B.SaleID where B.FgForm=''AR'' '
       +' ) as K '
       +' ) as X '
       +' WHERE X.SaleID=:SaleID ');
    if CheckBox2.Checked Then
    Add(' AND X.PPH<>0 ');
    if CheckBox3.Checked Then
    Add(' AND X.JmlBPBD<>0 ');
    Add(' ORDER BY X.ItemID ');
    Open;
  end;

end;

procedure TfmARRptPPH.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  if RadioGroup1.ItemIndex = 0 then
  begin
    GroupBox1.Visible := TRUE;
    GroupBox2.Visible := FALSE;
  end else
  begin
    GroupBox2.Visible := TRUE;
    GroupBox1.Visible := FALSE;
  end;
end;

procedure TfmARRptPPH.FormShow(Sender: TObject);
begin
  inherited;
  dxSpinEdit1.Text := FormatDateTime('YYYY',Date);
  dxTahun.Text := FormatDateTime('YYYY',Date);
  dxBulan.Text := FormatDateTime('MM',Date);

  RadioGroup1Click(RadioGroup1);
  RefreshData;
end;

procedure TfmARRptPPH.bbCariClick(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfmARRptPPH.quActCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quCalc,SQL do
  begin
    Close;Clear;
    Add('SELECT CustName FROM ARMsCustomer WHERE CustID='''+quActCustID.AsString+''' ');
    Open;
  end;
  quActLCustName.AsString := quCalc.FieldByName('CustName').AsString;

  with quCalc,SQL do
  begin
    Close;Clear;
    Add('SELECT SOID,STPj-DP as STPj,TTLPj,PPN FROM ARTrPenjualanHD WHERE SaleID='''+quActSaleID.AsString+''' ');
    Open;
  end;
  quActLSO.AsString := quCalc.FieldByName('SOID').AsString;
  quActLSTPj.AsCurrency := quCalc.FieldByName('STPj').AsCurrency;
  quActLTTLKJ.AsCurrency := quCalc.FieldByName('TTLPj').AsCurrency;
  quActLPPN.AsCurrency := quCalc.FieldByName('PPN').AsCurrency;

end;

procedure TfmARRptPPH.dsActStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dgrReportColumn1,TRUE);
  SetReadOnly(dgrReportColumn2,TRUE);
  SetReadOnly(dgrReportColumn3,TRUE);
  SetReadOnly(dgrReportColumn4,TRUE);
  SetReadOnly(dgrReportColumn5,TRUE);
  SetReadOnly(dgrReportColumn6,TRUE);
  SetReadOnly(dgrReportColumn7,TRUE);
  SetReadOnly(dgrReportColumn8,TRUE);
  SetReadOnly(dgrReportColumn9,TRUE);
  SetReadOnly(dgrReportColumn10,TRUE);
end;

procedure TfmARRptPPH.dsActDtStateChange(Sender: TObject);
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
end;

procedure TfmARRptPPH.bbExitClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmARRptPPH.dgrReportDblClick(Sender: TObject);
begin
  inherited;
  with TfmARRptPPHConfirm.Create(Self) do
  try
    FgForm := 'H';
    Label5.Caption := Self.quActSaleID.AsString;
    Label2.Visible := False;
    Label4.Visible := False;
    Label6.Visible := False;
    dt1.Date := Date;
    ShowModal;
  finally
    free;
  end;
  RefreshData;
end;

procedure TfmARRptPPH.dxDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if quActDtPPH.AsCurrency=0 then
  begin
    ShowMessage('Data PPH 0 (nol) tidak perlu update Bukti Potong');
    Abort;
  end else
  begin

    with TfmARRptPPHConfirm.Create(Self) do
    try
      FgForm := 'D';
      Label5.Caption := Self.quActDtSaleID.AsString;
      Label6.Caption := Self.quActDtItemID.AsString;
      if TRIM(quActDtTglBukti.ASString)='' then
      dt1.Date := Date
      else
      dt1.Date := Self.quActDtTglBukti.AsDateTime;
      Edit1.Text := Self.quActDtBuktiPotong.AsString;
      CheckBox1.Visible := False;
      ShowModal;
    finally
      free;
    end;
    RefreshData;
  end;
end;

end.
