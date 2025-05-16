unit CFTrTransferBalance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv41, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL,
  dxDBCtrl, dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls,
  Buttons, dxCore, dxContainer, dxDBELib, dxEditor, DBCtrls;

type
  TfmCFTrTransferBalance = class(TfmStdLv41)
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label23: TLabel;
    DBText6: TDBText;
    DBText2: TDBText;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    DBText3: TDBText;
    Label11: TLabel;
    DBText4: TDBText;
    Label6: TLabel;
    quBank: TADOQuery;
    dxDBEdit1: TdxDBEdit;
    quValuta: TADOQuery;
    Label7: TLabel;
    quMainTransdate: TDateTimeField;
    quMainCurrID: TStringField;
    quMainFgTrans: TStringField;
    quMainAmount: TBCDField;
    quMainBankIDSource: TStringField;
    quMainBankIDDest: TStringField;
    quMainNote: TStringField;
    quMainUpdUser: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainLCurrName: TStringField;
    quMainLBankSource: TStringField;
    quMainLBankDest: TStringField;
    peFgTrans: TdxDBPickEdit;
    dxButton1: TdxButton;
    rbJenis: TRadioGroup;
    quMainFgCetak: TStringField;
    quMainStatus: TStringField;
    DBText15: TDBText;
    paBankSource: TPanel;
    Label3: TLabel;
    DBText1: TDBText;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    paBankDest: TPanel;
    DBText8: TDBText;
    Label9: TLabel;
    dxDBButtonEdit5: TdxDBButtonEdit;
    quMainVoucherID: TStringField;
    procedure dxDBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure dsMainStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure peFgTransChange(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure dxButton1Click(Sender: TObject);
    procedure quMainBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCFTrTransferBalance: TfmCFTrTransferBalance;

implementation

uses MyUnit, UnitGeneral, ConMain, Search, StdLv1, Allitem, RptGLTrKMKK;

{$R *.dfm}

procedure TfmCFTrTransferBalance.dxDBDateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmCFTrTransferBalance.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBDateEdit1,quMain.State<>dsInsert);
  SetReadOnly(peFgTrans,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit2,quMain.State<>dsInsert);
  SetReadOnly(dxDBEdit3,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit1,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit5,quMain.State<>dsInsert);
  SetReadOnly(dxDBEdit1,TRUE);
end;

procedure TfmCFTrTransferBalance.FormShow(Sender: TObject);
begin
  FFieldTgl   := 'TransDate';
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), VoucherId';
  inherited;
  quMain.Active := TRUE;
  quMainAmount.DisplayFormat := sDisFormat;
  quMainAmount.EditFormat    := sEditformat;
end;

procedure TfmCFTrTransferBalance.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransdate.AsDateTime := Date;
  quMainTransdate.FocusControl;
  quMainAmount.AsCurrency := 0;
  quMainCurrID.AsString := 'IDR';
  quMainFgTrans.AsString := 'KAS - BANK';
  paBankSource.Visible := False;
  paBankDest.Top := 119;
  quMainFgCetak.AsString := 'T';
end;

procedure TfmCFTrTransferBalance.quMainBeforePost(DataSet: TDataSet);
var ST: String;
begin
  inherited;
  if TRIM(quMainTransdate.AsString)='' then
  begin
    ShowMessage('Tanggal transaksi tidak boleh kosong');
    quMainTransdate.FocusControl;
    Abort;
  end;
  if (quMainCurrID.AsString = '') or (TRIM(quMainLCurrName.AsString)='') then
  begin
    ShowMessage('Valuta tidak terdaftar');
    quMainCurrID.FocusControl;
    Abort;
  end;
  if (quMainAmount.AsCurrency <= 0) or (TRIM(quMainAmount.AsString)='') then
  begin
    ShowMessage('Jumlah harus lebih besar dari 0(nol)');
    quMainAmount.FocusControl;
    Abort;
  end;
  if quMainFgTrans.AsString = 'KAS - BANK' then
  begin
    if (TRIM(quMainLBankDest.AsString)='') or (quMainBankIDDest.AsString='') then
    begin
      ShowMessage('Kode Bank Tujuan tidak terdaftar');
      quMainBankIDDest.FocusControl;
      Abort;
    end;
    quMainBankIDSource.Clear;
  end else
  begin
    if (TRIM(quMainLBankDest.AsString)='') or (quMainBankIDDest.AsString='') then
    begin
      ShowMessage('Kode Bank Tujuan tidak terdaftar');
      quMainBankIDDest.FocusControl;
      Abort;
    end;
    if (TRIM(quMainBankIDSource.AsString)='') or (quMainBankIDSource.AsString='') then
    begin
      ShowMessage('Kode Bank Sumber tidak terdaftar');
      quMainBankIDSource.FocusControl;
      Abort;
    end;
  end;
  if quMain.State=dsInsert then
  Begin
    ST := 'TB/'+PT+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
    quMainVoucherID.Value  := ST + FormatFloat('0000', RunNumberGL(quAct, 'CFTrTransferBalance', 'VoucherID', ST, '0') + 1);
  End;
  quMainUpdDate.AsDateTime := GetServerDateTime;
  quMainUpdUser.AsString := dmMain.UserId;
