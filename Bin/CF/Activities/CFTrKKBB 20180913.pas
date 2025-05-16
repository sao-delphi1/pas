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
    dbg: TdxDBGrid;
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
    dbgRekName: TdxDBGridColumn;
    dbgRekId: TdxDBGridButtonColumn;
    quDetilRekeningId: TStringField;
    quDetilLRekName: TStringField;
    dbgAmount: TdxDBGridColumn;
    quDetilLGroupRek: TStringField;
    quGroupRek: TADOQuery;
    quDetilLGroupName: TStringField;
    dbgGroup: TdxDBGridColumn;
    LKKBB: TLabel;
    dbgNote: TdxDBGridColumn;
    dxButton1: TdxButton;
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
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    quMainLCurrName: TStringField;
    DBText2: TDBText;
    dbgListColumn10: TdxDBGridColumn;
    GroupBox3: TGroupBox;
    DBText7: TDBText;
    lbTotal: TLabel;
    bbBatal: TdxButton;
    bbSimpan: TdxButton;
    bbHapus: TdxButton;
    bbTambah: TdxButton;
    dxDBButtonEdit3: TdxDBButtonEdit;
    DBText5: TDBText;
    quSales: TADOQuery;
    quMainLSalesName: TStringField;
    quCalc: TADOQuery;
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
  private
    { Private declarations }
    Procedure CekStatus;
  public
    { Public declarations }
    StatusKKBB : string ;
  end;

var
  fmCFTrKKBB: TfmCFTrKKBB;

implementation

uses MyUnit, UnitGeneral, ConMain, Search, Allitem, StdLv0, RptGLTrKMKK,
  RptPrev, StdLv1, StdLv3;

{$R *.dfm}

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
  SetReadOnly(dxDBDateEdit1,qumain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit2,qumain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit1,qumain.State<>dsInsert);
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBEdit3,qumain.State<>dsInsert);
end;

procedure TfmCFTrKKBB.quMainBeforePost(DataSet: TDataSet);
Var ST : String;
begin
  inherited;
  if Trim(quMainTransDate.AsString)='' then
  begin
    MsgInfo('Tanggal tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  if Trim(quMainCurrId.Value)='' then
  begin
    MsgInfo('Valuta tidak boleh kosong');
    quMainCurrId.FocusControl;
    Abort;
  End;

  if Trim(quMainLCurrName.Value)='' then
  begin
    MsgInfo('Valuta tidak ada dalam Master');
    quMainCurrId.FocusControl;
    Abort;
  End;

  if Trim(quMainActor.AsString)='' then
  begin
    if (StatusKKBB ='KM') or (StatusKKBB='BM') Then
       MsgInfo('Diterima Dari tidak boleh kosong')
    else
       MsgInfo('Dibayar Kepada tidak boleh kosong');
    quMainActor.FocusControl;
    Abort;
  End;

  If (StatusKKBB='BM') or (StatusKKBB='BK') or (StatusKKBB='PIB') then
  Begin
    if TRIM(quMainBankId.Value)='' then
    Begin
     MsgInfo('Bank tidak boleh kosong');
     quMainBankId.FocusControl;
     Abort;
    End;
    if TRIM(quMainLBankName.Value)='' then
    Begin
     MsgInfo('Bank tidak ada dalam Master');
     quMainBankId.FocusControl;
     Abort;
    End;
  End;

  if (StatusKKBB = 'PIK') or (StatusKKBB = 'PIB') then
  begin
    if quMainCurrId.AsString = 'USD' then
    begin
      ShowMessage('Transaksi Piutang Karyawan hanya bisa digunakan untuk mata uang Rupiah');
      quMainCurrId.FocusControl;
      Abort;
    end;
    if Trim(quMainLSalesName.AsString)='' then
    begin
      ShowMessage('Karyawan tidak terdaftar dalam Master Sales');
      quMainActor.FocusControl;
      Abort;
    end;
  end;

  If quMain.State = dsinsert then
  Begin
      if StatusKKBB='KM' then
      Begin
        ST := 'KM/'+PT+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
        quMainVoucherId.Value  := ST + FormatFloat('0000', RunNumberGL(quAct,'CFTrKKBBHd', 'VoucherId', ST, '0') + 1);
      End;
      if StatusKKBB='KK' then
      Begin
         ST := 'KK/'+PT+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
         quMainVoucherId.Value  := ST + FormatFloat('0000', RunNumberGL(quAct,'CFTrKKBBHd', 'VoucherId', ST, '0') + 1);
      End;
      if StatusKKBB='BM' then
      Begin
         ST := 'BM/'+PT+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
         quMainVoucherId.Value  := ST + FormatFloat('0000', RunNumberGL(quAct,'CFTrKKBBHd', 'VoucherId', ST, '0') + 1);
      End;
      if StatusKKBB='BK' then
      Begin
         ST := 'BK/'+PT+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
         quMainVoucherId.Value  := ST + FormatFloat('0000', RunNumberGL(quAct,'CFTrKKBBHd', 'VoucherId', ST, '0') + 1);
      End;
      if StatusKKBB='PIK' then
      Begin
         ST := 'PKK/'+PT+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
         quMainVoucherId.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct,'CFTrKKBBHd', 'VoucherId', ST, '0') + 1);
      End;
      if StatusKKBB='PIB' then
      Begin
         ST := 'PKB/'+PT+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
         quMainVoucherId.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct,'CFTrKKBBHd', 'VoucherId', ST, '0') + 1);
      End;
  End;
  quMainUpdDate.AsDateTime := GetServerDateTime;
  quMainUpdUser.AsString := dmMain.UserId;
