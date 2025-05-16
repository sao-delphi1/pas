unit ARTrPayReturnRep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxEditor, dxDBELib, DBCtrls, dxDBTLCl, dxGrClms,
  Mask;

type
  TfmARTrPayReturnRep = class(TfmStdLv4)
    dbg: TdxDBGrid;
    Panel2: TPanel;
    quItem: TADOQuery;
    dbgReturnRep: TdxDBGridButtonColumn;
    dbgListPaymentID: TdxDBGridMaskColumn;
    dbgListPaymentDate: TdxDBGridDateColumn;
    dbgListSuppId: TdxDBGridMaskColumn;
    dbgListLSuppname: TdxDBGridLookupColumn;
    quAct1: TADOQuery;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    quMainTransDate: TDateTimeField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainCurrID: TStringField;
    quDetilValuePayment: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    dbgPaymentValue: TdxDBGridColumn;
    quPb: TADOQuery;
    quTotal: TADOQuery;
    dsTotal: TDataSource;
    quCal: TADOQuery;
    dbgtgl: TdxDBGridColumn;
    dbgCustName: TdxDBGridColumn;
    GroupBox3: TGroupBox;
    DBText7: TDBText;
    Label14: TLabel;
    quValuta: TADOQuery;
    quMainLCurrName: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    DBText4: TDBText;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    DBText2: TDBText;
    Label11: TLabel;
    DBText3: TDBText;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    DBText6: TDBText;
    quMainPayReturnRepID: TStringField;
    quDetilPayReturnRepID: TStringField;
    quDetilReturnRepID: TStringField;
    quDetilValueTotal: TBCDField;
    quTotalTotal: TBCDField;
    quMainCustID: TStringField;
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
    quMainLCustName: TStringField;
    quDetilCTgl: TDateTimeField;
    quDetilCCustName: TStringField;
    dxButton3: TdxButton;
    dbgBankName: TdxDBGridColumn;
    quDetilBankId: TStringField;
    quBank: TADOQuery;
    quDetilLBankName: TStringField;
    dbgBankId: TdxDBGridButtonColumn;

    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dbgEnter(Sender: TObject);
    procedure dbgReturnRepButtonClick(Sender: TObject;
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
    procedure quDetilPurchaseIDChange(Sender: TField);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButton3Click(Sender: TObject);
    procedure dbgBankIdButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    StatusCurr : String;
  end;

var
  fmARTrPayReturnRep: TfmARTrPayReturnRep;

implementation

uses StdLv2, StdLv1, StdLv3, StdLv0, Search, UnitGeneral, ConMain, MyUnit, ARQRRptBuktiBayar, Allitem, ARQRRptStruck1;

{$R *.dfm}

procedure TfmARTrPayReturnRep.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), PayReturnRepID';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dbg);
  inherited;
  quMain.Active  := TRUE;
  quDetil.Active := TRUE;
  quTotal.Open;
  quTotalTotal.DisplayFormat:=sDisFormat;
  quDetilValuePayment.DisplayFormat := sDisFormat;
//  quDetilValuePurchase.DisplayFormat := sDisFormat;
  quDetilValuePayment.EditFormat:=sEditformat;
//  quDetilCsisa.DisplayFormat:= sDisFormat;
End;

procedure TfmARTrPayReturnRep.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBButtonEdit1,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit2,quMain.State<>dsInsert);
  SetReadOnly(dxDBDateEdit1,quMain.State<>dsInsert);
end;

procedure TfmARTrPayReturnRep.dbgEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then
     quDetil.Append;
end;

