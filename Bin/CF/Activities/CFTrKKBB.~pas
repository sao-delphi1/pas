unit CFTrKKBB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv41, dxExEdtr, DBCtrls, dxEdLib, dxDBELib, dxEditor,
  ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl, dxDBGrid, dxPageControl,
  dxButton, StdCtrls, ExtCtrls, Buttons, dxCore, dxContainer, dxDBTLCl,
  dxGrClms;

type
  TfmCFTrKKBB = class(TfmStdLv41)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    DBText3: TDBText;
    Label11: TLabel;
    DBText4: TDBText;
    Label2: TLabel;
    Label1: TLabel;
    lblTerbayar: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    quMainVoucherId: TStringField;
    quMainTransDate: TDateTimeField;
    quMainActor: TStringField;
    quMainBankId: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainNote: TStringField;
    quBank: TADOQuery;
    quMainLBankName: TStringField;
    quDetilVoucherId: TStringField;
    quDetilNote: TStringField;
    quDetilAmount: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quMainFlagKKBB: TStringField;
    quRek: TADOQuery;
    quDetilRekeningId: TStringField;
    quDetilLRekName: TStringField;
    quDetilLGroupRek: TStringField;
    quGroupRek: TADOQuery;
    quDetilLGroupName: TStringField;
    bbs: TdxButton;
    bbc: TdxButton;
    dbgListVoucherId: TdxDBGridMaskColumn;
    dbgListTransDate: TdxDBGridDateColumn;
    dbgListActor: TdxDBGridMaskColumn;
    dbgListBankId: TdxDBGridMaskColumn;
    dbgListUpdDate: TdxDBGridDateColumn;
    dbgListUpdUser: TdxDBGridMaskColumn;
    dbgListNote: TdxDBGridMaskColumn;
    dbgListLBankName: TdxDBGridLookupColumn;
    dbgListFlagKKBB: TdxDBGridMaskColumn;
    Label23: TLabel;
    DBText6: TDBText;
    quValuta: TADOQuery;
    quMainCurrId: TStringField;
    quMainLCurrName: TStringField;
    DBText2: TDBText;
    dbgListColumn10: TdxDBGridColumn;
    DBText5: TDBText;
    quSales: TADOQuery;
    quMainLSalesName: TStringField;
    quCalc: TADOQuery;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    ActPrint: TAction;
    quDetilNumAll: TAutoIncField;
    quDetilJenis: TStringField;
    quDetilUserUbah: TStringField;
    quDetilTglUbah: TDateTimeField;
    quDetilDivisiID: TStringField;
    quMainJumlahD: TBCDField;
    quMainJumlahK: TBCDField;
    quMainFgPayment: TStringField;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    quMainNoBGCek: TStringField;
    Label16: TLabel;
    quMainTglUbah: TDateTimeField;
    quMainUserUbah: TStringField;
    quMainIDVoucher: TStringField;
    quTotal: TADOQuery;
    quTotalTotal: TBCDField;
    quTotalTotalK: TBCDField;
    quTotalTotalD: TBCDField;
    dsTotal: TDataSource;
    dbg: TdxDBGrid;
    dbgRekId: TdxDBGridButtonColumn;
    dbgRekName: TdxDBGridColumn;
    dbgGroup: TdxDBGridColumn;
    dbgJenis: TdxDBGridImageColumn;
    dbgNote: TdxDBGridColumn;
    dbgAmount: TdxDBGridColumn;
    dbgInvoice: TdxDBGridButtonColumn;
    Label17: TLabel;
    quMainTransdate1: TDateTimeField;
    RbCetak: TRadioGroup;
    quMainVoucherNo: TStringField;
    quMainNoVoucher: TStringField;
    Label18: TLabel;
    quMainRate: TBCDField;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBDateEdit2: TdxDBDateEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBButtonEdit3: TdxDBButtonEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    Panel2: TPanel;
    GroupBox3: TGroupBox;
    DBText7: TDBText;
    lbTotal: TLabel;
    bbBatal: TdxButton;
    bbSimpan: TdxButton;
    bbHapus: TdxButton;
    bbTambah: TdxButton;
    dxButton1: TdxButton;
    dbgUrut: TdxDBGridColumn;
    quDetilUrut: TBCDField;
    quDetilKomponen: TStringField;
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure dbgEnter(Sender: TObject);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure dbgRekIdButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure dsDetilStateChange(Sender: TObject);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure dxButton1Click(Sender: TObject);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure bbFindClick(Sender: TObject);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure bbTambahClick(Sender: TObject);
    procedure bbHapusClick(Sender: TObject);
    procedure bbSimpanClick(Sender: TObject);
    procedure bbBatalClick(Sender: TObject);
    procedure quDetilBeforeEdit(DataSet: TDataSet);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure quMainAfterInsert(DataSet: TDataSet);
    procedure quMainBeforeInsert(DataSet: TDataSet);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure dbgInvoiceButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilRekeningIdChange(Sender: TField);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure quMainBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
    Procedure CekStatus;
    Procedure CekBalance;
    Procedure UpdateTotal;
    Procedure CekPeriode;
  public
    { Public declarations }
    FgPayment,StatusKKBB,Nota,RekeningID,DataMode,RekSbm,NoteSbm,Voucher,JamInput : string ;
    JumSbm : currency;
  end;

var
  fmCFTrKKBB: TfmCFTrKKBB;

implementation

uses MyUnit, UnitGeneral, ConMain, Search, Allitem, RptGLTrKMKK,
  ARQRRptBuktiBayar, StrUtils;

{$R *.dfm}

Procedure TfmCFTrKKBB.CekPeriode;
Begin
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT convert(varchar(10),FgLockDate,112) as LockDate FROM SAMsSet ');
    Open;
  end;
  if quAct.FieldByName('LockDate').AsInteger >= StrToInt(FormatDateTime('yyyymmdd',quMainTransDate.ASDatetime)) then
  begin
    pesan('Tidak Bisa Ubah/Hapus Transaksi Periode ini. Hubungi Atasan Anda!');
    Abort;
  end;
end;

