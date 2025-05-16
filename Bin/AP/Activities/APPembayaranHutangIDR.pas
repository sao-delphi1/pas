unit APPembayaranHutangIDR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,Printers,
  dxCore, dxContainer, dxEditor, dxDBELib, DBCtrls, dxDBTLCl, dxGrClms,
  Mask;

type
  TfmAPPembayaranHutangIDR = class(TfmStdLv4)
    Panel2: TPanel;
    quSup: TADOQuery;
    quItem: TADOQuery;
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
    quMainPaymentID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainSuppID: TStringField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainCurrID: TStringField;
    quMainluSupplier: TStringField;
    quDetilPaymentID: TStringField;
    quDetilPurchaseID: TStringField;
    quDetilValuePurchase: TBCDField;
    quDetilValuePayment: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quPb: TADOQuery;
    quTotal: TADOQuery;
    dsTotal: TDataSource;
    quTotalTotal: TBCDField;
    quDetilCTglPb: TDateTimeField;
    quDetilCSuppName: TStringField;
    quCal: TADOQuery;
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
    quDetilBankId: TStringField;
    quBank: TADOQuery;
    quDetilLBankName: TStringField;
    quSisa: TADOQuery;
    quMainRate: TBCDField;
    Label15: TLabel;
    DBText8: TDBText;
    Label16: TLabel;
    DBText5: TDBText;
    Label17: TLabel;
    Label18: TLabel;
    quMainFgBayar: TStringField;
    quMainBankID: TStringField;
    quMainBGCID: TStringField;
    quMainTransdate1: TDateTimeField;
    ADOQuery1: TADOQuery;
    quMainLBankName: TStringField;
    dxButton3: TdxButton;
    BtlBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    KrgBrg: TdxButton;
    TmbBrg: TdxButton;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBDateEdit2: TdxDBDateEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBButtonEdit3: TdxDBButtonEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dbg: TdxDBGrid;
    dbgPurchaseID: TdxDBGridButtonColumn;
    dbgtgl: TdxDBGridColumn;
    dbgSuppName: TdxDBGridColumn;
    dbgPaymentValue: TdxDBGridColumn;

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
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
    procedure dxButton3Click(Sender: TObject);
    procedure TmbBrgClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    sPrintBO : string;
  public
    { Public declarations }
    StatusBayar : String;
  end;

var
  fmAPPembayaranHutangIDR: TfmAPPembayaranHutangIDR;

implementation

uses StdLv2, StdLv1, StdLv3, StdLv0, Search, UnitGeneral, ConMain, MyUnit, ARQRRptBuktiBayar, Allitem,
  RptLv0;

{$R *.dfm}

procedure TfmAPPembayaranHutangIDR.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), PaymentID';
  FFieldTgl   := 'TransDate';
  if StatusBayar = 'K' then
    FAfterWhere := 'AND FgBayar=''K'' ';
  if StatusBayar = 'B' then
    FAfterWhere := 'AND FgBayar=''B'' ';
  if StatusBayar = 'C' then
    FAfterWhere := 'AND FgBayar=''C'' ';
  SettingDxGrid(dbg);
  inherited;
  if StatusBayar = 'K' then
  begin
    Caption := 'PEMBAYARAN HUTANG SECARA KAS'; Label18.Visible := False;dxDBDateEdit2.Visible := False;
    Label16.Visible := False; dxDBButtonEdit3.Visible := False; DBText5.Visible := False;
    Label17.Visible := False; dxDBEdit3.Visible := False; Label4.Top := 93;dxDBEdit2.Top := 89;
    Label13.Top := 110; Label15.Top := 110; DBText8.Top := 110; Panel1.Height := 135;
  end;
  if StatusBayar = 'B' then
  begin
    Caption := 'PEMBAYARAN HUTANG SECARA BANK';  Label18.Visible := False;dxDBDateEdit2.Visible := False;
    Label17.Visible := False; dxDBEdit3.Visible := False; Label4.Top := 112;dxDBEdit2.Top := 109;
    Label13.Top := 130; Label15.Top := 130; DBText8.Top := 130; Panel1.Height := 155;
  end;
  if StatusBayar = 'C' then
  begin
    Caption := 'PEMBAYARAN HUTANG SECARA CEK / GIRO';
  end;
  quMain.Active  := TRUE;
  quDetil.Active := TRUE;
  quTotal.Active := TRUE;