end;

procedure TfmCFTrTransferBalance.dxDBButtonEdit2ButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Valuta';
       SQLString := 'SELECT CurrId as Kode_Valuta, CurrName as Nama_Valuta FROM SAMsValuta ORDER BY CurrId';
       if ShowModal = MrOk then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainCurrID.Value := Res[0];
       end;
    finally
       free;
  end;
end;

procedure TfmCFTrTransferBalance.dxDBButtonEdit1ButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Cari Bank';
       SQLString := 'SELECT BankId as Kode_Bank, BankName as Nama_Bank FROM CFMsBank ORDER BY BankId';
       if ShowModal = MrOK then
       begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainBankIDSource.Value := Res[0];
       end;
    finally
       Free;
  end;
end;

procedure TfmCFTrTransferBalance.dxDBButtonEdit3ButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Cari Bank';
       SQLString := 'SELECT BankId as Kode_Bank, BankName as Nama_Bank '
                   +'FROM CFMsBank ORDER BY BankId';
       if ShowModal = MrOK then
       begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainBankIDDest.Value := Res[0];
       end;
    finally
       Free;
  end;
end;

procedure TfmCFTrTransferBalance.peFgTransChange(Sender: TObject);
begin
  inherited;
  if peFgTrans.ItemIndex = 0 then
  begin
    paBankSource.Visible := False;
    paBankDest.Top := 119;
  end else
  begin
    paBankSource.Visible := True;
    paBankDest.Top := 119;
  end;
end;

