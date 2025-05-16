unit APPembayaranKonsIDR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,Printers,
  dxCore, dxContainer, dxEditor, dxDBELib, DBCtrls, dxDBTLCl, dxGrClms,
  Mask;

type
  TfmAPPembayaranKonsIDR = class(TfmStdLv4)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    dbg: TdxDBGrid;
    Panel2: TPanel;
    quItem: TADOQuery;
    dbgInvoiceID: TdxDBGridButtonColumn;
    dbgListPaymentID: TdxDBGridMaskColumn;
    dbgListPaymentDate: TdxDBGridDateColumn;
    dbgListCustId: TdxDBGridMaskColumn;
    dbgListLCustname: TdxDBGridLookupColumn;
    quAct1: TADOQuery;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    dbgPaymentValue: TdxDBGridColumn;
    quCustomer: TADOQuery;
    quDetilValueKonsinyasi: TBCDField;
    quDetilValuePayment: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quMainTransDate: TDateTimeField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainCurrID: TStringField;
    quMainLuCustomer: TStringField;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    DBText2: TDBText;
    Label11: TLabel;
    DBText3: TDBText;
    quMainPaymentKonsID: TStringField;
    quDetilPaymentKonsID: TStringField;
    quDetilKonsinyasiInvID: TStringField;
    quKS: TADOQuery;
    Label13: TLabel;
    dsTotal: TDataSource;
    quTotal: TADOQuery;
    quTotalTotal: TBCDField;
    dbgTglInvoice: TdxDBGridColumn;
    quDetilTglInvoice: TDateTimeField;
    quDetilLCustName: TStringField;
    dbgPelanggan: TdxDBGridColumn;
    GroupBox3: TGroupBox;
    DBText7: TDBText;
    Label14: TLabel;
    Label12: TLabel;
    DBText4: TDBText;
    quValuta: TADOQuery;
    quMainLCurrName: TStringField;
    DBText6: TDBText;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    dxButton3: TdxButton;
    quDetilBankId: TStringField;
    quBank: TADOQuery;
    quDetilLBankName: TStringField;
    dbgColumn6: TdxDBGridColumn;
    dbgColumn5: TdxDBGridButtonColumn;
    quSisa: TADOQuery;
    quMainRate: TBCDField;
    DBText8: TDBText;
    Label15: TLabel;
    quMainSuppID: TStringField;

    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dbgEnter(Sender: TObject);
    procedure dbgInvoiceIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure dsDetilStateChange(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure ActNewExecute(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButton3Click(Sender: TObject);
    procedure dbgColumn5ButtonClick(Sender: TObject;
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
  fmAPPembayaranKonsIDR: TfmAPPembayaranKonsIDR;

implementation

uses StdLv2, StdLv1, StdLv3, StdLv0, Search, UnitGeneral, ConMain, MyUnit, ARQRRptBuktiBayar, Allitem;

{$R *.dfm}

procedure TfmAPPembayaranKonsIDR.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), PaymentKonsID';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dbg);
  inherited;
  quTotal.Open;
  quTotalTotal.DisplayFormat := sDisFormat;
  quMain.Active  := TRUE;
  quDetil.Active := TRUE;
  quDetilValuePayment.DisplayFormat := sDisFormat;
  quDetilValuePayment.EditFormat :=sEditformat;
  quDetilValueKonsinyasi.DisplayFormat := sDisFormat;
end;

procedure TfmAPPembayaranKonsIDR.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBDateEdit1,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit1,qumain.State<>dsinsert);
  SetReadOnly(dxDBButtonEdit2,qumain.State<>dsinsert);
end;

procedure TfmAPPembayaranKonsIDR.dbgEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmAPPembayaranKonsIDR.dbgInvoiceIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Invoice Konsinyasi';
       SQLString := ' SELECT KonsinyasiInvId as No_Invoice_Konsinyasi,CONVERT(VARCHAR(10),TransDate,103) as Tgl,ISNULL(TTLKS,0) as Total_Inv_Kon,'
                   +' ISNULL(TTLKS-(SELECT ISNULL(SUM(ValuePayment),0) FROM APTrPaymentKonsDt A INNER JOIN APTrPaymentKonsHd C'
                   +' ON A.PaymentKonsId=C.PaymentKonsID WHERE A.KonsinyasiInvId=B.KonsinyasiInvId AND C.CustId=B.CustId),0) as Sisa'
                   +' FROM APTrKonsinyasiInvHd B WHERE currid='''+quMainCurrID.Value+''' AND CustId='''+quMainSuppID.AsString+''''
                   +' AND ISNULL(TTLKS-(SELECT ISNULL(SUM(ValuePayment),0) FROM APTrPaymentKonsDt A INNER JOIN APTrPaymentKonsHd C'
                   +' ON A.PaymentKonsId=C.PaymentKonsID WHERE A.KonsinyasiInvId=B.KonsinyasiInvId AND C.CustId=B.CustId),0) <> 0'
                   +' AND Convert(Varchar(8),B.TransDate,112) <='''+FormatDateTime('yyyyMMdd',quMainTransDate.Value)+'''';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilKonsinyasiInvID.Value := Res[0];
          quDetilValueKonsinyasi.AsString := Res[3];
          quDetilValuePayment.AsString := Res[3];
       end;
    finally
       free;
    end;
end;

procedure TfmAPPembayaranKonsIDR.dxDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmAPPembayaranKonsIDR.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quDetilKonsinyasiInvID.Value)='' then
  begin
     MsgInfo('Invoice Konsinyasi tidak boleh kosong !');
     quDetilKonsinyasiInvID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilLCustName.Value)='' then
  begin
     MsgInfo('Invoice Konsinyasi tidak ada !');
     quDetilKonsinyasiInvID.FocusControl;
     Abort;
  end;

  if quDetilValuePayment.value <= 0  then
  begin
     MsgInfo('Jumlah Pembayaran harus lebih besar dari 0');
     quDetilValuePayment.FocusControl;
     Abort;
  end;

  if quMainTransDate.Value < quDetilTglInvoice.Value then
  Begin
     MsgInfo('Tgl Pembayaran lebih kecil dari tanggal Invoice Konsinyasi');
     quDetilKonsinyasiInvID.FocusControl;
     Abort;
  End;

  if quDetil.State = dsInsert then
  begin
     with quAct, SQL do
     begin
        Close; Clear;
        Add('SELECT Count(KonsinyasiInvID) FROM APTrPaymentKonsDt WHERE PaymentKonsID=:PaymentKonsID AND KonsinyasiInvID=:KonsinyasiInvID');
        with Parameters do
        begin
           ParamByName('PaymentKonsID').Value := quMainPaymentKonsID.Value;
           ParamByName('KonsinyasiInvID').Value  := quDetilKonsinyasiInvID.Value;
        end;
        Open;
        if Fields[0].AsInteger > 0 then
        begin
           MsgInfo('invoice Konsinyasi sudah ada dalam List');
           quDetilKonsinyasiInvID.FocusControl;
           abort;
        end;
     end;
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

  with quAct,sql do
  Begin
    Close;Clear;
    add(' SELECT isnull(TTLKS-(Select isnull(Sum(ValuePayment),0) from APTrPaymentKonsDt A INNER JOIN APTrPaymentKonsHd C'
       +' ON A.PaymentKonsId=C.PaymentKonsID where'
       +' A.KonsinyasiInvId=B.KonsinyasiInvId AND C.CustId=B.CustId AND C.PaymentKonsId<>'''+quMainPaymentKonsID.Value+'''),0) as Sisa'
       +' FROM APTrKonsinyasiInvHd B'
       +' WHERE B.currid='''+quMainCurrID.Value+''' AND B.CustId='''+quMainSuppID.AsString+''''
       +' AND B.KonsinyasiInvId='''+quDetilKonsinyasiInvID.Value+'''');
    Open;
  End;

  if quDetilValuePayment.Value > quAct.FieldByName('Sisa').AsCurrency then
  begin
    MsgInfo('Pembayaran melebihi total hutang '+#13+' Sisa hutang adalah ['+FormatCurr(sDisFormat,quAct.FieldByName('Sisa').AsCurrency)+']');
    quDetilValuePayment.FocusControl;
    Abort;
  end;

  quDetilUpdUser.Value := dmMain.UserId;
  quDetilUpdDate.Value := GetServerDateTime;

end;

procedure TfmAPPembayaranKonsIDR.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgInvoiceID,quDetil.State<>dsinsert);
  SetReadOnly(dbgTglInvoice,TRUE);
  SetReadOnly(dbgPelanggan,TRUE);
  SetReadOnly(dbgColumn6,TRUE);
end;

procedure TfmAPPembayaranKonsIDR.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Pelanggan';
       SQLString := 'SELECT Custname as Supplier, CustID as Kode_Supplier FROM ARMsCustomer ORDER BY CustId';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainSuppID.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmAPPembayaranKonsIDR.quMainBeforePost(DataSet: TDataSet);
var ST : String;
begin
  inherited;
  if Trim(quMainTransDate.AsString)='' then
  begin
    MsgInfo('Tanggal transaksi tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  if Trim(quMainSuppID.Value)='' then
  begin
    MsgInfo('Kode Pelanggan tidak boleh kosong');
    quMainSuppID.FocusControl;
    Abort;
  End;

  if Trim(quMainLuCustomer.Value)='' then
  begin
    MsgInfo('Kode Pelanggan tidak ada dalam Master Pelanggan');
    quMainSuppID.FocusControl;
    Abort;
  End;

  if Trim(quMainCurrID.Value)='' then
  begin
    MsgInfo('Kode Valuta tidak boleh kosong');
    quMainCurrID.FocusControl;
    Abort;
  End;

  if Trim(quMainLCurrName.Value)='' then
  begin
    MsgInfo('Kode Valuta tidak ada dalam Master Valuta');
    quMainCurrID.FocusControl;
    Abort;
  End;

  if qumain.State=dsinsert then
  Begin
    ST := 'APK/'+PT+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
    quMainPaymentKonsID.Value  := ST + FormatFloat('0000', RunNumberGL(quAct, 'APTrPaymentKonsHd', 'PaymentKonsId', ST, '0') + 1);
    CarirateNew(quAct,quMainTransDate.AsDateTime);
    quMainRate.AsCurrency := quAct.FieldByName('Rate').AsCurrency;
  End;

  quMainUpdUser.Value := dmMain.UserId;
  quMainUpddate.Value := GetServerDateTime;

end;

procedure TfmAPPembayaranKonsIDR.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilValuePayment.Value := 1;
  quDetilKonsinyasiInvID.FocusControl;
end;

procedure TfmAPPembayaranKonsIDR.ActNewExecute(Sender: TObject);
begin
  inherited;
  quMainTransDate.FocusControl;
end;

procedure TfmAPPembayaranKonsIDR.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.Value:= Now;
  quMainCurrID.AsString := 'IDR'
end;

procedure TfmAPPembayaranKonsIDR.bbFindClick(Sender: TObject);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Pembayaran Invoice Konsinyasi Barang ';

       SQLString := ' SELECT PaymentKonsID as Pembayaran_Invoice_Konsinyasi'
                   +' ,Convert(Varchar(10),Transdate,103) as Tgl '
                   +' ,A.CustID as Kode_Pelanggan'
                   +' ,B.CustName as Nama_Pelanggan,A.CurrID as Valuta'
                   +' ,A.Note as Keterangan'
                   +' FROM APTrPaymentKonsHd A INNER JOIN ARMSCustomer B ON A.CustId=B.CustId'
                   +' WHERE '+FSQLWhere 
                   +' ORDER BY PaymentKonsID ';
       if ShowModal = MrOK then
       begin
         qumain.Locate('PaymentKonsID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmAPPembayaranKonsIDR.quDetilAfterPost(DataSet: TDataSet);
Var Rate : String;
begin
  inherited;
   CarirateNew(quAct,quMainTransDate.Value);
   Rate:=CurrToStr(quAct.FieldByName('Rate').AsCurrency);
   DeleteFromAllMoney1(quMainPaymentKonsID.Value,quDetilKonsinyasiInvID.Value,'6');
   if TRIM(quDetilBankId.Value)='' then
     InsertToAllMoney(quMainPaymentKonsID.Value,quDetilKonsinyasiInvID.Value,quMainTransDate.value,quMainSuppID.Value,'KK',sDRPb,sDGRPb,
                      quDetilValuePayment.value,'Pembayaran Hutang Konsinyasi Nota '+quDetilKonsinyasiInvID.Value+' Dari'+quMainLuCustomer.Value+'',
                      '6','','',quMainLuCustomer.Value,quMainCurrID.Value,quAct.fieldbyname('Rate').Value);
   if TRIM(quDetilBankId.Value)<>'' then
     InsertToAllMoney(quMainPaymentKonsID.Value,quDetilKonsinyasiInvID.Value,quMainTransDate.value,quMainSuppID.Value,'BK',sDRPb,sDGRPb,
                      quDetilValuePayment.value,'Pembayaran Hutang Konsinyasi Nota '+quDetilKonsinyasiInvID.Value+' Dari '+quMainLuCustomer.Value+'',
                      '6',quDetilBankId.Value,quDetilLBankName.Value,quMainLuCustomer.Value,quMainCurrID.Value,quAct.fieldbyname('Rate').Value);
   if quMainCurrID.AsString = 'USD' then
   begin
     with quAct,SQL do
     begin
       Close;Clear;
       Add('DELETE FROM AllModal WHERE FgTrans=2 AND SourceNo='''+quDetilKonsinyasiInvID.AsString+''' '
          +'AND VoucherNo='''+quMainPaymentKonsID.AsString+''' ');
       ExecSQL;
     end;

     with quSisa,SQL do
     begin
       Close;Clear;
       Add('SELECT ISNULL(TTLKs-(SUM(ValuePayment)),0) as Sisa FROM APTrKonsinyasiInvHd A '
          +'INNER JOIN APTrPaymentKonsDt B ON A.KonsinyasiInvID=B.KonsinyasiInvID '
          +'WHERE A.KonsinyasiInvID='''+quDetilKonsinyasiInvID.AsString+''' GROUP BY A.TTLKs');
       Open;
     end;
     if quSisa.FieldByName('Sisa').AsCurrency = 0 then
     begin
       with quAct,SQL do
       begin
         Close;Clear;
         Add('INSERT AllModal (VoucherNo,SourceNo,Transdate,FgTrans,ItemID,Qty,CurrID,Price,Rate) '
            +'SELECT '''+quMainPaymentKonsID.AsString+''',A.KonsinyasiInvID,A.Transdate,2,B.ItemID,B.Qty,A.CurrID,B.Price-(B.Price*B.Disc/100), '
            +''''+Rate+''' FROM APTrKonsinyasiInvHd A INNER JOIN APTrKonsinyasiInvDt B ON A.KonsinyasiInvID=B.KonsinyasiInvID '
            +'WHERE A.KonsinyasiInvID='''+quDetilKonsinyasiInvID.AsString+''' AND A.CustID='''+quMainSuppID.AsString+''' ');
         ExecSQL;;
       end;
     end;
   end;
  quTotal.Requery();
end;

procedure TfmAPPembayaranKonsIDR.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
end;

procedure TfmAPPembayaranKonsIDR.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;

  with quAct,sql do
  Begin
    Close;Clear;
    add(' SELECT Convert(Varchar(10),A.Transdate,103) as Tgl,B.CustName FROM APTrKonsinyasiInvHd A '
       +' INNER JOIN ARMsCustomer B ON A.CustId=B.CustId '
       +' WHERE A.KonsinyasiInvId='''+quDetilKonsinyasiInvID.Value+'''');
    Open;
  End;

  quDetilTglInvoice.AsString := quAct.fieldbyname('tgl').AsString;
  quDetilLCustName.Value := quAct.fieldbyname('CustName').AsString;

end;

procedure TfmAPPembayaranKonsIDR.dxDBButtonEdit2ButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
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

procedure TfmAPPembayaranKonsIDR.dxButton3Click(Sender: TObject);
var iPrint : Integer;
    sTotal : Currency;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(ValuePayment),0) as Total FROM APTrPaymentKonsDt '
       +'WHERE PaymentKonsID='''+quMainPaymentKonsID.AsString+''' ');
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
         add(' Select PaymentKonsId,PaymentKonsId As BuktiBayar,CurrId,Convert(varchar(10),getdate(),103) as Tgl,'
            +' C.CustName as CustSupp,A.Note '
            +' FROM APTrPaymentKonsHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId'
            +' WHERE A.PaymentKonsId='''+quMainPaymentKonsID.Value+'''');
         Open;
       End;

       With qu002,sql do
       Begin
         Close;Clear;
         Add(' Select KonsinyasiInvId as NoInvoice,ValuePayment as Price FROM APTrPayMentKonsDt Where PaymentKonsId=:PaymentKonsId');
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

procedure TfmAPPembayaranKonsIDR.dbgColumn5ButtonClick(Sender: TObject;
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

procedure TfmAPPembayaranKonsIDR.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllMoney1(quMainPaymentKonsID.Value,quDetilKonsinyasiInvID.Value,'6');
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllModal WHERE FgTrans=2 AND SourceNo='''+quDetilKonsinyasiInvID.AsString+''' '
       +'AND VoucherNo='''+quMainPaymentKonsID.AsString+''' ');
    ExecSQL;
  end;

end;

procedure TfmAPPembayaranKonsIDR.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllMoney(quMainPaymentKonsID.Value,'6');
  with quAct,SQL do
  begin
    Close;Clear;
    Add('DELETE FROM AllModal WHERE FgTrans=2 AND VoucherNo='''+quMainPaymentKonsID.AsString+''' ');
    ExecSQL;
  end;
end;

end.
