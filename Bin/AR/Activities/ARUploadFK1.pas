unit ARUploadFK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxExEdtr, ComCtrls, StdCtrls, DB, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner, ADODB, Buttons, ExtCtrls, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore;

type
  TfmARUploadFK = class(TfmRptDlg)
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
    dgrReportColumn20: TdxDBGridColumn;
    dgrReportColumn21: TdxDBGridColumn;
    quActKODE: TIntegerField;
    quActNOTA: TStringField;
    quActA: TStringField;
    quActB: TStringField;
    quActC: TStringField;
    quActD: TStringField;
    quActE: TStringField;
    quActF: TStringField;
    quActG: TStringField;
    quActH: TStringField;
    quActI: TStringField;
    quActJ: TStringField;
    quActK: TStringField;
    quActL: TStringField;
    quActM: TStringField;
    quActN: TStringField;
    quActO: TStringField;
    quActP: TStringField;
    quActQ: TStringField;
    quActR: TStringField;
    quActS: TStringField;
    grbKartu: TGroupBox;
    Label2: TLabel;
    bbRefresh: TBitBtn;
    dtpDari: TDateTimePicker;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    bbExp: TBitBtn;
    bbColp: TBitBtn;
    quCalc: TADOQuery;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SQLbaca : string;
  end;

var
  fmARUploadFK: TfmARUploadFK;

implementation

{$R *.dfm}
uses MyUnit, UnitDate, UnitGeneral;

procedure TfmARUploadFK.bbRefreshClick(Sender: TObject);
begin
  inherited;

  SQLBaca:= ' select K.* from ( '
           +' select 1 AS KODE,'''' AS NOTA,''FK'' AS A,''KD_JENIS_TRANSAKSI'' AS B,''FG_PENGGANTI'' AS C,''NOMOR_FAKTUR'' AS D,''MASA_PAJAK'' AS E,'
           +' ''TAHUN_PAJAK'' AS F,''TANGGAL_FAKTUR'' AS G,''NPWP'' AS H,''NAMA'' AS I,''ALAMAT_LENGKAP'' AS J,''JUMLAH_DPP'' AS K,''JUMLAH_PPN'' AS L,'
           +' ''JUMLAH_PPNBM'' AS M,''ID_KETERANGAN_TAMBAHAN'' AS N,''FG_UANG_MUKA'' AS O,''UANG_MUKA_DPP'' AS P,''UANG_MUKA_PPN'' AS Q,'
           +' ''UANG_MUKA_PPNBM'' AS R,''REFERENSI'' AS S UNION ALL '
           +' SELECT 2,'''',''LT'',''NPWP'',''NAMA'',''JALAN'',''BLOK'',''NOMOR'',''RT'',''RW'',''KECAMATAN'',''KELURAHAN'',''KABUPATEN'',''PROPINSI'','
           +' ''KODE_POS'',''NOMOR_TELEPON'','''','''','''','''','''' UNION ALL '
           +' SELECT 3,'''',''OF'',''KODE_OBJEK'',''NAMA'',''HARGA_SATUAN'',''JUMLAH_BARANG'',''HARGA_TOTAL'',''DISKON'',''DPP'',''PPN'',''TARIF_PPNBM'','
           +' ''PPNBM'','''','''','''','''','''','''','''','''' UNION ALL '
           +' SELECT 4,SALEID,''FK'',''01'',''0'',REPLACE(REPLACE(TAXID,''-'',''''),''.'',''''),cast(MONTH(TRANSDATE) as varchar),'
           +' cast(YEAR(TRANSDATE) as varchar),CONVERT(VARCHAR(10),TRANSDATE,103),isnull(REPLACE(REPLACE(B.EMAIL,''-'',''''),''.'',''''),''000000000000000''),'
           +' B.CustName,B.Address,CAST(A.StPj as varchar),cast(A.PPN as varchar),''0'','''',''0'',''0'',''0'',''0'','''' FROM ARTrPenjualanHd A '
           +' INNER JOIN ARMsCustomer B ON a.CustID=B.CUSTID '
           +' WHERE CONVERT(VARCHAR(8),A.Transdate,112) = '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' UNION ALL '
           +' SELECT 4,A.SALEID,''OF'','''',B.ItemName,cast(A.Price as varchar),cast(A.Qty as varchar),cast(A.PRICE*A.QTY as varchar),''0'','
           +' cast(A.Price*A.Qty as varchar),cast(A.Price*A.Qty*0.1 as varchar),''0'',''0'','''','''','''','''','''','''','''','''' '
           +' FROM ARTRPENJUALANDT A INNER JOIN INMSITEM B ON A.ITEMID=B.ITEMID '
           +' INNER JOIN ARTrPenjualanHd C on A.SaleID=C.SaleID '
           +' WHERE CONVERT(VARCHAR(8),C.Transdate,112) = '''+FormatDateTime('yyyyMMdd',dtpDari.Date)+''' ) as K '
           +' Order by K.KODE,K.Nota,K.A ';

  with quAct do
  begin
    if active then close;
    SQL.Text := SQLBaca;
    ShowMessage(Sql.text);
    Open;
  end;

end;

procedure TfmARUploadFK.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Active := TRUE;
  dtpDari.Date := Date;
  bbRefreshClick(bbRefresh);
  dtpDari.SetFocus;
end;

procedure TfmARUploadFK.bbExcelClick(Sender: TObject);
begin
  inherited;
  if saveDlg.Execute then
    begin
      if Pos('.csv', uppercase(saveDlg.FileName)) > 0 then
        dgrReport.SaveToXLS(saveDlg.FileName, true)
      else
        dgrReport.SaveToXLS(saveDlg.FileName + '.csv', true)
    end;
end;

procedure TfmARUploadFK.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
