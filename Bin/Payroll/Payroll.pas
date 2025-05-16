unit Payroll;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv41, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL,
  dxDBCtrl, dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls,
  Buttons, dxCore, dxContainer, dxEditor, dxDBELib, DBCtrls,DateUtils,
  dxDBTLCl, dxGrClms;

type
  TfmPayroll = class(TfmStdLv41)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dxDBEdit1: TdxDBEdit;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    DBText3: TDBText;
    Label11: TLabel;
    DBText4: TDBText;
    dbgKaryawan: TdxDBGrid;
    Label5: TLabel;
    quDetilPayrollID: TStringField;
    quDetilSalesID: TStringField;
    quSales: TADOQuery;
    quDetilLTglGabung: TDateField;
    quDetilLJabatan: TStringField;
    quDetilOmzetPenjualan: TFloatField;
    quDetilKasBon: TFloatField;
    quDetilLSalesName: TStringField;
    dbgKaryawanSalesID: TdxDBGridColumn;
    dbgKaryawanLSalesName: TdxDBGridColumn;
    dbgKaryawanLJabatan: TdxDBGridColumn;
    dbgKaryawanLTglGabung: TdxDBGridColumn;
    dbgKaryawanLUangBulanan: TdxDBGridColumn;
    dbgKaryawanLUangMakan: TdxDBGridColumn;
    dbgKaryawanKasBon: TdxDBGridColumn;
    dbgKaryawanOmzetPenjualan: TdxDBGridColumn;
    quCalc: TADOQuery;
    dbgAbsen: TdxDBGrid;
    Label6: TLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    cbBulan: TDBComboBox;
    seTahun: TdxDBSpinEdit;
    dxDBEdit2: TdxDBEdit;
    quDetilJmlHrKerja: TIntegerField;
    quDetilAlpa: TIntegerField;
    quDetilSakit: TIntegerField;
    quDetilCuti: TIntegerField;
    quDetilTelat: TIntegerField;
    quDetilTotalUangMakan: TFloatField;
    quDetilTotalPendapatan: TFloatField;
    dbgAbsenJmlHrKerja: TdxDBGridColumn;
    dbgAbsenAlpa: TdxDBGridColumn;
    dbgAbsenSakit: TdxDBGridColumn;
    dbgAbsenCuti: TdxDBGridColumn;
    dbgAbsenTelat: TdxDBGridColumn;
    dbgAbsenByrKasBon: TdxDBGridColumn;
    dbgAbsenTotalPendapatan: TdxDBGridColumn;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    quTambahan: TADOQuery;
    quAct1: TADOQuery;
    quDetilUangKerajinan: TFloatField;
    dbgAbsenKerajinan: TdxDBGridColumn;
    DBText1: TDBText;
    dbgPiutang: TdxDBGrid;
    Label7: TLabel;
    dbgPiutangPayrollID: TdxDBGridMaskColumn;
    dbgPiutangSalesID: TdxDBGridMaskColumn;
    dbgPiutangUpdDate: TdxDBGridDateColumn;
    dbgPiutangUpdUser: TdxDBGridMaskColumn;
    dbgPiutangValueTotal: TdxDBGridColumn;
    dbgPiutangValuePayment: TdxDBGridColumn;
    dbgPiutangVoucherID: TdxDBGridButtonColumn;
    quDetilGajiPokok: TBCDField;
    quDetilUangMakan: TBCDField;
    quPiutang: TADOQuery;
    dsPiutang: TDataSource;
    quPiutangPayrollID: TStringField;
    quPiutangSalesID: TStringField;
    quPiutangVoucherID: TStringField;
    quPiutangValueTotal: TBCDField;
    quPiutangValuePayment: TBCDField;
    quPiutangUpdDate: TDateTimeField;
    quPiutangUpdUser: TStringField;
    quPiutangCTgl: TDateField;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    bbTambah: TdxButton;
    bbHapus: TdxButton;
    bbSimpan: TdxButton;
    bbBatal: TdxButton;
    quTotal: TADOQuery;
    dsTotal: TDataSource;
    quTotalTotal: TBCDField;
    DBText2: TDBText;
    DBText5: TDBText;
    lbKaryawan: TLabel;
    Label8: TLabel;
    DBText6: TDBText;
    quTotalGaji: TADOQuery;
    dsTotalGaji: TDataSource;
    dxButton3: TdxButton;
    quTotalTotalBayar: TBCDField;
    quMainPayrollID: TStringField;
    quMainTransdate: TDateTimeField;
    quMainBulan: TStringField;
    quMainTahun: TStringField;
    quMainNote: TStringField;
    quMainFgProses: TStringField;
    quMainUpdUser: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainTTLPayroll: TBCDField;
    quMainStatus: TStringField;
    quDetilLHrKerja: TFloatField;
    dbgAbsenHrKerja: TdxDBGridColumn;
    quDetilLRajin: TFloatField;
    quDetilHrLibur: TIntegerField;
    dbgAbsenHrLibur: TdxDBGridColumn;
    quDetilHrKerja: TIntegerField;
    quDetilRajin: TIntegerField;
    quTotalGajiTotalGaji: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure dxDBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dsDetilStateChange(Sender: TObject);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure dxButton2Click(Sender: TObject);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure dxButton1Click(Sender: TObject);
    procedure quMainBeforeEdit(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure dsPiutangStateChange(Sender: TObject);
    procedure quPiutangNewRecord(DataSet: TDataSet);
    procedure quPiutangCalcFields(DataSet: TDataSet);
    procedure quPiutangBeforePost(DataSet: TDataSet);
    procedure dbgPiutangVoucherIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quPiutangBeforeDelete(DataSet: TDataSet);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure bbTambahClick(Sender: TObject);
    procedure bbHapusClick(Sender: TObject);
    procedure bbSimpanClick(Sender: TObject);
    procedure bbBatalClick(Sender: TObject);
    procedure bbSimpanDetilKeyPress(Sender: TObject; var Key: Char);
    procedure quPiutangAfterPost(DataSet: TDataSet);
    procedure dxButton3Click(Sender: TObject);
  private
    { Private declarations }
    Procedure CekStatus;
    Procedure CekKasbon;
    Procedure CariKasbon;
  public
    { Public declarations }
  end;

var
  fmPayroll: TfmPayroll;

implementation

uses MyUnit, ConMain, UnitGeneral, Search, StdLv1, StdLv3, UnitDate,
  PayRollQRRptSlipGaji, RptLv0, Allitem, RptGLTrKMKK, StdLv0,
  QRRptRincianPayroll;

{$R *.dfm}

Procedure TfmPayroll.CekStatus;
Begin //cek apakah sudah diproses kalo sudah ada tidak bisa di utak atik
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT FgProses FROM PayrollHD WHERE PayrollID='''+quMainPayrollID.AsString+''' ');
    Open;
  end;
  if quAct.FieldByName('FgProses').AsString= 'Y' then
  begin
    ShowMessage('Transaksi ini sudah diproses tidak bisa di ubah lagi');
    Abort;
  end;
End;

Procedure TfmPayroll.CariKasBon;
Begin //Buat cari transaksi Pinjaman
  with TfmSearch.Create(self) do
    try
       Title := 'Bukti Pinjaman';
       SQLString := ' SELECT A.VoucherID, CONVERT(VARCHAR(10),Transdate,103) as Tgl, '
                   +' (SELECT ISNULL(SUM(ValuePayment),0) FROM CFTrPiutangInternalDt A WHERE A.VoucherID=B.VoucherID)+ '
                   +' (SELECT ISNULL(SUM(ValuePayment),0) FROM PayrollKasBon A WHERE A.VoucherID=B.VoucherID) as Total_Bayar, '
                   +' ISNULL(A.Amount,0) as Total_Pinjaman, ISNULL(Amount- '
                   +' (SELECT ISNULL(SUM(ValuePayment),0) FROM CFTrPiutangInternalDt A WHERE A.VoucherID=B.VoucherID)- '
                   +' (SELECT ISNULL(SUM(ValuePayment),0) FROM PayrollKasBon A WHERE A.VoucherID=B.VoucherID),0) as Sisa '
                   +' FROM CFTrKKBBDt A INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID WHERE B.FlagKKBB IN (31,32) AND '
                   +' CONVERT(VARCHAR(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',quMainTransDate.AsDateTime)+''' AND ISNULL(Amount- '
                   +' (SELECT ISNULL(SUM(ValuePayment),0) FROM CFTrPiutangInternalDt A WHERE A.VoucherID=B.VoucherID)- '
                   +' (SELECT ISNULL(SUM(ValuePayment),0) FROM PayrollKasBon A WHERE A.VoucherID=B.VoucherID),0)<>0 AND B.Actor='''+quDetilSalesID.AsString+''' ';
       if ShowModal = MrOK then
       begin
          if quPiutang.State = dsBrowse then quPiutang.Edit;
             quPiutangVoucherID.Value := Res[0];
             quPiutangValueTotal.AsString := Res[3];
             quPiutangValuePayment.AsString := Res[4];
       end;
    finally
       Free;
    end;
End;

Procedure TfmPayroll.CekKasBon;
Begin //cek apakah ada pembayaran kas bon kalo ada tidak bisa di utak atik
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT TOP 1 PayrollID FROM PayrollKasbon WHERE PayrollID='''+quMainPayrollID.AsString+''' AND SalesID='''+quDetilSalesID.AsString+''' ');
    Open;
    if not IsEmpty then
    begin
      ShowMessage('Sudah ada Pembayaran Piutang, Tidak bisa hapus/delete lagi');
      Abort;
    end;
  end;
End;

procedure TfmPayroll.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),Transdate,112), PayrollID';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dbgKaryawan);
  SettingDxGrid(dbgPiutang);
  inherited;
  quMain.Active  := TRUE;
  quDetil.Active := TRUE;
  quPiutang.Active := TRUE;
  quTotal.Active := TRUE;
  quTotalGaji.Active := TRUE;
end;

procedure TfmPayroll.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;
  if Trim(quMainTransdate.AsString)='' then
  begin
    ShowMessage('Tanggal transaksi belum diset');
    quMainTransdate.FocusControl;
    Abort;
  end;

  if quMain.State=dsInsert then
  Begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT Bulan,Tahun FROM PayrollHD WHERE Bulan='''+quMainBulan.AsString+''' AND Tahun='''+quMainTahun.AsString+''' ');
      Open;
      if Not IsEmpty then
      begin
        ShowMessage('Untuk bulan '+quMainBulan.AsString+'-'+quMainTahun.AsString+' Sudah diproses');
        quMainBulan.FocusControl;
        Abort;
      end;
    end;
    ST := 'PROLL/'+PT+ FormatDateTime('/YY/', quMainTransDate.AsDateTime);
    quMainPayrollID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'PayrollHD', 'PayrollID', ST, '0') + 1);
  End;

  quMainUpdDate.AsDateTime := GetServerDateTime;
  quMainUpdUser.AsString := dmMain.UserId;
end;
procedure TfmPayroll.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBDateEdit1,quMain.State<>dsInsert);
  SetReadOnly(cbBulan,quMain.State<>dsInsert);
  SetReadOnly(seTahun,quMain.State<>dsInsert);
end;

procedure TfmPayroll.dxDBDateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmPayroll.quMainNewRecord(DataSet: TDataSet);
var Bulan : String;
begin
  inherited;
  quMainTransdate.FocusControl;
  quMainTransdate.AsDateTime := Date;
  quMainFgProses.AsString := 'T';
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT CONVERT(VARCHAR(4),getdate(),112) as Tahun, '
       +'LEFT(RIGHT(CONVERT(VARCHAR(8),getdate(),112),4),2) as Bulan');
    Open;
  end;
  quMainTahun.AsString := quAct.FieldByName('Tahun').AsString;
  Bulan := quAct.FieldByName('Bulan').AsString;
  if Bulan = '01' then quMainBulan.AsString := 'JANUARI';
  if Bulan = '02' then quMainBulan.AsString := 'FEBUARI';
  if Bulan = '03' then quMainBulan.AsString := 'MARET';
  if Bulan = '04' then quMainBulan.AsString := 'APRIL';
  if Bulan = '05' then quMainBulan.AsString := 'MEI';
  if Bulan = '06' then quMainBulan.AsString := 'JUNI';
  if Bulan = '07' then quMainBulan.AsString := 'JULI';
  if Bulan = '08' then quMainBulan.AsString := 'AGUSTUS';
  if Bulan = '09' then quMainBulan.AsString := 'SEPTEMBER';
  if Bulan = '10' then quMainBulan.AsString := 'OKTOBER';
  if Bulan = '11' then quMainBulan.AsString := 'NOVEMBER';
  if Bulan = '12' then quMainBulan.AsString := 'DESEMBER';
end;

procedure TfmPayroll.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgKaryawanSalesID,TRUE);
  SetReadOnly(dbgKaryawanLSalesName,TRUE);
  SetReadOnly(dbgKaryawanLJabatan,TRUE);
  SetReadOnly(dbgKaryawanLTglGabung,TRUE);
  SetReadOnly(dbgKaryawanLUangBulanan,TRUE);
  SetReadOnly(dbgKaryawanLUangMakan,TRUE);
  SetReadOnly(dbgKaryawanKasBon,TRUE);
  SetReadOnly(dbgKaryawanOmzetPenjualan,TRUE);
  SetReadOnly(dbgAbsenHrKerja,TRUE);
  SetReadOnly(dbgAbsenJmlHrKerja,TRUE);
  SetReadOnly(dbgAbsenHrLibur,TRUE);
end;

procedure TfmPayroll.quMainAfterPost(DataSet: TDataSet);
var dari,sampai : string;
    JmlKerja,HrKerja,JmlTelat,JmlLibur,Rajin,Alpa : Integer;
begin
  inherited;
  CekKasbon;
   with quAct1,SQL do
   begin
      Close;Clear;
      Add('SELECT BULAN,Tahun, CASE WHEN Bulan=''JANUARI'' THEN ''1226'' '
         +'                         WHEN Bulan=''FEBUARI'' THEN ''0126'' '
         +'                         WHEN Bulan=''MARET'' THEN ''0226'' '
         +'                         WHEN Bulan=''APRIL'' THEN ''0326'' '
         +'                         WHEN Bulan=''MEI'' THEN ''0426'' '
         +'                         WHEN Bulan=''JUNI'' THEN ''0526'' '
         +'                         WHEN Bulan=''JULI'' THEN ''0626'' '
         +'                         WHEN Bulan=''AGUSTUS'' THEN ''0726'' '
         +'                         WHEN Bulan=''SEPTEMBER'' THEN ''0826'' '
         +'                         WHEN Bulan=''OKTOBER'' THEN ''0926'' '
         +'                         WHEN Bulan=''NOVEMBER'' THEN ''1026'' '
         +'                         WHEN Bulan=''DESEMBER'' THEN ''1126'' END as Dari, '
         +'                    CASE WHEN Bulan=''JANUARI'' THEN ''0125'' '
         +'                         WHEN Bulan=''FEBUARI'' THEN ''0225'' '
         +'                         WHEN Bulan=''MARET'' THEN ''0325'' '
         +'                         WHEN Bulan=''APRIL'' THEN ''0425'' '
         +'                         WHEN Bulan=''MEI'' THEN ''0525'' '
         +'                         WHEN Bulan=''JUNI'' THEN ''0625'' '
         +'                         WHEN Bulan=''JULI'' THEN ''0725'' '
         +'                         WHEN Bulan=''AGUSTUS'' THEN ''0825'' '
         +'                         WHEN Bulan=''SEPTEMBER'' THEN ''0925'' '
         +'                         WHEN Bulan=''OKTOBER'' THEN ''1025'' '
         +'                         WHEN Bulan=''NOVEMBER'' THEN ''1125'' '
         +'                         WHEN Bulan=''DESEMBER'' THEN ''1225'' END as Sampai, '
         +'CASE WHEN Bulan=''JANUARI'' THEN Tahun-1 ELSE Tahun END as TahunAwal '
         +'FROM PayrollHD WHERE PayrollID='''+quMainPayrollID.AsString+''' ');
      Open;
   end;
   dari := quAct1.FieldByName('TahunAwal').AsString+quAct1.FieldByName('Dari').AsString;
   sampai := quAct1.FieldByName('Tahun').AsString+quAct1.FieldByName('Sampai').AsString;  with quAct,SQL do
   with quAct,SQL do
   begin
     Close;Clear;
     Add('DELETE FROM PayrollDT WHERE PayrollID='''+quMainPayrollID.AsString+''' ');
     ExecSQL;
   end;
   with quAct,SQL do
   begin
     Close;Clear;
     Add('INSERT PayrollDT (PayrollID,SalesID,Sakit,Cuti,UangMakan,GajiPokok) '
        +'SELECT '''+quMainPayrollID.AsString+''',SalesID,0,0,UangMakan,UangBulanan FROM ARMsSales '
        +'WHERE FgActive=1 ORDER BY SalesID');
     ExecSQL;
   end;
   with quTambahan,SQL do
   begin
     Close;Clear;
     Add('SELECT COUNT(Transdate) - SUM(fgOff) as HrKerja FROM Calendar '
        +'WHERE CONVERT(VARCHAR(8),Transdate,112) BETWEEN '''+dari+''' AND '''+sampai+''' ');
     Open;
   end;
   HrKerja := quTambahan.FieldByName('HrKerja').AsInteger;
   with quAct1,SQL do
   begin
     Close;Clear;
     Add('SELECT SalesID FROM PayrollDt WHERE PayrollID='''+quMainPayrollID.AsString+''' ');
     Open;
     quAct1.First;
     while not Eof do
     begin
        with quCalc,SQL do
        begin
          Close;Clear;
          Add('SELECT K.SalesID,COUNT(K.Tanggal) as JmlKerja, COUNT(K.Tanggal)-SUM(K.FgOff) as HrAktif, '
             +'SUM(K.HitTelat) as JumTelat, SUM(K.FgOff) as Libur, SUM(K.Rajin) as Rajin FROM '
             +'(SELECT SalesID,Tanggal,FgOff, CASE WHEN DATENAME(WEEKDAY,Tanggal) IN (''Saturday'',''Sunday'') THEN '
             +'(CASE WHEN CONVERT(VARCHAR(8),JamMasuk,108) > ''10:00:00'' THEN 1 ELSE 0 END) ELSE '
             +'(CASE WHEN CONVERT(VARCHAR(8),JamMasuk,108) > ''09:30:00'' THEN 1 ELSE 0 END)END as HitTelat, '
             +'CASE WHEN CONVERT(VARCHAR(8),JamMasuk,108) > ''10:30:00'' THEN 1 ELSE 0 END as Rajin '
             +'FROM TrAbsensi WHERE CONVERT(VARCHAR(8),Tanggal,112) BETWEEN '''+dari+''' and '''+sampai+''') as K '
             +'WHERE K.SalesID='''+quAct1.FieldByName('SalesID').AsString+''' GROUP BY K.SalesID');
          Open;
        end;
        Alpa := HrKerja-quCalc.FieldByName('HrAktif').AsInteger;
        JmlKerja := quCalc.FieldByName('HrAktif').AsInteger;
        JmlTelat := quCalc.FieldByName('JumTelat').AsInteger;
        JmlLibur := quCalc.FieldByName('Libur').AsInteger;
        Rajin := quCalc.FieldByName('Rajin').AsInteger;
        with quAct,SQL do
        begin
          Close;Clear;
          Add('UPDATE PayrollDT SET HrKerja='''+IntToStr(HrKerja)+''',JmlHrKerja='''+IntToStr(JmlKerja)+''', '
             +'Telat='''+IntToStr(JmlTelat)+''',Alpa='''+IntToStr(Alpa)+''', Rajin='''+IntToStr(Rajin)+''', '
             +'HrLibur='''+IntToStr(JmlLibur)+''' WHERE PayrollID='''+quMainPayrollID.AsString+''' '
             +'AND SalesID='''+quAct1.FieldByName('SalesID').AsString+''' ');
          ExecSQL;
        end;
        quAct1.Next;
     end;
   end;
   quMain.Requery();
   quDetil.Requery();
end;

procedure TfmPayroll.quDetilCalcFields(DataSet: TDataSet);
var KasBon,Omzet,Gaji,UangMakan,Kerajinan,Alpa,UangLibur,UTelat : Currency;
    dari,sampai : String;
begin
   inherited;
//Cari Periode
   with quAct,SQL do
   begin
      Close;Clear;
      Add('SELECT BULAN,Tahun, CASE WHEN Bulan=''JANUARI'' THEN ''1226'' '
         +'                         WHEN Bulan=''FEBUARI'' THEN ''0126'' '
         +'                         WHEN Bulan=''MARET'' THEN ''0226'' '
         +'                         WHEN Bulan=''APRIL'' THEN ''0326'' '
         +'                         WHEN Bulan=''MEI'' THEN ''0426'' '
         +'                         WHEN Bulan=''JUNI'' THEN ''0526'' '
         +'                         WHEN Bulan=''JULI'' THEN ''0626'' '
         +'                         WHEN Bulan=''AGUSTUS'' THEN ''0726'' '
         +'                         WHEN Bulan=''SEPTEMBER'' THEN ''0826'' '
         +'                         WHEN Bulan=''OKTOBER'' THEN ''0926'' '
         +'                         WHEN Bulan=''NOVEMBER'' THEN ''1026'' '
         +'                         WHEN Bulan=''DESEMBER'' THEN ''1126'' END as Dari, '
         +'                    CASE WHEN Bulan=''JANUARI'' THEN ''0125'' '
         +'                         WHEN Bulan=''FEBUARI'' THEN ''0225'' '
         +'                         WHEN Bulan=''MARET'' THEN ''0325'' '
         +'                         WHEN Bulan=''APRIL'' THEN ''0425'' '
         +'                         WHEN Bulan=''MEI'' THEN ''0525'' '
         +'                         WHEN Bulan=''JUNI'' THEN ''0625'' '
         +'                         WHEN Bulan=''JULI'' THEN ''0725'' '
         +'                         WHEN Bulan=''AGUSTUS'' THEN ''0825'' '
         +'                         WHEN Bulan=''SEPTEMBER'' THEN ''0925'' '
         +'                         WHEN Bulan=''OKTOBER'' THEN ''1025'' '
         +'                         WHEN Bulan=''NOVEMBER'' THEN ''1125'' '
         +'                         WHEN Bulan=''DESEMBER'' THEN ''1225'' END as Sampai, '
         +'CASE WHEN Bulan=''JANUARI'' THEN Tahun-1 ELSE Tahun END as TahunAwal '
         +'FROM PayrollHD WHERE PayrollID='''+quMainPayrollID.AsString+''' ');
      Open;
   end;
   dari := quAct.FieldByName('TahunAwal').AsString+quAct.FieldByName('Dari').AsString;
   sampai := quAct.FieldByName('Tahun').AsString+quAct.FieldByName('Sampai').AsString;
//Cari KasBon
   with quCalc,SQL do
   begin
     Close;Clear;
     Add('SELECT DISTINCT K.Actor,(SELECT ISNULL(SUM(M.Amount),0) FROM CFTrKKBBHd L INNER JOIN CFTrKKBBDt M ON L.VoucherID=M.VoucherID '
        +'WHERE L.Actor=K.Actor AND L.CurrID=K.CurrID AND L.FlagKKBB IN (31,32))-(SELECT ISNULL(SUM(L.ValuePayment),0) FROM CFTrPiutangInternalDt L '
        +'INNER JOIN CFTrPiutangInternalHd M ON L.PiutangID=M.PiutangID WHERE M.SalesID=K.Actor AND M.CurrID=K.CurrID)- '
        +'(SELECT ISNULL(SUM(L.ValuePayment),0) FROM PayrollKasBon L INNER JOIN PayrollDT M ON L.PayrollID=M.PayrollID WHERE L.SalesID=M.SalesID) as Piutang '
        +'FROM CFTrKKBBHd K WHERE K.Actor='''+quDetilSalesID.AsString+''' AND K.CurrID=''IDR'' AND K.FlagKKBB IN (31,32)'
        +'AND CONVERT(VARCHAR(8),K.Transdate,112) <= '''+sampai+''' ');
     Open;
   end;
   KasBon := quCalc.FieldByName('Piutang').AsCurrency;
   quDetilKasBon.Value := KasBon;
//Cari Total Hari kerja
   with quTambahan,SQL do
   begin
     Close;Clear;
     Add('SELECT COUNT(Transdate) - SUM(fgOff) as HrKerja FROM Calendar '
        +'WHERE CONVERT(VARCHAR(8),Transdate,112) BETWEEN '''+dari+''' AND '''+sampai+''' ');
     Open;
   end;
   quDetilLHrKerja.AsInteger := quTambahan.FieldByName('HrKerja').AsInteger;
//Cari Omzet Penjualan
   with quAct,SQL do
   begin
     Close;Clear;
     Add('SELECT ISNULL(SUM(K.Total),0) as Total FROM ( '
        +'SELECT ISNULL(SUM(CASE WHEN CurrID=''IDR'' THEN TTLPj ELSE TTLPj*Rate end),0) as Total FROM ARTrPenjualanHd '
        +'WHERE SalesID='''+quDetilSalesID.AsString+''' and CONVERT(VARCHAR(8),Transdate,112) BETWEEN '''+dari+''' and '''+sampai+''' '
        +'UNION ALL SELECT ISNULL(SUM(TTLSV),0) as Total FROM ARTrInvServiceHD WHERE TeknisiID='''+quDetilSalesID.AsString+''' '
        +'and CONVERT(VARCHAR(8),Transdate,112) BETWEEN '''+dari+''' and '''+sampai+''' UNION ALL '
        +'SELECT -1*ISNULL(SUM(CASE WHEN C.CurrID=''IDR'' THEN B.Qty*B.Price ELSE B.Qty*B.Price*C.Rate END),0) as Total '
        +'FROM ARTrReturPenjualanHd A INNER JOIN ARTrReturPenjualanDt B ON A.ReturnID=B.ReturnID INNER JOIN ARTrPenjualanHd C ON B.SaleID=C.SaleID '
        +'WHERE FlagRetur=''B'' AND C.SalesID='''+quDetilSalesID.AsString+''' AND CONVERT(VARCHAR(8),C.Transdate,112) '
        +'BETWEEN '''+dari+''' and '''+sampai+''') as K ');
     Open;
   end;
   Omzet := quAct.FieldByName('Total').AsCurrency;
   quDetilOmzetPenjualan.AsCurrency := Omzet;
   UangMakan := quDetilUangMakan.AsCurrency * quDetilJmlHrKerja.AsInteger;
   UangLibur := 2*quDetilUangMakan.AsCurrency * quDetilHrLibur.AsInteger;
   quDetilTotalUangMakan.AsCurrency := UangMakan;
   Alpa := (quDetilGajiPokok.AsCurrency/quDetilLHrKerja.AsInteger)*quDetilAlpa.AsInteger;
   with quTambahan,SQL do
   begin
     Close;Clear;
     Add('SELECT Kerajinan FROM ARMsSales WHERE SalesID='''+quDetilSalesID.AsString+''' ');
     Open;
   end;
   Kerajinan := quTambahan.FieldByName('Kerajinan').AsCurrency;
//Cari uang kerajinan
   with quAct1,SQL do
   begin
     Close;Clear;
     Add('SELECT SUM(CASE WHEN CONVERT(VARCHAR(10),JamMasuk,108) > ''10:30:00'' THEN 1 ELSE 0 END) as Rajin '
        +'FROM TrAbsensi WHERE SalesID='''+quDetilSalesID.AsString+''' and CONVERT(VARCHAR(8),tanggal,112) BETWEEN '''+dari+''' and '''+sampai+''' ');
     Open;
   end;
   quDetilLRajin.AsInteger := quAct1.FieldByName('Rajin').AsInteger;
   if (quDetilAlpa.AsInteger = 0) and (quAct1.FieldByName('Rajin').AsInteger = 0) then
     quDetilUangKerajinan.AsCurrency := Kerajinan
   else
     quDetilUangKerajinan.AsCurrency := 0;
   if quDetilTelat.AsInteger <= 5 then
     UTelat := quDetilTelat.AsInteger*quDetilUangMakan.AsCurrency*0.5
   else
     if quDetilTelat.AsInteger <=10 then
       UTelat := quDetilTelat.AsInteger*quDetilUangMakan.AsCurrency*0.75
     else
       UTelat := quDetilTelat.AsInteger*quDetilUangMakan.AsCurrency*1;
   Gaji := quDetilGajiPokok.AsCurrency+UangMakan+UangLibur+quDetilUangKerajinan.AsCurrency-Alpa-UTelat;
   quDetilTotalPendapatan.AsCurrency := Gaji;
end;

procedure TfmPayroll.dxButton2Click(Sender: TObject);
begin
  inherited;
  with TfmRptSlipGaji.Create(Self) do
  try
     qrlTitle.Caption := 'Periode : '+quMainBulan.AsString+'-'+quMainTahun.AsString;
     qrlPeriode.Caption := 'SLIP GAJI';
     with qu001,SQL do
     begin
       Close;Clear;
       Add('SELECT A.PayrollID,A.SalesID,B.SalesName,B.Jabatan,CONVERT(VARCHAR(10),B.TglGabung,103) as TglGabung,A.JmlHrKerja, '
          +''''+quDetilLHrKerja.AsString+''' - A.Cuti-A.Alpa-A.Sakit as HrKerja ,A.Alpa,A.Sakit,A.Cuti,12 - A.Cuti as SCuti,A.Telat, '
          +'A.HrLibur,B.UangBulanan,B.UangMakan,B.UangMakan*2 as UangLibur, CASE WHEN A.Telat <= 5 THEN ISNULL(-1*A.Telat*B.UangMakan*0.5,0) '
          +'WHEN A.Telat <=10 THEN ISNULL(-1*A.Telat*B.UangMakan*0.75,0) ELSE ISNULL(-1*A.Telat*B.UangMakan,0) END as DTelat, '
          +'(('''+quDetilHrKerja.AsString+'''-A.Cuti-A.Alpa-A.Sakit)*B.UangMakan)+(A.HrLibur*B.UangMakan*2) as TMakan, '
          +'CONVERT(VARCHAR(10),C.Transdate,103) as Tanggal, B.UangBulanan/'''+quDetilLHrKerja.AsString+'''*A.Alpa*-1 as DAlpa,'
          +''''+quDetilLHrKerja.AsString+''' as HariKerja, B.Kerajinan, CASE WHEN A.Telat <= 5 THEN B.UangMakan*0.5 '
          +'WHEN A.Telat <=10 THEN B.UangMakan*0.75 ELSE B.UangMakan END as UTelat '
          +'FROM PayrollDt A INNER JOIN PayrollHD C ON A.PayrollID=C.PayrollID INNER JOIN ARMsSales B ON A.SalesID=B.SalesID '
          +'WHERE A.PayrollID='''+quMainPayrollID.AsString+''' ');
       Open;
       if IsEmpty then
       begin
         ShowMessage('Tidak ada data');
         Abort;
       end;
     end;
     with quAct,SQL do
     begin
        Close;Clear;
      Add('SELECT BULAN,Tahun, CASE WHEN Bulan=''JANUARI'' THEN ''1226'' '
         +'                         WHEN Bulan=''FEBUARI'' THEN ''0126'' '
         +'                         WHEN Bulan=''MARET'' THEN ''0226'' '
         +'                         WHEN Bulan=''APRIL'' THEN ''0326'' '
         +'                         WHEN Bulan=''MEI'' THEN ''0426'' '
         +'                         WHEN Bulan=''JUNI'' THEN ''0526'' '
         +'                         WHEN Bulan=''JULI'' THEN ''0626'' '
         +'                         WHEN Bulan=''AGUSTUS'' THEN ''0726'' '
         +'                         WHEN Bulan=''SEPTEMBER'' THEN ''0826'' '
         +'                         WHEN Bulan=''OKTOBER'' THEN ''0926'' '
         +'                         WHEN Bulan=''NOVEMBER'' THEN ''1026'' '
         +'                         WHEN Bulan=''DESEMBER'' THEN ''1126'' END as Dari, '
         +'                    CASE WHEN Bulan=''JANUARI'' THEN ''0125'' '
         +'                         WHEN Bulan=''FEBUARI'' THEN ''0225'' '
         +'                         WHEN Bulan=''MARET'' THEN ''0325'' '
         +'                         WHEN Bulan=''APRIL'' THEN ''0425'' '
         +'                         WHEN Bulan=''MEI'' THEN ''0525'' '
         +'                         WHEN Bulan=''JUNI'' THEN ''0625'' '
         +'                         WHEN Bulan=''JULI'' THEN ''0725'' '
         +'                         WHEN Bulan=''AGUSTUS'' THEN ''0825'' '
         +'                         WHEN Bulan=''SEPTEMBER'' THEN ''0925'' '
         +'                         WHEN Bulan=''OKTOBER'' THEN ''1025'' '
         +'                         WHEN Bulan=''NOVEMBER'' THEN ''1125'' '
         +'                         WHEN Bulan=''DESEMBER'' THEN ''1225'' END as Sampai '
           +'FROM PayrollHD WHERE PayrollID='''+quMainPayrollID.AsString+''' ');
        Open;
     end;
     dari := quAct.FieldByName('Tahun').AsString+quAct.FieldByName('Dari').AsString;
     sampai := quAct.FieldByName('Tahun').AsString+quAct.FieldByName('Sampai').AsString;
     MyReport.PreviewModal;
  finally
       free;
  end;
end;

procedure TfmPayroll.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quDetilAlpa.AsString)='' then
  begin
    ShowMessage('Field Alpa tidak boleh kosong');
    quDetilAlpa.FocusControl;
    Abort;
  end;
  if TRIM(quDetilSakit.AsString)='' then
  begin
    ShowMessage('Field Sakit tidak boleh kosong');
    quDetilSakit.FocusControl;
    Abort;
  end;
  if TRIM(quDetilCuti.AsString)='' then
  begin
    ShowMessage('Field Cuti tidak boleh kosong');
    quDetilCuti.FocusControl;
    Abort;
  end;
  if TRIM(quDetilTelat.AsString)='' then
  begin
    ShowMessage('Field Telat tidak boleh kosong');
    quDetilTelat.FocusControl;
    Abort;
  end;
  if TRIM(quDetilJmlHrKerja.AsString)='' then
  begin
    ShowMessage('Jumlah hari kerja tidak boleh kosong');
    quDetilJmlHrKerja.FocusControl;
    Abort;
  end;
end;

procedure TfmPayroll.dxButton1Click(Sender: TObject);
var TotalBiayaGaji : Currency;
begin
  inherited;
  TotalBiayaGaji := 0;
  if GroupUser <> 'admin' then CekStatus;
  if quMain.IsEmpty then
  begin
    ShowMessage('Tidak ada data');
    Abort;
  end;
  if MessageDlg('Proses Transaksi Payroll ini ? ', mtInformation, [mbYes, mbNo], 0) = mrYes then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      add('UPDATE PayrollHD SET FgProses=''Y'' WHERE PayrollID='''+quMainPayrollID.AsString+''' ');
      ExecSQL
    end;
    with quCalc,SQL do
    begin
      Close;Clear;
      Add('SELECT ISNULL(SUM(A.JmlHrKerja*B.UangMakan+B.UangBulanan+A.HrLibur*A.UangMakan-(A.Gajipokok/A.HrKerja*A.Alpa)-(A.Telat*A.UangMakan/2)+ '
         +'CASE WHEN A.Alpa+A.Rajin=0 THEN B.Kerajinan ELSE 0 END),0)-(SELECT ISNULL(SUM(L.ValuePayment),0) '
         +'FROM PayrollKasbon L WHERE L.PayrollID=A.PayrollID) as Total '
         +'FROM PayrollDT A INNER JOIN ARMsSales B on A.SalesID=B.SalesID '
         +'WHERE A.PayRollID='''+quMainPayrollID.AsString+''' GROUP BY A.PayrollID');
      Open;
    end;
    TotalBiayaGaji := quCalc.FieldByName('Total').AsCurrency;
    with quTambahan,SQL do
    begin
      Close;Clear;
      Add('UPDATE PayrollHD SET TTLPayroll='''+FormatCurr('0.00',TotalBiayaGaji)+''' WHERE PayrollID='''+quMainPayrollID.AsString+''' ');
      ExecSQL
    end;
  end else Abort;
  DeleteFromAllMoney(quMainPayrollID.AsString,'600.08','83');
  InsertToAllMoney(quMainPayrollID.AsString,quMainTransDate.value,'Karyawan','KK','600.08'
                  ,sDGRBi,quCalc.FieldByName('Total').Value,'Biaya Gaji Bulan '+quMainBulan.AsString+'-'+quMainTahun.AsString,'83','','','KARYAWAN','IDR',1);

   With TfmCFQRRptTrKKBB.Create(Self) do
   Try
      qlbTitle.Caption:= sCompanyName;
      qlbKas.Enabled := true;
      qlbBank.Enabled := not qlbKas.Enabled;
      qlbTitleV.Caption := 'BUKTI PENGELUARAN';
      qlbTTerBayar.Caption := 'Dibayar kepada';
      qlbJourTransID.Caption := ': ' + quMainPayrollID.AsString;
      qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTransDate.AsDateTime);
      qlbterimaDari.Caption := 'KARYAWAN '+ sCompanyName;
      qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, TotalBiayaGaji))+'rupiah';
      qlbKeterangan.Caption := 'Biaya Gaji Karyawan Periode : '+ quMainBulan.AsString+'-'+quMainTahun.AsString;
      QRLabel16.Caption :='Didistribusikan oleh';
      qlbTotal.Caption := FormatFloat(sDisFormat, TotalBiayaGaji);
      With qu001,sql do
      Begin
        Close;Clear;
        add('SELECT ''600.08'' as RekeningID,TTLPayroll as Amount,''BIAYA GAJI'' as Note FROM PayrollHd WHERE PayrollID='''+quMainPayrollID.AsString+'''');
        Open;
      End;
      MyReport.Previewmodal;
   Finally
      Free;
   End;
end;

procedure TfmPayroll.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
end;

procedure TfmPayroll.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Transaksi Payroll';
       SQLString := 'SELECT PayrollID as No_Transaksi, Convert(varchar(10),TransDate,103) as Tanggal,Bulan+''-''+Tahun as Periode, '
                   +'CASE WHEN FgProses=''Y'' THEN ''Sudah di Proses'' ELSE ''Belum di Proses'' END as Status, TTLPayroll as Total_Gaji_Yang_Dikeluarkan '
                   +'FROM PayrollHD WHERE '+FSQLWhere
                   +'ORDER BY PayrollID ';
       if ShowModal = MrOK then
       begin
         qumain.Locate('PayrollID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmPayroll.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if GroupUser <> 'admin' then CekStatus;
  CekKasbon;
  DeleteFromAllMoney(quMainPayrollID.AsString,'83');
end;

procedure TfmPayroll.dsPiutangStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgPiutangVoucherID,quPiutang.State<>dsInsert);
  SetReadOnly(dbgPiutangValueTotal,TRUE);
end;

procedure TfmPayroll.quPiutangNewRecord(DataSet: TDataSet);
begin
  inherited;
  quPiutangValuePayment.AsCurrency :=0;
end;

procedure TfmPayroll.quPiutangCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,sql do
  Begin
    Close;Clear;
    add(' SELECT CONVERT(VARCHAR(10),A.Transdate,103) as Tgl,A.VoucherID FROM CFTrKKBBHd A'
       +' WHERE A.VoucherID='''+quPiutangVoucherID.AsString+''' ');
    Open;
  End;
  quPiutangCTgl.AsString := quAct.FieldByName('tgl').AsString;
end;

procedure TfmPayroll.quPiutangBeforePost(DataSet: TDataSet);
begin
  inherited;
  if quPiutangVoucherID.AsString = '' Then
  Begin
    MsgInfo('No Voucher masih kosong');
    quPiutangVoucherID.FocusControl;
    Abort;
  End;
  if TRIM(quPiutangCTgl.AsString)='' then
  Begin
     MsgInfo('Bukti Pinjaman tidak ada dalam Transaksi Piutang Karyawan');
     quPiutangVoucherID.FocusControl;
     Abort;
  End;
  if quPiutangValuePayment.AsFloat <= 0  then
  begin
     MsgInfo('Jumlah Pembayaran harus lebih besar dari 0');
     quPiutangValuePayment.FocusControl;
     Abort;
  end;

  if quMainTransDate.Value < quPiutangCTgl.Value then
  Begin
     MsgInfo('Tgl Pembayaran lebih kecil dari tanggal Pinjaman');
     quPiutangVoucherID.FocusControl;
     abort;
  End;
  with quAct,SQL do
  begin
     Close;Clear;
     Add('SELECT ISNULL(SUM(ValuePayment),0)+'''+quPiutangValuePayment.AsString+''' as Total FROM PayrollKasbon WHERE PayrollID='''+quMainPayrollID.AsString+''' ');
     Open;
     if quDetilTotalPendapatan.AsCurrency <  quAct.FieldByName('Total').AsCurrency then
     begin
       ShowMessage('Total Pendapatan yang dibayarkan harus lebih besar sama dengan 0 (nol)');
       quPiutangValuePayment.FocusControl;
       Abort;
     end;
  end;

  if quPiutang.State=dsInsert then
  Begin
    With quAct,Sql do
    Begin
       Close;Clear;
       add('SELECT VoucherID FROM PayrollKasBon WHERE PayrollID=:PayrollID AND SalesID=:SalesID AND VoucherID=:VoucherID');
       Parameters.ParamByName('PayrollID').Value:= quMainPayrollID.AsString;
       Parameters.ParamByName('SalesID').Value:= quDetilSalesID.AsString;
       Parameters.ParamByName('VoucherID').Value:= quPiutangVoucherID.AsString;
       Open;
       If quAct.RecordCount <> 0 then
       Begin
          MsgInfo('Nota sudah terdapat dalam list');
          quPiutangVoucherID.FocusControl;
          Abort;
       End;
    End;
  End;

  with quAct,SQL do
  Begin
    Close;Clear;
    add(' SELECT ISNULL(Amount,0)-(SELECT ISNULL(SUM(ValuePayment),0) FROM CFTrPiutangInternalDt A WHERE'
       +' A.VoucherID=B.VoucherID)-(SELECT ISNULL(SUM(ValuePayment),0) FROM PayrollKasBon A WHERE A.VoucherID=B.VoucherID '
       +' AND A.VoucherID<>'''+quMainPayrollID.AsString+''') as Sisa FROM CFTrKKBBDt A '
       +' INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VOucherID '
       +' WHERE CurrID=''IDR'' AND Actor='''+quDetilSalesID.AsString+''' AND B.VoucherID='''+quPiutangVoucherID.AsString+''' ');
    Open;
    if IsEmpty then
    Begin
      MsgInfo('Data ini tidak terdapat pada Transaksi Piutang Internal');
      quPiutangVoucherID.FocusControl;
      Abort;
    End;
  end;

  if quPiutangValuePayment.Value > quAct.FieldByName('Sisa').AsCurrency then
  begin
    MsgInfo('Pembayaran melebihi total Pinjaman '+#13+' Sisa Pinjaman sebesar ['+FormatCurr(sDisFormat,quAct.FieldByName('Sisa').AsCurrency)+']');
    quPiutangValuePayment.FocusControl;
    Abort;
  end;

  quPiutangUpdUser.AsString := dmMain.UserId;
  quPiutangUpdDate.AsDateTime := GetServerDateTime;
end;

procedure TfmPayroll.dbgPiutangVoucherIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  CariKasbon;
end;

procedure TfmPayroll.quPiutangBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
end;

procedure TfmPayroll.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  if quDetilKasBon.AsCurrency > 0 then
  begin
    if MessageDlg('Karyawan ini ada kas bon sebesar Rp '+FormatCurr('#,0.00',quDetilKasBon.AsCurrency)+#13
                + 'Mau input pembayaran ?', mtInformation, [mbYes, mbNo], 0) = mrYes then
    begin
      quPiutang.Last;
      quPiutang.Append;
      CariKasbon;
      Abort;
    end;
  end;
  if quDetil.State = dsBrowse then quDetil.Edit;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE PayrollDT SET JmlHrKerja='''+quDetilLHrKerja.AsString+'''-Alpa-Sakit-Cuti '
       +'WHERE SalesID='''+quDetilSalesID.AsString+''' AND PayrollID='''+quMainPayrollID.AsString+''' ');
    ExecSQL;
  end;
  quDetil.Requery();
end;

procedure TfmPayroll.bbSimpanDetilClick(Sender: TObject);
begin
  inherited;
  if Self.quDetil.State = dsInsert then
  begin
   Self.quDetil.Edit;
   Self.quDetil.Post;
   Self.quDetil.Requery();
  end;
  if Self.quDetil.State = dsEdit then
  begin
   quDetil.Post;
  end;
end;

procedure TfmPayroll.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmPayroll.bbTambahClick(Sender: TObject);
begin
  inherited;
  quPiutang.Append;
end;

procedure TfmPayroll.bbHapusClick(Sender: TObject);
begin
  inherited;
  if (dsPiutang <> nil) and (dsPiutang.DataSet <> nil) and
     (MessageDlg('Hapus Nota ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsPiutang.DataSet.Delete;end;

procedure TfmPayroll.bbSimpanClick(Sender: TObject);
begin
  inherited;
  if Self.quPiutang.State = dsInsert then
  begin
   Self.quPiutang.Edit;
   Self.quPiutang.Post;
   Self.quPiutang.Requery();
  end;
  if Self.quPiutang.State = dsEdit then
  begin
   quPiutang.Post;
  end;end;

procedure TfmPayroll.bbBatalClick(Sender: TObject);
begin
  inherited;
  quPiutang.Cancel;
end;

procedure TfmPayroll.bbSimpanDetilKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  bbSimpan.SetFocus;
end;

procedure TfmPayroll.quPiutangAfterPost(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  quTotalGaji.Requery();
end;

procedure TfmPayroll.dxButton3Click(Sender: TObject);
var sTotal : Currency;
begin
  inherited;
  sTotal := quTotalTotal.AsCurrency+quTotalTotalBayar.AsCurrency;
  with TfmQRRptRincianPayroll.Create(Self) do
  try
     qrlTitle.Caption := 'Rincian Biaya Gaji';
     qrlPeriode.Caption := 'Periode : '+quMainBulan.AsString+' - '+quMainTahun.AsString;
     qlbVoucherID.Caption := 'No. Voucher : '+ quMainPayrollID.AsString;
     qlbTotal.Caption := CurrToStr(sTotal);
     qlbTerbilang.Caption := '* Terbilang '+ convert(FormatFloat(sEditFormat, stotal))+' Rupiah #';
     if TRIM(quMainNote.AsString) = '' then
       qlbKeterangan.Caption := ''
     else
       qlbKeterangan.Caption := '* Keterangan : '+quMainNote.AsString;
     with qu001,SQL do
     begin
       Close;Clear;
       Add('SELECT A.SalesID,B.SalesName,B.Jabatan,A.HrLibur,A.HrKerja, '
          +'A.JmlHrKerja,A.Alpa,A.Sakit,A.Cuti,A.Telat,B.UangBulanan,B.UangMakan, '
          +'((A.JmlHrKerja*B.UangMakan)+A.HrLibur*B.UangMakan*2)-'
          +'(CASE WHEN A.Telat<=5 THEN A.Telat*A.UangMakan*0.5 WHEN A.Telat<=10 THEN A.Telat*A.UangMakan*0.75 ELSE A.Telat*A.UangMakan END) as TMakan, '
          +'CASE WHEN A.Alpa+A.Rajin=0 THEN B.Kerajinan ELSE 0 END as TKerajinan '
          +'FROM PayrollDt A INNER JOIN PayrollHD C ON A.PayrollID=C.PayrollID INNER JOIN ARMsSales B ON A.SalesID=B.SalesID '
          +'WHERE A.PayrollID='''+quMainPayrollID.AsString+''' ORDER BY A.SalesID,B.Jabatan, B.SalesName');
       Open;
       if IsEmpty then
       begin
         ShowMessage('Tidak Ada Data');
         Abort;
       end;
     end;
   with qu002,SQL do
   begin
      Close;Clear;
      Add('SELECT BULAN,Tahun, CASE WHEN Bulan=''JANUARI'' THEN ''1226'' '
         +'                         WHEN Bulan=''FEBUARI'' THEN ''0126'' '
         +'                         WHEN Bulan=''MARET'' THEN ''0226'' '
         +'                         WHEN Bulan=''APRIL'' THEN ''0326'' '
         +'                         WHEN Bulan=''MEI'' THEN ''0426'' '
         +'                         WHEN Bulan=''JUNI'' THEN ''0526'' '
         +'                         WHEN Bulan=''JULI'' THEN ''0626'' '
         +'                         WHEN Bulan=''AGUSTUS'' THEN ''0726'' '
         +'                         WHEN Bulan=''SEPTEMBER'' THEN ''0826'' '
         +'                         WHEN Bulan=''OKTOBER'' THEN ''0926'' '
         +'                         WHEN Bulan=''NOVEMBER'' THEN ''1026'' '
         +'                         WHEN Bulan=''DESEMBER'' THEN ''1126'' END as Dari, '
         +'                    CASE WHEN Bulan=''JANUARI'' THEN ''0125'' '
         +'                         WHEN Bulan=''FEBUARI'' THEN ''0225'' '
         +'                         WHEN Bulan=''MARET'' THEN ''0325'' '
         +'                         WHEN Bulan=''APRIL'' THEN ''0425'' '
         +'                         WHEN Bulan=''MEI'' THEN ''0525'' '
         +'                         WHEN Bulan=''JUNI'' THEN ''0625'' '
         +'                         WHEN Bulan=''JULI'' THEN ''0725'' '
         +'                         WHEN Bulan=''AGUSTUS'' THEN ''0825'' '
         +'                         WHEN Bulan=''SEPTEMBER'' THEN ''0925'' '
         +'                         WHEN Bulan=''OKTOBER'' THEN ''1025'' '
         +'                         WHEN Bulan=''NOVEMBER'' THEN ''1125'' '
         +'                         WHEN Bulan=''DESEMBER'' THEN ''1225'' END as Sampai '
         +'FROM PayrollHD WHERE PayrollID='''+quMainPayrollID.AsString+''' ');
      Open;
   end;
     MyReport.PreviewModal;
  finally
       free;
  end;
end;

end.
