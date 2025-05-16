unit APPembayaranHutangPengRet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxEditor, dxDBELib, DBCtrls, dxDBTLCl, dxGrClms,Printers,
  Mask;

type
  TfmAPPayReturnRep = class(TfmStdLv4)
    dbg: TdxDBGrid;
    Panel2: TPanel;
    quSup: TADOQuery;
    quItem: TADOQuery;
    dbgPurchaseID: TdxDBGridButtonColumn;
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
    quMainSuppID: TStringField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainCurrID: TStringField;
    quMainluSupplier: TStringField;
    quDetilValuePayment: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    dbgPaymentValue: TdxDBGridColumn;
    quPb: TADOQuery;
    quTotal: TADOQuery;
    dsTotal: TDataSource;
    quDetilCTglPb: TDateTimeField;
    quDetilCSuppName: TStringField;
    quCal: TADOQuery;
    dbgtgl: TdxDBGridColumn;
    dbgSuppName: TdxDBGridColumn;
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
    dxButton3: TdxButton;
    dbgBankId: TdxDBGridButtonColumn;
    dbgLBankName: TdxDBGridColumn;
    quDetilBankId: TStringField;
    quBank: TADOQuery;
    quDetilLBankName: TStringField;

    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dbgEnter(Sender: TObject);
    procedure dbgPurchaseIDButtonClick(Sender: TObject;
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
    sPrintBO : string;
  public
    { Public declarations }
    StatusCurr : String;
  end;

var
  fmAPPayReturnRep: TfmAPPayReturnRep;

implementation

uses StdLv2, StdLv1, StdLv3, StdLv0, Search, UnitGeneral, ConMain, MyUnit, ARQRRptBuktiBayar, Allitem,
  RptLv0;

{$R *.dfm}

procedure TfmAPPayReturnRep.FormShow(Sender: TObject);
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

procedure TfmAPPayReturnRep.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBButtonEdit1,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit2,quMain.State<>dsInsert);
  SetReadOnly(dxDBDateEdit1,quMain.State<>dsInsert);
end;

procedure TfmAPPayReturnRep.dbgEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then
     quDetil.Append;
end;

