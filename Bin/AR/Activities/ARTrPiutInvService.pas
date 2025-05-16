unit ARTrPiutInvService;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv41, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL,Printers,
  dxDBCtrl, dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls,
  Buttons, dxCore, dxContainer, dxDBTLCl, dxGrClms, dxDBELib, dxEditor,
  DBCtrls;

type
  TfmARTrPiutInvService = class(TfmStdLv41)
    Label6: TLabel;
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
    quMainTransDate: TDateTimeField;
    quMainCustID: TStringField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quDetilValueTotal: TBCDField;
    quDetilValuePayment: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quMainCustName: TStringField;
    quMainCurrId: TStringField;
    quPj: TADOQuery;
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
    GroupBox3: TGroupBox;
    DBText7: TDBText;
    Label14: TLabel;
    dsTotal: TDataSource;
    quTotal: TADOQuery;
    quCal: TADOQuery;
    quDetilCTgl: TDateTimeField;
    quDetilCustName: TStringField;
    dbgListColumn8: TdxDBGridColumn;
    quMainPiutInvServiceID: TStringField;
    quDetilPiutInvServiceID: TStringField;
    quDetilInvServiceID: TStringField;
    quTotalTotal: TBCDField;
    Label8: TLabel;
    dxButton3: TdxButton;
    txtPiutangID: TdxDBEdit;
    txtTransDate: TdxDBDateEdit;
    txtCustID: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1PenjualanID: TdxDBGridButtonColumn;
    dxDBGrid1tgl: TdxDBGridColumn;
    dxDBGrid1ValuePayment: TdxDBGridCurrencyColumn;
    dxDBGrid1UpdDate: TdxDBGridDateColumn;
    dxDBGrid1UpdUser: TdxDBGridMaskColumn;
    dxDBGrid1BankName: TdxDBGridColumn;
    quBank: TADOQuery;
    quDetilBankId: TStringField;
    quDetilLBankName: TStringField;
    dxDBGrid1BankId: TdxDBGridButtonColumn;
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
    procedure dxButton3Click(Sender: TObject);
    procedure dxDBGrid1BankIdButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    sPrintBO : string;
  public
    { Public declarations }
    StatusCurr : string;
  end;

var
  fmARTrPiutInvService: TfmARTrPiutInvService;

implementation

{$R *.dfm}

uses StdLv2, StdLv1, StdLv0, Search, UnitGeneral, ConMain, StdLv3, MyUnit,
  ARQRRptBuktiBayar, Allitem;

procedure TfmARTrPiutInvService.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),Transdate,112), PiutInvServiceID';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dxDBGrid1);
  inherited;
  quMain.Active  := TRUE;
  quDetil.Active := TRUE;
  qutotal.Active := TRUE;
  quTotalTotal.DisplayFormat := sDisFormat;
  quDetilValueTotal.DisplayFormat:=sDisFormat;
  dxDBGrid1ValuePayment.DisplayFormat:=sDisFormat;
  quDetilValuePayment.EditFormat :=sEditformat;

end;

procedure TfmARTrPiutInvService.quMainBeforePost(DataSet: TDataSet);
var
  ST: String;
begin
  inherited;
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

  if qumain.State=dsinsert then
  Begin
    ST := 'ARS/'+PT+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
    quMainPiutInvServiceID.Value  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrPiutInvServiceHd', 'PiutInvServiceId', ST, '0') + 1);
  End;

  quMainUpdDate.Value := GetServerDateTime;
  quMainUpdUser.Value := dmMain.UserId;
end;

procedure TfmARTrPiutInvService.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(txtPiutangID,TRUE);
  SetReadOnly(txtTransDate,quMain.State<>dsInsert);
  SetReadOnly(txtCustID,qumain.State<>dsinsert);
  
end;

procedure TfmARTrPiutInvService.txtNomorBuktiKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARTrPiutInvService.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid1PenjualanID,qudetil.State<>dsinsert);
  SetReadOnly(dxDBGrid1tgl,TRUE);
  SetReadOnly(dxDBGrid1tgl,TRUE);
  SetReadOnly(dxDBGrid1BankName,TRUE);
end;

procedure TfmARTrPiutInvService.dxDBGrid1Enter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmARTrPiutInvService.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.Value:= Now;
  quMainTransDate.FocusControl;
  qumainCurrId.Value :='IDR';
end;

