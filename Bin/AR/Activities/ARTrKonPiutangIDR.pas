unit ARTrKonPiutangIDR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv41, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL,
  dxDBCtrl, dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls,Printers,
  Buttons, dxCore, dxContainer, dxDBTLCl, dxGrClms, dxDBELib, dxEditor,
  DBCtrls;

type
  TfmARTrKonPiutangIDR = class(TfmStdLv41)
    Label6: TLabel;
    dbgListKonPiutangID: TdxDBGridMaskColumn;
    dbgListTransDate: TdxDBGridDateColumn;
    dbgListCustID: TdxDBGridMaskColumn;
    dbgListNote: TdxDBGridMaskColumn;
    dbgListValutaID: TdxDBGridMaskColumn;
    DBText3: TDBText;
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
    quMainKonPiutangID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainCustID: TStringField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quDetilKonPiutangID: TStringField;
    quDetilKonInvPelID: TStringField;
    quDetilValueTotal: TBCDField;
    quDetilValuePayment: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    DBText2: TDBText;
    Label11: TLabel;
    DBText1: TDBText;
    GroupBox3: TGroupBox;
    DBText4: TDBText;
    Label5: TLabel;
    quMainCurrID: TStringField;
    quMainLCustName: TStringField;
    quDetilCTgl: TDateTimeField;
    quDetilCCustname: TStringField;
    quTotal: TADOQuery;
    dsTotal: TDataSource;
    quTotalTotal: TBCDField;
    dbgListColumn6: TdxDBGridColumn;
    Label23: TLabel;
    DBText6: TDBText;
    txtKonPiutangID: TdxDBEdit;
    txtTransDate: TdxDBDateEdit;
    txtCustID: TdxDBButtonEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    dbg: TdxDBGrid;
    dbgInvoiceID: TdxDBGridButtonColumn;
    dbgTglInvoice: TdxDBGridColumn;
    dbgPelanggan: TdxDBGridColumn;
    dbgPaymentValue: TdxDBGridColumn;
    quValuta: TADOQuery;
    quMainLCurrName: TStringField;
    DBText5: TDBText;
    dxButton3: TdxButton;
    quDetilBankId: TStringField;
    dbgBankName: TdxDBGridColumn;
    quBank: TADOQuery;
    quDetilLBankName: TStringField;
    dbgBankId: TdxDBGridButtonColumn;
    quCal: TADOQuery;
    quMainRate: TBCDField;
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
    procedure dxDBGrid1KonInvPelIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure txtKonPiutangIDKeyPress(Sender: TObject; var Key: Char);
    procedure dbgEnter(Sender: TObject);
    procedure dbgInvoiceIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure dxButton3Click(Sender: TObject);
    procedure dbgBankIdButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    sPrintBO : string;
  public
    { Public declarations }

  end;

var
  fmARTrKonPiutangIDR: TfmARTrKonPiutangIDR;

implementation

{$R *.dfm}

uses StdLv2, StdLv1, StdLv0, Search, UnitGeneral, ConMain, StdLv3, MyUnit,
  ARQRRptBuktiBayar, RptLv0, Allitem;

procedure TfmARTrKonPiutangIDR.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),Transdate,112), KonPiutangID';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dbg);
  inherited;
  quMain.Active  := TRUE;
  quDetil.Active := TRUE;
  qutotal.open;
  quTotalTotal.DisplayFormat :=sDisFormat;
  quDetilValuePayment.DisplayFormat:= sDisFormat;
  quDetilValuePayment.EditFormat := sEditformat;
  SettingDxGrid(dbg);
end;

procedure TfmARTrKonPiutangIDR.quMainBeforePost(DataSet: TDataSet);
var  ST: String;
begin
  inherited;
  if Trim(quMainCustID.Value)='' then
  begin
    MsgInfo('Kode Pelanggan tidak boleh kosong');
    quMainCustID.FocusControl;
    Abort;
  End;

  if Trim(quMainLCustName.Value)='' then
  begin
    MsgInfo('Kode Pelanggan tidak ada dalam Master');
    quMainCustID.FocusControl;
    Abort;
  End;

  if Trim(quMainCurrID.Value)='' then
  begin
    MsgInfo('Valuta tidak boleh kosong');
    quMainCurrID.FocusControl;
    Abort;
  End;

  if Trim(quMainLCurrName.Value)='' then
  begin
    MsgInfo('Valuta tidak ada dalam Master');
    quMainCurrID.FocusControl;
    Abort;
  End;

 if qumain.State=dsinsert then
  Begin
    ST := 'ARK/'+PT+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
    quMainKonPiutangID.Value  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrKonPiutangHd', 'KonPiutangID', ST, '0') + 1);
    CarirateNew(quAct,quMainTransDate.AsDateTime);
    quMainRate.AsCurrency := quAct.FieldByName('Rate').AsCurrency;
  End;

  quMainUpdDate.Value := GetServerDateTime;
  quMainUpdUser.Value := dmMain.UserId;