procedure TfmAPPayReturnRep.dbgPurchaseIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
    with TfmSearch.Create(self) do
    try
       Title := 'Invoice Pembelian';
       SQLString := ' SELECT ReturnRepId as Nota_Pengganti_Retur,Convert(varchar(10),TransDate,103) as Tgl,isnull(TTLReturRep,0) as Total_Nota,'
                   +' (Select isnull(Sum(ValuePayment),0) from APTrPayReturnRepDt A INNER JOIN APTrPayreturnRepHd C'
                   +' ON A.PayReturnRepId=C.PayReturnRepID where'
                   +' A.ReturnRepid=B.ReturnrepId AND C.SuppId=B.SuppId) as Total_Bayar,'
                   +' isnull(TTLReturRep,0)-(Select isnull(Sum(ValuePayment),0) from APTrPayReturnRepDt A INNER JOIN APTrPayReturnRepHd C'
                   +' ON A.PayReturnRepId=C.PayReturnRepID where'
                   +' A.ReturnRepid=B.ReturnRepId AND C.SuppId=B.SuppId)'
                   +' as Sisa'
                   +' FROM APTrReturnRepHd B'
                   +' WHERE currid='''+quMainCurrId.Value+''' AND SuppId='''+quMainSuppID.AsString+''''
                   +' AND Convert(varchar(10),B.Transdate,112) <='''+FormatDateTime('yyyyMMdd',quMainTransDate.Value)+'''';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilReturnRepID.Value := Res[0];
             quDetilValueTotal.asString := Res[4];
             quDetilValuePayment.asString := Res[4];
            // quDetilValuePayment.FocusControl;
       end;
    finally
       Free;
    end;
end;

procedure TfmAPPayReturnRep.dxDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmAPPayReturnRep.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quDetilReturnRepID.Value)='' then
  begin
     MsgInfo('Nota Pengganti Retur tidak boleh kosong !');
     quDetilReturnRepID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilCTglPb.AsString)='' then
  Begin
     MsgInfo('Nota Pengganti Retur tidak ada');
     quDetilReturnRepID.FocusControl;
     Abort;
  End;

  if quMainTransDate.AsDateTime < quDetilCTglPb.Value then
  Begin
    MsgInfo('Tanggal pembayaran lebih kecil dari tanggal Pengganti Retur');
    quDetilReturnRepID.FocusControl;
    abort;
  End;

  if quDetilValuePayment.value <= 0  then
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
        Add(' SELECT Count(ReturnRepID) FROM APTrPayReturnRepDt WHERE PayReturnRepID=:PayReturnRepID AND ReturnRepID=:ReturnRepID'
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
    add(' SELECT isnull(TTLReturRep,0)-(Select isnull(Sum(ValuePayment),0) from APTrPayreturnRepDt A INNER JOIN APTrPayReturnRepHd C'
       +' ON A.PayReturnRepId=C.PayReturnRepID where'
       +' A.ReturnRepid=B.ReturnRepId AND C.SuppId=B.SuppId AND A.PayReturnRepId<>'''+quMainPayReturnRepID.Value+''')'
       +' as Sisa'
       +' FROM APTrReturnrepHd B'
       +' WHERE currid='''+quMainCurrId.Value+''' AND SuppId='''+quMainSuppID.AsString+''''
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

procedure TfmAPPayReturnRep.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgPurchaseID,quDetil.State<>dsInsert);
  SetReadOnly(dbgtgl,TRUE);
  SetReadOnly(dbgSuppName,TRUE);
  SetReadOnly(dbgLBankName,TRUE);

end;

procedure TfmAPPayReturnRep.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Supplier';
       SQLString := ' SELECT SuppId as Kode_Supplier,SuppName as Nama_Supplier, '
                   +' Address as Alamat,City as Kota,Phone as Telephone,'
                   +' Contactperson as Contact_Person,Fax FROM APMsSupplier '
                   +' ORDER BY SuppID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainSuppId.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmAPPayReturnRep.quMainBeforePost(DataSet: TDataSet);
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

  if Trim(quMainSuppId.Value)='' then
  begin
    MsgInfo('Kode Supplier tidak boleh kosong');
    quMainSuppId.FocusControl;
    Abort;
  End;

  if Trim(quMainLuSupplier.Value)='' then
  begin
    MsgInfo('Kode Supplier tidak ada dalam Master Supplier');
    quMainSuppid.FocusControl;
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
    ST := 'APR/'+PT+ FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
    quMainPayReturnRepID.Value  := ST + FormatFloat('0000', RunNumberGL(quAct, 'APTrPayReturnRepHd', 'PayReturnRepID', ST, '0') + 1);
  End;

  quMainUpdUser.Value := dmMain.UserId;
  quMainUpddate.Value := GetServerDateTime;
end;

procedure TfmAPPayReturnRep.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilValuePayment.Value := 1;
  quDetilPayReturnRepID.FocusControl;
end;

procedure TfmAPPayReturnRep.ActNewExecute(Sender: TObject);
begin
  inherited;
  quMainTransDate.FocusControl;
end;

procedure TfmAPPayReturnRep.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime:= Now;
  quMainCurrID.AsString := 'IDR';
end;

procedure TfmAPPayReturnRep.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Nota Pembayaran Hutang Pengganti Retur ';
       SQLString := ' SELECT PayReturnRepID as Nota_Pembayaran_Pengganti_Retur, '
                   +' Convert(varchar(10),Transdate,103) as Tanggal ,'
                   +' A.SuppId as Kode_Supplier, B.SuppName as Nama_Supplier,CurrId as Valuta,'
                   +' A.Note as Keterangan'
                   +' FROM APTrPayReturnRepHd A'
                   +' INNER JOIN APMsSupplier B ON A.SuppID = B.SuppID'
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

procedure TfmAPPayReturnRep.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
   CarirateNew(quAct,quMainTransDate.Value);


   DeleteFromAllMoney1(quMainPayReturnRepID.Value,quDetilReturnRepID.Value,'7');
   if TRIM(quDetilBankId.Value)='' then
     InsertToAllMoney(quMainPayReturnRepID.Value,quDetilReturnRepID.Value,quMainTransDate.value,quMainSuppID.Value,'KK',sDRPb,sDGRPb,
                      quDetilValuePayment.value,'Pembayaran Hutang Nota '+quDetilReturnRepID.Value+' Supplier '+quMainluSupplier.Value+'',
                      '7','','',quMainluSupplier.Value,quMainCurrID.Value,quAct.fieldbyname('Rate').Value);
   if TRIM(quDetilBankId.Value)<>'' then
     InsertToAllMoney(quMainPayReturnRepID.Value,quDetilReturnRepID.Value,quMainTransDate.value,quMainSuppID.Value,'BK',sDRPb,sDGRPb,
                      quDetilValuePayment.value,'Pembayaran Hutang Nota '+quDetilReturnRepID.Value+' Supplier '+quMainluSupplier.Value+'',
                      '7',quDetilBankId.Value,quDetilLBankName.Value,quMainluSupplier.Value,quMainCurrID.Value,quAct.fieldbyname('Rate').Value);


   quTotal.Requery();
   quDetil.Append;
End;

procedure TfmAPPayReturnRep.quDetilPurchaseIDChange(Sender: TField);
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

procedure TfmAPPayReturnRep.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
   quTotal.Requery();
end;

procedure TfmAPPayReturnRep.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quCal,sql do
  Begin
    Close;Clear;
    add(' Select Convert(Varchar(10),A.Transdate,103) as Tgl,A.SuppId,B.SuppName FROM APTrReturnRepHd A'
       +' INNER JOIN APMsSupplier B ON A.SuppId=B.SuppId WHERE A.ReturnRepid='''+quDetilReturnRepID.Value+'''');
    Open;
  End;
  quDetilCTglPb.AsString := quCal.fieldbyname('tgl').AsString;
  quDetilCSuppName.AsString := quCal.fieldbyname('SuppName').AsString;
end;

procedure TfmAPPayReturnRep.dxDBButtonEdit2ButtonClick(
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

procedure TfmAPPayReturnRep.dxButton3Click(Sender: TObject);
var iPrint : Integer;
    sTotal : Currency;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(ValuePayment),0) as Total FROM APTrPayReturnRepDt  '
       +'WHERE PayReturnRepID='''+quMainPayReturnRepID.AsString+''' ');
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
         add(' Select PayReturnRepId,PayReturnRepId As BuktiBayar,CurrId,Convert(varchar(10),getdate(),103) as Tgl,'
            +' C.SuppName as CustSupp,A.Note '
            +' FROM APTrPayReturnRepHd A INNER JOIN APMsSupplier C ON A.SuppId=C.SuppId'
            +' WHERE A.PayReturnRepId='''+quMainPayReturnRepID.Value+'''');
         Open;
       End;

       With qu002,sql do
       Begin
         Close;Clear;
         Add(' Select ReturnRepId as NoInvoice,ValuePayment as Price FROM APTrPayReturnRepDt Where PayReturnRepId=:PayReturnRepId');
         Open;
       End;
       lbSuppCust.Caption := 'Supplier ';

       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;

    finally
       free;
    end;
end;

procedure TfmAPPayReturnRep.dbgBankIdButtonClick(Sender: TObject;
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

procedure TfmAPPayReturnRep.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllMoney1(quMainPayReturnRepID.Value,quDetilReturnRepID.Value,'7');
end;

procedure TfmAPPayReturnRep.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
   DeleteFromAllMoney(quMainPayReturnRepID.Value,'7');
end;

end.