procedure TfmARTrPiutInvService.bbFindClick(Sender: TObject);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Piutang Service IDR';
       SQLString := ' SELECT PiutInvServiceID '
                   +' ,Convert(varchar(10),TransDate,112) as Tanggal_Pembayaran '
                   +' ,A.CustID as Kode_Pelanggan '
                   +' ,B.CustName as Nama_Pelanggan '
                   +' FROM ARTrPiutInvServiceHd A '
                   +' INNER JOIN ARMsCustomer B ON A.CustID=B.CustID '
                   +' WHERE '+FSQLWhere
                   +' ORDER BY PiutInvServiceID ';
       if ShowModal = MrOK then
       begin
         quMain.Locate('PiutInvServiceID',Res[0],[]);
       end;
    finally
       free;
    end;
end;


procedure TfmARTrPiutInvService.txtCustIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Pelanggan';
       SQLString := 'SELECT CustId as Kode_Pelanggan, Custname as Nama_Pelanggan'
                   +',Address '
                   +' FROM ARMsCustomer'
                   +' ORDER BY CustId';
       if ShowModal = MrOK then
       begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainCustID.Value := Res[0];
       end;
    finally
       Free;
    end;
end;

procedure TfmARTrPiutInvService.dxDBGrid1PenjualanIDButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(self) do
    try
       Title := 'Penjualan';
       SQLString := ' SELECT InvServiceId as Nota_Invoice_Service, Convert(varchar(10),B.TransDate,103) as Tgl,'
                   +' isnull(TTLSV,0) as Total_Nota,'
                   +' isnull(isnull(TTLSV,0)-(Select isnull(Sum(ValuePayment),0) from ARTrPiutInvServiceDt A where'
                   +' A.InvServiceid=B.InvServiceId),0)'
                   +' as Sisa, C.Nama as Atas_Nama'
                   +' FROM ARTrInvServiceHd B INNER JOIN ARTrServiceHD C ON B.ServiceId=C.ServiceId'
                   +' WHERE C.CustId='''+quMainCustID.AsString+''''
                   +' AND Convert(Varchar(10),B.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',quMainTransDate.Value)+''''
                   +' AND isnull(isnull(TTLSV,0)-(Select isnull(Sum(ValuePayment),0) from ARTrPiutInvServiceDt A where'
                   +' A.InvServiceid=B.InvServiceId),0)'
                   +' <>0';
                  ;
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilInvServiceID.Value := Res[0];
             quDetilValuePayment.asString := Res[3];
             quDetilValueTotal.AsString := res[3];
             quDetilValuePayment.FocusControl;
       end;
    finally
       Free;
    end;
end;