end;

procedure TfmARTrKonPiutangIDR.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(txtKonPiutangID,TRUE);
  SetReadOnly(txtTransDate,quMain.State<>dsInsert);
  SetReadOnly(txtCustID,qumain.State<>dsinsert);
  SetReadOnly(dxDBButtonEdit2,quMain.State<>dsInsert);
end;

procedure TfmARTrKonPiutangIDR.txtNomorBuktiKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARTrKonPiutangIDR.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgInvoiceID,quDetil.State<>dsInsert);
  SetReadOnly(dbgTglInvoice,TRUE);
  SetReadOnly(dbgPelanggan,TRUE);
  SetReadOnly(dbgBankName,TRUE);
end;

procedure TfmARTrKonPiutangIDR.dxDBGrid1Enter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmARTrKonPiutangIDR.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.Value:= Now;
  quMainCurrID.AsString := 'IDR';
  quMainTransDate.FocusControl;
end;

procedure TfmARTrKonPiutangIDR.bbFindClick(Sender: TObject);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Piutang Konsinyasi Penjualan';


       SQLString := ' SELECT KonPiutangID as Kode_Konsinyasi_Piutang'
                   +' ,Convert(varchar(10),TransDate,103) as Tanggal_Konsinyasi_Piutang '
                   +' ,A.CustID as Kode_Pelanggan '
                   +' ,B.CustName as Nama_Pelanggan '
                   +' FROM ARTrKonPiutangHd A '
                   +' INNER JOIN ARMsCustomer B ON A.CustID=B.CustID '
                   +' WHERE '+FSQLWhere
                   +' ORDER BY KonPiutangID';
       if ShowModal = MrOK then
       begin
         quMain.Locate('KonPiutangID',Res[0],[]);
       end;
    finally
       free;
    end;
end;