procedure TfmCFTrTransferBalance.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Transaksi Transfer Balance';
       SQLString := ' SELECT VoucherId, Convert(varchar(10),TransDate,103) as Tgl_Transaksi, D.CurrName as Nama_Valuta'
                   +' ,E.BankName as Bank_Tujuan ,A.Note as Keterangan, A.FgTrans as Tipe_Transaksi, A.Amount as Jumlah_Uang'
                   +' FROM CFTrTransferBalance A '
                   +' INNER JOIN CFMsBank E ON A.BankIDDest=E.BankID '
                   +' INNER JOIN SAMsValuta D ON A.CurrId=D.CurrId '
                   +' WHERE '+FSQLWhere;
       SQLString :=SQLString+' ORDER BY VoucherId ';
       if ShowModal = MrOK then
       begin
         quMain.Locate('VoucherId',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmCFTrTransferBalance.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  CarirateNew(quAct,quMainTransDate.Value);
  DeleteFromAllMoney(quMainVoucherId.Value,'80');
  DeleteFromAllMoney(quMainVoucherId.Value,'90');
  if quMainFgTrans.AsString = 'KAS - BANK' then
    InsertToAllMoney(quMainVoucherId.Value,quMainTransDate.value,'','KK',''
                      ,''+sDGRPb+'',quMainAmount.value,'Setor ke '+quMainLBankDest.AsString+' '+quMainNote.AsString,'80','','','',quMainCurrId.Value,quAct.FieldByName('Rate').Value)
  else
    InsertToAllMoney(quMainVoucherId.Value,quMainTransDate.value,'','BK',''
                      ,''+sDGRPb+'',quMainAmount.value,'Transfer ke '+quMainLBankDest.AsString,'80',quMainBankIDSource.AsString,quMainLBankSource.AsString,'',quMainCurrId.Value,quAct.FieldByName('Rate').Value);
  if quMainFgTrans.AsString = 'KAS - BANK' then
    InsertToAllMoney(quMainVoucherId.Value,quMainTransDate.value,'','BM',''
                      ,''+sDGRPj+'',quMainAmount.value,'Setor Tunai dari Kas '+quMainNote.AsString,'90',quMainBankIDDest.AsString,quMainLBankDest.AsString,'',quMainCurrId.Value,quAct.FieldByName('Rate').Value)
  else
    InsertToAllMoney(quMainVoucherId.Value,quMainTransDate.value,'','BM',''
                      ,''+sDGRPj+'',quMainAmount.value,'Transfer balance dari '+ quMainLBankSource.AsString,'90',quMainBankIDDest.AsString,quMainLBankDest.AsString,'',quMainCurrId.Value,quAct.FieldByName('Rate').Value)
end;

procedure TfmCFTrTransferBalance.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllMoney(quMainVoucherId.Value,'80');
  DeleteFromAllMoney(quMainVoucherId.Value,'90');
end;

procedure TfmCFTrTransferBalance.dxButton1Click(Sender: TObject);
begin
  inherited;
    With TfmCFQRRptTrKKBB.Create(Self) do
    Try
     qlbTitle.Caption:= sCompanyName;
      qlbJourTransID.Caption := ': ' + quMainVoucherId.AsString;
      qlbTanggal.Caption := ': ' + FormatDateTime('dd/MMM/yyyy', quMainTransDate.AsDateTime);
      if UpperCase(quMainCurrId.Value) ='IDR' then
         qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat,quMainAmount.AsCurrency))+'rupiah';
      if UpperCase(quMainCurrId.Value) ='USD' then
         qlbTerbilang.Caption :=  convert(FormatFloat(sEditFormat,quMainAmount.AsCurrency))+'dollar';
      if quMainAmount.AsCurrency >= 0 then
        qlbTotal.Caption := FormatFloat(sDisFormat, quMainAmount.AsCurrency)
      else
        qlbTotal.Caption := '(' + FormatFloat(sDisFormat, abs(quMainAmount.AsCurrency)) + ')';
        QRLabel16.Caption :='Penyetor';

      if rbJenis.ItemIndex = 0 then
      begin
        qlbKas.Enabled := true;
        qlbBank.Enabled := not qlbKas.Enabled;
        qlbTitleV.Caption := 'BUKTI PENGELUARAN';
        qlbTTerBayar.Caption := 'Ditransfer ke';
        qlbterimaDari.Caption := quMainLBankDest.AsString;
        qlbKeterangan.Caption := 'MUTASI SALDO DARI KAS KE '+ quMainLBankDest.AsString;
        With qu001,sql do
        Begin
          Close;Clear;
          add('SELECT FgTrans as RekeningID,Amount, ''Mutasi Saldo ke Bank'' as Note FROM CFTrTransferBalance '
             +'WHERE VoucherId='''+quMainVoucherId.AsString+'''');
          Open;
        End;
      end;

      if rbJenis.ItemIndex = 1 then
      begin
        if quMainFgTrans.AsString = 'BANK - BANK' THEN
        begin
          qlbKas.Enabled := false;
          qlbBank.Enabled := not qlbKas.Enabled;
          qlbTitleV.Caption := 'BUKTI PENGELUARAN';
          qlbTTerBayar.Caption := 'Ditransfer ke';
          qlbterimaDari.Caption := quMainLBankDest.AsString;
          qlbKeterangan.Caption := 'MUTASI SALDO DARI '+quMainLBankSource.AsString+' ke '+quMainLBankDest.AsString;;
          With qu001,sql do
          Begin
            Close;Clear;
            add('SELECT FgTrans as RekeningID,Amount, ''Mutasi Saldo Antar Bank'' as Note FROM CFTrTransferBalance '
               +'WHERE VoucherId='''+quMainVoucherId.AsString+'''');
            Open;
          End;
        end else
        begin
          ShowMessage('Jenis Transaksi bukan antar bank');
          Abort;
        end;
      end;
      if rbJenis.ItemIndex = 2 then
      begin
        qlbKas.Enabled := false;
        qlbBank.Enabled := not qlbKas.Enabled;
        qlbTitleV.Caption := 'BUKTI PENERIMAAN';
        qlbTTerBayar.Caption := 'Diterima Dari';
        qlbterimaDari.Caption := 'KAS';
        qlbKeterangan.Caption := 'MUTASI SALDO DARI KAS';
        With qu001,sql do
        Begin
          Close;Clear;
          add('SELECT FgTrans as RekeningID,Amount, ''Setoran Tunai dari KAS '' as Note FROM CFTrTransferBalance '
             +'WHERE VoucherId='''+quMainVoucherId.AsString+'''');
          Open;
        End;
      end;
      with quAct,SQL do
      begin
        Close;Clear;
        Add('UPDATE CFTrTransferBalance SET FgCetak=''Y'' WHERE VoucherID='''+quMainVoucherID.AsString+''' ');
        ExecSQL;
      end;
      MyReport.Previewmodal;
    Finally
      Free;
    End;
end;

procedure TfmCFTrTransferBalance.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT FgCetak FROM CFTrTransferBalance WHERE VoucherID='''+quMainVoucherID.AsString+''' ');
    Open;
  end;
  if quAct.FieldByName('FgCetak').AsString = 'Y' then
  begin
    ShowMessage('Voucher sudah dicetak tidak bisa diedit lagi');
    Abort;
  end;
end;

end.
