unit ARUploadFK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxExEdtr, ComCtrls, StdCtrls, DB, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner, ADODB, Buttons, ExtCtrls, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore, ShellApi,
  dxEditor, dxEdLib;

type
  TfmARUploadFK = class(TfmRptDlg)
    dgrReport: TdxDBGrid;
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
    grbKartu: TGroupBox;
    Label2: TLabel;
    bbRefresh: TBitBtn;
    saveDlg: TSaveDialog;
    dxReport: TdxComponentPrinter;
    bbExp: TBitBtn;
    bbColp: TBitBtn;
    quCalc: TADOQuery;
    bbExcel: TBitBtn;
    bbCancel: TBitBtn;
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
    RadioGroup1: TRadioGroup;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Edit1: TEdit;
    dt1: TdxDateEdit;
    Label3: TLabel;
    dt2: TdxDateEdit;
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
uses MyUnit, UnitDate, UnitGeneral, COnMain;

procedure ShowFolder(strFolder: string);
begin                         //uses ny sistem tambahin ShellApi
  ShellExecute(Application.Handle,
    PChar('explore'),
    PChar(strFolder),
    nil,
    nil,
    SW_SHOWNORMAL);
end;

procedure TfmARUploadFK.bbRefreshClick(Sender: TObject);
begin
  inherited;

  SQLBaca:= ' select A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S from ( '
           +' select 1 AS KODE,'''' AS NOTA,''FK'' AS A,''KD_JENIS_TRANSAKSI'' AS B,''FG_PENGGANTI'' AS C,''NOMOR_FAKTUR'' AS D,''MASA_PAJAK'' AS E,'
           +' ''TAHUN_PAJAK'' AS F,''TANGGAL_FAKTUR'' AS G,''NPWP'' AS H,''NAMA'' AS I,''ALAMAT_LENGKAP'' AS J,''JUMLAH_DPP'' AS K,''JUMLAH_PPN'' AS L,'
           +' ''JUMLAH_PPNBM'' AS M,''ID_KETERANGAN_TAMBAHAN'' AS N,''FG_UANG_MUKA'' AS O,''UANG_MUKA_DPP'' AS P,''UANG_MUKA_PPN'' AS Q,'
           +' ''UANG_MUKA_PPNBM'' AS R,''REFERENSI'' AS S UNION ALL '

           +' SELECT 2,'''',''LT'',''NPWP'',''NAMA'',''JALAN'',''BLOK'',''NOMOR'',''RT'',''RW'',''KECAMATAN'',''KELURAHAN'',''KABUPATEN'',''PROPINSI'','

           +' ''KODE_POS'',''NOMOR_TELEPON'','''','''','''','''','''' UNION ALL '
           +' SELECT 3,'''',''OF'',''KODE_OBJEK'',''NAMA'',''HARGA_SATUAN'',''JUMLAH_BARANG'',''HARGA_TOTAL'',''DISKON'',''DPP'',''PPN'',''TARIF_PPNBM'','
           +' ''PPNBM'','''','''','''','''','''','''','''','''' UNION ALL '

           +' SELECT 4,SALEID,''FK'',ISNULL(B.KodeFP,''01''),ISNULL(A.KodeFg,''0''),REPLACE(REPLACE(TAXID,''-'',''''),''.'',''''),cast(MONTH(TRANSDATE) as varchar),'
           +' cast(YEAR(TRANSDATE) as varchar),CONVERT(VARCHAR(10),TRANSDATE,103),isnull(REPLACE(REPLACE(B.EMAIL,''-'',''''),''.'',''''),''000000000000000''),'
           +' REPLACE(REPLACE(B.CustName,'''''''',''''),'','','' ''),REPLACE(REPLACE(REPLACE(B.Address,'','','' ''),char(13),'' ''),char(10),'' ''),'
           +' CAST(FLOOR(A.StPj) as varchar),cast(FLOOR(A.PPN) as varchar),''0'','''',''0'',''0'',''0'',''0'',A.SaleID '
           +' FROM ARTrPenjualanHd A '
           +' INNER JOIN ARMsCustomer B ON a.CustID=B.CUSTID '
           +' WHERE CONVERT(VARCHAR(8),A.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' '
           +' AND A.FgForm=''AR'' ';
   if CheckBox1.Checked then
   SQLBaca:= SQLBaca +' AND ISNULL(A.TAXID,'''')<>'''' ';
   if RadioGroup1.ItemIndex=1 then
   SQLBaca:= SQLBaca +' AND ISNULL(A.FgUpload,''Y'')=''Y'' ';
   if RadioGroup1.ItemIndex=2 then
   SQLBaca:= SQLBaca +' AND ISNULL(A.FgUpload,''Y'')=''T'' ';
   SQLBaca:= SQLBaca +' UNION ALL '
                     +' SELECT 4,A.SALEID,''OF'','''',REPLACE(REPLACE(B.ItemName,'''''''',''''),'','','' ''),cast(A.Price as varchar),cast(A.Qty as varchar),'
                     +' cast(A.PRICE*A.QTY as varchar),''0'','
                     +' cast(A.Price*A.Qty as varchar),cast(A.Price*A.Qty*0.1 as varchar),''0'',''0'','''','''','''','''','''','''','''','''' '
                     +' FROM ARTRPENJUALANDT A INNER JOIN INMSITEM B ON A.ITEMID=B.ITEMID '
                     +' INNER JOIN ARTrPenjualanHd C on A.SaleID=C.SaleID AND C.FgForm=''AR'' ';
   if CheckBox1.Checked then
   SQLBaca:= SQLBaca +' AND ISNULL(C.TAXID,'''')<>'''' ';
   if RadioGroup1.ItemIndex=1 then
   SQLBaca:= SQLBaca +' AND ISNULL(C.FgUpload,''Y'')=''Y'' ';
   if RadioGroup1.ItemIndex=2 then
   SQLBaca:= SQLBaca +' AND ISNULL(C.FgUpload,''Y'')=''T'' ';
   SQLBaca:= SQLBaca +' WHERE CONVERT(VARCHAR(8),C.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' '
                     +' ) as K '
                     +' Order by K.KODE,K.Nota,K.A ';

  with quAct do
  begin
    if active then close;
    SQL.Text := SQLBaca;
    //ShowMessage(Sql.text);
    Open;
  end;