end;

procedure TfmCFTrKKBB.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainCurrId.AsString := 'IDR';
  quMainTransDate.AsDateTime := Date;
  quMainTransDate.FocusControl;

  if StatusKKBB='KM' then
   quMainFlagKKBB.Value :='11';
  if StatusKKBB='KK' then
   quMainFlagKKBB.Value :='12';
  if StatusKKBB='BM' then
   quMainFlagKKBB.Value :='21';
  if StatusKKBB='BK' then
   quMainFlagKKBB.Value :='22';
  if StatusKKBB='PIK' then
   quMainFlagKKBB.AsString :='31';
  if StatusKKBB='PIB' then
   quMainFlagKKBB.AsString :='32';
end;

procedure TfmCFTrKKBB.FormShow(Sender: TObject);
begin
   FFieldTgl   := 'TransDate';
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), VoucherId';

  if StatusKKBB='KM' then
    FAfterWhere:=' AND FlagKKBB=''11''';
  if StatusKKBB='KK' then
    FAfterWhere:=' AND FlagKKBB=''12''';
  if StatusKKBB='BM' then
    FAfterWhere:=' AND FlagKKBB=''21''';
  if StatusKKBB='BK' then
    FAfterWhere:=' AND FlagKKBB=''22''';
  if StatusKKBB='PIK' then
    FAfterWhere:=' AND FlagKKBB=''31''';
  if StatusKKBB='PIB' then
    FAfterWhere:=' AND FlagKKBB=''32''';

  SettingDxGrid(dbg);
  inherited;
  if StatusKKBB='KM' then
    LKKBB.Caption :='KAS MASUK';
  if StatusKKBB='KK' then
    LKKBB.Caption :='KAS KELUAR';
  if StatusKKBB='BM' then
    LKKBB.Caption :='BANK MASUK';
  if StatusKKBB='BK' then
    LKKBB.Caption :='BANK KELUAR';
  if StatusKKBB='PIK' then
  begin
    LKKBB.Caption :='Piutang Karyawan Kas';
    lbTotal.Caption := 'TOTAL PINJAMAN :';
  end;
  if StatusKKBB='PIB' then
  begin
    LKKBB.Caption :='Piutang Karyawan Bank';
    lbTotal.Caption := 'TOTAL PINJAMAN :';
  end;

  If (StatusKKBB='KM') or (StatusKKBB='BM') Then
   lblTerbayar.Caption := 'Terima Dari :';

  If (StatusKKBB='KK') or (StatusKKBB='BK') Then
   lblTerbayar.Caption := 'Dibayar Kepada :';

  If (StatusKKBB='KM') or (StatusKKBB='KK') Then
  Begin
    Label4.Top := 96;
    dxDBEdit2.Top := 92;
    Label3.Visible := False;
    dxDBButtonEdit1.Visible := False;
    DBText1.Visible := False;
  End;
  If (StatusKKBB='BM') or (StatusKKBB='BK') Then
  Begin
    Label4.Top := 116;
    dxDBEdit2.Top := 112;
    Label3.Visible := True;
    dxDBButtonEdit1.Visible := True;
    DBText1.Visible := True;
  End;
  if StatusKKBB = 'PIK' then
  begin
    Label4.Top := 96;
    dxDBEdit2.Top := 92;
    Label3.Visible := False;
    dxDBButtonEdit1.Visible := False;
    DBText1.Visible := False;
    dxDBButtonEdit3.Visible := True;
    DBText5.Visible := True;
    dxDBEdit3.Visible := False;
  end;
  if StatusKKBB = 'PIB' then
  begin
    dxDBButtonEdit3.Visible := True;
    DBText5.Visible := True;
    dxDBEdit3.Visible := False;
  end;