procedure TfmARTrPayReturnRep.dbgReturnRepButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
    with TfmSearch.Create(self) do
    try
       Title := 'Invoice Pengganti Retur';
       SQLString := ' SELECT ReturnRepId as Nota_Pengganti_Retur,Convert(varchar(10),TransDate,103) as Tgl,isnull(TTLReturRep,0) as Total_Nota,'
                   +' (Select isnull(Sum(ValuePayment),0) from ARTrPayReturnRepDt A INNER JOIN ARTrPayReturnRepHd C'
                   +' ON A.PayReturnRepId=C.PayReturnRepID where'
                   +' A.ReturnRepid=B.ReturnrepId AND C.CustId=B.CustId) as Total_Bayar,'
                   +' isnull(TTLReturRep,0)-(Select isnull(Sum(ValuePayment),0) from ARTrPayReturnRepDt A INNER JOIN ARTrPayReturnRepHd C'
                   +' ON A.PayReturnRepId=C.PayReturnRepID where'
                   +' A.ReturnRepid=B.ReturnRepId AND C.CustId=B.CustId)'
                   +' as Sisa'
                   +' FROM ARTrPenggantiReturPenjHd B'
                   +' WHERE currid='''+quMainCurrId.Value+''' AND CustId='''+quMainCustID.AsString+''' AND'
                   +' isnull(TTLReturRep,0)-(Select isnull(Sum(ValuePayment),0) from ARTrPayReturnRepDt A INNER JOIN ARTrPayReturnRepHd C'
                   +' ON A.PayReturnRepId=C.PayReturnRepID where'
                   +' A.ReturnRepid=B.ReturnRepId AND C.CustId=B.CustId) <> 0'
                   +' AND Convert(varchar(10),B.Transdate,112) <='''+FormatDateTime('yyyyMMdd',quMainTransDate.Value)+'''';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilReturnRepID.Value := Res[0];
             quDetilValueTotal.asString := Res[4];
             quDetilValuePayment.asString := Res[4];
             quDetilValuePayment.FocusControl;
       end;
    finally
       Free;
    end;
end;

procedure TfmARTrPayReturnRep.dxDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmARTrPayReturnRep.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quDetilReturnRepID.Value)='' then
  begin
     MsgInfo('Nota Pengganti Retur tidak boleh kosong !');
     quDetilReturnRepID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilCTgl.AsString)='' then
  Begin
     MsgInfo('Nota Pengganti Retur tidak ada');
     quDetilReturnRepID.FocusControl;
     Abort;
  End;

  if quMainTransDate.AsDateTime < quDetilCTgl.Value then
  Begin
    MsgInfo('Tanggal pembayaran lebih kecil dari tanggal Pengganti Retur');
    quDetilReturnRepID.FocusControl;
    abort;
  End;

  if quDetilValuePayment.value = 0  then
  begin
     MsgInfo('Jumlah Pembayaran harus lebih besar dari 0');
     quDetilValuePayment.FocusControl;
     Abort;
  end;

  if quDetil.State = dsInsert then
  begin
     with quAct, SQL do
     begin
        Close; Clear;
        Add(' SELECT Count(ReturnRepID) FROM ARTrPayReturnRepDt WHERE PayReturnRepID=:PayReturnRepID AND ReturnRepID=:ReturnRepID'
           +'  ');
        with Parameters do
        begin
           ParamByName('PayReturnRepID').Value := quMainPayReturnRepID.Value;
           ParamByName('ReturnRepID').Value  := quDetilReturnRepID.Value;
        end;
        Open;
        if Fields[0].AsInteger > 0 then
        begin
           MsgInfo('Nota Pengganti Retur sudah ada dalam List');
           quDetilReturnRepID.FocusControl;
           abort;
        end;
     end;
  end;

  with quAct,sql do
  Begin
    Close;Clear;
    add(' SELECT isnull(TTLReturRep,0)-(Select isnull(Sum(ValuePayment),0) from ARTrPayreturnRepDt A INNER JOIN ARTrPayReturnRepHd C'
       +' ON A.PayReturnRepId=C.PayReturnRepID where'
       +' A.ReturnRepid=B.ReturnRepId AND C.CustId=B.CustId AND A.PayReturnRepId<>'''+quMainPayReturnRepID.Value+''')'
       +' as Sisa'
       +' FROM ARTrPenggantiReturPenjHd B'
       +' WHERE currid='''+quMainCurrId.Value+''' AND CustId='''+quMainCustID.AsString+''''
       +' And ReturnRepId='''+quDetilReturnRepID.Value+'''');
    Open;
    if IsEmpty then
    Begin
      MsgInfo('Data ini tidak terdapat pada Nota Pengganti Retur');
      quDetilReturnRepID.FocusControl;
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
    MsgInfo('Pembayaran melebihi total hutang '+#13+' Sisa hutang adalah ['+FormatCurr(sDisFormat,quAct.FieldByName('Sisa').AsCurrency)+']');
    quDetilValuePayment.FocusControl;
    Abort;
  end;

  quDetilUpdUser.Value := dmMain.UserId;
  quDetilUpdDate.Value := GetServerDateTime;

end;

procedure TfmARTrPayReturnRep.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgReturnRep,quDetil.State<>dsInsert);
  SetReadOnly(dbgtgl,TRUE);
  SetReadOnly(dbgCustName,TRUE);
  SetReadOnly(dbgBankName,TRUE);

end;

procedure TfmARTrPayReturnRep.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
 with TfmSearch.Create(Self) do
    try
       Title := 'Pelanggan';
       SQLString := 'SELECT CustId as Kode_Pelanggan, CustName as Nama_Pelanggan'
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

procedure TfmARTrPayReturnRep.quMainBeforePost(DataSet: TDataSet);
var ST : String;
begin
  inherited;
 { if Trim(quMainPaymentID.Value)='' then
  Begin
    MsgInfo('Nota bukti tidak boleh kosong');
    quMainPaymentID.FocusControl;
    Abort;
  End;

  If qumain.State= dsinsert then
  Begin
    With quAct,Sql do
    Begin
       Close;Clear;
       add('Select paymentID from APTrPaymentHd WHERE PaymentID='''+quMainpaymentID.Value+'''');
       Open;
       If Not IsEmpty then
       Begin
          MsgInfo('Nota sudah dipakai di transaksi pembayaran lain');
          quMainPaymentID.FocusControl;
          Abort;
       End;
    End;
  End;  }

  if Trim(quMainTransDate.AsString)='' then
  begin
    MsgInfo('Tanggal transaksi tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  if Trim(quMainCustID.Value)='' then
  begin
    MsgInfo('Kode Pelanggan tidak boleh kosong');
    quMainCustID.FocusControl;
    Abort;
  End;

  if Trim(quMainLCustName.Value)='' then
  begin
    MsgInfo('Kode Pelanggan tidak ada dalam Master Pelanggan');
    quMainCustID.FocusControl;
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
    ST := 'ARR/'+PT+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
    quMainPayReturnRepID.Value  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrPayReturnRepHd', 'PayReturnRepID', ST, '0') + 1);
  End;

  quMainUpdUser.Value := dmMain.UserId;
  quMainUpddate.Value := GetServerDateTime;
end;

procedure TfmARTrPayReturnRep.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilValuePayment.Value := 1;
  quDetilPayReturnRepID.FocusControl;
end;

procedure TfmARTrPayReturnRep.ActNewExecute(Sender: TObject);
begin
  inherited;
  quMainTransDate.FocusControl;
end;

procedure TfmARTrPayReturnRep.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime:=Now;
  quMainCurrID.AsString := 'IDR';
end;

procedure TfmARTrPayReturnRep.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Nota Pembayaran Hutang Pengganti Retur ';
       SQLString := ' SELECT PayReturnRepID as Nota_Pembayaran_Pengganti_Retur, '
                   +' Convert(varchar(10),Transdate,103) as Tanggal ,'
                   +' A.CustId as Kode_Pelanggan, B.CustName as Nama_Pelanggan,CurrId as Valuta,'
                   +' A.Note as Keterangan'
                   +' FROM ARTrPayReturnRepHd A'
                   +' INNER JOIN ARMsCustomer B ON A.CustID = B.CustID'
                   +' WHERE '+FSQLWhere
                   +' ORDER BY PayReturnRepID ';
       if ShowModal = MrOK then
       begin
         qumain.Locate('PayReturnRepID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPayReturnRep.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
   CarirateNew(quAct,quMainTransDate.Value);
   DeleteFromAllMoney1(quMainPayReturnRepID.Value,quDetilReturnRepID.Value,'10');
   if TRIM(quDetilBankId.Value)='' then
     InsertToAllMoney(quMainPayReturnRepID.Value,quDetilReturnRepID.Value,quMainTransDate.value,quMainCustID.Value,'KM',sDRPj,sDGRPj,
                      quDetilValuePayment.value,'Pembayaran Piutang Retur Nota '+quDetilReturnRepID.Value+' Pelanggan '+quMainLCustName.Value+'',
                      '10','','',quMainLCustName.Value,quMainCurrID.Value,quAct.fieldbyname('Rate').Value);
   if TRIM(quDetilBankId.Value)<>'' then
     InsertToAllMoney(quMainPayReturnRepID.Value,quDetilReturnRepID.Value,quMainTransDate.value,quMainCustID.Value,'BM',sDRPj,sDGRPj,
                      quDetilValuePayment.value,'Pembayaran Piutang Retur Nota '+quDetilReturnRepID.Value+' Pelanggan '+quMainLCustName.Value+'',
                      '10',quDetilBankId.Value,quDetilLBankName.Value,quMainLCustName.Value,quMainCurrId.Value,quAct.fieldbyname('Rate').Value);

   quTotal.Requery();
   quDetil.Append;
End;

procedure TfmARTrPayReturnRep.quDetilPurchaseIDChange(Sender: TField);
begin
  inherited;
  {with quAct,sql do
  Begin
    Close;Clear;
    Add(' SELECT isnull(TTLPb-(Select isnull(Sum(ValuePayment),0) from APTrPaymentDt A INNER JOIN APTrPaymentHd C'
       +' ON A.PaymentId=C.PaymentID where'
       +' A.Purchaseid=B.PurchaseId AND C.SuppId=B.SuppId),0) as Sisa'
       +' FROM APTrPurchaseHd B'
       +' WHERE currid='''+quMainCurrId.Value+''' AND SuppId='''+quMainSuppID.AsString+''''
       +' AND PurchaseId='''+quDetilPurchaseID.Value+'''');
    Open;
  End;
  quDetilValuePurchase.AsCurrency := quAct.fieldbyname('sisa').AsCurrency;
  }
end;

procedure TfmARTrPayReturnRep.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
   quTotal.Requery();
end;

procedure TfmARTrPayReturnRep.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quCal,sql do
  Begin
    Close;Clear;
    add(' Select Convert(Varchar(10),A.Transdate,103) as Tgl,A.CustId,B.CustName FROM ARTrPenggantiReturPenjHd A'
       +' INNER JOIN ARMsCustomer B ON A.CustId=B.CustId WHERE A.ReturnRepid='''+quDetilReturnRepID.Value+'''');
    Open;
  End;
  quDetilCTgl.AsString := quCal.fieldbyname('tgl').AsString;
  quDetilCCustName.AsString := quCal.fieldbyname('CustName').AsString;
end;

procedure TfmARTrPayReturnRep.dxDBButtonEdit2ButtonClick(
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

procedure TfmARTrPayReturnRep.dxButton3Click(Sender: TObject);
var sTotal : Currency;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(ValuePayment),0) as Total FROM ARTrPayReturnRepDt '
       +'WHERE PayReturnRepID='''+quMainPayReturnRepID.AsString+''' ');
    Open;
  end;
  sTotal := quAct.FieldByName('Total').AsCurrency;
  with TfmQRRptBuktiBayar.Create(Self) do
    try
       if UpperCase(quMainCurrID.AsString)='IDR' then
         qlbTerbilang.Caption := '* Terbilang '+ convert(FormatFloat(sEditFormat, stotal))+'rupiah #'
       else
         qlbTerbilang.Caption := '* Terbilang '+ convert(FormatFloat(sEditFormat, stotal))+'dollar #';
       with qu001,SQL do
       Begin
         Close;Clear;
         add(' Select PayReturnRepId,PayReturnRepId As BuktiBayar,CurrId,Convert(varchar(10),getdate(),103) as Tgl,'
            +' C.CustName as CustSupp,A.Note '
            +' FROM ARTrPayReturnRepHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId'
            +' WHERE A.PayReturnRepId='''+quMainPayReturnRepID.Value+'''');
         Open;
       End;

       With qu002,sql do
       Begin
         Close;Clear;
         Add(' Select ReturnRepId as NoInvoice,ValuePayment as Price FROM ARTrPayReturnRepDt Where PayReturnRepId=:PayReturnRepId');
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

procedure TfmARTrPayReturnRep.dbgBankIdButtonClick(Sender: TObject;
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

procedure TfmARTrPayReturnRep.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllMoney1(quMainPayReturnRepID.Value,quDetilReturnRepID.Value,'10');
end;

procedure TfmARTrPayReturnRep.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllMoney(quMainPayReturnRepID.Value,'10');
end;

end.
