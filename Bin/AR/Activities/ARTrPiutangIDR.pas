unit ARTrPiutangIDR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv41, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL,Printers,
  dxDBCtrl, dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls,
  Buttons, dxCore, dxContainer, dxDBTLCl, dxGrClms, dxDBELib, dxEditor,
  DBCtrls;

type
  TfmARTrPiutangIDR = class(TfmStdLv41)
    dbgListPiutangID: TdxDBGridMaskColumn;
    dbgListTransDate: TdxDBGridDateColumn;
    dbgListCustID: TdxDBGridMaskColumn;
    dbgListNote: TdxDBGridMaskColumn;
    dbgListValutaID: TdxDBGridMaskColumn;
    quCustomer: TADOQuery;
    quCustomerCustID: TStringField;
    quCustomerCustName: TStringField;
    quCustomerAddress: TStringField;
    quCustomerCity: TStringField;
    quCustomerPhone: TStringField;
    quCustomerFax: TStringField;
    quCustomerEmail: TStringField;
    quCustomerNote: TStringField;
    quCustomerCustType: TStringField;
    quCustomerUpdDate: TDateTimeField;
    quCustomerUpdUser: TStringField;
    quMainPiutangID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainCustID: TStringField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quDetilPiutangID: TStringField;
    quDetilValueTotal: TBCDField;
    quDetilValuePayment: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quMainCustName: TStringField;
    quMainCurrId: TStringField;
    quDetilSaleID: TStringField;
    quPj: TADOQuery;
    dsTotal: TDataSource;
    quTotal: TADOQuery;
    quTotalTotal: TBCDField;
    quCal: TADOQuery;
    quDetilCTgl: TDateTimeField;
    quDetilCustName: TStringField;
    dbgListColumn8: TdxDBGridColumn;
    quValuta: TADOQuery;
    quMainLCurrName: TStringField;
    DBText4: TDBText;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1PenjualanID: TdxDBGridButtonColumn;
    dxDBGrid1tgl: TdxDBGridColumn;
    dxDBGrid1CustName: TdxDBGridColumn;
    dxDBGrid1UpdDate: TdxDBGridDateColumn;
    dxDBGrid1UpdUser: TdxDBGridMaskColumn;
    quDetilBankId: TStringField;
    quBank: TADOQuery;
    quDetilLBankName: TStringField;
    quMainTransDate1: TDateTimeField;
    quMainRate: TBCDField;
    quMainFgBayar: TStringField;
    quMainBankID: TStringField;
    quMainBGCID: TStringField;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    DBText7: TDBText;
    bbTambah: TdxButton;
    bbHapus: TdxButton;
    bbSimpan: TdxButton;
    bbBatal: TdxButton;
    dxButton3: TdxButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText3: TDBText;
    Label23: TLabel;
    DBText6: TDBText;
    Label5: TLabel;
    txtPiutangID: TdxDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    DBText5: TDBText;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    DBText2: TDBText;
    Label11: TLabel;
    DBText1: TDBText;
    Label6: TLabel;
    txtTransDate: TdxDBDateEdit;
    txtTransDate1: TdxDBDateEdit;
    txtCustID: TdxDBButtonEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBButtonEdit3: TdxDBButtonEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    ADOQuery1: TADOQuery;
    quMainLBankName: TStringField;
    dxDBGrid1ValuePayment: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure txtNomorBuktiKeyPress(Sender: TObject; var Key: Char);
    procedure dsDetilStateChange(Sender: TObject);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure txtCustIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid1PenjualanIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButton3Click(Sender: TObject);
    procedure dxDBGrid1BankIdButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure bbBatalClick(Sender: TObject);
    procedure bbTambahClick(Sender: TObject);
    procedure bbHapusClick(Sender: TObject);
    procedure bbSimpanClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    sPrintBO : string;
  public
    { Public declarations }
    StatusBayar : string;
  end;

var
  fmARTrPiutangIDR: TfmARTrPiutangIDR;

implementation

{$R *.dfm}

uses StdLv2, StdLv1, StdLv0, Search, UnitGeneral, ConMain, StdLv3, MyUnit,
  ARQRRptBuktiBayar, Allitem;