Procedure TfmCFTrKKBB.CekBalance;
Begin
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT TOP 1 K.VoucherID,CONVERT(VARCHAR(10),K.Transdate1,103) as Tanggal FROM ('
       +'SELECT FlagKKBB,VoucherID,Transdate1,ISNULL(JumlahD,0) as Debit,ISNULL(JumlahK,0) as Kredit FROM CFTrKKBBHd) as K '
       +'WHERE K.Debit<>K.Kredit AND K.FlagKKBB='''+StatusKKBB+''' ');
    Open;
  end;
  if quAct.RecordCount <> 0 then
  begin
    pesan('No Voucher ['+quAct.FieldByName('VoucherID').AsString+']'+#13
         +'Tanggal ['+quAct.FieldByName('Tanggal').AsString+'] belum Balance. Silahkan Check Ulang');
    Abort;
  end;
end;

procedure TfmCFTrKKBB.UpdateTotal;
Begin
  if (StatusKKBB = 'KM') or (StatusKKBB = 'BM') or (StatusKKBB = 'ARK') or (StatusKKBB = 'ARB') or (StatusKKBB = 'ARC') then
  begin
    with quAct,SQL do
    Begin
      Close;Clear;
      add('UPDATE CFTrKKBBHd SET JumlahK='''+CurrToStr(quTotalTotal.AsCurrency)+''' '
         +'WHERE VoucherID=:VoucherID');
      Parameters.ParamByName('VoucherID').Value := quMainVoucherId.AsString;
      ExecSQL;
    End;
  end else
  if (StatusKKBB = 'KK') or (StatusKKBB = 'BK')  or (StatusKKBB = 'APK') or (StatusKKBB = 'APB') or (StatusKKBB = 'APC') then
  begin
    with quAct,SQL do
    Begin
      Close;Clear;
      add('UPDATE CFTrKKBBHd SET JumlahD='''+CurrToStr(quTotalTotal.AsCurrency)+''' '
         +'WHERE VoucherID=:VoucherID');
      Parameters.ParamByName('VoucherID').Value := quMainVoucherId.AsString;
      ExecSQL;
    End;
  end else
  if StatusKKBB = 'JU' then
  begin
    with quAct,SQL do
    Begin
      Close;Clear;
      add('UPDATE CFTrKKBBHd SET JumlahD='''+CurrToStr(quTotalTotalD.AsCurrency)+''','
         +'JumlahK='''+CurrToStr(quTotalTotalK.AsCurrency)+''' WHERE VoucherID=:VoucherID');
      Parameters.ParamByName('VoucherID').Value := quMainVoucherId.AsString;
      ExecSQL;
    End;
  end;
End;


Procedure TfmCFTrKKBB.CekStatus;
Begin //cek apakah data sudah disimpan
  If (Self.quMain.State = dsEdit) or (Self.quMain.State = dsInsert) then
  begin
    ShowMessage('Data Header Belum disimpan');
    quMainNote.FocusControl;
    Abort;
  end;
  if (Self.quDetil.State = dsEdit) or (Self.quDetil.State = dsInsert) then
  begin
    ShowMessage('Data Detil Belum disimpan');
    quDetilRekeningId.FocusControl;
    Abort;
  end;
End;

procedure TfmCFTrKKBB.dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmCFTrKKBB.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbs,bbc,FActDS);
  //SetReadOnly(dxDBEdit1,quMain.State<>dsInsert);
  //SetReadOnly(dxDBEdit1,TRUE);

  if (StatusKKBB = 'KM') or (StatusKKBB = 'BM') or (StatusKKBB = 'ARK') or (StatusKKBB = 'ARB') or (StatusKKBB = 'ARB') then
    SetReadOnly(dxDBEdit5,TRUE);
  if (StatusKKBB = 'KK') or (StatusKKBB = 'BK') or (StatusKKBB = 'APK') or (StatusKKBB = 'APB') or (StatusKKBB = 'APC') then
    SetReadOnly(dxDBEdit4,TRUE);

  if (StatusKKBB = 'JU') or (StatusKKBB = 'GC') then
  begin
    //SetReadOnly(dxDBButtonEdit1,TRUE);
    SetReadOnly(dxDBEdit4,TRUE);
    SetReadOnly(dxDBEdit5,TRUE);
  end;
end;

procedure TfmCFTrKKBB.quMainBeforePost(DataSet: TDataSet);
Var ST  : String;
begin
  inherited;
  Nota := quMainVoucherId.AsString;
{  if (StatusKKBB <> 'ARC') or (StatusKKBB <> 'APC') then
    quMainTransDate.AsDateTime := quMainTransdate1.AsDateTime;}

 { if TRIM(quMainVoucherId.AsString) = '' then
  begin
    pesan('No Voucher tidak boleh kosong');
    quMainVoucherId.FocusControl;
    Abort;
  end;  }

  if Trim(quMainTransDate.AsString)='' then
  begin
    MsgInfo('Tanggal tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  if Trim(quMainTransDate1.AsString)='' then
  begin
    MsgInfo('Tanggal Cair tidak boleh kosong');
    quMainTransDate1.FocusControl;
    Abort;
  End;

  if Trim(quMainCurrId.AsString)='' then
  begin
    MsgInfo('Valuta tidak boleh kosong');
    quMainCurrId.FocusControl;
    Abort;
  End;

  if Trim(quMainLCurrName.AsString)='' then
  begin
    MsgInfo('Valuta tidak ada dalam Master');
    quMainCurrId.FocusControl;
    Abort;
  End;

  if StatusKKBB <> 'JU' then
  begin
    if Trim(quMainActor.AsString)='' then
    begin
      if (StatusKKBB ='KM') or (StatusKKBB='BM') Then
         pesan('Diterima Dari tidak boleh kosong')
      else
      if (StatusKKBB ='KK') or (StatusKKBB='BK') then
         pesan('Dibayar Kepada tidak boleh kosong')
      else
      if (StatusKKBB = 'ARK') or (StatusKKBB = 'ARB') or (StatusKKBB = 'ARC') then
         pesan('Pelanggan tidak boleh kosong')
      else
      if (StatusKKBB = 'APK') or (StatusKKBB = 'APB') or (StatusKKBB = 'APC') then
         pesan('Supplier tidak boleh kosong');
      quMainActor.FocusControl;
      Abort;
    End;
    if (StatusKKBB = 'ARK') or (StatusKKBB = 'ARB') or (StatusKKBB = 'ARC') then
    begin
      if TRIM(quMainLSalesName.AsString) = '' then
      begin
        pesan('Pelanggan tidak terdaftar');
        quMainActor.FocusControl;
        Abort;
      end;
    end else
    if (StatusKKBB = 'APK') or (StatusKKBB = 'APB') or (StatusKKBB = 'APC') then
    begin
      if TRIM(quMainLSalesName.AsString) = '' then
      begin
        pesan('Supplier tidak terdaftar');
        quMainActor.FocusControl;
        Abort;
      end;
    end;
  end;

  If (StatusKKBB='BM') or (StatusKKBB='BK') or (StatusKKBB = 'ARB') or (StatusKKBB = 'ARC') or (StatusKKBB = 'APB') or (StatusKKBB = 'APC') then
  Begin
    if TRIM(quMainBankId.AsString)='' then
    Begin
     MsgInfo('Bank tidak boleh kosong');
     quMainBankId.FocusControl;
     Abort;
    End;
    if TRIM(quMainLBankName.AsString)='' then
    Begin
     MsgInfo('Bank tidak ada dalam Master');
     quMainBankId.FocusControl;
     Abort;
    End;
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT FgActive FROM CFMsBank WHERE BankID='''+quMainBankId.AsString+''' ');
      Open;
    end;
    if quAct.FieldByName('FgActive').AsString = 'T' then
    begin
      pesan('Data Bank sudah tidak aktif. Tidak bisa dipakai lagi');
      quMainBankId.FocusControl;
      Abort;
    end;
  End;

  if (StatusKKBB = 'KM') or (StatusKKBB = 'BM') or (StatusKKBB = 'ARK') or (StatusKKBB = 'ARB') or (StatusKKBB = 'ARC') then
  begin
    if TRIM(quMainJumlahD.AsString) = '' then
    begin
      pesan('Jumlah Debet tidak boleh kosong');
      quMainJumlahD.FocusControl;
      Abort;
    end;
    if quMainJumlahD.AsCurrency < 0 then
    begin
      pesan('Jumlah Debet harus lebih besar sama dengan 0(nol)');
      quMainJumlahD.FocusControl;
      Abort;
    end;
  end else
  begin
    if TRIM(quMainJumlahK.AsString) = '' then
    begin
      pesan('Jumlah Kredit tidak boleh kosong');
      quMainJumlahK.FocusControl;
      Abort;
    end;
    if quMainJumlahK.AsCurrency < 0 then
    begin
      pesan('Jumlah Kredit harus lebih besar sama dengan 0(nol)');
      quMainJumlahK.FocusControl;
      Abort;
    end;
  end;

  if (StatusKKBB = 'APC') or  (StatusKKBB = 'ARC') then
  begin
    if TRIM(quMainNoBGCek.AsString) = '' then
    begin
      pesan('Transaksi menggunakan Cheque / Giro, No BG/Cek tidak boleh kosong.');
      quMainNoBGCek.FocusControl;
      Abort;
    end;
  end;

  if (StatusKKBB = 'APK') or (StatusKKBB = 'APB') or (StatusKKBB = 'ARK') or (StatusKKBB = 'ARB') or (StatusKKBB = 'JU') then
    quMainTransDate.AsDateTime := quMainTransdate1.AsDateTime;

  If quMain.State = dsInsert then
  Begin

    if StatusKKBB = 'GC' then
    begin
      DataMode := 'Baru';
      with quAct,SQL do
      begin
        Close;Clear;
        Add('SELECT IDVoucher FROM CFTrKKBBHd WHERE FlagKKBB=''GC'' AND IDVoucher='''+quMainIDVoucher.AsString+''' ');
        Open;
        if not IsEmpty then
        begin
          pesan('No Voucher sudah pernah dicairkan');
          quMainIDVoucher.FocusControl;
          Abort;
        end;
      end;
      quMainVoucherId.AsString  := ST + FormatFloat('000000', RunNumberGL(quAct,'CFTrKKBBHd', 'VoucherID', ST, '0') + 1);
    end else
    begin
      ST := StatusKKBB + FormatDateTime('/YY/MM-', quMainTransDate1.AsDateTime);
      quMainVoucherId.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct,'CFTrKKBBHd', 'VoucherID', ST, '0') + 1);
    end;

    With quAct,SQL do
    begin
       Close;Clear;
       add('SELECT VoucherID FROM CFTrKKBBHd WHERE VoucherID='''+quMainVoucherId.Value+'''');
       Open;
       If Not IsEmpty then
       begin
         MsgInfo('Kode ini sudah dipakai');
         quMainVoucherId.FocusControl;
         Abort;
       end;
    End;
    quMainUpdDate.AsDateTime := GetServerDateTime;
    quMainUpdUser.AsString := dmMain.UserId;
  End;
  quMainVoucherNo.AsString := quMainVoucherId.AsString;


  if TRIM(quMainVoucherId.AsString) = '' then
  begin
    pesan('No Voucher tidak boleh kosong');
    quMainVoucherId.FocusControl;
    Abort;
  end;
  quMainTglUbah.AsDateTime := GetServerDateTime;
  quMainUserUbah.AsString := dmMain.UserId;
end;

procedure TfmCFTrKKBB.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainCurrId.AsString := 'IDR';
  quMainTransDate.AsDateTime := Date;
  quMainTransdate1.AsDateTime := Date;
  quMainTransDate1.FocusControl;
  quMainFlagKKBB.AsString := StatusKKBB;
  quMainJumlahD.AsCurrency := 0;
  quMainJumlahK.AsCurrency := 0;
  quMainFgPayment.AsString := 'T';
  quMainRate.AsCurrency := 1;
  quMainTransDate.FocusControl;
end;

procedure TfmCFTrKKBB.FormShow(Sender: TObject);
begin
  FFieldTgl   := 'TransDate1';
  FFieldOrder := 'VoucherId,CONVERT(VARCHAR(8),TransDate1,112)';
  FAfterWhere:=' AND FlagKKBB='''+StatusKKBB+''' ';
  SettingDxGrid(dbg);
  inherited;
  quMain.Active  := TRUE;
  quDetil.Active := TRUE;
  quTotal.Active := TRUE;

  ts01.TabVisible := False;

  if StatusKKBB='PIK' then
  begin
    Caption :='Piutang Karyawan Kas';
    lbTotal.Caption := 'TOTAL PINJAMAN :';
    rbcetak.Left := 628;
    rbcetak.top := 97;
  end;
  if StatusKKBB='PIB' then
  begin
    Caption :='Piutang Karyawan Bank';
    lbTotal.Caption := 'TOTAL PINJAMAN :';
  end;

  If (StatusKKBB='KM') or (StatusKKBB='BM') or (StatusKKBB='ARK')  or (StatusKKBB='ARB')  or (StatusKKBB='ARC')  Then
   lblTerbayar.Caption := 'Terima Dari';

  If (StatusKKBB='KK') or (StatusKKBB='BK') or (StatusKKBB='APK')  or (StatusKKBB='APB')  or (StatusKKBB='APC') Then
   lblTerbayar.Caption := 'Dibayar Kepada :';

  If (StatusKKBB='KM') or (StatusKKBB='KK') Then
  Begin
    if StatusKKBB = 'KM' then
      Caption := 'Transaksi Kas Masuk'
    else
      Caption := 'Transaksi Kas Keluar';
    Label4.Top := 138;
    dxDBEdit2.Top := 132;
    Label3.Visible := False;
    dxDBButtonEdit1.Visible := False;
    DBText1.Visible := False;
    Panel1.Height := 200; dbg.Top := 200; dbg.Height :=dbg.Height+25;
    dxDBEdit4.Top := 162; dxDBEdit5.Top := 162;
    Label13.Top := 168; Label14.Top := 168;
    Label16.Visible := False; dxDBEdit6.Visible := False;
    RbCetak.Visible := False; RbCetak.ItemIndex := 1;
    rbcetak.Left := 628;
    rbcetak.top := 97;
  End;
  If (StatusKKBB='BM') or (StatusKKBB='BK') Then
  Begin
    if StatusKKBB = 'BM' then
      Caption := 'Transaksi Bank Masuk'
    else
      Caption := 'Transaksi Bank Keluar';
    dxDBButtonEdit1.Visible := True;
    DBText1.Visible := True;
    Label16.Visible := False; dxDBEdit6.Visible := False;
    RbCetak.Visible := False; RbCetak.ItemIndex := 1;
  End;
  if StatusKKBB = 'PIK' then
  begin
    Label4.Top := 96; dxDBEdit2.Top := 92;
    Label3.Visible := False; DBText5.Visible := True;
    dxDBButtonEdit1.Visible := False; DBText1.Visible := False;
    dxDBButtonEdit3.Visible := True; dxDBEdit3.Visible := False;
    rbcetak.Left := 628;
    rbcetak.top := 97;
  end;
  if StatusKKBB = 'PIB' then
  begin
    dxDBButtonEdit3.Visible := True;
    DBText5.Visible := True;
    dxDBEdit3.Visible := False;
  end;
  if (StatusKKBB = 'ARK') or (StatusKKBB = 'APK') then
  begin
    if StatusKKBB = 'ARK' then
      Caption := 'Transaksi Pembayaran Piutang Secara Kas'
      else
      Caption := 'Transaksi Pembayaran Hutang Secara Kas';
    Label17.Visible := False; dxDBDateEdit2.Visible := False;
    dbgInvoice.Visible := True; dbgNote.Visible := False;
    dxDBButtonEdit3.Visible := True; dxDBEdit3.Visible := False; DBText5.Visible := True;
    Label16.Visible := False; dxDBEdit6.Visible := False; Panel1.Height := 197;
    Label3.Visible := False; dxDBButtonEdit1.Visible := False;
    Label4.Top := Label3.Top; dxDBEdit2.Top := dxDBButtonEdit1.Top; Label15.Visible := False;
    Label13.Top := 168; Label14.Top := 168; dxDBEdit4.Top := 162; dxDBEdit5.Top := 162;
    dbg.Top := 200; dbg.Height := dbg.Height + 25;
    rbcetak.Left := 628;
    rbcetak.top := 97;
  end;
  if (StatusKKBB = 'ARB') or (StatusKKBB = 'APB') then
  begin
    if StatusKKBB = 'ARB' then
      Caption := 'Transaksi Pembayaran Piutang Secara Bank'
    else
      Caption := 'Transaksi Pembayaran Hutang Secara Bank';
    Label17.Visible := False; dxDBDateEdit2.Visible := False;
    dxDBButtonEdit3.Visible := True; dxDBEdit3.Visible := False; DBText5.Visible := True;
    dbgInvoice.Visible := True; dbgNote.Visible := False;
    Label16.Visible := False; dxDBEdit6.Visible := False;
  end;
  if (StatusKKBB = 'ARC') or (StatusKKBB = 'APC') then
  begin
    if StatusKKBB = 'ARC' then
      Caption := 'Transaksi Pembayaran Piutang Secara Cheque atau Giro'
    else
      Caption := 'Transaksi Pembayaran Hutang Secara Cheque atau Giro';
    dxDBButtonEdit3.Visible := True; dxDBEdit3.Visible := False; DBText5.Visible := True;
    dbgInvoice.Visible := True; dbgNote.Visible := False;
  end;
  if StatusKKBB = 'JU' then
  begin
    Caption := 'JURNAL UMUM';
    lblTerbayar.Visible := False; dxDBEdit3.Visible := False;
    Label17.Visible := False; dxDBDateEdit2.Visible := False;
    Label3.Visible := False; dxDBButtonEdit1.Visible := False; DBText1.Visible := False;
    Label16.Visible := False; dxDBEdit6.Visible := False;
    RbCetak.Visible := False; RbCetak.ItemIndex := 1;
    dxDBEdit2.Top := 102; dxDBEdit4.Top := 132; dxDBEdit5.Top := 132;
    Label4.Top := 108; Label13.Top := 138; Label14.Top := 138; Panel1.Height := 170;
  end;
  if (StatusKKBB = 'JU') or (StatusKKBB = 'KK') or (StatusKKBB = 'KM') or (StatusKKBB = 'BM') or (StatusKKBB = 'BK')
  or (StatusKKBB = 'APK') or (StatusKKBB = 'APB') or (StatusKKBB = 'APC') then
//  dbgUrut.Visible := True;

end;

procedure TfmCFTrKKBB.dbgEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmCFTrKKBB.quDetilNewRecord(DataSet: TDataSet);
Function GenerateNoUrut:Integer;
begin
   with quAct,SQL do
   begin
      Close; Clear;
      Add('SELECT Urut FROM CFTrKKBBDt WHERE VoucherId='''+quMainVoucherId.AsString+''' ORDER BY Urut DESC');
      Open;
      if IsEmpty then
        Result := 1
      else
        Result := StrToInt(FormatFloat('0',StrToInt(RightStr(fields[0].AsString,3))+1));
  end;
end;
begin
  inherited;
  quDetilRekeningId.FocusControl;
  quDetilAmount.AsCurrency :=0;
  if (StatusKKBB='KM') or (StatusKKBB='BM') or (StatusKKBB='ARK') or (StatusKKBB='ARB') or (StatusKKBB = 'ARC') then
    quDetilJenis.AsString := 'K'
  else
    quDetilJenis.AsString := 'D';
  if (StatusKKBB='ARK') or (StatusKKBB='ARB') or (StatusKKBB = 'ARC') then
    quDetilRekeningId.AsString := sDRPj;
  if (StatusKKBB='APK') or (StatusKKBB='APB') or (StatusKKBB = 'APC') then
    quDetilRekeningId.AsString := sDRPb;
  if (StatusKKBB = 'JU') or (StatusKKBB = 'KK') or (StatusKKBB = 'KM') or (StatusKKBB = 'BM') or (StatusKKBB = 'BK')
  or (StatusKKBB = 'APK') or (StatusKKBB = 'APB') or (StatusKKBB = 'APC') then
    quDetilUrut.AsInteger := GenerateNoUrut;
end;

procedure TfmCFTrKKBB.dbgRekIdButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := 'SELECT DISTINCT RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening,'
                   +'A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening '
                   +'FROM CFMsRekening A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId '
                   +'WHERE A.FgActive=''Y'' '//AND A.RekeningID NOT IN (SELECT RekeningID FROM CFMsBank UNION ALL SELECT '''+sDRKas+''') '
                   +'ORDER BY A.RekeningID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilRekeningId.Value := Res[1];
             quRek.Requery();
             quDetilLRekName.RefreshLookupList;
       end;
    finally
       free;
    end;
end;

procedure TfmCFTrKKBB.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  //SetReadOnly(dbgRekId, quDetil.State<>dsInsert);
  SetReadOnly(dbgRekName,TRUE);
  SetReadOnly(dbgGroup,TRUE);
  if (StatusKKBB = 'KM') or (StatusKKBB = 'KK') or (StatusKKBB = 'BM') or (StatusKKBB = 'BK') then
    SetReadOnly(dbgJenis,TRUE);
end;

procedure TfmCFTrKKBB.quDetilBeforePost(DataSet: TDataSet);
//var KodeRekening : string;
begin
  inherited;
  Nota := quMainVoucherId.AsString;
{  with quSales,SQL do
  begin
    Close;Clear;
    Add('SELECT K.RekeningID FROM (SELECT RekeningID,CustID FROM ARMsCustomer UNION ALL '
       +'SELECT RekeningID,SuppID FROM APMsSupplier) as K WHERE K.CustID='''+quMainActor.AsString+''' ');
    Open;
  end;
  KodeRekening := quSales.FieldByName('RekeningID').AsString;
}
  CekPeriode;
  
  if TRIM(quDetilRekeningId.AsString)='' then
  begin
     MsgInfo('Kode Rekening tidak boleh kosong !');
     quDetilRekeningId.FocusControl;
     Abort;
  end;

  if TRIM(quDetilLRekName.AsString)='' then
  begin
     MsgInfo('Kode Rekening tidak ada dalam Master!');
     quDetilRekeningId.FocusControl;
     Abort;
  end;

   With quAct,SQL do
   Begin
     Close;Clear;
     Add('Select Top 1 RekeningId,FgActive FROM CFMsRekening WHERE RekeningId='''+quDetilRekeningId.AsString+'''');
     Open;
     if IsEmpty then
     Begin
       MsgInfo('Kode Rekening tidak terdaftar dalam master rekening');
       quDetilRekeningId.FocusControl;
       Abort;
     End;
   End;
   if quAct.FieldByName('FgActive').AsString = 'T' then
   begin
     pesan('Data Rekening sudah tidak aktif, tidak bisa dipakai lagi');
     quDetilRekeningId.FocusControl;
     Abort;
   end;

   if (StatusKKBB = 'ARK') or (StatusKKBB = 'ARB') or (StatusKKBB = 'ARC') or (StatusKKBB = 'APK') or (StatusKKBB = 'APB') or (StatusKKBB = 'APC') then
   begin
     if (quDetilRekeningID.AsString = sDRPj) or (quDetilRekeningId.AsString = sDRPb) then
     begin
       with quAct,SQL do
       begin
         Close;Clear;
         Add('SELECT CONVERT(VARCHAR(10),K.Transdate,112) as Tanggal FROM (SELECT Transdate,SaleID,CustID FROM ARTrPenjualanHd UNION ALL '
            +'SELECT Transdate,PurchaseID,SuppID FROM APTrPurchaseHd) as K '
            +'WHERE K.CustID='''+quMainActor.AsString+''' AND K.SaleID='''+quDetilNote.AsString+''' ');
         Open;
         if IsEmpty then
         begin
           pesan('Invoice tidak ada');
           quDetilNote.FocusControl;
           Abort;
         end;
       end;
       if FormatDateTime('yyyyMMdd',quMainTransDate1.AsDateTime) < quAct.FieldByName('Tanggal').AsString then
       Begin
          MsgInfo('Tgl Pembayaran lebih kecil dari tgl Invoice');
          quDetilNote.FocusControl;
          Abort;
       End;
     end;

     if (quDetilRekeningID.AsString = sDRPb) or (quDetilRekeningId.AsString = sDRPj) then
     begin
       with quAct,SQL do
       Begin
         Close;Clear;
         Add('SELECT K.Total-ISNULL((SELECT ISNULL(SUM(CASE WHEN X.Jenis=''K'' THEN X.Amount ELSE X.Amount*-1 END),0) FROM CFTrKKBBDt X INNER JOIN CFTrKKBBHd Y ON X.VoucherID=Y.VoucherID '
            +'WHERE X.Note=K.SaleID AND Y.VoucherID<>'''+quMainVoucherId.AsString+'''),0) -'
            +'ISNULL((SELECT ISNULL(SUM(X.Qty*Y.Price),0) FROM ARTrReturPenjualanDt X INNER JOIN ARTrPenjualanDt Y ON X.SaleID=Y.SaleID AND X.ItemID=Y.ItemID WHERE Y.SaleID=K.SaleID),0) as Sisa FROM ('
            +'SELECT SaleID,ISNULL(TTLPj,0) as Total FROM ARTrPenjualanHd UNION ALL SELECT PurchaseID,ISNULL(TTLPb,0) FROM APTrPurchaseHd) as K WHERE K.SaleID='''+quDetilNote.AsString+''' ');
         Open;
       End;
       if quDetilAmount.AsCurrency > quAct.FieldByName('Sisa').AsCurrency then
       begin
         if (StatusKKBB = 'ARK') or (StatusKKBB = 'ARB') or (StatusKKBB = 'ARC') then
           pesan('Pembayaran melebihi Total Piutang '+#13+' Sisa Piutang adalah ['+FormatCurr(sDisFormat,quAct.FieldByName('Sisa').AsCurrency)+']')
         else
           pesan('Pembayaran melebihi Total Hutang '+#13+' Sisa Hutang adalah ['+FormatCurr(sDisFormat,quAct.FieldByName('Sisa').AsCurrency)+']');
         quDetilAmount.FocusControl;
         Abort;
       end;
     end;
   end;

  if quDetil.State = dsInsert then
  begin
    quDetilUpdUser.AsString := dmMain.UserId;
    quDetilUpdDate.AsDateTime := GetServerDateTime;
  End;

  if TRIM(qudetilNote.AsString)='' Then
  Begin
     MsgInfo('Keterangan  tidak boleh kosong !');
     quDetilNote.FocusControl;
     Abort;
  End;

  if TRIM(quDetilAmount.AsString)='' then
  begin
    pesan('Amount tidak boleh kosong !');
    quDetilAmount.FocusControl;
    Abort;
  end;

{  if quDetilAmount.AsCurrency < 0 then
  begin
    MsgInfo('Amount tidak boleh lebih kecil dari 0 !');
    quDetilAmount.FocusControl;
    Abort;
  end;}

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT '''+quDetilNote.AsString+''' ');
    try
      Open;
    Except
      on E :Exception do
      begin
        ShowMessage('Field Detil Keterangan Tidak boleh mengandung character petik tunggal');
        quDetilNote.FocusControl;
        Abort;
      end;
    end;
  end;
  if StatusKKBB <> 'JU' then
  begin
    if quDetilRekeningId.AsString = sDRPj then quDetilJenis.AsString := 'K';
    if quDetilRekeningId.AsString = sDRPb then quDetilJenis.AsString := 'D';
    if quDetilRekeningId.AsString = sDRPj then quDetilJenis.AsString := 'K';
    if quDetilRekeningId.AsString = sDRPb then quDetilJenis.AsString := 'D';
  end;
end;

procedure TfmCFTrKKBB.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Bank';
       SQLString := 'SELECT BankId as Kode_Bank, BankName as Nama_Bank'
                   +' FROM CFMsBank WHERE FgActive=''Y'' ORDER BY BankId';
       if ShowModal = MrOK then
       begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainBankId.Value := Res[0];
       end;
    finally
       Free;
    end;
end;

procedure TfmCFTrKKBB.quDetilAfterPost(DataSet: TDataSet);
var FgTrans : string;
begin
  inherited;
  CarirateNew(quAct,quMainTransDate.Value);
  quDetil.Locate('RekeningID',RekeningID,[]);

{  if quMainFgPayment.AsString = 'T' then
  begin
    if StatusKKBB <> 'JU' then
    begin
      if StatusKKBB = 'KM' then FgTrans := '1' else
        if StatusKKBB = 'KK' then FgTrans := '2' else
          if StatusKKBB = 'BM' then FgTrans := '3' else
            if StatusKKBB = 'BK' then FgTrans := '4' else
              if StatusKKBB = 'APK' then FgTrans := '5' else
                if StatusKKBB = 'APB' then FgTrans := '6' else
                  if StatusKKBB = 'APC' then FgTrans := '7' else
                    if StatusKKBB = 'ARK' then FgTrans := '8' else
                      if StatusKKBB = 'ARB' then FgTrans := '9' else
                        if StatusKKBB = 'ARC' then FgTrans := '10' else
                          if StatusKKBB = 'CK' then FgTrans := '21' else
                            if StatusKKBB = 'CB' then FgTrans := '22' else
                              if StatusKKBB = 'PK' then FgTrans := '23' else FgTrans := '24';

      with quAct,SQL do
      begin
        Close;Clear;
        Add('DELETE FROM AllMoney WHERE VoucherNo='''+quMainVoucherId.AsString+''' AND RekeningID='''+RekSbm+''' '
           +'AND FgTrans='''+FgTrans+''' AND Note='''+NoteSbm+''' AND Amount='''+CurrToStr(JumSbm)+''' ');
        ExecSQL;
      end;

   with quAct,SQL do
   begin
      Close; Clear;
      Add(' INSERT INTO AllMoney(VoucherNo,TransDate,Actor,FgBBKK,Rekeningid,GroupRekId,Amount,Note,FgTrans,TempField,TempField1,TempField3,ValutaId,Rate,Jenis)'
         +'              VALUES(:VoucherNo,:TransDate,:Actor,:FgBBKK,:Rekeningid,:GroupRekId,:Amount,:Note,:FgTrans,:TempField,:TempField1,:TempField3,:ValutaId,:Rate,:Jenis)');
      with Parameters do
      begin
         ParamByName('VoucherNo').Value := quMainVoucherId.AsString;
         ParamByName('TransDate').Value := FormatDateTime('yyyy-MM-dd',quMainTransDate.AsDateTime);
         ParamByName('Actor').Value := quMainActor.AsString;
         ParamByName('FgBBKK').Value := StatusKKBB;
         ParamByName('Rekeningid').Value := quDetilRekeningId.AsString;
         ParamByName('GroupRekId').Value  := quDetilLGroupRek.AsString;
         ParamByName('Amount').Value  := quDetilAmount.AsCurrency;
         ParamByName('Note').Value  := quDetilNote.AsString;
         ParamByName('FgTrans').Value := FgTrans;
         ParamByName('TempField').Value := quMainBankId.AsString;
         ParamByName('TempField1').Value := quMainLBankName.AsString;
         ParamByName('TempField3').Value := quMainLSalesName.AsString;
         ParamByName('ValutaId').Value := quMainCurrId.AsString;
         ParamByName('Rate').Value := quMainRate.AsCurrency;
         ParamByName('Jenis').Value := quDetilJenis.AsString;
      end;
      ExecSQL;
   end;
      InsertToAllMoneyHindra(quMainVoucherId.AsString,quMainTransDate.value,quMainActor.AsString,StatusKKBB,quDetilRekeningId.AsString
                       ,quDetilLGroupRek.AsString,quDetilAmount.value,quDetilNote.AsString,FgTrans,quMainBankId.AsString,quMainLBankName.AsString,quMainActor.AsString,quMainCurrId.AsString,1,quDetilJenis.AsString);

    end;   }
    quTotal.Requery();
    UpdateTotal;
    quMain.Requery();
    quMain.Locate('VoucherID',Nota,[]);
    quDetil.Append;
{  end else
  begin
    with quSales,SQL do
    begin
      Close;Clear;
      Add('SELECT VoucherID FROM CFTrKKBBHd WHERE IDVoucher='''+quMainVoucherId.AsString+''' ');
      Open;
    end;
    with quAct,SQL do
    begin
      Close;Clear;
      Add('UPDATE CFTrKKBBDt SET RekeningID='''+quDetilRekeningId.AsString+''',Note='''+quDetilNote.AsString+''','
         +'Amount='''+CurrToStr(quDetilAmount.AsCurrency)+''' '
         +'WHERE VoucherID='''+quSales.FieldByName('VoucherID').AsString+''' AND RekeningID='''+RekSbm+''' AND Note='''+NoteSbm+''' '
         +'AND Amount='''+CurrToStr(JumSbm)+''' AND CONVERT(VARCHAR(8),UpdDate,108)='''+JamInput+''' ');
      ExecSQL;
    end;
    quTotal.Requery();
    UpdateTotal;
    quMain.Requery();
    quMain.Locate('VoucherID',Nota,[]);
    quDetil.Append;
  end; }
end;

procedure TfmCFTrKKBB.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
CekPeriode;
end;

procedure TfmCFTrKKBB.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if GroupUser <> 'admin' then
  begin
    pesan('Anda tidak punya Akses untuk menghapus data');
    Abort;
  end;

  CekPeriode;
end;

procedure TfmCFTrKKBB.dxButton1Click(Sender: TObject);
var stotal : Currency;
begin
  inherited;
  CekStatus;
  CekBalance;
  if (StatusKKBB = 'KM') or (StatusKKBB = 'BM') or (StatusKKBB = 'ARK') or (StatusKKBB = 'ARB') or (StatusKKBB = 'ARC') then
  begin
    With quAct,SQL do
    Begin
      Close;Clear;
      Add('SELECT ISNULL(SUM(Amount),0)+ '''+CurrToStr(quMainJumlahD.AsCurrency)+''' as Total FROM CFTrKKBBDt '
         +'WHERE VoucherID=:VoucherID AND Jenis=''D''');
      Parameters.ParamByName('VoucherID').Value := quMainVoucherId.AsString;
      Open;
    End;
  end else
  if (StatusKKBB = 'KK') or (StatusKKBB = 'BK') or (StatusKKBB = 'APK') or (StatusKKBB = 'APB') or (StatusKKBB = 'APC') then
  begin
    With quAct,SQL do
    Begin
      Close;Clear;
      Add('SELECT ISNULL(SUM(Amount),0)+ '''+CurrToStr(quMainJumlahK.AsCurrency)+''' as Total FROM CFTrKKBBDt '
         +'WHERE VoucherID=:VoucherID AND Jenis=''K''');
      Parameters.ParamByName('VoucherID').Value := quMainVoucherId.AsString;
      Open;
    End;
  end else
  if (StatusKKBB = 'JU') or (StatusKKBB = 'GC') then
  begin
    With quAct,SQL do
    Begin
      Close;Clear;
      Add('SELECT 0 as Total');
      Open;
    End;
  end;
  if quAct.FieldByName('Total').AsCurrency < 0 then
    stotal := quAct.FieldByName('Total').AsCurrency*-1
  else
    stotal := quAct.FieldByName('Total').AsCurrency;

  if (StatusKKBB='JU') or (StatusKKBB = 'ARP') or (StatusKKBB = 'APP') then
  Begin
    With TfmCFQRRptTrKKBB.Create(Self) do
    Try
      qlbTitle.Caption:= sCompanyName;
      qlbTitleV.Caption := 'JURNAL UMUM';
      QRShape2.Enabled := False; QRShape6.Enabled := False;
      QRLabel1.Enabled := False; QRLabel2.Enabled := False;
      qlbKas.Enabled := False; qlbBank.Enabled := False;
      qlbTTerBayar.Enabled := False; QRLabel8.Enabled := False;
      if StatusKKBB = 'GL' then
        qlbTTerBayar.Enabled := False
      else
        qlbTTerBayar.Enabled := True;
      RbCetak.Visible := False;
      qlbJourTransID.Caption := ': ' + quMainVoucherId.AsString;
      QRLabel8.Enabled := False; qlbTitleV.Top := 18;
      qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTransDate.AsDateTime);
      qlbterimaDari.Caption := quMainLSalesName.AsString;
     if UpperCase(quMainCurrId.Value) ='IDR' then
         qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, quMainJumlahD.AsCurrency))+' Rupiah #';

      qlbKeterangan.Caption := quMainNote.Value;
      QRLabel16.Caption :='Dibayar oleh';

      With qu001,SQL do
      Begin
        Close;Clear;
        add('SELECT K.RekeningID,L.RekeningName,K.Amount,K.Note,K.Jenis FROM ('
           +'SELECT VoucherID,RekeningID,Amount,Note,CASE WHEN Jenis=''D'' THEN 2 ELSE 3 END as Urut,Jenis,UpdDate FROM CFTrKKBBDt) as K '
           +'INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID WHERE VoucherId='''+quMainVoucherId.AsString+''' '
           +'ORDER BY K.Jenis,K.UpdDate,K.Urut,K.RekeningID');
        Open;
      End;
        if sCetak = '0' then
          MyReport.Previewmodal
        else
          MyReport.Print;
    Finally
      Free;
    End;
  End;

  if (StatusKKBB='KM') or (StatusKKBB='ARK') then
  Begin
    if RbCetak.ItemIndex = 0 then
    begin
      with TfmQRRptBuktiBayar.Create(Self) do
      try
         if UpperCase(quMainCurrID.AsString)='IDR' then
           qlbTerbilang.Caption := '* Terbilang '+ convert(FormatFloat(sEditFormat, stotal))+'rupiah #'
         else
           qlbTerbilang.Caption := '* Terbilang '+ convert(FormatFloat(sEditFormat, stotal))+'dollar #';
         with qu001,SQL do
         Begin
           Close;Clear;
           add(' Select VoucherID,VoucherID As BuktiBayar,CurrId,Convert(varchar(10),A.Transdate,103) as Tgl,'
              +' C.CustName+'' - ''+C.City as CustSupp,A.Note,CASE WHEN A.FlagKKBB=''ARK'' THEN ''KAS'' '
              +'                                                   WHEN A.FlagKKBB=''ARB'' THEN ''TRANSFER BANK ''+(SELECT X.BankName FROM CFMsBank X WHERE X.BankID=A.BankID) '
              +'ELSE ''SECARA CHEQUE / GIRO ''+(SELECT X.BankName FROM CFMsBank X WHERE X.BankID=A.BankID) END as CaraBayar '
              +' FROM CFTrKKBBHd A INNER JOIN ARMsCustomer C ON A.Actor=C.CustId'
              +' WHERE A.VoucherID='''+quMainVoucherId.AsString+'''');
           Open;
         End;

         With qu002,SQL do
         Begin
           Close;Clear;
           Add('SELECT CASE WHEN A.RekeningID IN ('''+sDRPj+''','''+sDRPb+''') THEN A.Note ELSE C.RekeningName+'' (''+A.Note+'')'' END as NoInvoice,'
               +'ISNULL(CASE WHEN Jenis=''K'' THEN Amount ELSE Amount*-1 END,0) as Price,CONVERT(VARCHAR(10),B.Transdate,103) as Tgl FROM CFTrKKBBdt A '
               +'LEFT JOIN (SELECT Transdate,SaleID FROM ARTrPenjualanHd) B ON A.Note=B.SaleID '
               +'INNER JOIN CFMsRekening C ON A.RekeningID=C.RekeningID WHERE A.VoucherID='''+quMainVoucherId.AsString+''' ');
           Open;
         End;

         if sCetak = '0' then
           MyReport.PreviewModal
         else
           MyReport.Print;

      finally
         free;
      end;
    end else
    begin
      With TfmCFQRRptTrKKBB.Create(Self) do
      Try
        qlbTitle.Caption:= sCompanyName;
        qlbKas.Enabled := true;
        qlbBank.Enabled := not qlbKas.Enabled;
        qlbTitleV.Caption := 'BUKTI PENERIMAAN';
        qlbTTerBayar.Caption := 'Terima dari';
        qlbJourTransID.Caption := ': ' + quMainVoucherId.AsString;
        qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTransDate1.AsDateTime);
        if StatusKKBB = 'KM' then
          qlbterimaDari.Caption := quMainActor.AsString
        else
          qlbterimaDari.Caption := quMainLSalesName.AsString;
       if UpperCase(quMainCurrId.Value) ='IDR' then
           qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, stotal))+'rupiah';
        if UpperCase(quMainCurrId.Value) ='USD' then
           qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, stotal))+'dollar';

        qlbKeterangan.Caption := quMainNote.Value;
        QRLabel16.Caption :='Dibayar oleh';
        if sTotal >= 0 then
          qlbTotal.Caption := FormatFloat(sDisFormat, sTotal)
        else
          qlbTotal.Caption := '(' + FormatFloat(sDisFormat, abs(sTotal)) + ')';
        With qu001,sql do
        Begin
          Close;Clear;
          add('SELECT K.RekeningID,L.RekeningName,K.Amount,K.Note,K.Jenis FROM ('
             +'SELECT VoucherID,'''+sDRKas+''' as RekeningID,ISNULL(JumlahD,0) as Amount,Note,1 as Urut,''D'' as Jenis FROM CFTrKKBBHd '
             +'UNION ALL SELECT VoucherID,RekeningID,Amount,Note,CASE WHEN Jenis=''D'' THEN 2 ELSE 3 END,Jenis FROM CFTrKKBBDt) as K '
             +'INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID WHERE VoucherId='''+quMainVoucherId.AsString+''' '
             +'ORDER BY K.jenis,K.Urut,K.RekeningID');
          Open;
        End;
         if sCetak = '0' then
           MyReport.PreviewModal
         else
           MyReport.Print;
      Finally
        Free;
      End;
    end;
  End;

  if (StatusKKBB='KK') or (StatusKKBB='APK') then
  Begin
    With TfmCFQRRptTrKKBB.Create(Self) do
    Try
     qlbTitle.Caption:= sCompanyName;
      qlbKas.Enabled := true;
      qlbBank.Enabled := not qlbKas.Enabled;
      qlbTitleV.Caption := 'BUKTI PENGELUARAN';
      qlbTTerBayar.Caption := 'Dibayar kepada';
      qlbJourTransID.Caption := ': ' + quMainVoucherId.AsString;
      qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTransDate1.AsDateTime);
      if StatusKKBB = 'KK' then
        qlbterimaDari.Caption := quMainActor.AsString
      else
        qlbterimaDari.Caption := quMainLSalesName.AsString;
      if UpperCase(quMainCurrId.Value) ='IDR' then
         qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, stotal))+'rupiah';
      if UpperCase(quMainCurrId.Value) ='USD' then
         qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, stotal))+'dollar';

      qlbKeterangan.Caption := quMainNote.Value;
      QRLabel16.Caption :='Diterima oleh';
      if sTotal >= 0 then
        qlbTotal.Caption := FormatFloat(sDisFormat, sTotal)
      else
        qlbTotal.Caption := '(' + FormatFloat(sDisFormat, abs(sTotal)) + ')';
      With qu001,sql do
      Begin
        Close;Clear;
          add('SELECT K.RekeningID,L.RekeningName,K.Amount,K.Note,K.Jenis FROM ('
             +'SELECT VoucherID,'''+sDRKas+''' as RekeningID,ISNULL(JumlahK,0) as Amount,Note,1 as Urut,''K'' as Jenis FROM CFTrKKBBHd '
             +'UNION ALL SELECT VoucherID,RekeningID,Amount,Note,CASE WHEN Jenis=''D'' THEN 2 ELSE 3 END,Jenis FROM CFTrKKBBDt) as K '
             +'INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID WHERE VoucherId='''+quMainVoucherId.AsString+''' '
             +'ORDER BY K.jenis,K.Urut,K.RekeningID');
        Open;
      End;
       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;
    Finally
      Free;
    End;
  End;

  if (StatusKKBB='BM') or (StatusKKBB='ARB') or (StatusKKBB='ARC') then
  Begin
    if RbCetak.ItemIndex = 0 then
    begin
      with TfmQRRptBuktiBayar.Create(Self) do
      try
         if UpperCase(quMainCurrID.AsString)='IDR' then
           qlbTerbilang.Caption := '* Terbilang '+ convert(FormatFloat(sEditFormat, stotal))+'rupiah #'
         else
           qlbTerbilang.Caption := '* Terbilang '+ convert(FormatFloat(sEditFormat, stotal))+'dollar #';
         with qu001,SQL do
         Begin
           Close;Clear;
           add(' Select VoucherID,VoucherID As BuktiBayar,CurrId,Convert(varchar(10),A.Transdate,103) as Tgl,'
              +' C.CustName+'' - ''+C.City as CustSupp,A.Note,CASE WHEN A.FlagKKBB=''ARK'' THEN ''KAS'' '
              +'                                                   WHEN A.FlagKKBB=''ARB'' THEN ''TRANSFER BANK ''+(SELECT X.BankName FROM CFMsBank X WHERE X.BankID=A.BankID) '
              +'ELSE ''SECARA CHEQUE / GIRO ''+(SELECT X.BankName FROM CFMsBank X WHERE X.BankID=A.BankID) END as CaraBayar '
              +' FROM CFTrKKBBHd A INNER JOIN ARMsCustomer C ON A.Actor=C.CustId'
              +' WHERE A.VoucherID='''+quMainVoucherId.AsString+'''');
           Open;
         End;

         With qu002,sql do
         Begin
           Close;Clear;
           Add('SELECT CASE WHEN A.RekeningID IN ('''+sDRPj+''','''+sDRPb+''') THEN A.Note ELSE C.RekeningName+'' (''+A.Note+'')'' END as NoInvoice,'
               +'ISNULL(CASE WHEN Jenis=''K'' THEN Amount ELSE Amount*-1 END,0) as Price,CONVERT(VARCHAR(10),B.Transdate,103) as Tgl FROM CFTrKKBBdt A '
               +'LEFT JOIN (SELECT Transdate,SaleID FROM ARTrPenjualanHd) B ON A.Note=B.SaleID '
               +'INNER JOIN CFMsRekening C ON A.RekeningID=C.RekeningID WHERE A.VoucherID='''+quMainVoucherId.AsString+''' ');
           Open;
         End;

         if sCetak = '0' then
           MyReport.PreviewModal
         else
           MyReport.Print;

      finally
         free;
      end;
    end else
    begin
      With TfmCFQRRptTrKKBB.Create(Self) do
      Try
        qlbTitle.Caption:= sCompanyName;
        qlbKas.Enabled := false;
        qlbBank.Enabled := not qlbKas.Enabled;
        qlbTitleV.Caption := 'BUKTI PENERIMAAN';
        qlbTTerBayar.Caption := 'Diterima dari';
        qlbJourTransID.Caption := ': ' + quMainVoucherId.AsString;
        qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTransDate1.AsDateTime);
        if StatusKKBB = 'BM' then
          qlbterimaDari.Caption := quMainActor.AsString
        else
          qlbterimaDari.Caption := quMainLSalesName.AsString;
        if UpperCase(quMainCurrId.Value) ='IDR' then
           qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, stotal))+'rupiah';
        if UpperCase(quMainCurrId.Value) ='USD' then
           qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, stotal))+'dollar';
        qlbKeterangan.Caption := quMainNote.Value;
        QRLabel16.Caption :='Dibayar oleh';
        if sTotal >= 0 then
          qlbTotal.Caption := FormatFloat(sDisFormat, sTotal)
        else
          qlbTotal.Caption := '(' + FormatFloat(sDisFormat, abs(sTotal)) + ')';
        With qu001,sql do
        Begin
          Close;Clear;
          add('SELECT K.RekeningID,L.RekeningName,K.Amount,K.Note,K.Jenis FROM ('
             +'SELECT VoucherID,B.RekeningID,ISNULL(JumlahD,0) as Amount,A.Note,1 as Urut,''D'' as Jenis FROM CFTrKKBBHd A '
             +'INNER JOIN CFMsBank B ON A.BankID=B.BankID UNION ALL SELECT VoucherID,RekeningID,Amount,Note,'
             +'CASE WHEN Jenis=''D'' THEN 2 ELSE 3 END,Jenis FROM CFTrKKBBDt) as K '
             +'INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID WHERE VoucherId='''+quMainVoucherId.AsString+''' '
             +'ORDER BY K.Jenis,K.Urut,K.RekeningID');
          Open;
        End;
         if sCetak = '0' then
           MyReport.PreviewModal
         else
           MyReport.Print;
      Finally
        Free;
      End;
    end;
  End;

  if (StatusKKBB='BK') or (StatusKKBB='APB') or (StatusKKBB='APC') then
  Begin
    With TfmCFQRRptTrKKBB.Create(Self) do
    Try
      qlbTitle.Caption:= sCompanyName;
      qlbKas.Enabled := false;
      qlbBank.Enabled := not qlbKas.Enabled;
      qlbTitleV.Caption := 'BUKTI PENGELUARAN';
      qlbTTerBayar.Caption := 'Dibayar kepada';
      qlbJourTransID.Caption := ': ' + quMainVoucherId.AsString;
      qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTransDate1.AsDateTime);
      if StatusKKBB = 'BK' then
        qlbterimaDari.Caption := quMainActor.AsString
      else
        qlbterimaDari.Caption := quMainLSalesName.AsString;
     if UpperCase(quMainCurrId.Value) ='IDR' then
         qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, stotal))+'rupiah';
      if UpperCase(quMainCurrId.Value) ='USD' then
         qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, stotal))+'dollar';
      qlbKeterangan.Caption := quMainNote.Value;
      QRLabel16.Caption :='Diterima oleh';
      if sTotal >= 0 then
        qlbTotal.Caption := FormatFloat(sDisFormat, sTotal)
      else
        qlbTotal.Caption := '(' + FormatFloat(sDisFormat, abs(sTotal)) + ')';
      With qu001,sql do
      Begin
        Close;Clear;
        add('SELECT K.RekeningID,L.RekeningName,K.Amount,K.Note,K.Jenis FROM ('
           +'SELECT VoucherID,B.RekeningID,ISNULL(JumlahK,0) as Amount,A.Note,1 as Urut,''K'' as Jenis FROM CFTrKKBBHd A '
           +'INNER JOIN CFMsBank B ON A.BankID=B.BankID UNION ALL SELECT VoucherID,RekeningID,Amount,Note,'
           +'CASE WHEN Jenis=''D'' THEN 2 ELSE 3 END,Jenis FROM CFTrKKBBDt) as K '
           +'INNER JOIN CFMsRekening L ON K.RekeningID=L.RekeningID WHERE VoucherId='''+quMainVoucherId.AsString+''' '
           +'ORDER BY K.Jenis,K.Urut,K.RekeningID');
        Open;
      End;
       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;
    Finally
      Free;
    End;
  End;
  if StatusKKBB='PIK' then
  Begin
    With TfmCFQRRptTrKKBB.Create(Self) do
    Try
      qlbTitle.Caption:= sCompanyName;
      qlbKas.Enabled := True;
      qlbBank.Enabled := not qlbKas.Enabled;
      qlbTitleV.Caption := 'BUKTI PINJAMAN';
      qlbTTerBayar.Caption := 'Dibayar kepada';
      qlbJourTransID.Caption := ': ' + quMainVoucherId.AsString;
      qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTransDate1.AsDateTime);
      qlbterimaDari.Caption := quMainLSalesName.AsString;
     if UpperCase(quMainCurrId.Value) ='IDR' then
         qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, stotal))+'rupiah';
      if UpperCase(quMainCurrId.Value) ='USD' then
         qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, stotal))+'dollar';
      qlbKeterangan.Caption := quMainNote.Value;
      QRLabel16.Caption :='Diterima oleh';
      if sTotal >= 0 then
        qlbTotal.Caption := FormatFloat(sDisFormat, sTotal)
      else
        qlbTotal.Caption := '(' + FormatFloat(sDisFormat, abs(sTotal)) + ')';
      With qu001,sql do
      Begin
        Close;Clear;
        add('Select A.RekeningID, A.Amount, A.Note FROM CFTrKKBBDt A WHERE A.VoucherId='''+quMainVoucherId.AsString+'''');
        Open;
      End;
       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;
    Finally
      Free;
    End;
  End;

  if StatusKKBB='PIB' then
  Begin
    With TfmCFQRRptTrKKBB.Create(Self) do
    Try
      qlbTitle.Caption:= sCompanyName;
      qlbKas.Enabled := False;
      qlbBank.Enabled := not qlbKas.Enabled;
      qlbTitleV.Caption := 'BUKTI PINJAMAN';
      qlbTTerBayar.Caption := 'Dibayar kepada';
      qlbJourTransID.Caption := ': ' + quMainVoucherId.AsString;
      qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTransDate1.AsDateTime);
      qlbterimaDari.Caption := quMainLSalesName.AsString;
     if UpperCase(quMainCurrId.Value) ='IDR' then
         qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, stotal))+'rupiah';
      if UpperCase(quMainCurrId.Value) ='USD' then
         qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat, stotal))+'dollar';
      qlbKeterangan.Caption := quMainNote.Value;
      QRLabel16.Caption :='Diterima oleh';
      if sTotal >= 0 then
        qlbTotal.Caption := FormatFloat(sDisFormat, sTotal)
      else
        qlbTotal.Caption := '(' + FormatFloat(sDisFormat, abs(sTotal)) + ')';
      With qu001,sql do
      Begin
        Close;Clear;
        add('Select A.RekeningID, A.Amount, A.Note FROM CFTrKKBBDt A WHERE A.VoucherId='''+quMainVoucherId.AsString+'''');
        Open;
      End;
       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;
    Finally
      Free;
    End;
  End;
end;

procedure TfmCFTrKKBB.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Valuta';
       SQLString := 'SELECT CurrId as Kode_Valuta, CurrName as Nama_Valuta'
               +' FROM SAMsValuta ORDER BY CurrId';
       if ShowModal = MrOk then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainCurrID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmCFTrKKBB.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Data Transaksi';
       if (StatusKKBB = 'APK') or (StatusKKBB = 'APB') or (StatusKKBB = 'APC') then
         SQLString := 'SELECT VoucherId,Convert(varchar(10),TransDate1,103) as TanggalVoucher,A.CurrID as ValutaId,D.CurrName as Nama_Valuta,'
                     +'E.SuppName as Supplier,C.Bankname as Nama_Bank ,A.Note as Keterangan FROM CFTrKKBBHd A '
                     +'LEFT JOIN CFMsBank C ON A.BankID=C.BankID INNER JOIN SAMsValuta D ON A.CurrId=D.CurrId '
                     +'INNER JOIN APMsSupplier E ON A.Actor=E.SuppID '
                     +' WHERE '+FSQLWhere else
       if (StatusKKBB = 'ARK') or (StatusKKBB = 'ARB') or (StatusKKBB = 'ARC') then
         SQLString := 'SELECT VoucherId,Convert(varchar(10),TransDate1,103) as TanggalVoucher,A.CurrID as ValutaId,D.CurrName as Nama_Valuta,'
                     +'E.CustName as Pelanggan,C.Bankname as Nama_Bank ,A.Note as Keterangan FROM CFTrKKBBHd A '
                     +'LEFT JOIN CFMsBank C ON A.BankID=C.BankID INNER JOIN SAMsValuta D ON A.CurrId=D.CurrId '
                     +'INNER JOIN ARMsCustomer E ON A.Actor=E.CustID '
                     +' WHERE '+FSQLWhere
       else
         SQLString := 'SELECT VoucherId,Convert(varchar(10),TransDate1,103) as TanggalVoucher,A.CurrID as ValutaId,D.CurrName as Nama_Valuta,'
                     +'A.Actor,C.Bankname as Nama_Bank ,A.Note as Keterangan FROM CFTrKKBBHd A '
                     +'LEFT JOIN CFMsBank C ON A.BankID=C.BankID INNER JOIN SAMsValuta D ON A.CurrId=D.CurrId '
                     +' WHERE '+FSQLWhere;
       SQLString := SQLString+' AND FlagKKBB='''+StatusKKBB+''' ORDER BY VoucherId ';
       if ShowModal = MrOK then
       begin
         quMain.Locate('VoucherId',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmCFTrKKBB.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
      if (StatusKKBB = 'PIK') or (StatusKKBB = 'PIB') then
      begin
        Title := 'Karyawan';
        SQLString := 'SELECT SalesName as Karyawan,SalesID as Kode_Karyawan FROM ARMsSales WHERE FgActive <> 0 ORDER BY SalesID';
      end;
      if (StatusKKBB = 'ARK') or (StatusKKBB = 'ARB') or (StatusKKBB = 'ARC') then
      begin
        Title := 'Pelanggan';
        SQLString := 'SELECT CustName as Pelanggan,CustID as Kode_Pelanggan FROM ARMsCustomer ORDER BY CustID';
      end;
      if (StatusKKBB = 'APK') or (StatusKKBB = 'APB') or (StatusKKBB = 'APC') then
      begin
        Title := 'Supplier';
        SQLString := 'SELECT SuppName as Supplier,SuppID as Kode_Supplier FROM APMsSupplier ORDER BY SuppID';
      end;
      if ShowModal = MrOK then
      begin
        if quMain.State = dsBrowse then quMain.Edit;
        quMainActor.Value := Res[1];
      end;
  finally
      Free;
  end;
end;

procedure TfmCFTrKKBB.bbTambahClick(Sender: TObject);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmCFTrKKBB.bbHapusClick(Sender: TObject);
begin
  inherited;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Nota ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmCFTrKKBB.bbSimpanClick(Sender: TObject);
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

procedure TfmCFTrKKBB.bbBatalClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmCFTrKKBB.quDetilBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekPeriode;
  RekSbm := TRIM(quDetilRekeningId.AsString);
  NoteSbm := TRIM(quDetilNote.AsString);
  JumSbm := quDetilAmount.AsCurrency;
  JamInput := FormatDateTime('HH:MM:SS',quDetilUpdDate.AsDateTime);
end;

procedure TfmCFTrKKBB.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;

  if quMain.IsEmpty then Abort;

  CekPeriode;
end;

procedure TfmCFTrKKBB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  CekBalance;
end;

procedure TfmCFTrKKBB.quMainAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CekBalance;
end;

procedure TfmCFTrKKBB.quMainBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CekBalance;
end;

procedure TfmCFTrKKBB.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTotal;
  quMain.Requery();
  quMain.Locate('VoucherID',Nota,[]);
end;

procedure TfmCFTrKKBB.dbgInvoiceButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(self) do
    try
       if (StatusKKBB = 'ARK') or (StatusKKBB = 'ARB') or (StatusKKBB = 'ARC') then
       begin
         Title := 'Invoice Penjualan';
         SQLString := 'SELECT K.SaleID as Nota,CONVERT(VARCHAR(10),K.Transdate,103) as Tgl,ISNULL(K.TTLPj,0) as Total_Nota,ISNULL(K.Bayar,0) as Bayar,'
                     +'ISNULL(K.Retur,0) as Retur,ISNULL(K.TTLPj-K.Bayar-K.Retur,0) as Sisa FROM ('
                     +'SELECT SaleID,Transdate,B.CurrID,B.CustID,ISNULL(TTLPj,0) as TTLPj,'
                     +'(SELECT ISNULL(SUM(A.Amount),0) FROM CFTrKKBBDt A WHERE A.Note=B.SaleID AND A.RekeningID='''+sDRPj+''') as Bayar,'
                     +'(SELECT ISNULL(SUM(X.Qty*Y.Price),0) FROM ARTrReturPenjualanDt X '
                     +'INNER JOIN ARTrPenjualanDt Y ON X.SaleID=Y.SaleID AND X.ItemID=Y.ItemID WHERE Y.SaleID=B.SaleID) as Retur FROM ARTrPenjualanHd B ) as K '
                     +'WHERE K.CurrID='''+quMainCurrId.AsString+''' AND K.CustID='''+quMainActor.AsString+''' AND ISNULL(K.TTLPj-K.Bayar-K.Retur,0) <> 0';
       end;
       if (StatusKKBB = 'APK') or (StatusKKBB = 'APB') or (StatusKKBB = 'APC') then
       begin
         Title := 'Invoice Pembelian';
         SQLString := 'SELECT K.PurchaseID as Nota_Pembelian,CONVERT(VARCHAR(10),K.Transdate,103) as Tgl_Pembelian,'
                     +'ISNULL(K.TTLPb,0) as Total_Nota,ISNULL(K.Bayar,0) as Pembayaran,ISNULL(K.Retur,0) as Retur,'
                     +'ISNULL(K.TTLPb-K.Bayar-K.Retur,0) as Sisa FROM ('
                     +'SELECT B.PurchaseID,B.TransDate,B.TTLPb,B.CurrID,B.SuppID,'
                     +'(SELECT ISNULL(SUM(Amount),0) FROM CFTrKKBBDt A INNER JOIN CFTrKKBBHd C ON A.VoucherID=C.VoucherID '
                     +'WHERE A.Note=B.PurchaseID AND C.Actor=B.SuppID AND A.RekeningID='''+sDRPb+''') as Bayar, (SELECT ISNULL(Sum(Price*Qty),0) '
                     +'FROM APTrReturnDt F INNER JOIN APTrReturnHd G  ON F.ReturnID=G.ReturnID '
                     +'WHERE G.FlagRetur=''B'' AND F.purchaseID=B.PurchaseID  AND G.SuppID=B.SuppID) as Retur '
                     +'FROM APTrPurchaseHd B Where ISNULL(B.FgOto,''T'')=''Y'' ) as K '
                     +'WHERE K.CurrID='''+quMainCurrID.AsString+''' AND K.SuppID='''+quMainActor.AsString+''' AND '
                     +'CONVERT(VARCHAR(10),K.Transdate,112) <='''+FormatDateTime('yyyyMMdd',quMainTransDate.AsDateTime)+''' '
                     +'AND ISNULL(K.TTLPb-K.Bayar-K.Retur,0) > 0' ;
       end;
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilNote.Value := Res[0];
             quDetilAmount.AsString := Res[5];
       end;
    finally
       Free;
    end;
end;

procedure TfmCFTrKKBB.quDetilRekeningIdChange(Sender: TField);
begin
  inherited;
  if (StatusKKBB = 'ARK') or (StatusKKBB = 'ARB') or (StatusKKBB = 'ARC') then
  begin
    if quDetilRekeningId.AsString <> sDRPj then
    begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('SELECT TOP 1 Note FROM CFTrKKBBDt WHERE RekeningID IN ('''+sDRPj+''','''+sDRPb+''') '
           +'AND VoucherID='''+quMainVoucherId.AsString+''' ORDER BY CONVERT(VARCHAR(8),UpdDate,112) DESC');
        Open;
      end;
      quDetilNote.AsString := quAct.FieldByName('Note').AsString;
    end;
  end else
  if (StatusKKBB = 'APK') or (StatusKKBB = 'APB') or (StatusKKBB = 'APC') then
  begin
    if quDetilRekeningId.AsString <> sDRPb then
    begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('SELECT TOP 1 Note FROM CFTrKKBBDt WHERE RekeningID IN ('''+sDRPj+''','''+sDRPb+''') '
           +'AND VoucherID='''+quMainVoucherId.AsString+''' ORDER BY CONVERT(VARCHAR(8),UpdDate,112) DESC');
        Open;
      end;
      quDetilNote.AsString := quAct.FieldByName('Note').AsString;
    end;
  end;
end;

procedure TfmCFTrKKBB.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  quDetil.Requery();
end;

procedure TfmCFTrKKBB.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekPeriode;
end;

end.