procedure TfmARTrKonPiutangIDR.txtCustIDButtonClick(Sender: TObject;
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

procedure TfmARTrKonPiutangIDR.dxDBGrid1KonInvPelIDButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(self) do
    try
       Title := 'Penjualan';
       SQLString := 'SELECT ARTrKonInvPelHd.KonInvPelID, TransDate, Sum(Qty * UserPrice) as Nilai_Total FROM ARTrKonInvPelHd, ARTrKonInvPelDt '
                   +'WHERE ARTrKonInvPelHd.KonInvPelID = ARTrKonInvPelDt.KonInvPelID '
                   +'GROUP BY ARTrKonInvPelHd.KonInvPelID, TransDate';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilKonInvPelID.Value := Res[0];
          quDetilValueTotal.asString := Res[2];
          quDetilValuePayment.FocusControl;
       end;
    finally
       Free;
    end;
end;

procedure TfmARTrKonPiutangIDR.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,sql do
  Begin
    Close;Clear;
    add(' Select Convert(varchar(10),Transdate,103) as Tgl,B.CustName FROM ARTrKonInvPelHd A INNER JOIN '
       +' ARMsCustomer B ON A.CustId=B.CustId WHERE KonInvPelId='''+quDetilKonInvPelID.Value+'''');
    Open;
  End;
  quDetilCTgl.AsString := quact.fieldbyname('tgl').AsString;
  quDetilCCustname.AsString := quact.fieldbyname('CustName').AsString;
end;

procedure TfmARTrKonPiutangIDR.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quDetilKonInvPelID.Value)='' then
  begin
     MsgInfo('Invoice Konsinyasi Penjualan tidak boleh kosong !');
     quDetilKonInvPelID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilCCustname.Value)='' then
  begin
     MsgInfo('Invoice Konsinyasi Penjualan tidak ada !');
     quDetilKonInvPelID.FocusControl;
     Abort;
  end;


  if quDetilValuePayment.value <= 0  then
  begin
     MsgInfo('Jumlah Pembayaran harus lebih besar dari 0');
     quDetilValuePayment.FocusControl;
     Abort;
  end;

  if quMainTransDate.Value < quDetilCTgl.Value then
  Begin
     MsgInfo('tgl Pembayaran lebih kecil dari tgl Invoice Konsinyasi');
     quDetilKonInvPelID.FocusControl;
     Abort;
  End;

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

  if quDetil.State = dsInsert then
  begin
     with quAct, SQL do
     begin
        Close; Clear;
        Add('SELECT Count(KonInvPelID) FROM ARTrKonPiutangDt WHERE KonPiutangID=:KonPiutangID AND KonInvPelID=:KonInvPelID');
        with Parameters do
        begin
           ParamByName('KonpiutangID').Value := quMainKonPiutangID.Value;
           ParamByName('KonInvPelID').Value  := quDetilKonInvPelID.Value;
        end;
        Open;
        if Fields[0].AsInteger > 0 then
        begin
           MsgInfo('invoice Konsinyasi penjualan sudah ada dalam List');
           quDetilKonInvPelID.FocusControl;
           abort;
        end;
     end;
  end;

  with quAct,SQL do
  Begin
    Close;Clear;
    Add(' SELECT  isnull(TTLKJ-(Select isnull(Sum(ValuePayment),0) from ARTrKonPiutangDt A INNER JOIN ARTrKonPiutangHd C'
       +' ON A.KonpiutangId=C.KonPiutangID where'
       +' A.KonInvPelId=B.KonInvPelId AND C.KonPiutangId<>'''+quMainKonPiutangID.Value+'''),0) as Sisa'
       +' FROM ARTrKonInvPelHd B'
       +' WHERE B.KonInvpelId='''+quDetilKonInvPelID.Value+'''');
    Open;
  End;


  if quDetilValuePayment.AsCurrency > quAct.FieldByName('Sisa').AsCurrency then
  begin
    MsgInfo('Pembayaran melebihi total piutang '+#13+' Sisa Piutang adalah ['+FormatCurr(sDisFormat,quAct.FieldByName('Sisa').AsCurrency)+']');
    quDetilValuePayment.FocusControl;
    Abort;
  end;

  quDetilUpdUser.Value := dmMain.UserId;
  quDetilUpdDate.Value := GetServerDateTime;

end;

procedure TfmARTrKonPiutangIDR.txtKonPiutangIDKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmARTrKonPiutangIDR.dbgEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then
     quDetil.Append;
end;

procedure TfmARTrKonPiutangIDR.dbgInvoiceIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Invoice Konsinyasi';
       SQLString := ' SELECT KoninvpelId as Nota_Invoice_Konsinyasi,Convert(varchar(10),TransDate,103) as Tgl,isnull(TTLKJ,0) as Total_Inv_Kon,'
                   +' isnull(TTLKJ-(Select isnull(Sum(ValuePayment),0) from ARTrKonPiutangDt A INNER JOIN ARTrKonPiutangHd C'
                   +' ON A.KonpiutangId=C.KonPiutangID where'
                   +' A.KonInvPelId=B.KonInvPelId AND C.CustId=B.CustId),0) as Sisa'
                   +' FROM ARTrKonInvPelHd B'
                   +' WHERE Currid='''+quMainCurrID.Value+''' AND CustId='''+quMainCustID.AsString+''''
                   +' AND Convert(varchar(8),B.transdate,112)<='''+FormatDateTime('yyyyMMdd',quMainTransDate.Value)+'''';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilKonInvPelID.Value := Res[0];
             quDetilValueTotal.AsString := Res[3];
             quDetilValuePayment.AsString := Res[3];
           //  quDetilValuePayment.FocusControl;
       end;
    finally
       free;
    end;
end;

procedure TfmARTrKonPiutangIDR.quDetilAfterPost(DataSet: TDataSet);
var Rate : string;
begin
  inherited;
   CarirateNew(quAct,quMainTransDate.Value);
   Rate := CurrToStr(quAct.FieldByName('Rate').AsCurrency);
   DeleteFromAllMoney1(quMainKonPiutangID.Value,quDetilKonInvPelID.Value,'9');
   if TRIM(quDetilBankId.Value)='' then
     InsertToAllMoney(quMainKonPiutangID.Value,quDetilKonInvPelID.Value,quMainTransDate.value,quMainCustID.Value,'KM',sDRPj,sDGRPj,
                      quDetilValuePayment.value,'Pembayaran Piutang Konsinyasi Nota '+quDetilKonInvPelID.Value+' Pelanggan '+quMainLCustName.Value+'',
                      '9','','',quMainLCustName.Value,quMainCurrID.Value,quAct.fieldbyname('Rate').Value);
   if TRIM(quDetilBankId.Value)<>'' then
     InsertToAllMoney(quMainKonPiutangID.Value,quDetilKonInvPelID.Value,quMainTransDate.value,quMainCustID.Value,'BM',sDRPj,sDGRPj,
                      quDetilValuePayment.value,'Pembayaran Piutang Konsinyasi Nota '+quDetilKonInvPelID.Value+' Pelanggan '+quMainLCustName.Value+'',
                      '9',quDetilBankId.Value,quDetilLBankName.Value,quMainLCustName.Value,quMainCurrId.Value,quAct.fieldbyname('Rate').Value);
//Buat masukin ke table AllSale
   if quMainCurrID.AsString = 'USD' then
   begin
     with quAct,SQL do
     begin
       Close;Clear;
       Add('DELETE FROM AllSale WHERE FgTrans=2 AND SourceNo='''+quDetilKonInvPelID.AsString+''' '
          +'AND VoucherNo='''+quMainKonPiutangID.AsString+''' ');
       ExecSQL;
     end;

     with quCal ,SQL do
     begin
       Close;Clear;
       Add('SELECT ISNULL(TTLKj-(SUM(ValuePayment)),0) as Sisa FROM ARTrKonInvPelHd A '
          +'INNER JOIN ARTrKonPiutangDt B ON A.KonInvPelID=B.KonInvPelID '
          +'WHERE A.KonInvPelID='''+quDetilKonInvPelID.AsString+''' GROUP BY A.TTLKj');
       Open;
     end;
     if quCal.FieldByName('Sisa').AsCurrency = 0 then
     begin
       with quAct,SQL do
       begin
         Close;Clear;
         Add('INSERT AllSale (VoucherNo,SourceNo,Transdate,FgTrans,ItemID,Qty,CurrID,Price,Rate,CustID,SalesID) '
            +'SELECT '''+quMainKonPiutangID.AsString+''',A.KonInvPelID,A.Transdate,2,B.ItemID,B.Qty,A.CurrID,B.Price, '
            +''''+Rate+''',A.CustID,A.SalesID FROM ARTrKonInvPelHd A INNER JOIN ARTrKonInvPelDt B ON A.KonInvPelID=B.KonInvPelID '
            +'WHERE A.KonInvPelID='''+quDetilKonInvPelID.AsString+''' AND A.CustID='''+quMainCustID.AsString+''' ');
         ExecSQL;;
       end;
     end;
   end;
   quTotal.Requery();
end;

procedure TfmARTrKonPiutangIDR.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
  qutotal.Requery();
end;

procedure TfmARTrKonPiutangIDR.dxDBButtonEdit2ButtonClick(Sender: TObject;
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

procedure TfmARTrKonPiutangIDR.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilKonInvPelID.FocusControl;
end;

procedure TfmARTrKonPiutangIDR.dxButton3Click(Sender: TObject);
var iPrint : Integer;
    sTotal : Currency;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(ValuePayment),0) as Total FROM ARTrKonPiutangDt '
       +'WHERE KonPiutangID='''+quMainKonPiutangID.AsString+''' ');
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
         add(' Select KonPiutangId,KonPiutangId As BuktiBayar,CurrId,Convert(varchar(10),getdate(),103) as Tgl,'
            +' C.CustName as CustSupp,A.Note '
            +' FROM ARTrKonPiutangHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId'
            +' WHERE A.KonPiutangId='''+quMainKonPiutangID.Value+'''');
         Open;
       End;

       With qu002,sql do
       Begin
         Close;Clear;
         Add(' Select KonInvPelId as NoInvoice,ValuePayment as Price FROM ARTrKonPiutangDt Where KonPiutangId=:KonPiutangId');
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

procedure TfmARTrKonPiutangIDR.dbgBankIdButtonClick(Sender: TObject;
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

procedure TfmARTrKonPiutangIDR.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllMoney1(quMainKonPiutangID.Value,quDetilKonInvPelID.Value,'9');
end;

procedure TfmARTrKonPiutangIDR.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllMoney(quMainKonPiutangID.Value,'9');
end;

procedure TfmARTrKonPiutangIDR.FormCreate(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    close;clear;
    Add('SELECT sDPB FROM SAMsSET');
    Open;
  end;
  sPrintBO := quAct.FieldByName('sDPB').AsString;
end;

end.