end;

procedure TfmARUploadFK.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Active := TRUE;
  dt1.Date := Date;
  dt2.Date := Date;

  bbRefreshClick(bbRefresh);
  dt1.SetFocus;
end;

procedure TfmARUploadFK.bbExcelClick(Sender: TObject);
var
  Stream: TFileStream;
  i: Integer;
  OutLine: string;
  sTemp: string;
  Lokasi, namaFile, Tujuan : string;
  jumfile : integer;
begin
  bbRefreshClick(bbRefresh);

  if (Edit1.Text<>';') and (Edit1.Text<>',') then
  begin
    ShowMessage('Jenis Separator salah. hanya semicolon (;) atau comma (,) yang dapat digunakan ');
    Edit1.SetFocus;
    Abort;
  end;

  if RadioGroup1.ItemIndex<>2 then
  begin
    ShowMessage('Generate CSV untuk FP hanya berlaku untuk yang Invoice belum di Upload');
    RadioGroup1.SetFocus;
    Abort;
  end;

  if CheckBox1.Checked = False then
  begin
    ShowMessage('Generate CSV untuk FP hanya berlaku untuk yang Invoice yang memiliki no FPS');
    CheckBox1.SetFocus;
    Abort;
  end;

  Lokasi := ExtractFileDir(Application.ExeName)+'\';
  namaFile := 'PENJUALAN'+FormatDateTime('YYYYMMDD',Date);
  Tujuan := namaFile+'.csv';
  jumfile := 0;
  while FileExists(Lokasi + Tujuan) do
  begin
       inc(jumfile);
       Tujuan := namaFile + '_' + inttostr(jumfile)+'.csv';
  end;

  Stream := TFileStream.Create(Lokasi+Tujuan, fmCreate);
  try
    while not quAct.Eof do
    begin
      OutLine := '';
      for i := 0 to quAct.FieldCount - 1 do
      begin
        sTemp := quACT.Fields[i].AsString;

        OutLine := OutLine + sTemp + Edit1.Text;
      end;

      SetLength(OutLine, Length(OutLine) - 1);
      Stream.Write(OutLine[1], Length(OutLine) * SizeOf(Char));
      Stream.Write(sLineBreak, Length(sLineBreak));
      quAct.Next;
    end;
  finally
    Stream.Free;  // Saves the file
  end;

  with quCalc,SQL do
  begin
    Close;Clear;
    Add(' Update ARTrPenjualanHD Set FgUpload=''Y'' ');
    Add(' Where SaleID IN (Select SaleID FRom ARtrPenjualanHD Where ISNULL(TaxID,'''')<>'''' and ISNULL(FgUpload,''Y'')=''T'' '
       +' AND CONVERT(varchar(10),Transdate,112) BETWEEN '''+formatdatetime('yyyymmdd',dt1.date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''') ');
    ExecSQL;
  end;

  ShowMessage('File CSV created at '+Lokasi+Tujuan);
  bbRefreshClick(bbRefresh);
  ShowFolder(ExtractFileDir(Application.ExeName));
end;

procedure TfmARUploadFK.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.


