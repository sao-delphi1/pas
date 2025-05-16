unit CFTrPiutangInternal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv41, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL,
  dxDBCtrl, dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls,
  Buttons, dxCore, dxContainer, dxDBTLCl, dxGrClms, dxDBELib, dxEditor,
  DBCtrls;

type
  TfmCFTrPiutangInternal = class(TfmStdLv41)
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText3: TDBText;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    DBText2: TDBText;
    Label11: TLabel;
    DBText1: TDBText;
    txtPiutangID: TdxDBEdit;
    dbgPiutang: TdxDBGrid;
    GroupBox3: TGroupBox;
    DBText7: TDBText;
    Label14: TLabel;
    quMainPiutangID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainSalesID: TStringField;
    quMainNote: TStringField;
    quMainCurrId: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quDetilPiutangID: TStringField;
    quDetilVoucherID: TStringField;
    quDetilValueTotal: TBCDField;
    quDetilValuePayment: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quDetilRekeningID: TStringField;
    quDetilGroupRekID: TStringField;
    dbgPiutangPiutangID: TdxDBGridMaskColumn;
    dbgPiutangUpdDate: TdxDBGridDateColumn;
    dbgPiutangUpdUser: TdxDBGridMaskColumn;
    dbgPiutangRekeningID: TdxDBGridMaskColumn;
    dbgPiutangGroupRekID: TdxDBGridMaskColumn;
    dxButton3: TdxButton;
    bbTambah: TdxButton;
    bbHapus: TdxButton;
    bbSimpan: TdxButton;
    bbBatal: TdxButton;
    quTotal: TADOQuery;
    quTotalTotal: TBCDField;
    dsTotal: TDataSource;
    quSales: TADOQuery;
    quSalesSalesID: TStringField;
    quSalesSalesName: TStringField;
    quMainLSalesName: TStringField;
    txtTransDate: TdxDBDateEdit;
    txtSalesID: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    dbgPiutangValueTotal: TdxDBGridColumn;
    dbgPiutangValuePayment: TdxDBGridColumn;
    quMainFgCetak: TStringField;
    dbgPiutangVoucherID: TdxDBGridButtonColumn;
    quDetilCTgl: TDateTimeField;
    quDetilBankID: TStringField;
    quBank: TADOQuery;
    quDetilLBankName: TStringField;
    dbgPiutangLBankName: TdxDBGridColumn;
    dbgPiutangBankID: TdxDBGridButtonColumn;
    procedure FormShow(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure txtTransDateKeyPress(Sender: TObject; var Key: Char);
    procedure dsDetilStateChange(Sender: TObject);
    procedure dbgPiutangEnter(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure txtSalesIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgPiutangVoucherIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure bbTambahClick(Sender: TObject);
    procedure bbHapusClick(Sender: TObject);
    procedure bbSimpanClick(Sender: TObject);
    procedure bbBatalClick(Sender: TObject);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure dxButton3Click(Sender: TObject);
    procedure dbgPiutangBankIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
    Procedure CekCetak;
  public
    { Public declarations }
  end;

var
  fmCFTrPiutangInternal: TfmCFTrPiutangInternal;

implementation

uses MyUnit, ConMain, UnitGeneral, Search, StdLv0, Allitem,
  ARQRRptBuktiBayar;

{$R *.dfm}

Procedure TfmCFTrPiutangInternal.CekCetak;
Begin //cek apakah sudah pernah cetak kalo sudah ada tidak bisa di utak atik
   with quAct, SQL do
   begin
      Close; Clear;
      Add(' SELECT FgCetak FROM CFTrPiutangInternalHd WHERE PiutangID='''+quMainPiutangID.AsString+'''');
      Open;
   end;
   If quAct.FieldByName('FgCetak').AsString = 'Y' then
   begin
      if GroupUser <> 'admin' then
      begin
        ShowMessage('Sudah Pernah dicetak, Tidak bisa cetak / edit / delete lagi'+#13
                   +'Hanya group admin saja yang bisa melakukan cetak / edit / delete data ');
        abort;
      end;
   end;
End;

procedure TfmCFTrPiutangInternal.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),Transdate,112), PiutangID';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dbgPiutang);
  inherited;
  quMain.Active  := TRUE;
  quDetil.Active := TRUE;
  quTotal.Active := TRUE;
  quTotalTotal.DisplayFormat := sDisFormat;
  quDetilValueTotal.DisplayFormat:=sDisFormat;
  quDetilValuePayment.DisplayFormat:=sDisFormat;
  quDetilValuePayment.EditFormat :=sEditformat;
end;

procedure TfmCFTrPiutangInternal.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;
  IF TRIM(quMainTransDate.AsString)='' then
  Begin
   MsgInfo('Tanggal tidak boleh kosong');
   quMainTransDate.FocusControl;
   Abort;
  End;

  if Trim(quMainSalesID.AsString)='' then
  begin
    MsgInfo('Field Diterima Dari tidak boleh kosong');
    quMainSalesID.FocusControl;
    Abort;
  End;

  if Trim(quMainLSalesName.AsString)='' then
  begin
    MsgInfo('Karyawan tidak terdaftar');
    quMainSalesID.FocusControl;
    Abort;
  End;

  if qumain.State=dsinsert then
  Begin
    ST := 'CF/'+PT+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
    quMainPiutangID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'CFTrPiutangInternalHd', 'PiutangId', ST, '0') + 1);
  End;

  quMainUpdDate.AsDateTime := GetServerDateTime;
  quMainUpdUser.AsString := dmMain.UserId;
end;

procedure TfmCFTrPiutangInternal.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(txtPiutangID,TRUE);
  SetReadOnly(txtTransDate,quMain.State<>dsInsert);
  SetReadOnly(txtSalesID,quMain.State<>dsInsert);
end;

procedure TfmCFTrPiutangInternal.txtTransDateKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmCFTrPiutangInternal.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgPiutangVoucherID,quDetil.State<>dsInsert);
  SetReadOnly(dbgPiutangValueTotal,TRUE);
  SetReadOnly(dbgPiutangLBankName,TRUE);
end;

procedure TfmCFTrPiutangInternal.dbgPiutangEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmCFTrPiutangInternal.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainCurrId.AsString := 'IDR';
  quMainTransDate.AsDateTime:= Date;
  quMainFgCetak.AsString := 'T';
  quMainTransDate.FocusControl;
end;

procedure TfmCFTrPiutangInternal.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
      Title := 'Pembayaran Piutang Internal';
      SQLString := ' SELECT PiutangID as Bukit_Bayar'
                  +' ,Convert(varchar(10),TransDate,103) as Tanggal_Bayar ,A.SalesID as Kode_Karyawan '
                  +' ,B.SalesName as Nama_Karyawan , A.Note as Keterangan FROM CFTrPiutangInternalHd A '
                  +' INNER JOIN ARMsSales B ON A.SalesID=B.SalesID WHERE '+FSQLWhere
                  +' ORDER BY PiutangID ';
      if ShowModal = MrOK then
      begin
        quMain.Locate('PiutangID',Res[0],[]);
      end;
    finally
       free;
  end;
end;

procedure TfmCFTrPiutangInternal.txtSalesIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Karyawan';
       SQLString := 'SELECT SalesID as Kode_Karyawan, SalesName as Nama_Karyawan'
                   +' FROM ARMsSales'
                   +' ORDER BY SalesName';
       if ShowModal = MrOK then
       begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainSalesID.Value := Res[0];
       end;
    finally
       Free;
    end;
end;

procedure TfmCFTrPiutangInternal.dbgPiutangVoucherIDButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
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
                   +' (SELECT ISNULL(SUM(ValuePayment),0) FROM PayrollKasBon A WHERE A.VoucherID=B.VoucherID),0)<>0 AND B.Actor='''+quMainSalesID.AsString+''' ';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilVoucherID.Value := Res[0];
             quDetilValueTotal.AsString := Res[3];
       end;
    finally
       Free;
    end;
end;

procedure TfmCFTrPiutangInternal.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,sql do
  Begin
    Close;Clear;
    add(' SELECT CONVERT(VARCHAR(10),A.Transdate,103) as Tgl,A.VoucherID FROM CFTrKKBBHd A'
       +' WHERE A.VoucherID='''+quDetilVoucherID.AsString+''' ');
    Open;
  End;
  quDetilCTgl.AsString := quAct.FieldByName('tgl').AsString;
end;

procedure TfmCFTrPiutangInternal.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if quDetilVoucherID.AsString = '' Then
  Begin
    MsgInfo('No Voucher masih kosong');
    quDetilVoucherID.FocusControl;
    Abort;
  End;
  if TRIM(quDetilCTgl.AsString)='' then
  Begin
     MsgInfo('Bukti Pinjaman tidak ada dalam Transaksi Piutang Karyawan');
     quDetilVoucherID.FocusControl;
     Abort;
  End;
  if quDetilValuePayment.value <= 0  then
  begin
     MsgInfo('Jumlah Pembayaran harus lebih besar dari 0');
     quDetilValuePayment.FocusControl;
     Abort;
  end;

  if quMainTransDate.Value < quDetilCTgl.Value then
  Begin
     MsgInfo('Tgl Pembayaran lebih kecil dari tanggal Pinjaman');
     quDetilVoucherID.FocusControl;
     abort;
  End;

  if quDetil.State=dsInsert then
  Begin
    With quAct,Sql do
    Begin
       Close;Clear;
       add('SELECT VoucherID from CFTrPiutangInternalDt WHERE PiutangID=:PiutangID AND VoucherID=:VoucherID');
       Parameters.ParamByName('PiutangID').Value:= quMainPiutangID.AsString;
       Parameters.ParamByName('VoucherID').Value:= quDetilVoucherID.AsString;
       Open;
       If quAct.RecordCount <> 0 then
       Begin
          MsgInfo('Nota sudah terdapat dalam list');
          quDetilVoucherID.FocusControl;
          Abort;
       End;
    End;
  End;

  with quAct,sql do
  Begin
    Close;Clear;
    add(' SELECT ISNULL(Amount,0)-(SELECT ISNULL(SUM(ValuePayment),0) FROM CFTrPiutangInternalDt A WHERE'
       +' A.VoucherID=B.VoucherID AND A.PiutangId<>'''+quMainPiutangID.AsString+''')-(SELECT ISNULL(SUM(L.ValuePayment),0) '
       +' FROM PayrollKasbon L WHERE L.VoucherID=A.VoucherID) as Sisa FROM CFTrKKBBDt A INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VOucherID '
       +' WHERE CurrID='''+quMainCurrId.AsString+''' AND Actor='''+quMainSalesID.AsString+''' AND B.VoucherID='''+quDetilVoucherID.AsString+''' ');
    Open;
    if IsEmpty then
    Begin
      MsgInfo('Data ini tidak terdapat pada Transaksi Piutang Internal');
      quDetilVoucherID.FocusControl;
      Abort;
    End;
  end;

  if quDetilValuePayment.Value > quAct.FieldByName('Sisa').AsCurrency then
  begin
    MsgInfo('Pembayaran melebihi total Pinjaman '+#13+' Sisa Pinjaman sebesar ['+FormatCurr(sDisFormat,quAct.FieldByName('Sisa').AsCurrency)+']');
    quDetilValuePayment.FocusControl;
    Abort;
  end;

  if TRIM(quDetilLBankName.AsString)='' then
  begin
    if TRIM(quDetilBankId.AsString)<>'' Then
    Begin
      MsgInfo('Kode Bank tidak ada dalam Master');
      quDetilBankId.FocusControl;
      Abort;
    End else
      quDetilBankId.Clear;
  end;

  quDetilUpdUser.AsString := dmMain.UserId;
  quDetilUpdDate.AsDateTime := GetServerDateTime;
end;

procedure TfmCFTrPiutangInternal.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilValuePayment.AsFloat := 0;
  quDetilRekeningID.AsString := '100.04';
  quDetilGroupRekID.AsString := sDGRPj;
end;

procedure TfmCFTrPiutangInternal.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  CarirateNew(quAct,quMainTransDate.Value);
  DeleteFromAllMoney1(quMainPiutangID.Value,quDetilVoucherID.Value,'7');
  if TRIM(quDetilBankID.AsString)='' then
    InsertToAllMoney(quMainPiutangID.Value,quDetilVoucherID.Value,quMainTransDate.value,quMainSalesID.Value,'KM','100.04',sDGRPj,
                    quDetilValuePayment.value,'Pelunasan Pinjaman '+quDetilVoucherID.Value+' Karyawan '+quMainLSalesName.Value+'',
                    '7','','',quMainLSalesName.Value,quMainCurrId.Value,1);
  if TRIM(quDetilBankID.AsString)<>'' then
    InsertToAllMoney(quMainPiutangID.Value,quDetilVoucherID.Value,quMainTransDate.value,quMainSalesID.Value,'BM','100.04',sDGRPj,
                    quDetilValuePayment.value,'Pelunasan Pinjaman '+quDetilVoucherID.Value+' Karyawan '+quMainLSalesName.Value+'',
                    '7',quDetilBankID.AsString,quDetilLBankName.AsString,quMainLSalesName.Value,quMainCurrId.Value,1);
  quTotal.Requery();
end;

procedure TfmCFTrPiutangInternal.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
end;

procedure TfmCFTrPiutangInternal.bbTambahClick(Sender: TObject);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmCFTrPiutangInternal.bbHapusClick(Sender: TObject);
begin
  inherited;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Nota ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmCFTrPiutangInternal.bbSimpanClick(Sender: TObject);
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

procedure TfmCFTrPiutangInternal.bbBatalClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmCFTrPiutangInternal.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekCetak;
  DeleteFromAllMoney1(quMainPiutangID.Value,quDetilVoucherID.Value,'7');
end;

procedure TfmCFTrPiutangInternal.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekCetak;
  DeleteFromAllMoney(quMainPiutangID.Value,'7');
end;

procedure TfmCFTrPiutangInternal.dxButton3Click(Sender: TObject);
var sTotal : currency;
begin
  inherited;
  sTotal := quTotalTotal.AsCurrency;
  If (Self.quMain.State = dsEdit) or (Self.quMain.State = dsInsert) then
  begin
    ShowMessage('Data Header Belum disimpan');
    quMainNote.FocusControl;
    Abort;
  end;
  if (Self.quDetil.State = dsEdit) or (Self.quDetil.State = dsInsert) then
  begin
    ShowMessage('Data Detil Belum disimpan');
    quDetilPiutangID.FocusControl;
    Abort;
  end;
  CekCetak;
  with TfmQRRptBuktiBayar.Create(Self) do
    try
       qlbTerbilang.Enabled := True;
       qlbTerbilang.Caption := '* Terbilang '+ convert(FormatFloat(sEditFormat, stotal))+'rupiah #';
       lbSuppCust.Caption := 'Karyawan';
       qlbNamaInvoice.Caption := 'Bukti Pelunasan Pinjaman';
       with qu001,SQL do
       Begin
         Close;Clear;
         add(' Select PiutangId,PiutangId As BuktiBayar,CurrId,Convert(varchar(10),Transdate,103) as TglVoucher,'
            +' Convert(varchar(10),getdate(),103) as Tgl,C.SalesName as CustSupp,A.Note '
            +' FROM CFTrPiutangInternalHd A INNER JOIN ARMsSales C ON A.SalesID=C.SalesID'
            +' WHERE A.PiutangId='''+quMainPiutangID.AsString+'''');
         Open;
       End;
       With qu002,sql do
       Begin
         Close;Clear;
         Add('SELECT A.VoucherID as Nota, A.VoucherID as NoInvoice, A.ValuePayment as Price, A.ValueTotal, '
            +'CONVERT(VARCHAR(10),B.Transdate,103) as Tanggal '
            +'FROM CFTrPiutangInternalDt A INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID '
            +'WHERE A.PiutangId=:PiutangId');
         Open;
       End;
       qlbTerbilang.Enabled := False;
       QRLabel8.Caption :='Jumlah Pembayaran';
       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;
       with quAct,SQL do
       begin
         Close;Clear;
         add('UPDATE CFTrPiutangInternalHD SET FgCetak=''Y'' WHERE PiutangID='''+quMainPiutangID.AsString+''' ');
         ExecSQL;
       end;
    finally
       free;
    end;
end;

procedure TfmCFTrPiutangInternal.dbgPiutangBankIDButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Bank';
       SQLString := 'SELECT BankId as Kode_Bank, BankName as Nama_Bank'
                   +' '
                   +' FROM CFMsBank'
                   +' ORDER BY BankId';
       if ShowModal = MrOK then
       begin
           if quDetil.State = dsBrowse then quDetil.Edit;
              quDetilBankId.Value := Res[0];
       end;
    finally
       Free;
    end;
end;

procedure TfmCFTrPiutangInternal.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekCetak;
end;

end.