procedure TfmARTrPiutangIDR.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),Transdate,112), PiutangID';
  FFieldTgl   := 'TransDate';
  if StatusBayar = 'K' then
    FAfterWhere := 'AND FgBayar=''K'' ';
  if StatusBayar = 'B' then
    FAfterWhere := 'AND FgBayar=''B'' ';
  if StatusBayar = 'C' then
    FAfterWhere := 'AND FgBayar=''C'' ';
  SettingDxGrid(dxDBGrid1);
  inherited;
  if StatusBayar = 'K' then
  begin
    Caption := 'PEMBAYARAN PIUTANG SECARA KAS';
    Label16.Visible := False; Label17.Visible := False; dxDBButtonEdit3.Visible := False; dxDBEdit3.Visible := False;
    Label4.Top := 104; dxDBEdit2.Top := 100;
  end;
  if StatusBayar = 'B' then
  begin
    Caption := 'PEMBAYARAN PIUTANG SECARA BANK';
    Label17.Visible := False; dxDBEdit3.Visible := False;
    Label4.Top := 123; dxDBEdit2.Top := 120;
  end;
  if StatusBayar = 'C' then
  begin
    Caption := 'PEMBAYARAN PIUTANG SECARA CEK / GIRO';
  end;
  quMain.Active  := TRUE;
  quDetil.Active := TRUE;
  qutotal.Active := TRUE;
end;

procedure TfmARTrPiutangIDR.quMainBeforePost(DataSet: TDataSet);
var  ST: String;
begin
  inherited;
  if (StatusBayar = 'K') or (StatusBayar = 'B') then
  quMainTransDate.AsDateTime := quMainTransdate1.AsDateTime;

  IF TRIM(quMainTransDate.AsString)='' then
  Begin
   MsgInfo('Tanggal tidak boleh kosong');
   quMainTransDate.FocusControl;
   Abort;
  End;

  if Trim(quMainCustID.Value)='' then
  begin
    MsgInfo('Kode Pelanggan tidak boleh kosong');
    quMainCustID.FocusControl;
    Abort;
  End;

  if Trim(quMainCustName.Value)='' then
  begin
    MsgInfo('Kode Pelanggan tidak ada dalam Master');
    quMainCustID.FocusControl;
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

  if StatusBayar <> 'K' then
  begin
    if TRIM(quMainBankID.AsString)='' then
    begin
      ShowMessage('Kode Bank tidak boleh kosong');
      quMainBankID.FocusControl;
      Abort;
    end;
    if TRIM(quMainLBankName.AsString)='' then
    begin
      ShowMessage('Bank belum terdaftar di master Bank');
      quMainBankID.FocusControl;
      Abort;
    end;
  end;
  if StatusBayar = 'C' then
  begin
    if TRIM(quMainBGCID.AsString) = '' then
    begin
      ShowMessage('No BG / CEK tidak boleh kosong');
      quMainBGCID.FocusControl;
      Abort;
    end;
  end;

  if qumain.State=dsinsert then
  Begin
    ST := 'AR/'+PT+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
    quMainPiutangID.Value  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrPiutangHd', 'PiutangId', ST, '0') + 1);
    CarirateNew(quAct,quMainTransDate.AsDateTime);
    quMainRate.AsCurrency := quAct.FieldByName('Rate').AsCurrency;
  End;

  quMainUpdDate.Value := GetServerDateTime;
  quMainUpdUser.Value := dmMain.UserId;
end;

procedure TfmARTrPiutangIDR.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(txtPiutangID,TRUE);
  SetReadOnly(txtTransDate,quMain.State<>dsInsert);
  SetReadOnly(txtTransDate1,quMain.State<>dsInsert);  
  SetReadOnly(txtCustID,qumain.State<>dsinsert);
  SetReadOnly(dxDBButtonEdit2,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit3,quMain.State<>dsInsert);
  SetReadOnly(dxDBEdit3,quMain.State<>dsInsert);
end;

procedure TfmARTrPiutangIDR.txtNomorBuktiKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARTrPiutangIDR.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid1PenjualanID,qudetil.State<>dsinsert);
  SetReadOnly(dxDBGrid1tgl,TRUE);
  SetReadOnly(dxDBGrid1tgl,TRUE);
  SetReadOnly(dxDBGrid1CustName,TRUE);
end;

procedure TfmARTrPiutangIDR.dxDBGrid1Enter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmARTrPiutangIDR.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainCurrId.AsString := 'IDR';
  quMainTransDate.AsDateTime:= Date;
  quMainTransDate1.AsDateTime := Date;
  quMainTransDate1.FocusControl;
  quMainNote.AsString := '';
  if StatusBayar = 'K' then
    quMainFgBayar.AsString := 'K';
  if StatusBayar = 'B' then
    quMainFgBayar.AsString := 'B';
  if StatusBayar = 'C' then
    quMainFgBayar.AsString := 'C';