end;

procedure TfmCFTrKKBB.dbgEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmCFTrKKBB.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilRekeningId.FocusControl;
  quDetilAmount.Value :=0;
end;

procedure TfmCFTrKKBB.dbgRekIdButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Cari Rekening';
       if (StatusKKBB='KM') OR (StatusKKBB='BM') then
       Begin
          SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                   +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                   +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId WHERE A.GroupRekId IN('''+sDGRPj+''','''+sDGRPLL+''') '
                   +' ORDER BY A.RekeningID';
       End;
       if (StatusKKBB='KK') OR (StatusKKBB='BK') or (StatusKKBB='PIK')or (StatusKKBB='PIB') then
       Begin
          SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening, '
                   +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                   +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId WHERE A.GroupRekId IN ('''+sDGRPb+''','''+sDGRBi+''') '
                   +' ORDER BY A.RekeningID';
       End;

       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilRekeningId.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmCFTrKKBB.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgRekId, quDetil.State<>dsInsert);
  SetReadOnly(dbgRekName,TRUE);
  SetReadOnly(dbgGroup,TRUE);
end;

procedure TfmCFTrKKBB.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quDetilRekeningId.Value)='' then
  begin
     MsgInfo('Kode Rekening tidak boleh kosong !');
     quDetilRekeningId.FocusControl;
     Abort;
  end;

  if TRIM(quDetilLRekName.Value)='' then
  begin
     MsgInfo('Kode Rekening tidak ada dalam Master!');
     quDetilRekeningId.FocusControl;
     Abort;
  end;

 if (StatusKKBB='KM') OR (StatusKKBB='BM') then
 Begin
   With quAct,sql do
   Begin
     Close;Clear;
     Add('Select Top 1 RekeningId FROM CFMsRekening WHERE GroupRekId IN('''+sDGRPj+''','''+sDGRPLL+''') '
        +'AND RekeningId='''+quDetilRekeningId.Value+'''');
     Open;
     if IsEmpty then
     Begin
       MsgInfo('Kode Rekening tidak bisa dipakai');
       quDetilRekeningId.FocusControl;
       Abort;
     End;
   End;
 End;

 if (StatusKKBB='KK') OR (StatusKKBB='BK') then
 Begin
  With quAct,sql do
   Begin
     Close;Clear;
     Add('Select Top 1 RekeningId FROM CFMsRekening WHERE GroupRekId IN('''+sDGRPb+''','''+sDGRBi+''') '
        +'AND RekeningId='''+quDetilRekeningId.Value+'''');
     Open;
     if IsEmpty then
     Begin
       MsgInfo('Kode Rekening tidak bisa dipakai');
       quDetilRekeningId.FocusControl;
       Abort;
     End;
   End;
 End;
 if (StatusKKBB='PIK') OR (StatusKKBB='PIB') then
 begin
  With quCalc,sql do
   Begin
     Close;Clear;
     Add('Select Top 1 RekeningId FROM CFMsRekening WHERE GroupRekId IN('''+sDGRPb+''','''+sDGRBi+''') '
        +'AND RekeningId='''+quDetilRekeningId.Value+'''');
     Open;
     if IsEmpty then
     Begin
       MsgInfo('Kode Rekening tidak bisa dipakai');
       quDetilRekeningId.FocusControl;
       Abort;
     End;
   End;
   with quAct,SQL do
   begin
     Close;Clear;
     Add('SELECT LimitKasBon FROM ARMsSales WHERE SalesID='''+quMainActor.AsString+''' ');
     Open;
   end;
   with quCalc,SQL do
   begin
     Close;Clear;
     Add('SELECT DISTINCT K.Actor,(SELECT ISNULL(SUM(M.Amount),0) FROM CFTrKKBBHd L INNER JOIN CFTrKKBBDt M ON L.VoucherID=M.VoucherID '
        +'WHERE L.Actor=K.Actor AND L.CurrID=K.CurrID AND L.FlagKKBB IN (31,32))-(SELECT ISNULL(SUM(L.ValuePayment),0) FROM CFTrPiutangInternalDt L '
        +'INNER JOIN CFTrPiutangInternalHd M ON L.PiutangID=M.PiutangID WHERE M.SalesID=K.Actor AND M.CurrID=K.CurrID) as Piutang '
        +'FROM CFTrKKBBHd K WHERE K.Actor='''+quMainActor.AsString+''' AND K.CurrID='''+quMainCurrId.AsString+''' AND K.FlagKKBB IN (31,32)');
     Open;
   end;
   if quCalc.FieldByName('Piutang').AsCurrency + quDetilAmount.AsCurrency > quAct.FieldByName('LimitKasBon').AsCurrency then
   begin
     ShowMessage('Limit Kas Bon Karyawan '+quMainLSalesName.AsString+' sudah melebihi batas'+#13
                +'Total Kas bon yang belum dilunasi sebesar '+quMainCurrId.AsString+' '+quCalc.FieldByName('Piutang').AsString );
     quDetilRekeningId.FocusControl;
     Abort;
   end;
 end;

 if quDetil.State = dsInsert then
 begin
    with quAct, SQL do
    begin
        Close; Clear;
        Add(' SELECT RekeningId FROM CFTrKKBBDt WHERE VoucherID='''+quMainVoucherId.Value+''''
           +' AND RekeningId='''+quDetilRekeningId.Value+'''');
        Open;
        If Not IsEmpty then
        begin
           MsgInfo('Kode Rekening  sudah ada dalam List');
           quDetilRekeningId.FocusControl;
           Abort;
        end;
    end;
  End;

  if TRIM(qudetilNote.AsString)='' Then
  Begin
     MsgInfo('Keterangan  tidak boleh kosong !');
     quDetilNote.FocusControl;
     Abort;
  End;

  if TRIM(quDetilAmount.AsString)='' then
  begin
     MsgInfo('Amount tidak boleh kosong !');
     quDetilAmount.FocusControl;
     Abort;
  end;

  if quDetilAmount.Value < 0 then
  begin
     MsgInfo('Amount tidak boleh lebih kecil dari 0 !');
     quDetilAmount.FocusControl;
     Abort;
  end;

  quDetilUpdUser.AsString := dmMain.UserId;
  quDetilUpdDate.AsDateTime := GetServerDateTime;
  
end;

procedure TfmCFTrKKBB.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Cari Bank';
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
begin
  inherited;
  CarirateNew(quAct,quMainTransDate.Value);
  if StatusKKBB='KM' Then
  Begin
   DeleteFromAllMoney(quMainVoucherId.Value,quDetilRekeningId.Value,'1');
   InsertToAllMoney(quMainVoucherId.Value,quMainTransDate.value,quMainActor.Value,StatusKKBB,quDetilRekeningId.Value
                    ,quDetilLGroupRek.Value,quDetilAmount.value,quDetilNote.Value,'1','','',quMainActor.Value,quMainCurrId.Value,quAct.fieldbyname('Rate').Value)
  End;

 if StatusKKBB='KK' Then
  Begin
   DeleteFromAllMoney(quMainVoucherId.Value,quDetilRekeningId.Value,'2');
   InsertToAllMoney(quMainVoucherId.Value,quMainTransDate.value,quMainActor.Value ,StatusKKBB,quDetilRekeningId.Value
                    ,quDetilLGroupRek.Value,quDetilAmount.value,quDetilNote.Value,'2','','',quMainActor.Value,quMainCurrId.Value,quAct.fieldbyname('Rate').Value)
  End;

  if StatusKKBB='BM' Then
  Begin
   DeleteFromAllMoney(quMainVoucherId.Value,quDetilRekeningId.Value,'3');
   InsertToAllMoney(quMainVoucherId.Value,quMainTransDate.value,quMainActor.Value,StatusKKBB,quDetilRekeningId.Value
                    ,quDetilLGroupRek.Value,quDetilAmount.value,quDetilNote.Value,'3',quMainBankId.Value,quMainLBankName.Value,quMainActor.Value,quMainCurrId.Value,quAct.fieldbyname('Rate').Value)
  End;

  if StatusKKBB='BK' Then
  Begin
   DeleteFromAllMoney(quMainVoucherId.Value,quDetilRekeningId.Value,'4');
   InsertToAllMoney(quMainVoucherId.Value,quMainTransDate.value,quMainActor.Value,StatusKKBB,quDetilRekeningId.Value
                    ,quDetilLGroupRek.Value,quDetilAmount.value,quDetilNote.Value,'4',quMainBankId.Value,quMainLBankName.Value,quMainActor.Value,quMainCurrId.Value,quAct.fieldbyname('Rate').Value)
  End;
  if StatusKKBB='PIK' Then
  Begin
     DeleteFromAllMoney(quMainVoucherId.Value,quDetilRekeningId.Value,'6');
     InsertToAllMoney(quMainVoucherId.Value,quMainTransDate.value,quMainActor.Value,StatusKKBB,quDetilRekeningId.Value
                     ,quDetilLGroupRek.Value,quDetilAmount.value,'Pinjaman Karyawan '+quMainLSalesName.AsString,'6',quMainBankId.Value,quMainLBankName.Value,quMainLSalesName.Value,quMainCurrId.Value,quAct.fieldbyname('Rate').Value)
  End;

  if StatusKKBB='PIB' Then
  Begin
     DeleteFromAllMoney(quMainVoucherId.Value,quDetilRekeningId.Value,'6');
     InsertToAllMoney(quMainVoucherId.Value,quMainTransDate.value,quMainActor.Value,StatusKKBB,quDetilRekeningId.Value
                     ,quDetilLGroupRek.Value,quDetilAmount.value,'Pinjaman Karyawan '+quMainLSalesName.AsString,'6',quMainBankId.Value,quMainLBankName.Value,quMainLSalesName.Value,quMainCurrId.Value,quAct.fieldbyname('Rate').Value)
  End;
end;

procedure TfmCFTrKKBB.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if StatusKKBB='KM' Then
     DeleteFromAllMoney(quMainVoucherId.Value,quDetilRekeningId.Value,'1');
  if StatusKKBB='KK' Then
     DeleteFromAllMoney(quMainVoucherId.Value,quDetilRekeningId.Value,'2');
  if StatusKKBB='BM' Then
     DeleteFromAllMoney(quMainVoucherId.Value,quDetilRekeningId.Value,'3');
  if StatusKKBB='BK' Then
     DeleteFromAllMoney(quMainVoucherId.Value,quDetilRekeningId.Value,'4');
  if StatusKKBB='PIK' Then
     DeleteFromAllMoney(quMainVoucherId.Value,quDetilRekeningId.Value,'6');
  if StatusKKBB='PIB' Then
     DeleteFromAllMoney(quMainVoucherId.Value,quDetilRekeningId.Value,'9');
end;

procedure TfmCFTrKKBB.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if StatusKKBB='KM' Then
     DeleteFromAllMoney(quMainVoucherId.Value,'1');
  if StatusKKBB='KK' Then
     DeleteFromAllMoney(quMainVoucherId.Value,'2');
  if StatusKKBB='BM' Then
     DeleteFromAllMoney(quMainVoucherId.Value,'3');
  if StatusKKBB='BK' Then
     DeleteFromAllMoney(quMainVoucherId.Value,'4');
  if StatusKKBB='PIK' Then
     DeleteFromAllMoney(quMainVoucherId.Value,'6');
  if StatusKKBB='PIB' Then
     DeleteFromAllMoney(quMainVoucherId.Value,'9');
end;

procedure TfmCFTrKKBB.dxButton1Click(Sender: TObject);
var stotal : Currency;
begin
  inherited;
  CekStatus;
  With quAct,sql do
  Begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(Amount),0) as Total FROM CFTrKKBBDt WHERE VoucherId='''+quMainVoucherId.AsString+'''');
    Open;
  End;
  stotal := quAct.FieldByName('Total').AsCurrency;

  if StatusKKBB='KM' then
  Begin
    With TfmCFQRRptTrKKBB.Create(Self) do
    Try
      qlbTitle.Caption:= sCompanyName;
      qlbKas.Enabled := true;
      qlbBank.Enabled := not qlbKas.Enabled;
      qlbTitleV.Caption := 'BUKTI PENERIMAAN';
      qlbTTerBayar.Caption := 'Terima dari';
      qlbJourTransID.Caption := ': ' + quMainVoucherId.AsString;
      qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTransDate.AsDateTime);
      qlbterimaDari.Caption := quMainActor.AsString;
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
        add('Select RekeningID,Amount,Note FROM CFTrKKBBDt WHERE VoucherId='''+quMainVoucherId.Value+'''');
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

  if StatusKKBB='KK' then
  Begin
    With TfmCFQRRptTrKKBB.Create(Self) do
    Try
     qlbTitle.Caption:= sCompanyName;
      qlbKas.Enabled := true;
      qlbBank.Enabled := not qlbKas.Enabled;
      qlbTitleV.Caption := 'BUKTI PENGELUARAN';
      qlbTTerBayar.Caption := 'Dibayar kepada';
      qlbJourTransID.Caption := ': ' + quMainVoucherId.AsString;
      qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTransDate.AsDateTime);
      qlbterimaDari.Caption := quMainActor.AsString;
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
        add('Select RekeningID,Amount,Note FROM CFTrKKBBDt WHERE VoucherId='''+quMainVoucherId.Value+'''');
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

  if StatusKKBB='BM' then
  Begin
    With TfmCFQRRptTrKKBB.Create(Self) do
    Try
      qlbTitle.Caption:= sCompanyName;
      qlbKas.Enabled := false;
      qlbBank.Enabled := not qlbKas.Enabled;
      qlbTitleV.Caption := 'BUKTI PENERIMAAN';
      qlbTTerBayar.Caption := 'Diterima dari';
      qlbJourTransID.Caption := ': ' + quMainVoucherId.AsString;
      qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTransDate.AsDateTime);
      qlbterimaDari.Caption := quMainActor.AsString;
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
        add('Select RekeningID,Amount,Note FROM CFTrKKBBDt WHERE VoucherId='''+quMainVoucherId.Value+'''');
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

  if StatusKKBB='BK' then
  Begin
    With TfmCFQRRptTrKKBB.Create(Self) do
    Try
      qlbTitle.Caption:= sCompanyName;
      qlbKas.Enabled := false;
      qlbBank.Enabled := not qlbKas.Enabled;
      qlbTitleV.Caption := 'BUKTI PENGELUARAN';
      qlbTTerBayar.Caption := 'Dibayar kepada';
      qlbJourTransID.Caption := ': ' + quMainVoucherId.AsString;
      qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTransDate.AsDateTime);
      qlbterimaDari.Caption := quMainActor.AsString;
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
        add('Select RekeningID,Amount,Note FROM CFTrKKBBDt WHERE VoucherId='''+quMainVoucherId.Value+'''');
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
      qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTransDate.AsDateTime);
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
      qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTransDate.AsDateTime);
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

       Title := 'Transaksi KKBB ';
       SQLString := ' SELECT VoucherId '
                   +' ,Convert(varchar(10),TransDate,103) as TanggalVoucher '
                   +' ,A.CurrID as ValutaId,D.CurrName as Nama_Valuta'
                   +' ,A.Actor,A.BankId as Kode_Bank,C.Bankname as Nama_Bank ,A.Note as Keterangan'
                   +' FROM CFTrKKBBHd A '
                   +' LEFT JOIN CFMsBank C ON A.BankID=C.BankID '
                   +' INNER JOIN SAMsValuta D ON A.CurrId=D.CurrId'
                   +' WHERE '+FSQLWhere;
                 if StatusKKBB='KM' then
                 SQLString:=SQLString+' AND FlagKKBB=''11''';
                 if StatusKKBB='KK' then
                 SQLString:=SQLString+' AND FlagKKBB=''12''';
                 if StatusKKBB='BM' then
                 SQLString:=SQLString+' AND FlagKKBB=''21''';
                 if StatusKKBB='BK' then
                 SQLString:=SQLString+' AND FlagKKBB=''22''';
                 if StatusKKBB='PIK' then
                 SQLString:=SQLString+' AND FlagKKBB=''31''';
                 if StatusKKBB='PIB' then
                 SQLString:=SQLString+' AND FlagKKBB=''32''';
            SQLString:=SQLString+' ORDER BY VoucherId ';
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
       Title := 'Karyawan';
       SQLString := 'SELECT SalesID as Kode_Karyawan, SalesName as Karyawan, Jabatan'
                   +' FROM ARMsSales WHERE FgActive <> 0 ORDER BY SalesID';
       if ShowModal = MrOK then
       begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainActor.Value := Res[0];
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

end.