End;

procedure TfmAPPembayaranHutangIDR.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBEdit3,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit1,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit2,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit3,quMain.State<>dsInsert);
  SetReadOnly(dxDBDateEdit1,quMain.State<>dsInsert);
  SetReadOnly(dxDBDateEdit2,quMain.State<>dsInsert);
end;

procedure TfmAPPembayaranHutangIDR.dbgEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then
     quDetil.Append;
end;

procedure TfmAPPembayaranHutangIDR.dbgPurchaseIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
    with TfmSearch.Create(self) do
    try
       Title := 'Invoice Pembelian';
       SQLString := 'SELECT K.PurchaseID as Nota_Pembelian,CONVERT(VARCHAR(10),K.Transdate,103) as Tgl_Pembelian,'
                   +'ISNULL(K.TTLPb,0) as Total_Nota,ISNULL(K.Bayar,0) as Pembayaran,ISNULL(K.Retur,0) as Retur,'
                   +'ISNULL(K.TTLPb-K.Bayar-K.Retur,0) as Sisa FROM ('
                   +'SELECT B.PurchaseID,B.TransDate,B.TTLPb,B.CurrID,B.SuppID,'
                   +'(SELECT ISNULL(SUM(ValuePayment),0) FROM APTrPaymentDt A INNER JOIN APTrPaymentHd C ON A.PaymentID=C.PaymentID '
                   +'WHERE A.PurchaseID=B.PurchaseID AND C.SuppID=B.SuppID) as Bayar, (SELECT ISNULL(Sum(Price*Qty),0) '
                   +'FROM APTrReturnDt F INNER JOIN APTrReturnHd G  ON F.ReturnID=G.ReturnID '
                   +'WHERE G.FlagRetur=''B'' AND F.purchaseID=B.PurchaseID  AND G.SuppID=B.SuppID) as Retur '
                   +'FROM APTrPurchaseHd B) as K '
                   +'WHERE K.CurrID='''+quMainCurrID.AsString+''' AND K.SuppID='''+quMainSuppID.AsString+''' AND '
                   +'CONVERT(VARCHAR(10),K.Transdate,112) <='''+FormatDateTime('yyyyMMdd',quMainTransDate.AsDateTime)+''' '
                   +'AND ISNULL(K.TTLPb-K.Bayar-K.Retur,0) <> 0 ORDER BY CONVERT(VARCHAR(8),K.Transdate,112)' ;
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilPurchaseID.Value := Res[0];
             quDetilValuePurchase.AsString := Res[5];
             quDetilValuePayment.AsString := Res[5];
       end;
    finally
       Free;
    end;
end;

procedure TfmAPPembayaranHutangIDR.dxDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmAPPembayaranHutangIDR.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quDetilPurchaseID.AsString)='' then
  begin
     MsgInfo('Nota Pembelian tidak boleh kosong !');
     quDetilPurchaseID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilCTglPb.AsString)='' then
  Begin
     MsgInfo('Nota pembelian tidak ada dalam Transaksi pembelian');
     quDetilPurchaseID.FocusControl;
     Abort;
  End;

  if quDetilValuePayment.AsCurrency <= 0  then
  begin
     MsgInfo('Jumlah Pembayaran harus lebih besar dari 0');
     quDetilValuePayment.FocusControl;
     Abort;
  end;

  if quMainTransDate.AsDateTime < quDetilCTglPb.AsDateTime then
  Begin
    MsgInfo('Tanggal pembayaran lebih kecil dari tanggal Pembelian');
    quDetilPurchaseID.FocusControl;
    abort;
  End;

  if quDetil.State = dsInsert then
  begin
     with quAct, SQL do
     begin
        Close; Clear;
        Add('SELECT COUNT(PurchaseID) FROM APTrPaymentDt WHERE PaymentID=:PaymentID AND PurchaseID=:PurchaseID');
        with Parameters do
        begin
           ParamByName('PaymentID').Value := quMainPaymentID.AsString;
           ParamByName('PurchaseID').Value  := quDetilPurchaseID.AsString;
        end;
        Open;
        if Fields[0].AsInteger > 0 then
        begin
           MsgInfo('Nota pembelian sudah ada dalam List');
           quDetilPurchaseID.FocusControl;
           abort;
        end;
     end;
  end;

  with quAct,sql do
  Begin
    Close;Clear;
    add('SELECT ISNULL(K.Sisa,0) as Sisa FROM (SELECT B.CurrID,B.SuppID,B.PurchaseID,ISNULL(TTLPb,0)-(SELECT ISNULL(SUM(ValuePayment),0) '
       +'FROM APTrPaymentDt A INNER JOIN APTrPaymentHd C ON A.PaymentId=C.PaymentID '
       +'WHERE A.Purchaseid=B.PurchaseId AND C.SuppId=B.SuppId AND A.PaymentId<>'''+quMainPaymentID.AsString+''') - '
       +'(SELECT ISNULL(SUM(Price*Qty),0) FROM APTrReturnDt F INNER JOIN APTrReturnHd G  ON F.ReturnId=G.ReturnId '
       +'WHERE G.FlagRetur=''B'' AND F.purchaseId=B.PurchaseId  AND G.SuppId=B.SuppId) as Sisa FROM APTrPurchaseHd B) as K '
       +'WHERE K.CurrID='''+quMainCurrID.AsString+''' AND '
       +'K.SuppId='''+quMainSuppID.AsString+''' And K.PurchaseID='''+quDetilPurchaseID.AsString+''' ');
    Open;
    if IsEmpty then
    Begin
      MsgInfo('Data ini tidak terdapat pada Nota pembelian');
      quDetilPurchaseID.FocusControl;
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

  if quDetilValuePayment.AsCurrency > quAct.FieldByName('Sisa').AsCurrency then
  begin
    MsgInfo('Pembayaran melebihi Total Hutang '+#13+' Sisa hutang adalah ['+FormatCurr(sDisFormat,quAct.FieldByName('Sisa').AsCurrency)+']');
    quDetilValuePayment.FocusControl;
    Abort;
  end;

  quDetilUpdUser.AsString := dmMain.UserId;
  quDetilUpdDate.AsDateTime := GetServerDateTime;

end;

procedure TfmAPPembayaranHutangIDR.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgPurchaseID,quDetil.State<>dsInsert);
  SetReadOnly(dbgtgl,TRUE);
  SetReadOnly(dbgSuppName,TRUE);
end;

procedure TfmAPPembayaranHutangIDR.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Supplier';
       SQLString := 'SELECT SuppName as Nama_Supplier,SuppId as Kode_Supplier,  '
                   +'Address as Alamat,City as Kota,Phone as Telephone,'
                   +'Contactperson as Contact_Person,Fax FROM APMsSupplier '
                   +'ORDER BY SuppID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainSuppId.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmAPPembayaranHutangIDR.quMainBeforePost(DataSet: TDataSet);
var ST : String;
begin
  inherited;
  if (StatusBayar = 'K') or (StatusBayar = 'B') then
  quMainTransDate.AsDateTime := quMainTransdate1.AsDateTime;

  if TRIM(quMainTransDate.AsString)='' then
  begin
    MsgInfo('Tanggal transaksi tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  if TRIM(quMainSuppId.AsString)='' then
  begin
    MsgInfo('Kode Supplier tidak boleh kosong');
    quMainSuppId.FocusControl;
    Abort;
  End;

  if TRIM(quMainLuSupplier.AsString)='' then
  begin
    MsgInfo('Kode Supplier tidak ada dalam Master Supplier');
    quMainSuppid.FocusControl;
    Abort;
  End;

  if TRIM(quMainCurrID.AsString)='' then
  begin
    MsgInfo('Kode Valuta tidak boleh kosong');
    quMainCurrID.FocusControl;
    Abort;
  End;

  if TRIM(quMainLCurrName.AsString)='' then
  begin
    MsgInfo('Kode Valuta tidak ada dalam Master Valuta');
    quMainCurrID.FocusControl;
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

  if quMain.State=dsInsert then
  Begin
    ST := 'AP/'+PT+FormatDateTime('/YY/MM/', quMainTransDate.AsDateTime);
    quMainPaymentID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'APTrPaymentHd', 'PaymentId', ST, '0') + 1);
    CarirateNew(quAct,quMainTransDate.AsDateTime);
    quMainRate.AsCurrency := quAct.FieldByName('Rate').AsCurrency;
  End;
  quMainUpdUser.AsString := dmMain.UserId;
  quMainUpddate.AsDateTime := GetServerDateTime;
end;

procedure TfmAPPembayaranHutangIDR.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilValuePayment.AsCurrency := 1;
  quDetilPaymentID.FocusControl;
  if StatusBayar <> 'K' then
    quDetilBankId.AsString := quMainBankID.AsString;
end;

procedure TfmAPPembayaranHutangIDR.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime:=Now;
  quMainTransdate1.AsDateTime:=Now;
  quMainSuppID.FocusControl;
  quMainCurrID.AsString := 'IDR';
  quMainNote.AsString :='';
  if StatusBayar = 'K' then
    quMainFgBayar.AsString := 'K';
  if StatusBayar = 'B' then
    quMainFgBayar.AsString := 'B';
  if StatusBayar = 'C' then
    quMainFgBayar.AsString := 'C';
end;

procedure TfmAPPembayaranHutangIDR.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       if StatusBayar = 'K' then
         Title := 'Pembayaran Hutang Secara Kas';
       if StatusBayar = 'B' then
         Title := 'Pembayaran Hutang Secara Bank';
       if StatusBayar = 'C' then
         Title := 'Pembayaran Hutang Secara Cek / Giro';
       SQLString := ' SELECT PaymentID as Nota_Pembelian, '
                   +' Convert(varchar(10),Transdate,103) as Tanggal ,'
                   +' A.SuppId as Kode_Supplier, B.SuppName as Nama_Supplier,CurrId as Valuta,'
                   +' A.Note as Keterangan'
                   +' FROM APTrPaymentHd A'
                   +' INNER JOIN APMsSupplier B ON A.SuppID = B.SuppID'
                   +' WHERE '+FSQLWhere;
       if StatusBayar = 'K' then
       SQLString := SQLString + 'AND FgBayar=''K'' ORDER BY PaymentID';
       if StatusBayar = 'B' then
       SQLString := SQLString + 'AND FgBayar=''B'' ORDER BY PaymentID';
       if StatusBayar = 'C' then
       SQLString := SQLString + 'AND FgBayar=''C'' ORDER BY PaymentID';
       if ShowModal = MrOK then
       begin
         qumain.Locate('PaymentID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmAPPembayaranHutangIDR.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  quDetil.Append;
  quDetilPurchaseID.FocusControl;
end;

procedure TfmAPPembayaranHutangIDR.quDetilAfterPost(DataSet: TDataSet);
var Rate: string;
begin
  inherited;
   CarirateNew(quAct,quMainTransDate.Value);
   Rate := CurrToStr(quAct.FieldByName('Rate').AsCurrency);
   DeleteFromAllMoney1(quMainPaymentID.Value,quDetilPurchaseID.Value,'5');
   if TRIM(quDetilBankId.Value)='' then
     InsertToAllMoney(quMainPaymentID.Value,quDetilPurchaseID.Value,quMainTransDate.value,quMainSuppID.Value,'KK',sDRPb,sDGRPb,
                      quDetilValuePayment.value,'Pembayaran Hutang Nota '+quDetilPurchaseID.Value+' Supplier '+quMainluSupplier.Value+'',
                      '5','','',quMainluSupplier.Value,quMainCurrID.Value,quAct.fieldbyname('Rate').Value);
   if TRIM(quDetilBankId.Value)<>'' then
     InsertToAllMoney(quMainPaymentID.Value,quDetilPurchaseID.Value,quMainTransDate.value,quMainSuppID.Value,'BK',sDRPb,sDGRPb,
                      quDetilValuePayment.value,'Pembayaran Hutang Nota '+quDetilPurchaseID.Value+' Supplier '+quMainluSupplier.Value+'',
                      '5',quDetilBankId.Value,quDetilLBankName.Value,quMainluSupplier.Value,quMainCurrID.Value,quAct.fieldbyname('Rate').Value);

   quTotal.Requery();
   quDetil.Append;
   quDetilPurchaseID.FocusControl;
end;

procedure TfmAPPembayaranHutangIDR.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
   quTotal.Requery();
end;

procedure TfmAPPembayaranHutangIDR.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quCal,SQL do
  Begin
    Close;Clear;
    add('SELECT CONVERT(VARCHAR(10),K.Transdate,103) as Tgl,K.SuppID,L.SuppName FROM ('
       +'SELECT A.Transdate,A.SuppID,A.PurchaseID FROM APTrPurchaseHd A) as K '
       +'INNER JOIN APMsSupplier L ON K.SuppID=L.SuppID WHERE K.Purchaseid='''+quDetilPurchaseID.AsString+''''
       +'AND K.SuppID='''+quMainSuppID.AsString+'''');
    Open;
  End;
  quDetilCTglPb.AsString := quCal.FieldByName('tgl').AsString;
  quDetilCSuppName.AsString := quCal.FieldByName('SuppName').AsString;
end;

procedure TfmAPPembayaranHutangIDR.dxDBButtonEdit2ButtonClick(
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

procedure TfmAPPembayaranHutangIDR.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllMoney1(quMainPaymentID.Value,quDetilPurchaseID.Value,'5');
end;

procedure TfmAPPembayaranHutangIDR.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DeleteFromAllMoney(quMainPaymentID.Value,'5');
end;

procedure TfmAPPembayaranHutangIDR.FormCreate(Sender: TObject);
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

procedure TfmAPPembayaranHutangIDR.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if quMain.IsEmpty then Abort;
end;

procedure TfmAPPembayaranHutangIDR.dxButton3Click(Sender: TObject);
vAR iPrint : Integer;
    sTotal : Currency;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(ValuePayment),0) as Total FROM APTrPaymentDt WHERE PaymentID='''+quMainPaymentID.AsString+''' ');
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
         add(' Select PaymentId,PaymentId As BuktiBayar,CurrId,Convert(varchar(10),getdate(),103) as Tgl,'
            +' C.SuppName as CustSupp,A.Note '
            +' FROM APTrPaymentHd A INNER JOIN APMsSupplier C ON A.SuppId=C.SuppId'
            +' WHERE A.PaymentId='''+quMainPaymentID.Value+'''');
         Open;
         if IsEmpty then
         begin
            MsgInfo('No Data !');
            Abort;
         end;
       End;

       With qu002,sql do
       Begin
         Close;Clear;
         Add(' Select PurchaseId as NoInvoice,ValuePayment as Price FROM APTrPayMentDt Where PaymentId=:PaymentId');
         Open;
         if IsEmpty then
         begin
            MsgInfo('No Data !');
            Abort;
         end;
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

procedure TfmAPPembayaranHutangIDR.TmbBrgClick(Sender: TObject);
begin
  inherited;
  if quMain.IsEmpty then abort else quDetil.Append;
end;

procedure TfmAPPembayaranHutangIDR.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmAPPembayaranHutangIDR.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  if (dsDetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Nota ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmAPPembayaranHutangIDR.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmAPPembayaranHutangIDR.dxDBButtonEdit3ButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
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

end.
