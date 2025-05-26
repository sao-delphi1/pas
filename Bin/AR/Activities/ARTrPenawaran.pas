unit ARTrPenawaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxDBELib, dxEditor, dxTL, dxDBCtrl, dxDBGrid, DBCtrls, dxDBTLCl, dxGrClms,StrUtils;

type
  TfmARTrPenawaran = class(TfmStdLv31)
    Shape5: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape6: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBText3: TDBText;
    Label13: TLabel;
    Label15: TLabel;
    DBText5: TDBText;
    Label8: TLabel;
    Label19: TLabel;
    DBText1: TDBText;
    Label23: TLabel;
    DBText6: TDBText;
    Label25: TLabel;
    Label26: TLabel;
    DBText12: TDBText;
    Label30: TLabel;
    Label33: TLabel;
    Label18: TLabel;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    dbgPenawaran: TdxDBGrid;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    BtlBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    Label5: TLabel;
    Label32: TLabel;
    quMainGBUID: TStringField;
    quMainTransdate: TDateTimeField;
    quMainCurrID: TStringField;
    quMainCustomer: TStringField;
    quMainUP: TStringField;
    quMainSalesID: TStringField;
    quMainPhone: TStringField;
    quMainFax: TStringField;
    quMainEmail: TStringField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quDetilGBUID: TStringField;
    quDetilQty: TIntegerField;
    quDetilPrice: TBCDField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quMainTTLGBU: TBCDField;
    quMainFgTax: TStringField;
    quMainDisc: TBCDField;
    quSales: TADOQuery;
    quValuta: TADOQuery;
    quMainLSalesName: TStringField;
    quMainLValuta: TStringField;
    dbgPenawaranGBUID: TdxDBGridMaskColumn;
    dbgPenawaranUrut: TdxDBGridColumn;
    dbgPenawaranProduk: TdxDBGridColumn;
    dbgPenawaranQty: TdxDBGridColumn;
    dbgPenawaranPrice: TdxDBGridColumn;
    dbgPenawaranUpdDate: TdxDBGridDateColumn;
    dbgPenawaranUpdUser: TdxDBGridMaskColumn;
    quDetilCTotal: TCurrencyField;
    dbgPenawaranTotal: TdxDBGridColumn;
    dbgPenawaranDescription: TdxDBGridBlobColumn;
    dsTotal: TDataSource;
    quTotal: TADOQuery;
    quDetilUrut: TIntegerField;
    quTotalSubTotal: TBCDField;
    quTotalGT: TBCDField;
    quTotalTax: TBCDField;
    dxButton1: TdxButton;
    Label6: TLabel;
    Label7: TLabel;
    quMainCustID: TStringField;
    quMainFlag: TStringField;
    quDetilProduk: TStringField;
    quDetilDescription: TStringField;
    rgKoma: TRadioGroup;
    RgCap: TRadioGroup;
    dxMemo1: TdxMemo;
    dbgPenawaranColumn10: TdxDBGridColumn;
    quDetilPartNo: TStringField;
    quMainFOB: TStringField;
    Label9: TLabel;
    quDetilItemID: TStringField;
    quMainSOID: TStringField;
    dbgPenawaranItemID: TdxDBGridButtonColumn;
    Label12: TLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit4: TdxDBButtonEdit;
    dxDBButtonEdit3: TdxDBButtonEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBPajak: TdxDBImageEdit;
    Label14: TLabel;
    RgJaminan: TRadioGroup;
    RgPPN: TRadioGroup;
    RadioGroup1: TRadioGroup;
    quMainPPN: TBCDField;
    dxDBEdit10: TdxDBEdit;
    quMainFgTerm: TStringField;
    quMainTerm: TIntegerField;
    DBRadioGroup3: TDBRadioGroup;
    dxDBEdit11: TdxDBEdit;
    quMainLcustomer: TStringField;
    DBText2: TDBText;
    quPPN: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dbgPenawaranEnter(Sender: TObject);
    procedure dxDBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dsDetilStateChange(Sender: TObject);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure TmbBrgClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure dbgPenawaranItemIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure rbTermClick(Sender: TObject);
    procedure dbgPenawaranDblClick(Sender: TObject);
    procedure quMainCustIDChange(Sender: TField);
    procedure DBRadioGroup3Change(Sender: TObject);
    procedure quMainCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    Procedure UpdateTotal;
    Procedure CekData;
  public
    { Public declarations }
    Flag : string;
    ModalSO : currency;
  end;

var
  fmARTrPenawaran: TfmARTrPenawaran;

implementation

uses MyUnit, Search, ConMain, UnitGeneral, ARQRRptPenawaran, RptPenawaran,
  StdLv2, ARQRRptInvPenjualan, StdLv0, StdLv3, ARUbahSO;

{$R *.dfm}

