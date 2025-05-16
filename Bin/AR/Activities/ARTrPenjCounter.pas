unit ARTrPenjCounter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, dxPageControl,
  dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons, dxCore, dxContainer,
  DBCtrls, dxDBTLCl, dxGrClms, dxDBGrid, dxTL, dxDBCtrl, DateUtils ;

type
  TfmARTrPenjCounter = class(TfmStdLv31)
    Shape3: TShape;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    DBText8: TDBText;
    Label5: TLabel;
    quMainSaleID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainCustID: TStringField;
    quMainSalesID: TStringField;
    quMainNote: TStringField;
    quMainJatuhTempo: TIntegerField;
    quMainDiscount: TBCDField;
    quMainCurrID: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainTTLPj: TBCDField;
    quMainDP: TBCDField;
    quMainFlagCounter: TStringField;
    quDetilSaleID: TStringField;
    quDetilItemID: TStringField;
    quDetilPrice: TBCDField;
    quDetilWarehouseID: TStringField;
    quDetilQty: TIntegerField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quItem: TADOQuery;
    quDetilLItemName: TStringField;
    rbHarga: TRadioGroup;
    dxButton2: TdxButton;
    dxButton1: TdxButton;
    quDetilCTotal: TCurrencyField;
    quAct1: TADOQuery;
    quAct2: TADOQuery;
    quAct3: TADOQuery;
    dbgPenjualan: TdxDBGrid;
    dbgPenjualanItemID: TdxDBGridButtonColumn;
    dbgPenjualanItemName: TdxDBGridColumn;
    dbgPenjualanTotal: TdxDBGridColumn;
    dbgPenjualanHarga: TdxDBGridColumn;
    quTotal: TADOQuery;
    quTotalSubTotal: TBCDField;
    quTotalDiscount: TBCDField;
    quTotalTotal: TBCDField;
    dsTotal: TDataSource;
    quSN: TADOQuery;
    quSNSNID: TStringField;
    quSNSaleID: TStringField;
    quSNItemID: TStringField;
    quSNPrice: TBCDField;
    quSNWarehouseID: TStringField;
    dsSN: TDataSource;
    dbgSerialNumber: TdxDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    Shape6: TShape;
    Shape7: TShape;
    dxButton3: TdxButton;
    DBText3: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    dbgSerialNumberSNID: TdxDBGridColumn;
    quSNUpdDate: TDateTimeField;
    quSNUpdUser: TStringField;
    Shape8: TShape;
    quDetilButton: TStringField;
    dbgPenjualanQty: TdxDBGridColumn;
    dbgPenjualanButton: TdxDBGridButtonColumn;
    Shape10: TShape;
    quMainStPj: TBCDField;
    quMainRate: TBCDField;
    Label8: TLabel;
    DBText4: TDBText;
    Shape11: TShape;
    quTemp: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    DateTimeField1: TDateTimeField;
    StringField10: TStringField;
    Label9: TLabel;
    Shape12: TShape;
    Shape4: TShape;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    BtlBrg: TdxButton;
    TmbSN: TdxButton;
    KrgSN: TdxButton;
    BtlSN: TdxButton;
    Shape9: TShape;
    quMainCharge: TBCDField;
    dxButton6: TdxButton;
    quActC: TADOQuery;
    dxButton4: TdxButton;
    ActionBayar: TAction;
    rbCetak: TRadioGroup;
    quMainFgLunas: TStringField;
    bbReturn: TdxButton;
    bbRefresh: TdxButton;
    quMainLuSalesName: TStringField;
    quMainKasir: TStringField;
    DBText5: TDBText;
    quMainAdministrasi: TBCDField;
    Button1: TButton;
    Button2: TButton;
    quMainNama: TStringField;
    quMainAlamat: TStringField;
    quDetilFlagRetur: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure ActNewExecute(Sender: TObject);
    procedure dsDetilStateChange(Sender: TObject);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure quDetilItemIDChange(Sender: TField);
    procedure dbgPenjualanItemIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quSNBeforeInsert(DataSet: TDataSet);
    procedure quSNBeforePost(DataSet: TDataSet);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure dsSNStateChange(Sender: TObject);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
    procedure quDetilBeforeEdit(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quMainBeforeEdit(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quSNAfterPost(DataSet: TDataSet);
    procedure quSNNewRecord(DataSet: TDataSet);
    procedure dbgPenjualanButtonButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButton3Click(Sender: TObject);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure dbgPenjualanEnter(Sender: TObject);
    procedure dbgSerialNumberEnter(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure TmbBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure quSNAfterDelete(DataSet: TDataSet);
    procedure TmbSNClick(Sender: TObject);
    procedure KrgSNClick(Sender: TObject);
    procedure BtlSNClick(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure dxButton6Click(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure bbReturnClick(Sender: TObject);

  private
    { Private declarations }
    SC : string;
    Buton : boolean;
    Procedure UpdateTTlH;
    Procedure CekRetur;
    Procedure DataSourceStateChangeBrg;
    Procedure DataSourceStateChangeSN;

  public
    { Public declarations }
    Charge : Longint;
    iStatus : integer;
  end;

var
  fmARTrPenjCounter: TfmARTrPenjCounter;

implementation

uses ConMain, UnitGeneral, MyUnit, Search, Keypad, ARQRRptSegel,
  ARQRRptInvPenjualan, ARQRRptSuratJalan, Allitem, StdLv3, StdLv2, StdLv1,
  ARTrSC, ARQRRptStokAkhir, RptLv0, ARSN, ARQRRptStruck, StdLv0, KeypadDec,
  ARTrBayar, ARTrReturPenjualan, ARQRRptStruck2;

{$R *.dfm}

Procedure TfmARTrPenjCounter.DataSourceStateChangebrg;
Begin
  SetBtnOperationEnable(TmbBrg,dsdetil);
  SetBtnOperationEnable(KrgBrg,dsdetil);
  SetBtnOperationEnable(BtlBrg,dsdetil);
End;
Procedure TfmARTrPenjCounter.DataSourceStateChangeSN;
Begin
  SetBtnOperationEnable(TmbSN,dsSN);
  SetBtnOperationEnable(KrgSN,dsSN);
  SetBtnOperationEnable(BtlSN,dsSN);
End;

Procedure TfmARTrPenjCounter.UpdateTTlH;
Begin
 With quAct,sql do
 Begin
   Close;Clear;
   add(' Update ARTrPenjualanHd SET TTLPj='''+Formatcurr('0.00',quTotalTotal.AsCurrency)+''''
      +' WHERE saleID='''+quMainSaleID.AsString+'''');
   ExecSQL;
 End;
  with quActC,sql do
  Begin
    Close;Clear;
    Add('Select CustName FROM ARMsCustomer WHERE CustId='''+quMainCustID.Value+'''');
    Open;
  End;

{  DeleteFromAllMoney(quMainSaleID.AsString,'15');
  CarirateNew(quAct,quMainTransDate.Value);
  InsertToAllMoney(quMainSaleID.Value,quMainTransDate.value,quMainCustID.Value,'KM',sDRPj,sDGRPj,
                     quTotalTotal.value,'Pembayaran Penjualan Counter Nota '+quMainSaleID.AsString +'','15','','',quActC.FieldbyName('CustName').AsString
                     ,quMainCurrID.Value,quAct.fieldbyname('Rate').Value);
 }

  //ShowMessage(quTotalPerValutaTotal.AsString);
End;

Procedure TfmARTrPenjCounter.CekRetur;
Begin //cek apakah sudah ada Retur kalo sudah ada tidak bisa di utak atik
     with quAct, SQL do
     begin
        Close; Clear;
        Add(' SELECT top 1 ReturnId FROM ARTrReturPenjualanDt A'
           +' WHERE SaleID='''+quMainSaleID.Value+'''');
        Open;
        if not IsEmpty then
        begin
           MsgInfo('Sudah ada Retur ['+quAct.fieldbyname('ReturnId').AsString+'], tidak bisa edit/Delete lagi');
           Abort;
        end;
     end;
End;

procedure TfmARTrPenjCounter.FormCreate(Sender: TObject);
begin
  inherited;
//  FFieldOrder := 'CONVERT(VARCHAR(8),Transdate,112), SaleID';
//  FFieldTgl   := 'TransDate';
//  FAfterWhere := ' AND FlagCounter=''C''';
  UsePeriod := false;
  SettingDxGrid(dbgPenjualan);
  SettingDxGrid(dbgSerialNumber);
  DataSourceStateChangebrg;
  DataSourceStateChangeSN;
end;

procedure TfmARTrPenjCounter.quMainBeforePost(DataSet: TDataSet);
var ST:String;
begin
  inherited;
    if qumain.State=dsinsert then
    Begin
      quMainFlagCounter.Value:='C';
      quMainTransDate.AsDateTime := Date;
      quMainCurrID.Value:='IDR';
      quMainCustID.Value:=sCustC;
      quMainSalesID.Value:=SC;
      quMainJatuhTempo.AsFloat := 0;
      quMainDiscount.AsFloat := 0;
      quMainCharge.Value := 0;
      quMainDP.Value := 0;
      quMainAdministrasi.Value := 0;
      quMainKasir.AsString := dmMain.UserId;
      quMainNama.AsString :='';
      quMainRate.Value:=1;
      ST := FormatDateTime('YYMM', quMainTransDate.AsDateTime);
//      ST := PT+ FormatDateTime('-B/YY/MM/', quMainTransDate.AsDateTime);
      quMainSaleID.Value  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrPenjualanHd', 'SaleId', ST, '0') + 1);
      quMainFgLunas.Value :='T';
    End;

    If quMainSalesID.AsString = '' then
    begin
      MsgInfo('Sales Counter Belum diisi');
      Abort;
    end;

    If qumain.State= dsinsert then
    Begin
      With quAct,Sql do
      Begin
         Close;Clear;
         add('Select SaleID from ARTrPenjualanHd WHERE SaleID='''+quMainSaleID.Value+'''');
         Open;
         If Not IsEmpty then
         Begin
            MsgInfo('Nota sudah dipakai di transaksi penjualan lain');
            quMainSaleID.FocusControl;
            Abort;
         End;
      End;
    End;
    quMainUpdUser.Value := dmMain.UserId;
    quMainUpddate.Value := GetServerDateTime;
End;

procedure TfmARTrPenjCounter.FormShow(Sender: TObject);
begin
  inherited;
  with quMain,sql do
  Begin
    Close;Clear;
    add(' SELECT * FROM ARTrPenjualanHD WHERE CONVERT(VARCHAR(8),TransDate,112)=CONVERT(Varchar(8),Getdate(),112)'
       +' AND FlagCounter=''C'' AND FgLunas=''T'' AND Kasir=:Kasir'
       +' ORDER BY CONVERT(VARCHAR(8),Transdate,112), SaleID');
    Parameters.ParamByName('Kasir').Value := dmMain.UserId;
    Open;
  End;
  quDetil.Active := TRUE;
  quSN.Active := True;
  quTotal.Open;
  quMainDiscount.DisplayFormat := sDisFormat;
  quMainDiscount.EditFormat := sEditformat;
  quTotalTotal.DisplayFormat:=sDisFormat;
  quTotalDiscount.DisplayFormat:=sDisFormat;
  quTotalSubTotal.DisplayFormat:=sDisFormat;
  SettingDxGrid(dbgPenjualan);
  SettingDxGrid(dbgSerialNumber);
  quDetilQty.DisplayFormat := sDisFormat1;
  quDetilQty.EditFormat := sEditformat;
  quDetilPrice.DisplayFormat :=sDisFormat;
  qudetilprice.EditFormat :=sEditformat;
  quDetilCTotal.DisplayFormat := sDisFormat;
 // quTotalCharge.DisplayFormat := sDisFormat;
end;

procedure TfmARTrPenjCounter.ActNewExecute(Sender: TObject);
begin

  with TfmSC.Create(self) do
    try
            if ShowModal = MrOk then
            Begin
                SC := dxButtonEdit1.Text;
                inherited;
                if quMain.State in dsEditModes then quMain.Post;
                if quDetil.IsEmpty then quDetil.Append;
            End
    finally
       free;
    end;


end;

procedure TfmARTrPenjCounter.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgPenjualanItemID,qudetil.State<>dsinsert);
  SetReadOnly(dbgPenjualanItemName,TRUE);
  SetReadOnly(dbgPenjualanHarga,TRUE);
  SetReadOnly(dbgPenjualanTotal,TRUE);
  SetReadOnly(dbgPenjualanQty,TRUE);
  DataSourceStateChangebrg;
end;

procedure TfmARTrPenjCounter.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quMainSaleID.Value)='' Then
  Begin
    MsgInfo('Buat Transaksi Baru dahulu');
    Abort;
  End;
  Buton := True;
  quDetilWarehouseID.Value:=sDGC;
  quDetilQty.AsInteger :=0;
  quDetilFlagRetur.AsString :='T';
  quDetilItemID.FocusControl;
end;

procedure TfmARTrPenjCounter.quDetilItemIDChange(Sender: TField);
begin
  inherited;
    with quAct,sql do
    begin
     close;clear;
     add(' SELECT isnull(DealerPrice,0) as DealerPrice,isnull(UserPrice,0) as UserPrice '
        +' FROM INMsItem WHERE ItemId='''+quDetilItemID.AsString+'''');
     open;
    end;

    with quAct1,sql do
    begin
     Close;Clear;
     add(' select CustType from ARMsCustomer where CustId='''+quMainCustID.AsString+'''');
     open;
    end;

    with quAct2,sql do
    begin
     Close;Clear;
     add(' select Currid from INMsItem where ItemId='''+quDetilItemID.Value+'''');
     open;
    end;

    with quAct3,sql do
    Begin
      Close;Clear;
      add('  Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate '
         +'  WHERE Convert(varchar(8),Transdate,112) <='''+ Formatdatetime('yyyyMMdd',quMainTransDate.AsDateTime)+''''
         +'  ORDER BY TransDate desc');
      Open;
   End;

   if quact1.fieldbyname('CustType').AsString='U' then
   Begin
         if quMainCurrID.Value='IDR' then
         Begin
           if quact2.FieldByName('CurrID').AsString='USD' then
              quDetilPrice.Value :=  Pembulatan(currtostr(quAct.fieldbyname('UserPrice').AsCurrency*quAct3.fieldbyname('Rate').AsCurrency))
           else
              quDetilPrice.Value :=  Pembulatan(currtostr(quAct.fieldbyname('UserPrice').AsCurrency));
         End;

         if quMainCurrID.Value='USD' then
         Begin
           if quact2.FieldByName('CurrID').AsString='IDR' then
              quDetilPrice.Value :=  Pembulatan(currtostr(quAct.fieldbyname('UserPrice').AsCurrency/quAct3.fieldbyname('Rate').AsCurrency))
           else
              quDetilPrice.Value :=  Pembulatan(currtostr(quAct.fieldbyname('UserPrice').AsCurrency));
         End;
   End;

   if quact1.fieldbyname('CustType').AsString='D' then
   Begin
         if quMainCurrID.Value='IDR' then
         Begin
           if quact2.FieldByName('CurrID').AsString='USD' then
              quDetilPrice.Value := Pembulatan(currtostr(quAct.fieldbyname('DealerPrice').AsCurrency*quAct3.fieldbyname('Rate').AsCurrency))
           else
              quDetilPrice.Value := Pembulatan(currtostr(quAct.fieldbyname('DealerPrice').AsCurrency));
         End;

         if quMainCurrID.Value='USD' then
         Begin
           if quact2.FieldByName('CurrID').AsString='IDR' then
              quDetilPrice.Value := Pembulatan(currtostr(quAct.fieldbyname('DealerPrice').AsCurrency/quAct3.fieldbyname('Rate').AsCurrency))
           else
              quDetilPrice.Value := Pembulatan(currtostr(quAct.fieldbyname('DealerPrice').AsCurrency));
         End;
   End;
end;

procedure TfmARTrPenjCounter.dbgPenjualanItemIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Cari Barang';
       SQLString :='  SELECT Itemname as Nama_Barang,'
                  +'  Case When upper(Currid)=''USD'' Then '
                  +'  UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)'
                  +'  - (Convert(numeric,Substring('
                  +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
                  +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
                  +'  )+( case when( ( Convert(numeric, Substring('
                  +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
                  +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
                  +'  )>= 0 ) AND ( ( Convert(numeric, Substring('
                  +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
                  +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
                  +'  )< 250 )then 0 when ( (Convert(numeric,Substring('
                  +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
                  +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
                  +'  )= 250)then 250 when ((Convert(numeric,Substring('
                  +' Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
                  +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
                  +'  )> 250 ) AND((  Convert(numeric, Substring('
                  +'  Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
                  +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
                  +'  )<= 500 ) then 500 when ((Convert(numeric,Substring('
                  +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
                  +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
                  +'  )> 500 ) AND (( Convert(numeric,Substring('
                  +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
                  +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
                  +'  )<= 750 )then 750 when(( Convert(numeric, Substring('
                  +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
                  +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
                  +'  )> 500 ) AND((Convert(numeric,Substring('
                  +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'   WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
                  +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
                  +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
                  +'  )> 750 )'
                  +'   then 1000 end ) Else UserPrice End  as HARGA_JUAL,ItemId as Kode_Barang FROM INMsItem ORDER BY ItemID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilItemID.Value := Res[2];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenjCounter.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  quDetilCTotal.AsCurrency := quDetilQty.AsCurrency*quDetilPrice.AsCurrency;
end;

procedure TfmARTrPenjCounter.quDetilBeforePost(DataSet: TDataSet);
var fhasil : string;
begin
  inherited;
  if quDetilItemID.Value= '' then
  begin
     MsgInfo('Kode Item tidak boleh kosong !');
     quDetilItemID.FocusControl;
     Abort;
  end;
  if TRIM(quDetilLItemName.Value)='' then
  begin
     MsgInfo('Item tidak terdaftar di Master Item');
     quDetilItemID.FocusControl;
     Abort;
  end;
  if quDetil.State = dsInsert then
  begin
     with quAct, SQL do
     begin
        Close; Clear;
        Add(' SELECT Count(*) FROM ARTrPenjualanDt WHERE SaleID=:SaleID AND ItemId=:ItemId AND'
           +' WareHouseiD=:WareHouseiD AND Price=:Price');
        with Parameters do
        begin
           ParamByName('SaleID').Value := quMainSaleID.AsString;
           ParamByName('ItemId').Value  := quDetilItemID.AsString;
           ParamByName('WareHouseId').Value := quDetilWarehouseID.AsString;
           ParamByName('Price').Value := quDetilPrice.AsString;
        end;
        Open;
        if Fields[0].AsInteger > 0 then
        begin
           MsgInfo('Kode Item sudah ada dalam List');
           quDetilItemID.FocusControl;
           Abort;
        end;
     end;
  end;

  if ( quDetil.State = dsinsert ) AND (Buton) then
  Begin
        with TfmKeyPad.Create(self) do
        try
            sDefaultAngka := '0';
            bDecimal := true;
            //iTop := atas;
            //iLeft := kiri;
            ShowModal;
            fhasil := FloatToStr(fHasilAngka);
        finally
          free;
        end;
      //  if qudetil.State=dsbrowse then qudetil.Edit;
        quDetilQty.AsInteger:=strtoint(fhasil) ;
      //  qudetil.Post;
  End;

  if quDetilQty.AsFloat= 0 then
  begin
     MsgInfo('Jumlah tidak boleh kosong');
     quDetilButton.FocusControl;
     Abort;
  end;
{
  if quDetilQty.Value < 0 then
  begin
     MsgInfo('Jumlah tidak boleh lebih kecil dari 0');
     quDetilButton.FocusControl;
     Abort;
  end;
}
  quDetilUpdUser.Value := dmMain.UserId;
  quDetilUpdDate.Value := GetServerDateTime;
end;

procedure TfmARTrPenjCounter.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTTlH;

  with quAct,sql do
  Begin
    Close;Clear;
    Add('Select CustName FROM ARMsCustomer WHERE CustId='''+quMainCustID.Value+'''');
    Open;
  End;

  DeleteFromAllItem(quMainSaleID.Value,quMainCustID.Value,quDetilItemID.Value,quDetilWarehouseID.Value,
                     quDetilPrice.value,55);
  InsertToAllItem(quMainSaleID.Value,quMainCustID.Value,quMainTransDate.value,quDetilWarehouseID.Value,
                   quDetilItemID.Value,55,abs(quDetilQty.Value),quDetilPrice.value,quMainCurrID.Value,quMainRate.value,'AR',quAct.fieldbyname('CustName').AsString);

  quDetil.Append;
end;

procedure TfmARTrPenjCounter.quSNBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
   Close;Clear;
   Add(' Select Count(SNId) as jumlah From ARTrPenjualanSN WHERE ItemId='''+quDetilItemID.Value+''''
      +' AND SaleId='''+quMainSaleID.Value+''' And WareHouseId='''+quDetilWarehouseID.Value+''''
      +' AND Price='''+quDetilPrice.AsString+'''');
   Open;
  End;
  if quAct.FieldByName('jumlah').AsInteger >= quDetilQty.Value then Abort;
end;

procedure TfmARTrPenjCounter.quSNBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(quSNSNID.Value)='' then
  Begin
   MsgInfo('Kode Serial Number tidak boleh kosong');
   quSNSNID.FocusControl;
   Abort;
  End;

  If quSN.State= dsinsert then
  Begin
    With quAct,Sql do
    Begin
       Close;Clear;
       add(' SELECT SNID from ARTrPenjualanSN WHERE SaleID=:SaleID and SNID=:SNID and ItemID=:ItemID'
          +' AND WareHouseId=:WareHouseId AND Price=:Price');
          Parameters.ParamByName('SaleID').Value:= quSNSaleID.AsString;
          Parameters.ParamByName('SNID').Value:= quSNSNID.AsString;
          Parameters.ParamByName('ItemID').Value:= quSNItemID.AsString;
          Parameters.ParamByName('WareHouseID').Value:= quSNWarehouseID.AsString;
          Parameters.ParamByName('Price').Value:= quSNPrice.AsString;
       Open;
       If quAct.RecordCount <> 0 then
       Begin
          MsgInfo('Serial Number sudah ada');
          quSNSNID.FocusControl;
          Abort;
       End;
    End;
  End;

  quSNUpdUser.Value := dmMain.UserId;
  quSNUpdDate.Value := GetServerDateTime;

end;

procedure TfmARTrPenjCounter.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
   quTotal.Requery();
   UpdateTTlH;
   DataSourceStateChangebrg;
end;

procedure TfmARTrPenjCounter.dsSNStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgSerialNumberSNID,quSN.State<>dsinsert);
  DataSourceStateChangeSN;
end;

procedure TfmARTrPenjCounter.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CekRetur;
end;

procedure TfmARTrPenjCounter.quDetilBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekRetur;
end;

procedure TfmARTrPenjCounter.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekRetur;
  DeleteFromAllItem(quMainSaleID.Value,quMainCustID.Value,quDetilItemID.Value,quDetilWarehouseID.Value,
                     quDetilPrice.value,55);
end;

procedure TfmARTrPenjCounter.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekRetur;
end;

procedure TfmARTrPenjCounter.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekRetur;
  DeleteFromAllItem(quMainSaleID.Value,55);
  DeleteFromAllMoney1(quMainSaleID.AsString,quMainSaleID.AsString,'51');
end;

procedure TfmARTrPenjCounter.quSNAfterPost(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
   Close;Clear;
   Add(' Select isnull(Count(SNId),0) as jumlah From ARTrPenjualanSN WHERE ItemId='''+quDetilItemID.Value+''''
      +' AND SaleId='''+quMainSaleID.Value+''' And WareHouseId='''+quDetilWarehouseID.Value+''''
      +' AND Price='''+quDetilPrice.AsString+'''');
   Open;
  End;
  if quact.FieldByName('jumlah').AsInteger = quDetilQty.Value then
  begin
  // quDetil.Last;
  //   qudetil.Append;
  //   abort;
  End
  else
  begin
    quSN.Append;
  end;
end;

procedure TfmARTrPenjCounter.quSNNewRecord(DataSet: TDataSet);
begin
  inherited;
  quSNSNID.FocusControl;
end;

procedure TfmARTrPenjCounter.dbgPenjualanButtonButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var fHasil : String ;
begin
  inherited;
  with TfmKeyPad.Create(self) do
  try
      sDefaultAngka := '0';
      bDecimal := true;
      ShowModal;
      fhasil := FloatToStr(fHasilAngka);
  finally
    free;
  end;
  Buton :=false;
  if quDetil.State=dsBrowse then quDetil.Edit;
  quDetilQty.AsInteger:=StrToInt(fhasil) ;
  quDetil.Post;


end;

procedure TfmARTrPenjCounter.dxButton3Click(Sender: TObject);
var fhasil : string;
begin
  inherited;
  if quMain.State=dsbrowse then quMain.Edit;

  with TfmKeyPad.Create(self) do
  try
      sDefaultAngka := '0';
      bDecimal := true;
      //iTop := atas;
      //iLeft := kiri;
      ShowModal;
      fhasil := FloatToStr(fHasilAngka);
  finally
    free;
  end;

  quMainDiscount.AsInteger:=strtoint(fhasil) ;
  quMain.Post;

end;

procedure TfmARTrPenjCounter.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTTlH;
end;

procedure TfmARTrPenjCounter.dbgPenjualanEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;

end;

procedure TfmARTrPenjCounter.dbgSerialNumberEnter(Sender: TObject);
begin
  inherited;
  if quDetil.State in dsEditModes then quDetil.Post;
  if quSN.IsEmpty then quSN.Append;

End;

procedure TfmARTrPenjCounter.dxButton1Click(Sender: TObject);
var qty : integer;
begin
  inherited;
    if not quMain.IsEmpty then
  begin
      with quTemp,sql do
      Begin
          if Active then close;
              SQL.Text := ' if exists (select * from tempdb.dbo.sysobjects '+
                          ' where id = object_id(''tempdb.dbo.#tmpTable''))'+
                          ' drop table #tmpTable'+
                          ' CREATE TABLE #tmpTable (ItemId varchar(50) ,'+
                          '                         Garantee varchar(10),'+
                          '                         JangkaGarantee varchar(10),'+
                          '                         Qty numeric)' ;

             ExecSQL;
      End;

      with quAct,sql do
      Begin
         Close;Clear;
         add(' Select A.ItemId,isnull(A.qty,0) as Qty,B.Garantee,B.JangkaGarantee FROM ARTrPenjualanDt A INNER JOIN INMsItem B ON A.ItemId=B.ItemId'
            +' Where SaleId='''+quMainSaleID.Value+''''
            +' ');
         Open;
         quAct.First;
         While not Eof do
         Begin
           If quact.FieldByName('Garantee').AsString ='1' Then
           Begin
             qty:=0;
             while qty < quAct.Fieldbyname('qty').AsInteger do
             Begin
                 with quAct1,sql do
                 Begin
                   Close;Clear;
                   add('insert into #tmpTable(ItemId,JangkaGarantee) '
                      +' values ('''+quAct.Fieldbyname('itemID').AsString+''','''+quAct.fieldbyname('JangkaGarantee').AsString+''')');
                   ExecSQL;
                 End;
              qty:=qty+1;
             End;
           End;
         quAct.Next
         End;

      End;

    with TfmQRRptSegel.Create(Self) do
     try
       with qu001,sql do
       Begin
          Close;Clear;
          add('Select ItemId,JangkaGarantee, ''X'' as X  FROM #tmpTable ');
          Open;
          if IsEmpty then
          Begin
            MsgInfo('Tidak ada Barang yang bergaransi');
            Abort;
          End;
       End;
       MyReport.PreviewModal
     finally
        free;
     end;

   End;
end;

procedure TfmARTrPenjCounter.dxButton2Click(Sender: TObject);
begin
  inherited;
  if quDetilQty.AsInteger = 0 then
  begin
    pesan('Jumlah tidak boleh 0');
    quDetilButton.FocusControl;
    Abort;
  end;
  if qumain.IsEmpty then
  Begin
   ShowMessage('tidak ada data');
   Abort;
  End;
  with TfmArTrBayar.Create(Self) do
  try
    lbTotal.Caption := FormatCurr(sDisFormat1,self.quTotalTotal.AsCurrency);
    lbKembali.Caption := FormatCurr(sDisFormat1,0-self.quTotalTotal.AsCurrency);
    Kembali :=0-self.quTotalTotal.AsCurrency;
    if Kembali < 0 then
      lbKembali.Font.Color :=clred
    else
      lbKembali.Font.Color :=clBlack;
    Total := self.quTotalTotal.AsCurrency;
    TotalC := self.quTotalTotal.AsCurrency;
    NoNotaC := Self.quMainSaleID.AsString;
    TglNota := Self.quMainTransDate.Value;
    FgLunas := Self.quMainFgLunas.Value;

    if ShowModal = MrOk then
    Begin
         with TfmARRptStruck.Create(Self) do
//         with TfmARRptStruck2.Create(Self) do
         try
           with qu001,SQL do
           Begin
             Close;Clear;
             add(' Select SaleId,CurrId,isnull(discount,0) as Discount,Getdate() as JamJual'
                +' ,isnull(TTLPj,0) as Total,Convert(varchar(10),getdate(),103) as Tgl,A.SalesId,SalesName '
                +' FROM ARTrPenjualanHd A'
                +' INNER JOIN ARMsSales D ON A.SalesId=D.salesId'
                +' WHERE A.SaleId='''+quMainSaleID.Value+'''');
             Open;
           End;

           With qu002,sql do
           Begin
             Close;Clear;
             add(' Select A.ItemId,B.ItemName ,B.UOMId,C.Productdesc, Qty ,A.Price, isnull((A.Qty*A.Price),0) as STotal FROM ARTrPenjualanDt A'
                +' INNER JOIN INMsItem B ON A.Itemid=B.Itemid'
                +' INNER JOIN INMsProduct C ON B.ProductId=C.ProductId WHERE A.SaleId=:SaleId'
                +' ORDER BY A.ItemId');
             Open;
           End;

           lbST.Caption := FormatCurr('#,0',quTotalSubTotal.AsCurrency);
           lbdiskon.Caption := FormatCurr('#,0',quTotalDiscount.AsCurrency) ;
       //    lbCharge.Caption := FormatCurr('#,0',quTotalCharge.AsCurrency);
           lbTotal.Caption := FormatCurr('#,0',quTotalTotal.AsCurrency);

           if RbHarga.ItemIndex=1 then
           Begin
              QRLabel40.Enabled := False;
              QRLabel12.Enabled := True;
              QRLabel1.Top := 92;
              BndDetail.Height := 117;
              QRLabel41.Enabled := False;
              QRLabel1.Enabled := True;
              QRDBText2.Enabled := False;
              QRDBText3.Enabled := False;
              QRExpr1.Enabled := False;
              QRLabel42.Enabled := False;
              QRDBText4.Enabled := True;
              QRDBText8.Enabled := True;
              QRDBText1.Width := 282;
              Satuan := true;
           End
           Else
           Begin
              QRLabel40.Enabled := True;
              QRLabel12.Enabled := False;
              QRLabel41.Enabled := True;
              QRLabel1.Enabled := True;
              QRDBText2.Enabled := True;
              QRDBText3.Enabled := True;
              QRExpr1.Enabled := True;
              QRLabel42.Enabled := True;
              QRDBText4.Enabled := False;
              QRDBText8.Enabled := False;
              QRDBText1.Width := 354;
              Satuan := False;
           End;

           T := Cash;
           C := Credit;
           Ch:= ChargeA;
           ChargeC:= Charge;
           D := Debit;
           K := Kembali;
           BnkD := BD;
           BnkC := BK;
           NmD  := ND;
           NmC  := NK;

           if rbCetak.ItemIndex=1 then
           begin
             MyReport.Print;
           end
           else
           begin
             MyReport.PreviewModal;
           end;
          finally
            free;
         end;

       If Self.quMain.State = dsBrowse then Self.quMain.Edit;
       quMainFgLunas.AsString := 'Y';
       quMainCharge.AsCurrency := ChargeC;
       Self.quMain.Post;
       Self.quMain.Requery();
       Self.quMain.Last;

    End;
  finally
    free;
  end;


end;

procedure TfmARTrPenjCounter.dxButton4Click(Sender: TObject);
begin
  inherited;
  if not qumain.IsEmpty then
  Begin
    with TfmSC.Create(self) do
    try
            if ShowModal = MrOk then
            Begin
                SC := UpperCase(dxButtonEdit1.Text);
                inherited;
                if quMain.State = dsBrowse  then quMain.Edit;
                  quMainSalesID.Value := SC ;
                qumain.post;
               // if quDetil.IsEmpty then quDetil.Append;

            End
    finally
       free;
    end;
  End;


  {  with TfmINQRRptStokAkhir.Create(Self) do
     try
         qrlTitle.Caption  := 'Laporan Stok Akhir Per Hari';
         qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',date);

      with qu001,sql do
      begin
         Close;Clear;
         add(' select  B.WareHouseId,(B.WareHouseID+''-''+B.WareHouseName) as Gudang '
            +' FROM INMsWareHouse B WHERE B.WareHouseId='''+sDGPj+'''');// WHERE'
         Open;
         if IsEmpty then
         Begin
            MsgInfo('No Data!');
            Abort;
         End;
      End;

      with qu002,SQL do
       begin
          Close; Clear;
          Add('  select DISTINCT A.itemId, A.ItemName, A.UOMId as TransUOM,D.ProductDesc, '
             +'  (Select ISNULL(SUM(Case WHEN B.FgTrans < 50  THEN B.QTy ELSE B.Qty * - 1 END),0) '
             +'   FROM ALLITEM B Where CONVERT(VARCHAR(8),B.TransDate,112)<='''+FormatDateTime('YYYYMMDD',date)+''''
             +'   AND B.ItemID=A.ItemID AND B.WareHouseId=C.WarehouseId) as Stok_Akhir'
             +'   FROM INMsItem A INNER JOIN ALLITEM C ON A.ItemId=C.ItemId'
             +'   INNER JOIN INMsProduct D ON A.ProductId=D.ProductId'
             +'   WHERE C.WareHouseId='''+sDGPj+''''
             +'   ORDER BY A.itemId');
          Open;
       end;

       MyReport.Preview;
     finally
        free;
     end;       }


end;

procedure TfmARTrPenjCounter.TmbBrgClick(Sender: TObject);
begin
  inherited;
  qudetil.Append;
end;

procedure TfmARTrPenjCounter.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmARTrPenjCounter.BtlBrgClick(Sender: TObject);
begin
  inherited;
  qudetil.Cancel;
end;

procedure TfmARTrPenjCounter.quSNAfterDelete(DataSet: TDataSet);
begin
  inherited;
  DataSourceStateChangeSN;
end;

procedure TfmARTrPenjCounter.TmbSNClick(Sender: TObject);
begin
  inherited;
  qusn.Append;
end;

procedure TfmARTrPenjCounter.KrgSNClick(Sender: TObject);
begin
  inherited;
  if (dsSN <> nil) and (dsSN.DataSet <> nil) and
     (MessageDlg('Hapus Serial Number ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsSN.DataSet.Delete;
  end;

procedure TfmARTrPenjCounter.BtlSNClick(Sender: TObject);
begin
  inherited;
  quSN.Cancel;
end;

procedure TfmARTrPenjCounter.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Cari Transaksi Penjualan';

       SQLString := ' SELECT  C.SalesName as Nama_Sales,A.SalesId as Kode_Sales, A.SaleID as Nota_Penjualan,Convert(varchar(10),TransDate,103) as Tanggal,'
                   +' CustName as Pelanggan,B.CustID as Kode_Pelanggan,'
                   +'  A.Note as Keterangan'
                   +' FROM ARTrPenjualanHd A'
                   +' INNER JOIN ARMsCustomer B ON A.CustID = B.CustID'
                   +' INNER JOIN ARMsSales C ON A.SalesID = C.SalesID'
                   +' WHERE Convert(varchar(10),A.Transdate,112) ='''+FormatDateTime('yyyyMMdd',date)+''''
                   +' AND FlagCounter=''C'' AND FgLunas=''T'''
                   +' ORDER BY SaleID ';
       if ShowModal = MrOK then
       begin
         qumain.Locate('SaleID',Res[2],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenjCounter.dxButton6Click(Sender: TObject);
var sQuery : string;
begin
  inherited;
  sQuery   :='  SELECT Itemname as Nama_Barang,'
            +'  Case When upper(Currid)=''USD'' Then '
            +'  UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
            +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)'
            +'  - (Convert(numeric,Substring('
            +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
            +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
            +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
            +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
            +'  )+( case when( ( Convert(numeric, Substring('
            +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
            +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
            +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
            +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
            +'  )>= 0 ) AND ( ( Convert(numeric, Substring('
            +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
            +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
            +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
            +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
            +'  )< 250 )then 0 when ( (Convert(numeric,Substring('
            +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
            +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
            +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
            +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
            +'  )= 250)then 250 when ((Convert(numeric,Substring('
            +' Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
            +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
            +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
            +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
            +'  )> 250 ) AND((  Convert(numeric, Substring('
            +'  Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
            +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
            +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
            +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
            +'  )<= 500 ) then 500 when ((Convert(numeric,Substring('
            +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
            +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
            +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
            +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
            +'  )> 500 ) AND (( Convert(numeric,Substring('
            +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
            +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
            +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
            +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
            +'  )<= 750 )then 750 when(( Convert(numeric, Substring('
            +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
            +'    WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
            +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
            +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
            +'  )> 500 ) AND((Convert(numeric,Substring('
            +'   Convert( varchar(30),UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
            +'   WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc)),'
            +'  len(UserPrice*(Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate'
            +'  WHERE Convert(varchar(8),Transdate,112) <='''+FormatDateTime('yyyyMMdd',Date)+''' ORDER BY TransDate desc))-11,3))'
            +'  )> 750 )'
            +'   then 1000 end ) Else UserPrice End as HARGA_JUAL,';
  if GroupUser <> 'admin' then
  begin
    with TfmSearch.Create(Self) do
      try
         Title := 'Barang';
         SQLString :=sQuery + '  (Select ISNULL(SUM(Case WHEN F.FgTrans < 50  THEN F.QTy ELSE F.Qty * - 1 END),0) '
                    +'   FROM ALLITEM F Where CONVERT(VARCHAR(8),F.TransDate,112)<='''+FormatDateTime('YYYYMMDD',date)+''''
                    +'   AND F.ItemID=A.ItemID AND F.WareHouseId='''+sDGC+''') as STOK_AKHIR,ItemId as Kode_Barang'
                    +'  FROM INMsItem A ORDER BY A.ItemID';
         if ShowModal = MrOK then
         begin

         end;
      finally
         free;
      end;
  end else
  begin
    with TfmSearch.Create(Self) do
      try
         Title := 'Barang';
         SQLString :=sQuery+ 'CurrID as Valuta, UserPrice as Harga_Asli,'
                    +'  (Select ISNULL(SUM(Case WHEN F.FgTrans < 50  THEN F.QTy ELSE F.Qty * - 1 END),0) '
                    +'   FROM ALLITEM F Where CONVERT(VARCHAR(8),F.TransDate,112)<='''+FormatDateTime('YYYYMMDD',date)+''''
                    +'   AND F.ItemID=A.ItemID AND F.WareHouseId='''+sDGC+''') as STOK_AKHIR,ItemId as Kode_Barang'
                    +'  FROM INMsItem A ORDER BY A.ItemID';
         if ShowModal = MrOK then
         begin

         end;
      finally
         free;
      end;
  end;
end;

procedure TfmARTrPenjCounter.bbRefreshClick(Sender: TObject);
begin
  inherited;
  quMain.Requery();
end;

procedure TfmARTrPenjCounter.bbReturnClick(Sender: TObject);
begin
  inherited;
   with TfmARTrReturPenjualan.Create (Application) do
    try
      StatusRetur := 'R';
      ShowModal;
    finally
     Free;
    end;
end;

end.