end;

procedure TfmARTrPiutangIDR.bbFindClick(Sender: TObject);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       if StatusBayar = 'K' then
         Title := 'Pembayaran Piutang Secara Kas';
       if StatusBayar = 'B' then
         Title := 'Pembayaran Piutang Secara Bank';
       if StatusBayar = 'C' then
         Title := 'Pembayaran Piutang Secara Cek / Giro';
       SQLString := ' SELECT PiutangID '
                   +' ,Convert(varchar(10),TransDate,103) as Tanggal_Piutang '
                   +' ,A.CustID as Kode_Pelanggan '
                   +' ,B.CustName as Nama_Pelanggan , A.CurrId as Valuta ,A.Note as Keterangan'
                   +' FROM ARTrPiutangHd A '
                   +' INNER JOIN ARMsCustomer B ON A.CustID=B.CustID '
                   +' WHERE '+FSQLWhere;
       if StatusBayar = 'K' then
       SQLString := SQLString + 'AND FgBayar=''K'' ORDER BY PiutangID';
       if StatusBayar = 'B' then
       SQLString := SQLString + 'AND FgBayar=''B'' ORDER BY PiutangID';
       if StatusBayar = 'C' then
       SQLString := SQLString + 'AND FgBayar=''C'' ORDER BY PiutangID';
       if ShowModal = MrOK then
       begin
         quMain.Locate('PiutangID',Res[0],[]);
       end;
    finally
       free;
    end;
end;


procedure TfmARTrPiutangIDR.txtCustIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Pelanggan';
       SQLString := 'SELECT Custname as Nama_Pelanggan,CustId as Kode_Pelanggan '
                   +',Address '
                   +' FROM ARMsCustomer'
                   +' ORDER BY CustId';
       if ShowModal = MrOK then
       begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainCustID.Value := Res[1];
       end;
    finally
       Free;
    end;
end;