Procedure TfmARTrPenawaran.CekData;
Begin
  if Flag = 'B' then
  begin
    With quAct,SQL do
    Begin
      Close;Clear;
      add('SELECT KonsinyasiID,* FROM APTrKonsinyasiHd WHERE POID='''+quMainGBUID.AsString+''' ');
      Open;
    End;
    if quAct.RecordCount <> 0 then
    begin
      pesan('Data sedang digunakan di Transaksi Penerimaan Barang No ['+quAct.FieldByName('KonsinyasiID').AsString+']'+#13
           +'Tidak bisa di hapus atau ubah lagi');
      Abort;
    end;
  end;
End;

Procedure TfmARTrPenawaran.UpdateTotal;
Begin
  With quAct,sql do
  Begin
    Close;Clear;
    add('UPDATE ARTrPenawaranHd SET TTLGBU='''+FormatCurr('0.00',quTotalGT.AsCurrency)+''' '
       +'WHERE GBUID='''+quMainGBUID.AsString+''' ');
    ExecSQL;
  End;
End;

procedure TfmARTrPenawaran.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), GBUID';
  FFieldTgl   := 'TransDate';
  if Flag='A' then
    FAfterWhere:=' AND Flag=''A'' '
  else
    FAfterWhere:=' AND Flag=''B'' ';
  SettingDxGrid(dbgPenawaran);
  inherited;
  quMain.Active := TRUE;
  quDetil.Active:= TRUE;
  quTotal.Active:= TRUE;
  if GroupUser <> 'admin' then bbDelete.Enabled := False;
    DBRadioGroup3.Top := 375; DBRadioGroup3.Left := 6;
    rgKoma.Top := 69; rgKoma.Left := 637;
    RgCap.Top := 117; RgCap.Left := 637;
    RgJaminan.Top := 403; RgJaminan.Left := 117;
    dxDBEdit11.Visible := False; Label14.Visible := False;
    RgJaminan.Visible := False;
  if Flag = 'A' then
  begin
    Caption := 'FORM PENAWARAN CUSTOMER';
    RgPPN.Top := 13; RgPPN.Left := 421;
    dxMemo1.Visible := False; RgPPN.Visible := True;
    Label12.Visible := False; dxDBButtonEdit4.Visible := False;
    dbgPenawaranItemID.Visible := False;
    RadioGroup1.Left := 20;
    RadioGroup1.Top := 50;
  end else
  begin
    Caption := 'FORM PURCHASE ORDER';
    Label1.Caption := 'No PO :';
    Label7.Caption := 'Kode Supplier :';
    Label3.Caption := 'Supplier :';
    Label4.Caption := 'Purchasing';
    dxDBEdit6.Visible := False;
    label9.Visible := False;
    Label13.Caption := 'Detail Purchase Order';
    RadioGroup1.Visible := False;
  end;
  DBRadioGroup3Change(DBRadioGroup3);
end;

procedure TfmARTrPenawaran.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);
//  SetReadOnly(dxDBDateEdit1,quMain.State<>dsInsert);
//  SetReadOnly(dxDBButtonEdit1,quMain.State<>dsinsert);
  SetReadOnly(dxDBButtonEdit4,quMain.State<>dsinsert);
//  SetReadOnly(dxDBEdit2,quMain.State<>dsInsert);
  SetReadOnly(dxDBEdit3,quMain.State<>dsInsert);
//  SetReadOnly(dxDBEdit7,quMain.State<>dsInsert);
//  SetReadOnly(dxDBEdit8,quMain.State<>dsInsert);
end;

procedure TfmARTrPenawaran.dbgPenawaranEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmARTrPenawaran.dxDBDateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmARTrPenawaran.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransdate.FocusControl;
  quMainTransdate.AsDateTime := Date;
  quMainCurrID.AsString := 'IDR';
  quMainFgTax.AsString := 'Y';
  quMainDisc.AsCurrency := 0;
  quMainUP.AsString:= '';
  quMainFlag.AsString := Flag;
  quMainFOB.ASString := 'Jakarta';
  with quPPN,SQL do
  begin
    Close;Clear;
    Add('select PPN from samsset');
    Open;
  end;
  quMainPPN.AsCurrency := quPPN.FieldByName('PPN').AsCurrency;
  quMainDisc.AsCurrency := 0;
  quMainTerm.AsCurrency := 7;
  quMainFGTerm.ASString := 'XHR';
end;

procedure TfmARTrPenawaran.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Sales';
       SQLString := 'SELECT SalesID as Kode_Sales, Salesname as Nama_Sales'
                   +',Address, Phone, HP FROM ARMsSales WHERE FgActive <> 0 '
                   +' ORDER BY SalesID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainSalesID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenawaran.dxDBButtonEdit2ButtonClick(Sender: TObject;
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

procedure TfmARTrPenawaran.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;
  if TRIM(quMainFgTax.AsString) = 'T' then quMainPPN.AsCurrency := 0;
  if TRIM(quMainTransDate.AsString)='' Then
  Begin
    MsgInfo('Tanggal tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  if TRIM(quMainCustomer.AsString) = '' then
  Begin
    MsgInfo('Pelanggan belum diisi');
    quMainCustomer.FocusControl;
    Abort;
  End;

  if quMainSalesID.Value = '' then
  Begin
    MsgInfo('Sales belum diisi');
    quMainSalesID.FocusControl;
    Abort;
  End;

  if TRIM(quMainLSalesName.Value) = '' then
  Begin
    MsgInfo('Sales tidak terdaftar');
    quMainSalesID.FocusControl;
    Abort;
  End;

  if TRIM(quMainCurrID.Value) = '' then
  Begin
    MsgInfo('Valuta belum diisi');
    quMainCurrID.FocusControl;
    Abort;
  End;

  if TRIM(quMainLValuta.Value) = '' then
  Begin
    MsgInfo('Valuta tidak terdaftar');
    quMainCurrID.FocusControl;
    Abort;
  End;

  if TRIM(quMainDisc.AsString)= '' then
  Begin
    MsgInfo('Diskon tidak boleh kosong, Kalau tidak ada kasih nilai nol(0)');
    quMainDisc.FocusControl;
    Abort;
  End;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT '''+dxDBEdit3.Text+''' ');
    try
      Open;
    Except
      on E :Exception do
      begin
        ShowMessage('Field Nama Tidak boleh mengandung character petik tunggal');
        quMainCustomer.FocusControl;
        Abort;
      end;
    end;
  end;

  if quMain.State=dsInsert then
  Begin
    if Flag = 'A' then
    begin
      ST := PT+'-QUOT/'+ FormatDateTime('YYMM.', quMainTransDate.AsDateTime);
      quMainGBUID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrPenawaranHd', 'GBUId', ST, '0') + 1);
    end else
    begin
      if TRIM(quMainSOID.AsString) = '' then
      begin
        pesan('No SO tidak boleh kosong');
        quMainSOID.FocusControl;
        Abort;
      end;
      with quAct,SQL do
      begin
        Close;Clear;
        Add('SELECT Jenis,* FROM ARTrPurchaseOrderHd WHERE POID='''+quMainSOID.AsString+''' ');
        Open;
        if IsEmpty then
        begin
          pesan('Data Sales Order tidak terdaftar dalam Transaksi Sales Order');
          quMainSOID.FocusControl;
          Abort;
        end;
      end;
      if quAct.FieldByName('Jenis').AsString <> 'Y' then
      begin
        pesan('Data SO tidak bisa di proses. Butuh Otorisasi atasan');
        quMainSOID.FocusControl;
        Abort;
      end;
      ST := PT+'-PO/'+ FormatDateTime('YYYY-MM', quMainTransDate.AsDateTime);
      quMainGBUID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrPenawaranHd', 'GBUId', ST, '0') + 1);
    end;
  End;


  if quMainFgTerm.ASString = 'COD' then quMainTerm.AsCurrency := 0;
  if quMainFgTerm.ASString = 'CBD' then quMainTerm.AsCurrency := 0;
  if quMainFgTerm.ASString = 'TPH' then quMainTerm.AsCurrency := 30;
  if quMainFgTerm.ASString = 'NSH' then quMainTerm.AsCurrency := 30;

  quMainUpdUser.AsString := dmMain.UserId;
  quMainUpddate.AsDateTime := GetServerDateTime;
end;

procedure TfmARTrPenawaran.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgPenawaranUrut,quDetil.State <> dsInsert);
  SetReadOnly(dbgPenawaranItemID,quDetil.State <> dsInsert);
  SetReadOnly(dbgPenawaranProduk,quDetil.State <> dsInsert);
  SetReadOnly(dbgPenawaranTotal,TRUE);
end;

procedure TfmARTrPenawaran.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM (quDetilProduk.AsString) = '' then
  begin
     MsgInfo('Produk tidak boleh kosong');
     quDetilProduk.FocusControl;
     Abort;
  end;

  if TRIM(quDetilQty.AsString)= '' then
  begin
     MsgInfo('Jumlah tidak boleh kosong');
     quDetilQty.FocusControl;
     Abort;
  end;

  if quDetilQty.Value < 0 then
  begin
     MsgInfo('Jumlah tidak boleh lebih kecil dari 0');
     quDetilQty.FocusControl;
     Abort;
  end;

  if TRIM(quDetilPrice.AsString)= '' then
  begin
     MsgInfo('Price tidak boleh kosong');
     quDetilPrice.FocusControl;
     Abort;
  end;

  if quDetilPrice.AsCurrency < 0 then
  begin
     MsgInfo('Price tidak boleh lebih kecil dari 0');
     quDetilPrice.FocusControl;
     Abort;
  end;

  if TRIM(quDetilUrut.AsString) = '' then
  begin
     MsgInfo('Urut tidak boleh lebih kecil dari 0');
     quDetilUrut.FocusControl;
     Abort;
  end;

  if Flag = 'B' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT ISNULL(Modal,0) as Modal FROM ARTrPurchaseOrderDt '
         +'WHERE ItemID='''+quDetilItemID.AsString+''' AND POID='''+quMainSOID.AsString+''' ');
      Open;
    end;
    if quDetilPrice.AsCurrency > quAct.FieldByName('Modal').AsCurrency then
    begin
      pesan('Harga Modal tidak sesuai dengan harga SO');
      quDetilPrice.FocusControl;
      Abort;
    end;
  end;

  if quDetil.State = dsInsert then
  begin
    if Flag = 'B' then
    begin
      if Trim(quDetilItemID.AsString) = '' then
      begin
        pesan('Kode Barang tidak boleh kosong');
        quDetilItemID.FocusControl;
        Abort;
      end;
      with quAct,SQL do
      begin
        Close;Clear;
        Add('SELECT * FROM INMsItem WHERE ItemID='''+quDetilItemID.AsString+''' ');
        Open;
        if IsEmpty then
        begin
          pesan('Kode Barang belum terdaftar di master barang');
          quDetilItemID.FocusControl;
          Abort;
        end;
      end;
    end;
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT Urut FROM ARTrPenawaranDt WHERE Urut='''+quDetilUrut.AsString+''' '
         +'AND GBUID='''+quMainGBUID.AsString+''' ');
      Open;
      if not IsEmpty then
      begin
        ShowMessage('No Urut sudah terpakai');
        quDetilUrut.FocusControl;
        Abort;
      end;
    end;
  end;

  quDetilUpdUser.AsString := dmMain.UserId;
  quDetilUpdDate.AsDateTime := GetServerDateTime;
end;

procedure TfmARTrPenawaran.quDetilCalcFields(DataSet: TDataSet);
var SubTotal : currency;
begin
  inherited;
  SubTotal := (quDetilPrice.Value * quDetilQty.Value);
  quDetilCTotal.AsCurrency :=  SubTotal;
end;

procedure TfmARTrPenawaran.quDetilNewRecord(DataSet: TDataSet);
Function GenerateNoUrut:Integer;
begin
   with quAct,SQL do
   begin
      Close; Clear;
      Add('SELECT Urut FROM ARTrPenawaranDt WHERE GBUID='''+quMainGBUID.AsString+''' ORDER BY Urut DESC');
      Open;
      if IsEmpty then
        Result := 1
      else
        Result := StrToInt(FormatFloat('0',StrToInt(RightStr(fields[0].AsString,3))+1));
  end;
end;
begin
  inherited;
  quDetilQty.AsFloat :=1;
  quDetilPrice.AsCurrency := 0;
  quDetilUrut.AsInteger := GenerateNoUrut;
  quDetilProduk.FocusControl;
end;

procedure TfmARTrPenawaran.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTotal;
  quDetil.Append;
end;

procedure TfmARTrPenawaran.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTotal;
  quDetil.Append;
end;

procedure TfmARTrPenawaran.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTotal;
end;

procedure TfmARTrPenawaran.TmbBrgClick(Sender: TObject);
begin
  inherited;
  if quMain.IsEmpty then Abort else quDetil.Append;
end;

procedure TfmARTrPenawaran.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmARTrPenawaran.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmARTrPenawaran.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmARTrPenawaran.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       if Flag = 'A' then
       begin
         Title := 'Penawaran';
         SQLString := 'SELECT A.GBUID as No,CONVERT(VARCHAR(10),A.Transdate,103) as Tgl,A.Customer,A.UP,A.Phone,A.Fax,A.Email,'
                     +'B.SalesName as Sales FROM ARTrPenawaranHd A INNER JOIN ARMsSales B ON A.SalesID=B.SalesID '
                     +'WHERE '+FSQLWhere;
         SQLString := SQLString+' AND Flag=''A'' ORDER BY A.GBUID '
       end else
       begin
         Title := 'Purchase Order';
         SQLString := 'SELECT A.GBUID as No,CONVERT(VARCHAR(10),A.Transdate,103) as Tgl,A.Customer as Supplier,A.SOID as No_SO,'
                     +'ISNULL((SELECT Y.CustName FROM ARTrPurchaseOrderHD X inner join ARMsCustomer Y on X.CustID=Y.CustID WHERE X.POID=A.SOID),''-'') as Customer, '
                     +'A.UP,A.Phone,A.Fax,A.Email,B.SalesName as Sales '
                     +'FROM ARTrPenawaranHd A INNER JOIN ARMsSales B ON A.SalesID=B.SalesID '
                     +'WHERE '+FSQLWhere;
         SQLString := SQLString+' AND Flag=''B'' ORDER BY A.GBUID '
       end;
       if ShowModal = MrOK then
       begin
         quMain.Locate('GBUID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenawaran.dxButton1Click(Sender: TObject);
var sTotal : Currency;
begin
  inherited;
  If (Self.quMain.State = dsEdit) or (Self.quMain.State = dsInsert) or
     (Self.quDetil.State = dsEdit) or (Self.quDetil.State = dsInsert) then
  begin
    ShowMessage('Data Belum disimpan');
    Abort;
  end;
  if StrToInt(dxDBEdit11.Text) = 0 then
  begin
    pesan('Term tidak boleh 0 hari');
    dxDBEdit11.SetFocus;
    Abort;
  end;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(TTLGBU,0) as Total FROM ARTrPenawaranHd Where GBUID='''+quMainGBUID.AsString+'''');
    Open;
  end;
  if quAct.FieldByName('Total').AsCurrency = 0 then
    stotal := quTotalGT.AsCurrency
  else
    stotal := quAct.FieldByName('Total').AsCurrency;

  if Flag = 'B' then
  begin

  with TfmARQRRptPenawaran.Create(Self) do
  try
    if Flag = 'B' then
    begin
      QRLabel44.Caption := 'Purchase Order';
      QRLabel5.Enabled := False; QRLabel18.Enabled := False; QRLabel9.Enabled := False;
      QRLabel37.Enabled := False;
      QRLabel17.Enabled := False; QRLabel20.Enabled := False; QRLabel39.Enabled := False; QRLabel35.Enabled := False;
      QRLabel38.Top := 37; QRLabel32.Enabled := False; QRLabel33.Enabled := False; QRLabel34.Enabled := False;
      QRLabel19.Caption := 'Mohon dikirimkan barang - barang yang terlampir dibawah :';
      QRLabel40.Enabled := True; QRLabel41.Enabled := True; QRLabel42.Enabled := True;
      QRLabel31.Caption := 'Purchasing Dept'; QRLabel30.Caption := 'Prepared By'; QRLabel38.Height := 34;
      if dxMemo1.Text <> '' then
        QRLabel43.Caption := dxMemo1.Text
      else
        QRLabel43.Enabled := False;

      qlbNote.Enabled := True;
      if RgCap.ItemIndex = 0 then
        QRDBImage1.Enabled := True
      else
        QRDBImage1.Enabled := False;
      if TRIM(quMainNote.AsString) = '' then qlbNote.Caption := '' else qlbNote.Caption := '* Note : '+quMainNote.AsString;
      if DBRadioGroup3.ItemIndex = 0 then
        QRLabel38.Caption := '* Pembayaran COD (Cash on Delivery)'
      else
      if DBRadioGroup3.ItemIndex = 1 then
        QRLabel38.Caption := '* Pembayaran CBD (Cash before Delivery)'
      else
        if DBRadioGroup3.ItemIndex = 2 then
          QRLabel38.Caption := '* Pembayaran 30 Hari Kerja, setelah Invoice diterima oleh Dept Accounting PT. Portal Andalan Solusi'
        else
          if DBRadioGroup3.ItemIndex = 3 then
            if RgJaminan.ItemIndex = 0 then
              QRLabel38.Caption := '* Pembayaran '+dxDBEdit11.Text+' Hari Kerja, setelah Invoice diterima oleh Dept Accounting PT. Portal Andalan Solusi.'
            else
              QRLabel38.Caption := '* Pembayaran '+dxDBEdit11.Text+' Hari Kerja, setelah Invoice diterima oleh Dept Accounting PT. Portal Andalan Solusi. Dengan jaminan cheque / Giro'
          else
            QRLabel38.Enabled := False;
    end else
    begin
      if rgKoma.ItemIndex = 0 then
        Koma := 'Y'
      else
        Koma := 'T';
      if quMainNote.AsString = '' then
        QRLabel18.Caption := 'Penawaran Harga'
      else
        QRLabel18.Caption := 'Penawaran Harga '+quMainNote.AsString;
      if RgCap.ItemIndex = 0 then
        QRDBImage1.Enabled := True
      else
        QRDBImage1.Enabled := False;

      if TRIM(quMainSalesID.AsString) = 'S004' then
        QRLabel31.Caption := 'Sales Manager'
      else
        QRLabel31.Caption := 'Business Representative';
      if DBRadioGroup3.ItemIndex = 0 then
        QRLabel38.Caption := '* Term of Payment COD (Cash on Delivery)'
      else
        if DBRadioGroup3.ItemIndex = 1 then
          QRLabel38.Caption := '* Term of Payment CBD (Cash before Delivery)'
        else
          if DBRadioGroup3.ItemIndex = 2 then
            QRLabel38.Caption := '* Term of Payment 30 Days'
          else
            if DBRadioGroup3.ItemIndex = 3 then
              if RgJaminan.ItemIndex = 0 then
                QRLabel38.Caption := '* Term of Payment '+dxDBEdit11.Text+' Days'
              else
                QRLabel38.Caption := '* Term of Payment '+dxDBEdit11.Text+' Days. With Cheque Or Bilyet Giro Guarantee'
            else
              QRLabel38.Caption := '';
    end;
    if UpperCase(quMainCurrId.Value) ='IDR' then
    begin
       qlbTerbilang.Caption :=  '* Terbilang '+ convert(FormatFloat(sEditformat, stotal))+'rupiah #';
       qlbCurr1.Caption := 'Rp ';
       qlbCurr2.Caption := 'Rp ';
       qlbCurr3.Caption := 'Rp ';
       qlbCurr4.Caption := 'Rp ';
    end;
    if UpperCase(quMainCurrId.Value) ='USD' then
    begin
       qlbTerbilang.Caption :=  '* Terbilang '+ convert(FormatFloat(sEditformat, stotal))+'dollar #';
       qlbCurr1.Caption := 'US ';
       qlbCurr2.Caption := 'US ';
       qlbCurr3.Caption := 'US ';
       qlbCurr4.Caption := 'US ';
    end;

    LaDiskon.Caption := quMainDisc.AsString;laSC.Caption := quTotalTax.AsString;laGT.Caption := quTotalGT.AsString;
    qlbSales.Caption := quMainLSalesName.AsString;


    with qu001,SQL do
    Begin
      Close;Clear;
      add('SELECT CONVERT(VARCHAR(10),A.Transdate,103) as Tanggal,A.Customer,A.UP,A.Phone,A.Fax,A.GBUID as Reff,'
         +'A.GBUID,B.SalesName,A.CurrID+'' - ''+C.CurrName as Valuta,CASE WHEN A.FgTax=''Y'' THEN B.SAS ELSE B.Foto END as TTD '
         +'FROM ARTrPenawaranHd A INNER JOIN ARMsSales B ON A.SalesID=B.SalesID '
         +'INNER JOIN SAMsValuta C ON A.CurrID=C.CurrID WHERE A.GBUID='''+quMainGBUID.AsString+''' ');
      Open;
    End;

    With qu002,SQL do
    Begin
      Close;Clear;
      add('SELECT Urut,Produk as ItemName,ISNULL(Qty,0) as Qty,ISNULL(Price,0) as Price,Description as Note,'
         +'ISNULL(Qty*Price,0) as Total FROM ARTrPenawaranDt WHERE GBUID=:GBUID ');
      Open;
    End;
     if sCetak = '0' then
    MyReport.PreviewModal
  else
    MyReport.Print;
  finally
    free;
  end;

  end else
  begin
  with TfmRptPenawaran.Create(Self) do
  try

{    if Flag = 'B' then
    begin
      QRLabel44.Caption := 'Purchase Order';
      QRLabel5.Enabled := False; QRLabel18.Enabled := False; QRLabel9.Enabled := False;
      QRLabel37.Enabled := False;
      QRLabel17.Enabled := False; QRLabel39.Enabled := False; QRLabel35.Enabled := False;
      QRLabel38.Top := 37; QRLabel32.Enabled := False; QRLabel33.Enabled := False; QRLabel34.Enabled := False;
      QRLabel40.Enabled := True; QRLabel41.Enabled := True; QRLabel42.Enabled := True;
      QRLabel31.Caption := 'Purchasing Dept'; QRLabel30.Caption := 'Prepared By'; QRLabel38.Height := 34;
      if dxMemo1.Text <> '' then
        QRLabel43.Caption := dxMemo1.Text
      else
        QRLabel43.Enabled := False;

      qlbNote.Enabled := True;
      if RgCap.ItemIndex = 0 then
        QRDBImage1.Enabled := True
      else
        QRDBImage1.Enabled := False;
      if TRIM(quMainNote.AsString) = '' then qlbNote.Caption := '' else qlbNote.Caption := '* Note : '+quMainNote.AsString;
      if rbTerm.ItemIndex = 0 then
        QRLabel38.Caption := '* Pembayaran COD (Cash on Delivery).'
      else
        if rbTerm.ItemIndex = 1 then
          QRLabel38.Caption := '* Pembayaran 7 (Tujuh) Hari Kerja, setelah Invoice diterima oleh Dept Accounting PT. Mitra Agung Prakarsa.'
        else
          if rbTerm.ItemIndex = 2 then
            QRLabel38.Caption := '* Pembayaran 14 (Empat Belas) Hari Kerja, setelah Invoice diterima oleh Dept Accounting PT. Mitra Agung Prakarsa.'
          else
            if rbTerm.ItemIndex = 3 then
              QRLabel38.Caption := '* Pembayaran 30 (Tiga Puluh) Hari Kerja, setelah Invoice diterima oleh Dept Accounting PT. Mitra Agung Prakarsa.'
            else
              QRLabel38.Enabled := False;
    end else}
    begin
      if rgKoma.ItemIndex = 0 then
        Koma := 'Y'
      else
        Koma := 'T';
      if quMainNote.AsString = '' then
        QRLabel18.Caption := 'Penawaran Harga'
      else
        QRLabel18.Caption := 'Penawaran Harga '+quMainNote.AsString;
      if RgCap.ItemIndex = 0 then
        QRDBImage1.Enabled := True
      else
        QRDBImage1.Enabled := False;

      if TRIM(quMainSalesID.AsString) = 'S004' then
        QRLabel31.Caption := 'Sales Manager'
      else
        QRLabel31.Caption := 'Business Representative';
      if DBRadioGroup3.ItemIndex = 0 then
        QRLabel55.Caption := '8. Term of Payment : COD (Cash on Delivery).'
      else
        if DBRadioGroup3.ItemIndex = 1 then
          QRLabel55.Caption := '8. Term of Payment : CBD (Cash before Delivery).'
        else
          if DBRadioGroup3.ItemIndex = 2 then
            QRLabel55.Caption := '8. Term of Payment : 30 days.'
          else
          if DBRadioGroup3.ItemIndex = 3 then
            if RgJaminan.ItemIndex = 0 then
              QRLabel55.Caption := '8. Term of Payment : '+dxDBEdit11.Text+' days.'
            else
              QRLabel55.Caption := '8. Term of Payment : '+dxDBEdit11.Text+' days. With Cheque or Bilyet Giro Guarantee'
          else
            QRLabel55.Caption := '';
    end;
    if UpperCase(quMainCurrId.Value) ='IDR' then
    begin
       qlbTerbilang.Caption :=  '* Terbilang '+ convert(FormatFloat(sEditFormat, stotal))+'rupiah #';
       qlbCurr1.Caption := 'Rp ';
       qlbCurr2.Caption := 'Rp ';
       qlbCurr3.Caption := 'Rp ';
       qlbCurr4.Caption := 'Rp ';
    end;
    if UpperCase(quMainCurrId.Value) ='USD' then
    begin
       qlbTerbilang.Caption :=  '* Terbilang '+ convert(FormatFloat(sEditFormat, stotal))+'dollar #';
       qlbCurr1.Caption := 'US ';
       qlbCurr2.Caption := 'US ';
       qlbCurr3.Caption := 'US ';
       qlbCurr4.Caption := 'US ';
    end;

    LaDiskon.Caption := quMainDisc.AsString;laSC.Caption := quTotalTax.AsString;laGT.Caption := quTotalGT.AsString;
    qlbSales.Caption := quMainLSalesName.AsString;

    If RadioGroup1.ItemIndex = 1 then
    begin
      qlbSales.Caption := 'William' ;
      QRLabel31.Caption := 'Direktur Utama';
    end else
    if RadioGroup1.ItemIndex = 2 then
    begin
      qlbSales.Caption := 'Hindra Kumala' ;
      QRLabel31.Caption := 'Direktur Utama';
    end;


    with qu001,SQL do
    Begin
      Close;Clear;
      add('SELECT CONVERT(VARCHAR(10),A.Transdate,103) as Tanggal,A.Customer,A.UP,A.Phone,A.Fax,A.GBUID as Reff,ISNULL(A.FOB,''Jakarta'') as FOB,'
         +'A.GBUID,B.SalesName,A.CurrID+'' - ''+C.CurrName as Valuta,CASE WHEN A.FgTax=''Y'' THEN B.SAS ELSE B.Foto END as TTD '
         +'FROM ARTrPenawaranHd A INNER JOIN ARMsSales B ON A.SalesID=B.SalesID '
         +'INNER JOIN SAMsValuta C ON A.CurrID=C.CurrID WHERE A.GBUID='''+quMainGBUID.AsString+''' ');
      Open;
    End;

    if RgPPN.ItemIndex = 0 then
    begin
      With qu002,SQL do
      Begin
        Close;Clear;
        add('SELECT Urut,Produk as ItemName,ISNULL(Qty,0) as Qty,ISNULL(Price,0) as Price,Description as Note,PartNo, '
           +'ISNULL(Qty*Price,0) as Total FROM ARTrPenawaranDt WHERE GBUID=:GBUID ');
        Open;
      End;
    end else
    begin
      qlbValuta.Enabled := False; QRLabel26.Enabled := False; QRLabel36.Enabled := False;
      qlbCurr1.Enabled := False; qlbCurr2.Enabled := False; qlbCurr3.Enabled := False;
      QRExpr1.Enabled := False; LaDiskon.Enabled := False; laSC.Enabled := False; QRShape7.Enabled := False;
      QRLabel27.Top := qlbValuta.Top; qlbCurr4.Top := qlbCurr1.Top; laGT.Top := QRExpr1.Top;
      QRLabel19.Caption := '2. Prices include VAT ';
      With qu002,SQL do
      Begin
        Close;Clear;
        add('SELECT Urut,Produk as ItemName,ISNULL(Qty,0) as Qty,ISNULL(Price*1.1,0) as Price,Description as Note,PartNo, '
           +'ISNULL(Qty*Price*1.1,0) as Total FROM ARTrPenawaranDt WHERE GBUID=:GBUID ');
        Open;
      End;
    end;
     if sCetak = '0' then
    MyReport.PreviewModal
  else
    MyReport.Print;
  finally
    free;
  end;

  end;
end;

procedure TfmARTrPenawaran.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
      if Flag = 'A' then
      begin
        Title := 'Pelanggan';
        SQLString := 'SELECT CustName as Pelanggan,CustID as Kode_Pelanggan,Address, Phone, Fax FROM ARMsCustomer ORDER BY CustID';
      end else
      begin
        Title := 'Supplier';
        SQLString := 'SELECT SuppName as Supplier,SuppID,Address,Phone, Fax FROM APMsSupplier ORDER BY SuppID';
      end;
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainCustID.Value := Res[1];
          quMainCustomer.Value := Res[0];
          quMainPhone.Value := Res[3];
          quMainFax.Value := Res[4];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenawaran.dxDBButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Data Sales Order';
       SQLString := 'SELECT K.POID as No_SO,CONVERT(VARCHAR(10),K.Transdate,103) as Tnaggal,K.Pelanggan,K.Jumlah FROM ('
                   +'SELECT A.POID,A.Transdate,SUM(B.Qty) as Total,A.Jenis,C.CustName as Pelanggan,ISNULL(A.TTLSO,0) as Jumlah,'
                   +'ISNULL((SELECT SUM(X.Qty) FROM ARTrPenawaranDt X INNER JOIN ARTrPenawaranHd Y ON X.GBUID=Y.GBUID AND Y.Flag=''B'' '
                   +'WHERE Y.SOID=A.POID),0) as JumPO FROM ARTrPurchaseOrderHd A INNER JOIN ARTrPurchaseOrderDt B ON A.POID=B.POID '
                   +'INNER JOIN ARMsCustomer C ON A.CustID=C.CustID GROUP BY A.POID,A.Transdate,A.Jenis,C.CustName,A.TTLSO) as K WHERE K.Total-K.JumPO > 0 AND K.Jenis=''Y'' '
                   +'AND CONVERT(VARCHAR(8),K.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',quMainTransdate.AsDateTime)+''' '
                   +'ORDER BY K.POID';
       if ShowModal = MrOk then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainSOID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenawaran.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekData;
end;

procedure TfmARTrPenawaran.dbgPenawaranItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Data Barang';
     SQLString :='SELECT L.ItemName as Nama_Barang,K.Price,K.Keterangan,K.ItemID as Kode_barang,K.Qty-K.JumPO as Jumlah,L.UOMID as Unit FROM ('
                +'SELECT A.POID,ISNULL(A.Modal,0) as Price,ISNULL(A.Qty,0) as Qty,A.Itemid,A.Keterangan,ISNULL((SELECT SUM(X.Qty) FROM ARTrPenawaranDt X '
                +'INNER JOIN ARTrPenawaranHd Y ON X.GBUID=Y.GBUID AND Y.Flag=''B'' WHERE Y.SOID=A.POID AND X.ItemID=A.ItemID),0) as JumPO '
                +'FROM ARTrPurchaseOrderDt A) as K INNER JOIN INMsItem L on K.Itemid=L.Itemid '
                +'WHERE K.Qty-K.JumPO > 0 AND  K.POID='''+quMainSOID.AsString+''' '
                +'ORDER BY K.ItemID';
     if ShowModal = MrOK then
     begin
        if quDetil.State = dsBrowse then quDetil.Edit;
        quDetilItemID.Value := Res[3];
        quDetilProduk.Value := Res[0];
        quDetilDescription.Value := Res[2];
        quDetilQty.Value := StrToInt(Res[4]);
        quDetilPrice.Value := StrToCurr(Res[1]);
     end;
  finally
     free;
  end;
end;

procedure TfmARTrPenawaran.rbTermClick(Sender: TObject);
begin
  inherited;
  if DBRadioGroup3.ItemIndex = 3 then
  begin
    dxDBEdit11.Visible := True; Label14.Visible := True;
    RgJaminan.Visible := True;
  end else
  begin
    dxDBEdit11.Visible := False; Label14.Visible := False;
    RgJaminan.Visible := False;
  end;
end;

procedure TfmARTrPenawaran.dbgPenawaranDblClick(Sender: TObject);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT A.PurchaseID,B.POID FROM APTrPurchaseHd A '
       +'INNER JOIN APTrKonsinyasiHd B ON A.KonsinyasiID=B.KonsinyasiID WHERE B.POID='''+quMainGBUID.AsString+''' ');
    Open;
  end;
  if quAct.RecordCount <> 0 then
  begin
    pesan('Sudah ada Invoice ['+quAct.FieldByName('PurchaseID').AsString+'], tidak bisa di ubah lagi');
    Abort;
  end;
  with TfmARUbahSO.Create (Application) do
  try
    PanelHeader.Visible := False;
    LStatus := 'PO';
    LbNamaBarang.Caption := 'Nama Barang '+quDetilProduk.AsString;
    LbJumlah.Caption := 'Jumlah '+FormatRptqtykurung(IntToStr(quDetilQty.AsInteger))+' menjadi ';
    LbHarga.Caption := 'Harga Rp '+FormatRptqtykurung(CurrToStr(quDetilPrice.AsCurrency))+' menjadi ';
    dxJumlah.Text := IntToStr(quDetilQty.AsInteger);
    dxHarga.Text := CurrToStr(quDetilPrice.AsCurrency);
    dxBagasi.Visible := False; dxModal.Visible := False;
    LbBagasi.Visible := False; LbModal.Visible := False;
    SOID := quMainGBUID.AsString;
    KodeBarang := quDetilItemID.AsString;
    ShowModal;
    quMain.Requery();
    quMain.Locate('GBUID',SOID,[]);
  finally
    Free;
  end;
end;

procedure TfmARTrPenawaran.quMainCustIDChange(Sender: TField);
begin
  inherited;
  if Flag='B' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('select ISNULL(Term,30) as Termin FROM APMsSupplier WHere SUppid='''+quMainCustID.ASString+''' ');
      Open;
    end;
    quMainTerm.AsCurrency := quAct.FieldByName('Termin').AsCurrency;
  end;
end;

procedure TfmARTrPenawaran.DBRadioGroup3Change(Sender: TObject);
begin
  inherited;
  if DBRadioGroup3.ItemIndex = 3 then
  begin
    dxDBEdit11.Visible := True; Label14.Visible := True;
    RgJaminan.Visible := True;
  end else
  begin
    dxDBEdit11.Visible := False; Label14.Visible := False;
    RgJaminan.Visible := False;
  end;
end;

procedure TfmARTrPenawaran.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT Y.CustName FROM ARTrPurchaseOrderHD X inner join ARMsCustomer Y on X.CustID=Y.CustID WHERE X.POID='''+quMainSOID.AsString+''' ');
    Open;
  end;
  quMainLcustomer.ASString := quAct.FieldByName('Custname').aSString;
end;

end.