procedure TfmARTrPiutInvService.quDetilCalcFields(DataSet: TDataSet);
begin
   with quCal,sql do
  Begin
    Close;Clear;
    add(' SELECT CONVERT(VARCHAR(10),Transdate,103) as Tgl'
       +' FROM ARTrInvServiceHd WHERE '
       +' InvServiceid='''+quDetilInvServiceID.Value+''''
       +' ');
    Open;
  End;
  quDetilCTgl.AsString := quCal.fieldbyname('tgl').AsString;
end;

procedure TfmARTrPiutInvService.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quDetilInvServiceID.Value)='' Then
  Begin
    MsgInfo('Kode Invoice Service tidak boleh kosong');
    quDetilInvServiceID.FocusControl;
    Abort;
  End;

  if TRIM(quDetilCTgl.AsString)='' then
  Begin
     MsgInfo('Nota Penjualan tidak ada dalam Transaksi Penjualan');
     quDetilInvServiceID.FocusControl;
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
     MsgInfo('Tanggal Pembayaran lebih kecil dari tgl invoice service');
     quDetilInvServiceID.FocusControl;
     Abort;
  End;

  if quDetil.State=dsinsert then
  Begin
    With quAct,Sql do
    Begin
       Close;Clear;
       add('SELECT PiutInvServiceID from ARTrPiutinvservicedt WHERE PiutinvserviceID=:PiutinvserviceID AND InvserviceId=:invserviceId');
       Parameters.ParamByName('PiutinvserviceID').Value:= quMainPiutInvServiceID.AsString;
       Parameters.ParamByName('InvserviceId').Value:= quDetilInvServiceID.AsString;
       Open;
       If quAct.RecordCount <> 0 then
       Begin
          MsgInfo('Nota sudah terdapat dalam list');
          quDetilInvServiceID.FocusControl;
          Abort;
       End;
    End;
  End;

  with quAct,sql do
  Begin
    Close;Clear;
    Add(' Select isnull(TTLSV-(Select isnull(Sum(ValuePayment),0) from ARTrPiutInvServiceDt A '
       +' WHERE A.InvServiceid=B.InvServiceId AND PiutInvServiceId<>'''+quMainPiutInvServiceID.Value+'''),0) '
       +' as Sisa'
       +' FROM ARTrInvServiceHd B INNER JOIN ARTrServiceHD C ON B.ServiceId=C.ServiceId'
       +' WHERE C.CustId='''+quMainCustID.AsString+''' AND InvServiceId='''+quDetilInvServiceID.Value+'''');
    Open;
    if IsEmpty then
    Begin
      MsgInfo('Data ini tidak terdapat pada Nota invoice Service');
      quDetilInvServiceID.FocusControl;
      Abort;
    End;
  end;

  if TRIM(quDetilLBankName.AsString)='' then
  begin
    if TRIM(quDetilBankId.AsString)<>'' Then
    Begin
      MsgInfo('Kode Bank tidak terdaftar');
      quDetilBankId.FocusControl;
      Abort;
    End else
      quDetilBankId.Clear;
  end;

  if quDetilValuePayment.Value > quAct.FieldByName('Sisa').AsCurrency then
  begin
    MsgInfo('Pembayaran melebihi total piutang '+#13+' Sisa piutang adalah ['+FormatCurr(sDisFormat,quAct.FieldByName('Sisa').AsCurrency)+']');
    quDetilValuePayment.FocusControl;
    Abort;
  end;

  quDetilUpdUser.Value := dmMain.UserId;
  quDetilUpdDate.Value := GetServerDateTime;
end;

procedure TfmARTrPiutInvService.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilValuePayment.Value:=0;
end;

procedure TfmARTrPiutInvService.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
   CarirateNew(quAct,quMainTransDate.Value);
   DeleteFromAllMoney1(quMainPiutInvServiceID.Value,quDetilInvServiceID.Value,'11');
   if TRIM(quDetilBankId.Value)='' then
     InsertToAllMoney(quMainPiutInvServiceID.Value,quDetilInvServiceID.Value,quMainTransDate.value,quMainCustID.Value,'KM',sDRPj,sDGRPj,
                      quDetilValuePayment.value,'Pembayaran Piutang Service Nota '+quDetilInvServiceID.Value+' Pelanggan '+quMainCustName.Value+'',
                      '11','','',quMainCustName.Value,quMainCurrId.Value,quAct.fieldbyname('Rate').Value);
   if TRIM(quDetilBankId.Value)<>'' then
     InsertToAllMoney(quMainPiutInvServiceID.Value,quDetilInvServiceID.Value,quMainTransDate.value,quMainCustID.Value,'BM',sDRPj,sDGRPj,
                      quDetilValuePayment.value,'Pembayaran Piutang Service Nota '+quDetilInvServiceID.Value+' Pelanggan '+quMainCustName.Value+'',
                      '11',quDetilBankId.Value,quDetilLBankName.Value,quMainCustName.Value,quMainCurrId.Value,quAct.fieldbyname('Rate').Value);

  qutotal.Requery();
end;

procedure TfmARTrPiutInvService.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
  qutotal.Requery();
end;

procedure TfmARTrPiutInvService.dxButton3Click(Sender: TObject);
var iPrint : Integer;
    sTotal : Currency;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(ValuePayment),0) as Total FROM ARTrPiutInvServiceDt '
       +'WHERE PiutInvServiceID='''+quMainPiutInvServiceID.AsString+''' ');
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
         add(' Select PiutInvServiceId,PiutInvServiceId As BuktiBayar,CurrId,Convert(varchar(10),getdate(),103) as Tgl,'
            +' C.CustName as CustSupp,A.Note '
            +' FROM ARTrPiutInvServiceHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId'
            +' WHERE A.PiutInvServiceId='''+quMainPiutInvServiceID.Value+'''');
         Open;
       End;

       With qu002,sql do
       Begin
         Close;Clear;
         Add(' Select InvServiceId as NoInvoice,ValuePayment as Price FROM ARTrPiutInvServiceDt Where PiutInvServiceId=:PiutInvServiceId');
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

procedure TfmARTrPiutInvService.dxDBGrid1BankIdButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Cari Bank';
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

procedure TfmARTrPiutInvService.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllMoney1(quMainPiutInvServiceID.Value,quDetilInvServiceID.Value,'11');
end;

procedure TfmARTrPiutInvService.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllMoney(quMainPiutInvServiceID.Value,'11');
end;

end.
