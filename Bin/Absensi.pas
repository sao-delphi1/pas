unit Absensi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv1, DB, dxExEdtr, dxCntner, ADODB, Buttons, dxCore,
  dxContainer, dxEditor, dxEdLib, StdCtrls, ExtCtrls, dxDBTLCl, dxGrClms,
  dxTL, dxDBCtrl, dxDBGrid, dxButton, DBCtrls;

type
  TfmAbsensi = class(TfmStdLv1)
    quMainSalesID: TStringField;
    quMainTanggal: TDateTimeField;
    quMainJamMasuk: TDateTimeField;
    quMainJamKeluar: TDateTimeField;
    TmrAbsen: TTimer;
    LblJam: TLabel;
    dbgAbsensi: TdxDBGrid;
    dbgAbsensiSalesID: TdxDBGridColumn;
    dbgAbsensiSalesName: TdxDBGridColumn;
    dbgAbsensiTanggal: TdxDBGridColumn;
    dbgAbsensiJamMasuk: TdxDBGridColumn;
    quSales: TADOQuery;
    quMainLuSalesName: TStringField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    dxButtonEdit1: TdxButtonEdit;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    dbgAbsensiJamKeluar: TdxDBGridColumn;
    quMainFgKeluar: TStringField;
    bbLaporan: TdxButton;
    bbAbsen: TdxButton;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    lbSalesName: TLabel;
    quMainFgOff: TIntegerField;
    quCalendar: TADOQuery;
    dxButtonEdit2: TdxButtonEdit;
    quMainFgProses: TStringField;
    procedure FormShow(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure TmrAbsenTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure bbAbsenClick(Sender: TObject);
    procedure bbLaporanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAbsensi: TfmAbsensi;

implementation

uses Search, MyUnit, UnitGeneral, ARQRRptAbsensi, RptLv0;

{$R *.dfm}

procedure TfmAbsensi.FormShow(Sender: TObject);
begin
  inherited;
  TmrAbsen.Enabled := TRUE;
  dxButtonEdit1.SetFocus;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT CONVERT(VARCHAR(8),getdate(),108) as Jam');
    Open;
  end;
  if quAct.FieldByName('Jam').AsString <= '15:00:00' then
  begin
    GroupBox1.Visible := True;
    GroupBox2.Visible := False;
  end else
  begin
    GroupBox1.Visible := False;
    GroupBox2.Visible := True;
  end;
  dt1.Date := Date;
  dt2.Date := Date;
  quMain.Open;
end;

procedure TfmAbsensi.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  begin
     try
       Title     := 'Karyawan';
       SQLString := ' SELECT SalesID as Kode_Karyawan, SalesName as Nama_Karyawan'
                   +' FROM ARMsSales WHERE SalesID<>''1TECH'' AND FgActive=1 ORDER BY SalesID ';
       if ShowModal = MrOk then
       begin
         dxButtonEdit1.Text :=res[0];
         lbSalesName.Caption := res[1];
         quMain.Locate('SalesID',res[0],[]);
       end;
     finally
       free;
     end;
  end;
end;

procedure TfmAbsensi.TmrAbsenTimer(Sender: TObject);
begin
  inherited;
  lblJam.Caption := FormatDateTime('dd/mmm/yyyy HH:mm:SS', now);
end;

procedure TfmAbsensi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  TmrAbsen.Enabled := FALSE;
end;

procedure TfmAbsensi.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
    if TRIM (quMainLuSalesName.Value) = '' then
    begin
      ShowMessage('Karyawan Tidak Terdaftar');
      quMain.Cancel;
      dxButtonEdit1.SetFocus;
      dxButtonEdit1.Clear;
      Abort;
    end;
end;

procedure TfmAbsensi.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  begin
     try
       Title     := 'Karyawan';
       SQLString := ' SELECT A.SalesID as Kode_Karyawan, B.SalesName as Nama_Karyawan'
                   +' FROM TrAbsensi A, ArMsSales B'
                   +' WHERE A.SalesID=B.SalesID AND convert(varchar(8),Tanggal,112) = convert(varchar(8),getdate(),112) '
                   +' ORDER BY A.SalesID ';
       if ShowModal = MrOk then
       begin
         dxButtonEdit2.Text :=res[0];
         lbSalesName.Caption := res[1];
         quMain.Locate('SalesID',res[0],[]);
       end;
     finally
       free;
     end;
  end;
end;

procedure TfmAbsensi.bbAbsenClick(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT CONVERT(VARCHAR(8),getdate(),108) as Jam');
    Open;
  end;
  if quAct.FieldByName('Jam').AsString <= '15:00:00' then
  begin
    if quMain.State = dsBrowse then
    begin
      With quAct,SQL do
      Begin
        Close;Clear;
        add('SELECT SalesId, Tanggal From TrAbsensi Where SalesId='''+dxButtonEdit1.Text+''' '+
            'and CONVERT(VARCHAR(8),Tanggal,112)='''+FormatDateTime ('yyyyMMdd',quMainTanggal.AsDateTime)+''' ');
        Open;
        If Not IsEmpty then
        Begin
          ShowMessage('Karyawan ini sudah Hadir');
          dxButtonEdit1.SetFocus;
          dxButtonEdit1.Clear;
          Abort;
        End;
      End;
      with quCalendar,SQL do
      begin
        Close;Clear;
        Add('SELECT FgOff FROM Calendar '
           +'WHERE CONVERT(VARCHAR(8),Transdate,112)='''+FormatDateTime ('yyyyMMdd',GetServerDateTime)+''' ');
        Open;
      end;

      quMain.Insert;
      quMainSalesID.AsString := dxButtonEdit1.Text;
      quMainTanggal.AsDateTime := Now;
      quMainJamMasuk.AsDateTime := Now;
      quMainFgOff.AsInteger := StrToInt(quCalendar.FieldByName('FgOff').AsString);
      quMainFgKeluar.AsString :='T';
      quMainFgProses.AsString := 'T';
      quMain.Post;
      dxButtonEdit1.Clear;
    end;
  end else
  begin
    if quMain.State = dsBrowse then
    begin
      With quAct,SQL do
      Begin
        Close;Clear;
        add('SELECT SalesId, JamKeluar FROM TrAbsensi Where SalesId='''+dxButtonEdit2.Text+''' '+
            'and CONVERT(VARCHAR(8),Tanggal,112)='''+FormatDateTime ('yyyyMMdd',quMainTanggal.AsDateTime)+''' ');
        Open;
        If quAct.FieldByName('JamKeluar').AsString <> '' then
        Begin
          ShowMessage('Karyawan ini sudah absen pulang');
          dxButtonEdit2.SetFocus;
          dxButtonEdit2.Clear;
          Abort;
        End;
      End;
      quMain.Edit;
      quMainJamKeluar.AsDateTime := Now;
      quMainFgKeluar.AsString :='Y';
      quMain.Post;
      dxButtonEdit2.Clear;
    end;
  end;
end;

procedure TfmAbsensi.bbLaporanClick(Sender: TObject);
begin
  inherited;
   with TfmARQRRptAbsensi.Create(Self) do
     try
       qrlTitle.Caption := 'LAPORAN ABSENSI KARYAWAN';
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);
       with qu001,sql do
       begin
          Close;Clear;
          add('SELECT A.SalesID+'' - ''+B.SalesName as Karyawan, CONVERT(VARCHAR(12),Tanggal,106) as Tanggal, '
             +'CASE WHEN DATENAME(WEEKDAY,Tanggal)=''Monday'' THEN ''SENIN'' '
             +'     WHEN DATENAME(WEEKDAY,Tanggal)=''Tuesday'' THEN ''SELASA'' '
             +'     WHEN DATENAME(WEEKDAY,Tanggal)=''Wednesday'' THEN ''RABU'' '
             +'     WHEN DATENAME(WEEKDAY,Tanggal)=''Thursday'' THEN ''KAMIS'' '
             +'     WHEN DATENAME(WEEKDAY,Tanggal)=''Friday'' THEN ''JUMAT'' '
             +'     WHEN DATENAME(WEEKDAY,Tanggal)=''Saturday'' THEN ''SABTU'' '
             +'     WHEN DATENAME(WEEKDAY,Tanggal)=''Sunday'' THEN ''MINGGU'' END as Hari,'
             +'CONVERT(VARCHAR(8),JamMasuk,114) as JamMasuk,CONVERT(VARCHAR(8),JamKeluar,114) as JamKeluar '
             +'FROM TrAbsensi A '
             +'INNER JOIN ArMsSales B ON A.SalesID=B.SalesID '
             +'WHERE Convert(varchar(8),Tanggal,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' '
             +'ORDER BY CONVERT(VARCHAR(8),Tanggal,112)');
          Open;
          if IsEmpty then
          begin
             MsgInfo('No Data !');
             Abort;
          end;
       end;
        MyReport.PreviewModal;

     finally
        free;
     end;
end;

end.
