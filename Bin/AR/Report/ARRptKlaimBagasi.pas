unit ARRptKlaimBagasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib, dxTL, dxDBCtrl, dxDBGrid;

type
  TfmARRptKlaimBagasi = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label3: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    RadioGroup1: TRadioGroup;
    GroupBox2: TGroupBox;
    dt3: TdxDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    quActTransdate: TDateTimeField;
    quActTransID: TStringField;
    quActSalesID: TStringField;
    quActSalesName: TStringField;
    quActTotal: TBCDField;
    quActUP: TStringField;
    quActBank: TStringField;
    quActCabang: TStringField;
    quActRekening: TStringField;
    quActNama: TStringField;
    quActStatusOto: TStringField;
    quActOtoBy: TStringField;
    quActOtoDate: TDateTimeField;
    quActBayar: TBCDField;
    quActSisa: TBCDField;
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
    CheckBox1: TCheckBox;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    saveDlg: TSaveDialog;
    quCalc: TADOQuery;
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure dgrReportDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshData;
  public
    { Public declarations }
  end;

var
  fmARRptKlaimBagasi: TfmARRptKlaimBagasi;

implementation

uses MyUnit, UnitGeneral, ConMain, UnitDate, Search;
{$R *.dfm}

procedure TfmARRptKlaimBagasi.RefreshData;
begin
  with quAct,SQL do
  begin
    Close;Clear;
    Add('select *,K.Total-K.Bayar as Sisa from ( '
       +'select A.Transdate,A.TransID,B.SalesID,B.SalesName,A.Total,A.UP,A.Bank,A.Cabang,A.Rekening,A.Nama, '
       +'CASE WHEN A.FgOto=''W'' THEN ''NOT SUBMITTED'' '
       +'     WHEN A.FgOto=''T'' THEN ''SUBMITTED'' '
       +'     WHEN A.FgOto=''X'' THEN ''REJECTED'' '
       +'     ELSE ''APPROVED'' END as StatusOto,A.OtoBy,A.OtoDate, '
       +'     ISNULL((SELECT SUM(X.Amount) FROM CFTrKKBBDT X Where X.Note=A.TransID),0) as Bayar '
       +'from ARTrKlaimBagasiHd A inner join ARMsSales B on A.SalesID=B.SalesID '
       +') as K ');
    if RadioGroup1.ItemIndex=0 then
    begin
    Add('WHERE convert(varchar(10),K.transdate,112) between '''+FormatDatetime('yyyymmdd',dt1.date)+''' and '''+FormatDatetime('yyyymmdd',dt2.date)+''' ');
    if FGOtoBagasi='T' then
    Add('AND K.SalesID='''+MySalesID+''' ');
    Add('ORDER BY Transdate ');
    end;
    if RadioGroup1.ItemIndex=1 then
    begin
    Add('WHERE convert(varchar(10),K.transdate,112) <= '''+FormatDatetime('yyyymmdd',dt2.date)+''' ');
    if CheckBox1.Checked then
    Add('AND K.Total-K.Bayar > 0 ');
    Add('ORDER BY Transdate ');
    end;
    Open;
  end;
end;

procedure TfmARRptKlaimBagasi.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  if RadioGroup1.ItemIndex=0 then
  begin
    GroupBox1.Visible := TRUE;
    GroupBox2.Visible := FALSE;
    dgrReportColumn6.Visible := False;
    dgrReportColumn7.Visible := False;
    dgrReportColumn8.Visible := True;
    dgrReportColumn9.Visible := False;
    dgrReportColumn10.Visible := False;
    dgrReportColumn11.Visible := False;
    dgrReportColumn12.Visible := False;
    dgrReportColumn13.Visible := True;
    dgrReportColumn14.Visible := True;
    dgrReportColumn15.Visible := True;
    CheckBox1.Visible := False;
  end else
  begin
    GroupBox1.Visible := FALSE;
    GroupBox2.Visible := TRUE;
    dgrReportColumn6.Visible := True;
    dgrReportColumn7.Visible := True;
    dgrReportColumn8.Visible := False;
    dgrReportColumn9.Visible := True;
    dgrReportColumn10.Visible := True;
    dgrReportColumn11.Visible := True;
    dgrReportColumn12.Visible := True;
    dgrReportColumn13.Visible := False;
    dgrReportColumn14.Visible := False;
    dgrReportColumn15.Visible := False;
    CheckBox1.Visible := TRUE;
  end;
  RefreshData;
end;

procedure TfmARRptKlaimBagasi.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;

  dt1.Date := EncodeDate(getYear(Date),GetMonth(Date),1);
  dt2.Date := Date;
  dt3.Date := Date;

  If FGOtoBagasi='T' then
  SetReadOnly(RadioGroup1,TRUE);

  RadioGroup1Click(RadioGroup1);
end;

procedure TfmARRptKlaimBagasi.dsActStateChange(Sender: TObject);
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
end;

procedure TfmARRptKlaimBagasi.BitBtn2Click(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfmARRptKlaimBagasi.BitBtn1Click(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfmARRptKlaimBagasi.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmARRptKlaimBagasi.bbExcelClick(Sender: TObject);
begin
  inherited;
  if saveDlg.Execute then
  begin
    if Pos('.XLS', uppercase(saveDlg.FileName)) > 0 then
      dgrReport.SaveToXLS(saveDlg.FileName, true)
    else
      dgrReport.SaveToXLS(saveDlg.FileName + '.xls', true);
  end;
end;

procedure TfmARRptKlaimBagasi.dgrReportDblClick(Sender: TObject);
var DetailPesan : string;
begin
  inherited;
  if (RadioGroup1.ItemIndex=1) and (GroupUser='admin') then
  begin
    with quCalc,SQL do
    begin
      Close;Clear;
      Add('select convert(varchar(10),Y.Transdate,103) as Tanggal,X.VoucherID,X.Amount,ISNULL(Y.BankID,''KAS'') as FgBBKK '
         +'FROM CFTrKKBBDT X inner join CFTrKKBBHd Y on X.VoucherID=Y.VoucherID WHERE X.Note='''+quActTransID.AsString+''' ');
      Open;
    end;
    while not quCalc.Eof do
    begin
      DetailPesan := DetailPesan +
                     quCalc.FieldByName('Tanggal').AsString+' '+quCalc.FieldByName('VoucherID').AsString+' '+
                     quCalc.FieldByName('FgBBKK').AsString+' '+FormatRptKurung(quCalc.FieldByName('Amount').AsString)+' '+char(13);

      quCalc.Next;
    end;

    ShowMessage(DetailPesan);
  end;
end;

end.