procedure TfmARTrPiutangIDR.dxDBGrid1PenjualanIDButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(self) do
    try
       Title := 'Penjualan';
       SQLString := 'SELECT K.SaleID as Nota,K.Nama as Atas_Nama,CONVERT(VARCHAR(10),K.Transdate,103) as Tgl,ISNULL(K.TTLPj,0) as Total_Nota,'
                   +'ISNULL(K.Bayar,0) as Bayar,ISNULL(K.Retur,0) as Retur,ISNULL(K.TTLPj-K.Bayar-K.Retur,0) as Sisa FROM ('
                   +'SELECT SaleID,Nama,Transdate,B.CurrID,B.CustID,TTLPj,'
                   +'(SELECT ISNULL(SUM(ValuePayment),0) FROM ARTrPiutangDt A WHERE A.Saleid=B.SaleId) as Bayar,'
                   +'(SELECT ISNULL(SUM(Price*Qty),0) FROM ARTrReturPenjualanDt F '
                   +'INNER JOIN ARTrReturPenjualanHd G  ON F.ReturnId=G.ReturnId WHERE G.FlagRetur=''B'' AND F.SaleId=B.SaleId) as Retur '
                   +'FROM ARTrPenjualanHd B) as K WHERE K.CurrID='''+quMainCurrId.AsString+''' '
                   +'AND K.CustID='''+quMainCustID.AsString+''' AND ISNULL(K.TTLPj-K.Bayar-K.Retur,0) <> 0';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilSaleID.Value := Res[0];
             quDetilValuePayment.AsString := Res[6];
             quDetilValueTotal.AsString := res[6];
       end;
    finally
       Free;
    end;
end;

procedure TfmARTrPiutangIDR.quDetilCalcFields(DataSet: TDataSet);
begin
   with quCal,sql do
  Begin
    Close;Clear;
    Add('SELECT CONVERT(VARCHAR(10),K.Transdate,103) as Tgl,K.CustID,L.CustName FROM ('
       +'SELECT Transdate,CustID,SaleID FROM ARTrPenjualanHd) as K INNER JOIN ARMsCustomer L ON K.CustID=L.CustID '
       +'WHERE K.SaleID='''+quDetilSaleID.AsString+''' ');
    Open;
  End;
  quDetilCTgl.AsString := quCal.fieldbyname('Tgl').AsString;
  quDetilCustName.AsString := quCal.fieldbyname('custName').AsString;
end;

procedure TfmARTrPiutangIDR.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if quDetilSaleID.Value = '' Then
  Begin
    MsgInfo('Nota Penjualan masih kosong');
    quDetilSaleID.FocusControl;
    Abort;
  End;

  if TRIM(quDetilLBankName.AsString)='' then
  begin
     if TRIM(quDetilBankId.AsString)<>'' then
     begin
       ShowMessage('Kode Bank tidak terdaftar');
       quDetilBankId.FocusControl;
       Abort;
     end else
       quDetilBankId.Clear;
  end;

  if TRIM(quDetilCTgl.AsString)='' then
  Begin
     MsgInfo('Nota Penjualan tidak ada dalam Transaksi Penjualan');
     quDetilSaleID.FocusControl;
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
     MsgInfo('Tgl Pembayaran lebih kecil dari tanggal Penjualan');
     quDetilSaleID.FocusControl;
     abort;
  End;

  if quDetil.State=dsinsert then
  Begin
    With quAct,Sql do
    Begin
       Close;Clear;
       add('SELECT SaleID from ARTrPiutangdt WHERE PiutangID=:PiutangID AND SaleID=:SaleID');
       Parameters.ParamByName('PiutangID').Value:= quMainPiutangID.AsString;
       Parameters.ParamByName('SaleID').Value:= quDetilSaleID.AsString;
       Open;
       If quAct.RecordCount <> 0 then
       Begin
          MsgInfo('Nota sudah terdapat dalam list');
          quDetilSaleID.FocusControl;
          Abort;
       End;
    End;
  End;

  with quAct,sql do
  Begin
    Close;Clear;
    add('SELECT ISNULL(K.TTLPj-K.Retur-(SELECT ISNULL(SUM(ValuePayment),0) '
       +'FROM ARTrPiutangDt A WHERE A.SaleID=K.SaleID AND A.PiutangID<>'''+quMainPiutangID.AsString+'''),0) as Sisa FROM ('
       +'SELECT TTLPj,CurrID,CustID,SaleID,(SELECT ISNULL(SUM(Price*Qty),0) FROM ARTrReturPenjualanDt F '
       +'INNER JOIN ARTrReturPenjualanHd G  ON F.ReturnId=G.ReturnId WHERE G.FlagRetur=''B'' AND F.SaleId=B.SaleId) as Retur '
       +'FROM ARTrPenjualanHd B) as K '
       +'WHERE K.CurrID='''+quMainCurrId.AsString+''' AND K.CustID='''+quMainCustID.AsString+''' AND K.SaleID='''+quDetilSaleID.AsString+''' ');
    Open;
    if IsEmpty then
    Begin
      MsgInfo('Data ini tidak terdapat pada Nota Penjualan');
      quDetilSaleID.FocusControl;
      Abort;
    End;
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

  if quDetilValuePayment.Value > quAct.FieldByName('Sisa').AsCurrency then
  begin
    MsgInfo('Pembayaran melebihi total Piutang '+#13+' Sisa Piutang adalah ['+FormatCurr(sDisFormat,quAct.FieldByName('Sisa').AsCurrency)+']');
    quDetilValuePayment.FocusControl;
    Abort;
  end;

  quDetilUpdUser.AsString := dmMain.UserId;
  quDetilUpdDate.AsDateTime := GetServerDateTime;
end;

procedure TfmARTrPiutangIDR.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilValuePayment.AsCurrency:=0;
  quDetilValuePayment.FocusControl;
  if StatusBayar <> 'K' then
    quDetilBankId.AsString := quMainBankID.AsString;
end;

procedure TfmARTrPiutangIDR.quDetilAfterPost(DataSet: TDataSet);
var Rate : string;
begin
  inherited;
  CarirateNew(quAct,quMainTransDate.Value);
  Rate := CurrToStr(quAct.FieldByName('Rate').AsCurrency);
  DeleteFromAllMoney1(quMainPiutangID.Value,quDetilSaleID.Value,'8');
   if TRIM(quDetilBankId.AsString)='' then
     InsertToAllMoney(quMainPiutangID.Value,quDetilSaleID.Value,quMainTransDate.value,quMainCustID.Value,'KM',sDRPj,sDGRPj,
                      quDetilValuePayment.value,'Pembayaran Piutang Nota '+quDetilSaleID.Value+' Pelanggan '+quMainCustName.Value+'',
                      '8','','',quMainCustName.Value,quMainCurrId.Value,quAct.fieldbyname('Rate').Value);
   if TRIM(quDetilBankId.AsString)<>'' then
     InsertToAllMoney(quMainPiutangID.Value,quDetilSaleID.Value,quMainTransDate.value,quMainCustID.Value,'BM',sDRPj,sDGRPj,
                      quDetilValuePayment.value,'Pembayaran Piutang Nota '+quDetilSaleID.Value+' Pelanggan '+quMainCustName.Value+'',
                      '8',quDetilBankId.Value,quDetilLBankName.Value,quMainCustName.Value,quMainCurrId.Value,quAct.fieldbyname('Rate').Value);
  quTotal.Requery();
  quDetil.Append;
end;

procedure TfmARTrPiutangIDR.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
  qutotal.Requery();
end;

procedure TfmARTrPiutangIDR.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Valuta';
       SQLString := 'SELECT CurrId as Kode_Valuta, CurrName as Nama_Valuta'
               +' FROM SAMsValuta'
               +' ORDER BY CurrId';
       if ShowModal = MrOk then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainCurrID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPiutangIDR.dxButton3Click(Sender: TObject);
var iPrint : Integer;
    sTotal : Currency;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(ValuePayment),0) as Total FROM ARTrPiutangDt '
       +'WHERE PiutangID='''+quMainPiutangID.AsString+''' ');
    Open;
  end;
  sTotal := quAct.FieldByName('Total').AsCurrency;
  iPrint := Printer.Printers.IndexOf(sPrintBO);
   with TfmQRRptBuktiBayar.Create(Self) do
    try
       MyReport.PrinterSettings.PrinterIndex := iPrint;
       if UpperCase(quMainCurrID.AsString)='IDR' then
         qlbTerbilang.Caption := '* Terbilang '+ convert(FormatFloat(sEditFormat, stotal))+'rupiah #'
       else
         qlbTerbilang.Caption := '* Terbilang '+ convert(FormatFloat(sEditFormat, stotal))+'dollar #';
       with qu001,SQL do
       Begin
         Close;Clear;
         add(' Select PiutangId,PiutangId As BuktiBayar,CurrId,Convert(varchar(10),getdate(),103) as Tgl,'
            +' C.CustName as CustSupp,A.Note '
            +' FROM ARTrPiutangHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId'
            +' WHERE A.PiutangId='''+quMainPiutangID.Value+'''');
         Open;
       End;

       With qu002,sql do
       Begin
         Close;Clear;
         Add(' Select SaleId as NoInvoice,ValuePayment as Price FROM ARTrPiutangDt Where PiutangId=:PiutangId');
         Open;
       End;

       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;

    finally
       free;
    end;
end;

procedure TfmARTrPiutangIDR.dxDBGrid1BankIdButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Bank';
       SQLString := 'SELECT BankId as Kode_Bank, BankName as Nama_Bank'
                   +' FROM CFMsBank WHERE FgActive=''Y'' '
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

procedure TfmARTrPiutangIDR.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllMoney1(quMainPiutangID.Value,quDetilSaleID.Value,'8');
end;

procedure TfmARTrPiutangIDR.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllMoney(quMainPiutangID.Value,'8');
end;

procedure TfmARTrPiutangIDR.bbBatalClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmARTrPiutangIDR.bbTambahClick(Sender: TObject);
begin
  inherited;
  quDetil.Append;
end;

procedure TfmARTrPiutangIDR.bbHapusClick(Sender: TObject);
begin
  inherited;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Nota ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmARTrPiutangIDR.bbSimpanClick(Sender: TObject);
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

procedure TfmARTrPiutangIDR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  If (Self.quMain.State = dsEdit) or (Self.quMain.State = dsInsert) then
  begin
    ShowMessage('Data Belum disimpan');
    Abort;
  end;
  If (Self.quDetil.State = dsEdit) or (Self.quDetil.State = dsInsert) then
  begin
    ShowMessage('Data Detil Pembayaran Belum disimpan');
    Abort;
  end;

end;

procedure TfmARTrPiutangIDR.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Bank';
       SQLString := 'SELECT BankId as Kode_Bank, BankName as Nama_Bank FROM CFMsBank WHERE FgActive=''Y'' ORDER BY BankId';
       if ShowModal = MrOK then
       begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainBankID.Value := Res[0];
       end;
    finally
       Free;
    end;
end;

procedure TfmARTrPiutangIDR.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  quDetil.Append;
end;

end.
