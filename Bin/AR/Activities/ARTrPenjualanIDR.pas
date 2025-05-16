unit ARTrPenjualanIDR;
                                                                                                               
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxDBTLCl, dxGrClms, dxEditor, dxDBELib, DBCtrls, StrUtils, DateUtils,inifiles,Printers,
  dxExGrEd, dxExELib, dxDBEdtr;

type
  TfmARTrPenjualanIDR = class(TfmStdLv4)
    dbgListNota: TdxDBGridColumn;
    dbgListTanggal: TdxDBGridDateColumn;
    dbgListCustID: TdxDBGridColumn;
    dbgListSalesID: TdxDBGridColumn;
    dbgListDescription: TdxDBGridMemoColumn;
    dbgListJatuhTempo: TdxDBGridMaskColumn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    DBText3: TDBText;
    Label13: TLabel;
    Label15: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;                                  
    quPelanggan: TADOQuery;
    quSales: TADOQuery;
    quItem: TADOQuery;
    quLokasi: TADOQuery;
    quTotal: TADOQuery;
    dsTotal: TDataSource;
    quDetilItemID: TStringField;
    quDetilWarehouseID: TStringField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    quMainSaleID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainCustID: TStringField;
    quMainSalesID: TStringField;
    quMainJatuhTempo: TIntegerField;
    quMainDiscount: TBCDField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainLuCustName: TStringField;
    quMainLuSalesName: TStringField;
    quDetilLuItemName: TStringField;
    quDetilLuWareHouseName: TStringField;
    quDetilATotal: TFloatField;
    quDetilPrice: TBCDField;
    quDetilSaleID: TStringField;
    quMainNote: TStringField;
    Shape6: TShape;
    Shape3: TShape;
    quAct1: TADOQuery;
    quAct2: TADOQuery;
    quAct3: TADOQuery;
    Shape5: TShape;
    quMainDP: TBCDField;
    Label19: TLabel;
    DBText1: TDBText;
    Label20: TLabel;
    quMainTglJtTempo: TDateTimeField;
    DBText2: TDBText;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    quMainFlagCounter: TStringField;
    dbgListColumn7: TdxDBGridColumn;
    dbgListColumn8: TdxDBGridColumn;
    quMainStPj: TBCDField;
    quMainRate: TBCDField;
    quValuta: TADOQuery;
    quMainLCurrName: TStringField;
    Label23: TLabel;
    DBText6: TDBText;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    quMainCurrID: TStringField;
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
    quMainCPiutang: TCurrencyField;
    quPiutang: TADOQuery;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    DateTimeField2: TDateTimeField;
    StringField20: TStringField;
    quDetilNote: TStringField;
    quMainCharge: TBCDField;
    Label25: TLabel;
    Label26: TLabel;
    DBText12: TDBText;
    dbgPenjualan: TdxDBGrid;
    dbgPenjualanItemID: TdxDBGridButtonColumn;
    dbgPenjualanItemName: TdxDBGridColumn;
    dbgPenjualanWarehouseID: TdxDBGridButtonColumn;
    dbgPenjualanTotal: TdxDBGridColumn;
    quDetilLKomisi: TCurrencyField;
    dxButton5: TdxButton;
    RbCetak: TRadioGroup;
    dxButton1: TdxButton;
    quMainTTLPj: TBCDField;
    quDetilKomisi: TBCDField;
    quMainFgLunas: TStringField;
    quMainFlagLunas: TStringField;
    dbgPenjualanHarga: TdxDBGridColumn;
    quMainAdministrasi: TBCDField;
    quMainNama: TStringField;
    ADOQuery1: TADOQuery;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    BtlBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    dbgPenjualanNote: TdxDBGridColumn;
    quMainAlamat: TStringField;
    quMainKasir: TStringField;
    quMainStatus: TStringField;
    quDetilFlagRetur: TStringField;
    quMainSOID: TStringField;
    quMainPOID: TStringField;
    Label33: TLabel;
    quMainTaxID: TStringField;
    quMainFgTax: TStringField;
    Label18: TLabel;
    quMainPajak: TIntegerField;
    quMainPPN: TBCDField;
    quMainFgTrans: TStringField;
    quMainPPNFee: TBCDField;
    Label5: TLabel;
    Label8: TLabel;
    quDetilUOMID: TStringField;
    quDetilnote2: TStringField;
    dbgPenjualanUOMID: TdxDBGridColumn;
    quDetilUrut: TBCDField;
    quMainActor: TStringField;
    quMainNoFaktur: TStringField;
    quMainKMKID: TStringField;
    quMainKMKData: TDateTimeField;
    quMainKMKDate: TDateTimeField;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBEdit4: TdxDBEdit;
    CBSpek: TCheckBox;
    DBFgTrans: TDBRadioGroup;
    quTotalSubTotal: TBCDField;
    quTotalPajak: TBCDField;
    quTotalGT: TBCDField;
    dbgPenjualanNote2: TdxDBGridBlobColumn;
    cbTanggal: TCheckBox;
    Shape4: TShape;
    Label14: TLabel;
    Label16: TLabel;
    quMainRekeningD: TStringField;
    quMainRekeningP: TStringField;
    quMainRekeningU: TStringField;
    quMainRekeningK: TStringField;
    RgLembar: TRadioGroup;
    dxDBGrid2: TdxDBGrid;
    TmbSN: TdxButton;
    KrgSN: TdxButton;
    SimpanSN: TdxButton;
    BtlSN: TdxButton;
    quMainFgForm: TStringField;
    quMainKontransBrgID: TStringField;
    Label17: TLabel;
    quSN: TADOQuery;
    dsSN: TDataSource;
    quSNSaleID: TStringField;
    quSNItemID: TStringField;
    quSNPrice: TBCDField;
    quSNWarehouseID: TStringField;
    quSNUpdDate: TDateTimeField;
    quSNUpdUser: TStringField;
    quSNModal: TBCDField;
    quSNPurchaseID: TStringField;
    quSNFgSN: TStringField;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    Label24: TLabel;
    qucekbayar: TADOQuery;
    qucekbayarTanggal: TStringField;
    qucekbayarVoucherID: TStringField;
    qucekbayarAmount: TBCDField;
    dscekbayar: TDataSource;
    quMainRekPersediaan: TStringField;
    quMainRekHPP: TStringField;
    quDetilModal: TBCDField;
    dbgPenjualanModal: TdxDBGridColumn;
    quTotalmodal: TBCDField;
    quMainHPP: TBCDField;
    dxDBButtonEdit5: TdxDBButtonEdit;
    Label27: TLabel;
    Label28: TLabel;
    dxDBButtonEdit6: TdxDBButtonEdit;
    Label29: TLabel;
    dxDBButtonEdit7: TdxDBButtonEdit;
    Label30: TLabel;
    dxDBButtonEdit8: TdxDBButtonEdit;
    Label31: TLabel;
    dxDBButtonEdit9: TdxDBButtonEdit;
    dxDBGrid2SNID: TdxDBGridButtonColumn;
    dbgPenjualanTitipan: TdxDBGridColumn;
    Label32: TLabel;
    Label34: TLabel;
    dxDBButtonEdit3: TdxDBButtonEdit;
    dxDBDateEdit2: TdxDBDateEdit;
    dbgPenjualanQty: TdxDBGridColumn;
    quDetilQty: TIntegerField;
    dbgProforma: TdxDBGrid;
    dbgProformaItemID: TdxDBGridButtonColumn;
    dbgProformaItemName: TdxDBGridColumn;
    dbgProformaJumlah: TdxDBGridColumn;
    dbgProformaUOMID: TdxDBGridColumn;
    dbgProformaPrice: TdxDBGridColumn;
    dbgProformaTotal: TdxDBGridColumn;
    DBText7: TDBText;
    dxButton2: TdxButton;
    Shape7: TShape;
    Label35: TLabel;
    Label36: TLabel;
    DBText10: TDBText;
    dxButton3: TdxButton;
    quTotalSaleID: TStringField;
    quMainFgUpload: TStringField;
    dxButton4: TdxButton;
    dxButton6: TdxButton;
    DBText11: TDBText;
    quMainLStatusUpload: TStringField;
    quMainKodeFG: TStringField;
    Label37: TLabel;
    dxDBEdit8: TdxDBEdit;
    quMainKodeFP: TStringField;
    dxDBEdit10: TdxDBEdit;
    dxButton7: TdxButton;
    dxButton8: TdxButton;
    quMainKeterangan: TStringField;
    cbHarga: TCheckBox;
    Label38: TLabel;
    quMainKeterangan2: TStringField;
    Label39: TLabel;
    quMainNoSP: TStringField;
    quMainTglSP: TDateTimeField;
    Label40: TLabel;
    Label41: TLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit10: TdxDBButtonEdit;
    dxDBButtonEdit11: TdxDBButtonEdit;
    dxDBDateEdit3: TdxDBDateEdit;
    txtPelanggan: TdxDBButtonEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit11: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit12: TdxDBEdit;
    dxDBDateEdit4: TdxDBDateEdit;
    dxDBEdit7: TdxDBEdit;
    DBText13: TDBText;
    CheckBox1: TCheckBox;
    quMainFgDetail: TStringField;
    dxDBImageEdit1: TdxDBImageEdit;
    quMainPPK: TStringField;
    Label42: TLabel;
    dxDBEdit13: TdxDBEdit;
    quMainFgRek: TStringField;
    dxDBPajak: TdxDBImageEdit;
    Label43: TLabel;
    quDetilFgTampil: TStringField;
    quDetilFgPPh: TStringField;
    quDetilPPh: TBCDField;
    dbgPenjualanColumn12: TdxDBGridImageColumn;
    dbgPenjualanColumn13: TdxDBGridColumn;
    dbgPenjualanColumn14: TdxDBGridImageColumn;
    quSNSNID: TStringField;
    Label44: TLabel;
    dxDBEdit14: TdxDBEdit;
    quMainKodeNITKU: TStringField;
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dbgPenjualanEnter(Sender: TObject);
    procedure dbgPenjualanItemIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgPenjualanWarehouseIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dsDetilStateChange(Sender: TObject);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure txtPelangganButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure quMainBeforeEdit(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quDetilBeforeEdit(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure TmbBrgClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure quCostItemBeforeDelete(DataSet: TDataSet);
    procedure quDetilItemIDChange(Sender: TField);
    procedure TmbSNClick(Sender: TObject);
    procedure KrgSNClick(Sender: TObject);
    procedure SimpanSNClick(Sender: TObject);
    procedure BtlSNClick(Sender: TObject);
    procedure quSNNewRecord(DataSet: TDataSet);
    procedure quSNBeforePost(DataSet: TDataSet);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBeforeInsert(DataSet: TDataSet);
    procedure dscekbayarStateChange(Sender: TObject);
    procedure dxDBButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit6ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit7ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit8ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit9ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid2SNIDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dsSNStateChange(Sender: TObject);
    procedure quSNAfterPost(DataSet: TDataSet);
    procedure quSNBeforeDelete(DataSet: TDataSet);
    procedure quSNBeforeEdit(DataSet: TDataSet);
    procedure quSNBeforeInsert(DataSet: TDataSet);
    procedure dxDBButtonEdit10ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainSOIDChange(Sender: TField);
    procedure dxDBButtonEdit11ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dsMainDataChange(Sender: TObject; Field: TField);
    procedure dxButton2Click(Sender: TObject);
    procedure quMainCustIDChange(Sender: TField);
    procedure quSNAfterDelete(DataSet: TDataSet);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton6Click(Sender: TObject);
    procedure dxButton7Click(Sender: TObject);
    procedure dxButton8Click(Sender: TObject);
    procedure quMainAfterCancel(DataSet: TDataSet);
  private
    { Private declarations }
    bdInsert : boolean;
    Procedure CekStatus;
    Procedure UpdateTTlH;
    Procedure CekRetur;
    Procedure UpdateSNHeader;
    Procedure UpdateSNDetil;
    Procedure UpdateSerialNumber;
    Procedure DataDetail;
  public
    { Public declarations }
    sQuery,StatusForm : string;
    custSbl,StatusBaru,FlagCounter : String;
    Hargasblm,Dp : Currency;
    iStatus : integer;
  end;

var
  fmARTrPenjualanIDR: TfmARTrPenjualanIDR;

implementation

uses Search, UnitGeneral, ConMain, MyUnit,
    ARQRRptSegel, ARQRRptInvPenjualan, ARQRRptSuratJalan, ARMsPelanggan,
  Allitem, ARQRRptKartuPiutangDetil, ARQRRptStokAkhir,
  ARTrPiutangIDR, ARSN, StdLv3, StdLv0, ARQRRptKwitansi,
  QRRptBayarPeriksa, RptLv0, ARQRRptBAST, ARQRRptBASTUF;

{$R *.dfm}

Procedure TfmARTrPenjualanIDR.DataDetail;
Begin
  if StatusForm='DP' then
  begin
    with quDetil,SQL do
    begin
      Close;Clear;
      Add('SELECT '''+quMainSaleID.AsString+''' as SaleID,ItemID,ItemName as Note,'
         +'ISNULL(Qty,0) as Qty,Price,'''' as WarehouseID,UpdDate,UpdUser,Keterangan,'
         +'Price as Komisi,'''' as FlagRetur,''''as UOMID,Keterangan as Note2,Price as Urut,Price as Modal FROM ARTrPerformaDt '
         +'WHERE PerformaID='''+quMainKontransBrgID.AsString+''' ');
      Open;
    end;
    with quTotal,SQL do
    begin
      Close;Clear;
      Add('SELECT K.SaleID,K.SubTotal,K.DP*K.PPN*0.01 as Pajak,K.DP*(100+K.PPN)*0.01 as GT,K.modal FROM ('
         +'SELECT B.SaleID,ISNULL(SUM(Qty*Price),0) as SubTotal,ISNULL(B.DP,0) as DP,ISNULL(SUM(Qty*Price),0)  as Modal,ISNULL(B.PPNFee,0) as PPN '
         +'FROM ARTrPerformaDt A INNER JOIN ARTrPenjualanHd B ON A.PerformaID=B.KonTransBrgID '
         +'WHERE B.SaleID='''+quMainSaleID.AsString+''' GROUP BY B.DP,B.SaleID,B.PPNFee) as K');
      Open;
    end;
  end else
  begin
    with quDetil,SQL do
    begin
      Close;Clear;
      Add('SELECT * FROM ARTrPenjualanDt '
         +'WHERE SaleID='''+quMainSaleID.AsString+''' '
         +'ORDER BY Urut');
      Open;
    end;
    with quTotal,SQL do
    begin
      Close;Clear;
      Add(' SELECT K.SaleID, '
         +' ISNULL(ROUND(K.SubTotal,2),0) as SubTotal, '
         +' ISNULL(ROUND((ROUND(K.SubTotal,2)-K.DP)*K.PPN*0.01,2),0) as Pajak, '
         +' ISNULL((ROUND(K.SubTotal,2)-K.DP)+ROUND((ROUND(K.SubTotal,2)-K.DP)*K.PPN*0.01,2)+K.Ongkir,0) as GT, '
         +' K.Modal FROM ( '
         +' SELECT A.Saleid,ISNULL(SUM(Qty*(Price+Komisi)),0) as SubTotal,ISNULL(B.DP,0) as DP,ISNULL(SUM(Qty*Modal),0) as Modal,'
         +'ISNULL(B.Administrasi,0) as Ongkir,ISNULL(B.PPNFee,0) as PPN '
         +' FROM ARTrPenjualanDt A '
         +' INNER JOIN ARTrPenjualanHd B ON A.SaleID=B.SaleID '
         +' WHERE A.SaleID='''+quMainSaleID.AsString+''' '
         +' GROUP BY A.SaleiD,B.DP,B.Administrasi,B.PPNFee) as K ');
      Open;
    end;
  end;
End;

Procedure TfmARTrPenjualanIDR.UpdateSNHeader;
Begin //ubah FgJual serialnumber pada saat hapus header
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE APTrPurchaseDtSN SET FgJual=''T'' WHERE SNID IN( '
       +'SELECT SNID FROM ARTrPenjualanSN WHERE SaleID='''+quMainSaleID.AsString+''' )');
    Add('UPDATE APTrKonsinyasiDtSN SET FgJual=''T'' WHERE SNID IN( '
       +'SELECT SNID FROM ARTrPenjualanSN WHERE SaleID='''+quMainSaleID.AsString+''' )');
    ExecSQL;
  end;
End;

Procedure TfmARTrPenjualanIDR.UpdateSNDetil;
Begin //ubah FgJual serialnumber pada saat hapus detil
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE APTrPurchaseDtSN SET FgJual=''T'' WHERE SNID IN( '
       +'SELECT SNID FROM ARTrPenjualanSN WHERE SaleID='''+quMainSaleID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' )');
    Add('UPDATE APTrKonsinyasiDtSN SET FgJual=''T'' WHERE SNID IN( '
       +'SELECT SNID FROM ARTrPenjualanSN WHERE SaleID='''+quMainSaleID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' )');
    ExecSQL;
  end;
End;

Procedure TfmARTrPenjualanIDR.UpdateSerialNumber;
Begin //ubah FgJual serialnumber
  with quAct,SQL do
  begin
   Close;Clear;
   add(' UPDATE APTrKonsinyasiDtSN SET FgJual=''T'' WHERE ItemID='''+quDetilItemID.AsString+''' '
      +' AND SNID='''+quSNSNID.AsString+''' ');
   ExecSQL;
  end;
End;

Procedure TfmARTrPenjualanIDR.CekStatus;
Begin //cek apakah sudah ada pembayaran kalo sudah ada tidak bisa di utak atik
if GroupUser<>'EditModal' then
begin
   with quAct, SQL do
   begin
      Close; Clear;
      Add(' SELECT A.VoucherID FROM CFTrKKBBDt A '+
          ' WHERE A.Note='''+quMainSaleID.AsString+'''');
      Open;
      if not IsEmpty then
      begin
         MsgInfo('Sudah ada penerimaan ['+quAct.Fieldbyname('VoucherID').AsString +'], tidak bisa edit/Delete lagi');
         Abort;
      end;
   end;
end;
End;

Procedure TfmARTrPenjualanIDR.CekRetur;
Begin //cek apakah sudah ada Retur kalo sudah ada tidak bisa di utak atik
if GroupUser<>'EditModal' then
begin
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
end;
End;

Procedure TfmARTrPenjualanIDR.UpdateTTlH;
Begin
  if StatusForm = 'AR' then
  begin
    With quAct,SQL do
    Begin
      Close;Clear;
      add(' Update ARTrPenjualanHd SET TTLPj='''+Formatcurr('0.00',quTotalGT.AsCurrency)+''',HPP='''+Formatcurr('0.00',quTotalmodal.AsCurrency)+''''
         +' ,StPj='''+Formatcurr('0.00',quTotalSubTotal.AsCurrency)+''', PPN='''+Formatcurr('0.00',quTotalPajak.AsCurrency)+''''
         +' WHERE saleID='''+quMainSaleID.AsString+'''');
      ExecSQL;
    End;
  end else
  begin
    With quAct,SQL do
    Begin
      Close;Clear;
      add('Update ARTrPenjualanHd SET TTLPj='''+Formatcurr('0.00',quTotalGT.AsCurrency)+''',HPP=0,StPj='''+Formatcurr('0.00',quTotalSubTotal.AsCurrency)+''','
         +'PPN='''+Formatcurr('0.00',quTotalPajak.AsCurrency)+''' WHERE saleID='''+quMainSaleID.AsString+'''');
      ExecSQL;
    End;
  end;
End;

procedure TfmARTrPenjualanIDR.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), SaleID';
  FFieldTgl   := 'TransDate';
  FAfterWhere := ' AND ISNULL(FgForm,''AR'')='''+StatusForm+''' ';
  SettingDxGrid(dbgPenjualan);
  inherited;


  quMain.Active  := TRUE;
  qucekbayar.Active := TRUE;
  quSN.Active := True;
  quPelanggan.Open;
  DataDetail;
  if StatusForm = 'AR' then
  begin
    Label17.Visible := False;
    dxDBButtonEdit3.Visible := False;
    Caption := 'INVOICE PENJUALAN';
    dbgPenjualan.Visible := True;
    dbgProforma.Visible := False;
    if GroupUser='admin' then
    begin
      dxButton4.Visible := True;
      dxButton6.Visible := True;
      dxButton7.Visible := True;
      dxButton8.Visible := True;
    end else
    begin
      dxButton4.Visible := False;
      dxButton6.Visible := False;
      dxButton7.Visible := False;
      dxButton8.Visible := False;
    end;
  end else
  if StatusForm = 'DP' then
  begin
    Label17.Visible := False;
    dxDBButtonEdit3.Visible := False;
    Caption := 'INVOICE UANG MUKA';
    dbgPenjualanNote2.Visible := False;
    dbgPenjualanModal.Visible := False;
    dbgPenjualanTitipan.Visible := False;
    Label13.Caption := 'Detail Invoice Uang Muka';
    dbgPenjualan.Visible := False; dbgProforma.Visible := True;
    TmbBrg.Enabled := False; KrgBrg.Enabled := False; bbSimpanDetil.Enabled := False; BtlBrg.Enabled := False;
    TmbSN.Visible := False; KrgSN.Visible := False; SimpanSN.Visible := False; BtlSN.Visible := False;
    dxDBGrid2.Visible := False; dxButton2.Visible := False;
    dxButton4.Visible := False;
    dxButton6.Visible := False;
    dxButton7.Visible := False;
    dxButton8.Visible := False;
    dxDBEdit8.Visible := False;
    dxDBEdit10.Visible := False;
    Label37.Visible := False;
    DBText11.Visible := False;
    dxDBImageEdit1.Visible := False;
  end else
  if StatusForm = 'KY' then
  begin
    Label17.Visible := True;
    dxDBButtonEdit3.Visible := True;
    Caption := 'INVOICE Konsinyasi';
    dbgPenjualan.Visible := True;
    dbgProforma.Visible := False;
    dxButton4.Visible := False;
    dxButton6.Visible := False;
    dxButton7.Visible := False;
    dxButton8.Visible := False;
    dxDBEdit8.Visible := False;
    dxDBEdit10.Visible := False;
    Label37.Visible := False;
    DBText11.Visible := False;
    dxDBImageEdit1.Visible := False;
  end;
end;

procedure TfmARTrPenjualanIDR.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);
//  SetReadOnly(dxDBDateEdit1,quMain.State<>dsinsert);
//  SetReadOnly(dxDBButtonEdit1,quMain.State<>dsinsert);
  //SetReadOnly(dxDBEdit2,TRUE);
  SetReadOnly(dxDBEdit8,TRUE);
  if GroupUser<>'admin' then
  SetReadOnly(dxDBEdit10,TRUE);
//  SetReadOnly(dxDBEdit3,quMain.State<>dsInsert);
//  SetReadOnly(txtPelanggan,quMain.State<>dsInsert);
  if StatusForm = 'DP' then
    SetReadOnly(dxDBEdit7,TRUE);
  SetReadOnly(dxDBButtonEdit8,TRUE);
  SetReadOnly(dxDBButtonEdit9,TRUE);
  SetReadOnly(dxDBButtonEdit5,TRUE);
  SetReadOnly(dxDBButtonEdit6,TRUE);
  SetReadOnly(dxDBButtonEdit7,TRUE);
end;

procedure TfmARTrPenjualanIDR.dbgPenjualanEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

procedure TfmARTrPenjualanIDR.dbgPenjualanItemIDButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
  var StatusBaruA : string;
begin
  inherited;
  with quAct,SQL do
  Begin
    Close;Clear;
    add('Select POID from ARTrPurchaseOrderHd where POID='''+quMainSOID.AsString+''' ');
    Open;
  End;

  if (quAct.RecordCount<>0) then
    StatusbaruA := 'A'
  else
    StatusBaruA := 'B';

  if StatusForm = 'KY' then
  begin
    with TfmSearch.Create(Self) do
    try
       Title := 'Item';
       SQLString := ' SELECT  B.Itemname as Nama_Barang,A.ItemId as Kode_Barang,A.Qty as Jumlah '
                   +' FROM ARTrKonTransBrgdt A '
                   +' INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
                   +' WHERE A.KontransBrgID='''+quMainKontransBrgID.AsString+''' '
                   +' AND A.ItemID NOT IN (SELECt ITEMID FROM ARTrPenjualanDT WHERE SaleID='''+quMainSaleID.AsString+''') ';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilItemID.Value := Res[1];
          quDetilPrice.AsCurrency := 0;
          quDetilQty.AsCurrency := StrToCurr(Res[2]);
       end;
    finally
       free;
    end;
  end else
  begin
    with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       if (TRIM(quMainCurrID.AsString) = 'IDR') then
       begin
         if (StatusBaruA='B') then
         begin
           SQLString :='SELECT K.Nama_Barang,K.Modal,K.Stock,K.Kode_Barang FROM ('
                      +'SELECT  A.Itemname as Nama_Barang,'
                      +'ISNULL((SELECT TOP 1 CASE WHEN C.CurrID=''IDR'' THEN B.Price ELSE B.Price*C.Rate END FROM APTrPurchaseDt B '
                      +'INNER JOIN APTrPurchaseHd C ON B.PurchaseID=C.PurchaseID WHERE B.ItemID=A.ItemID AND '
                      +'CONVERT(VARCHAR(8),C.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',quMainTransDate.AsDateTime)+''' '
                      +'ORDER BY CONVERT(VARCHAR(8),C.Transdate,112) DESC),0) as Modal,'
                      +'(SELECT ISNULL(SUM(Case WHEN F.FgTrans < 50  THEN F.QTy ELSE F.Qty * - 1 END),0) '
                      +'   FROM ALLITEM F Where CONVERT(VARCHAR(8),F.TransDate,112)<='''+FormatDateTime('YYYYMMDD',quMainTransDate.AsDateTime)+''''
                      +'   AND F.ItemID=A.ItemID AND F.WareHouseId='''+sDGC+''') as Stock,A.ItemId as Kode_Barang FROM INMsItem A WHERE A.FgActive=''Y'') as K '
                      +'WHERE K.Stock > 0 ORDER BY K.Modal'
         end else
         begin
           SQLString :='SELECT L.ItemName as Nama_Barang,K.Price,K.Keterangan,K.ItemID as Kode_barang,K.Qty-K.JumInv as Jumlah,L.UOMID as Unit FROM ('
                      +'SELECT A.POID,ISNULL(A.Price,0) as Price,ISNULL(A.Qty,0) as Qty,A.Itemid,A.Keterangan,ISNULL((SELECT SUM(X.Qty) FROM ARTrPenjualanDt X '
                      +'INNER JOIN ARTrPenjualanHd Y ON X.SaleID=Y.SaleID WHERE Y.SOID=A.POID AND X.ItemID=A.ItemID),0) as JumInv '
                      +'FROM ARTrPurchaseOrderDt A) as K INNER JOIN INMsItem L on K.Itemid=L.Itemid '
                      +'WHERE K.Qty-K.JumInv > 0 AND  K.POID='''+quMainSOID.AsString+''' '
                      +'ORDER BY K.ItemID';
         End;
       end else
         SQLString :='SELECT K.Nama_Barang,ISNULL(K.Modal/K.Rate,0) as Modal,K.Stock,K.Kode_Barang FROM ('
                    +'SELECT  A.Itemname as Nama_Barang,'''+CurrToStr(quMainRate.AsCurrency)+''' as Rate, '
                    +'ISNULL((SELECT TOP 1 CASE WHEN C.CurrID=''IDR'' THEN B.Price ELSE B.Price*C.Rate END FROM APTrPurchaseDt B '
                    +'INNER JOIN APTrPurchaseHd C ON B.PurchaseID=C.PurchaseID WHERE B.ItemID=A.ItemID AND '
                    +'CONVERT(VARCHAR(8),C.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',quMainTransDate.AsDateTime)+''' '
                    +'ORDER BY CONVERT(VARCHAR(8),C.Transdate,112) DESC),0) as Modal,'
                    +'(SELECT ISNULL(SUM(Case WHEN F.FgTrans < 50  THEN F.QTy ELSE F.Qty * - 1 END),0) '
                    +'   FROM ALLITEM F Where CONVERT(VARCHAR(8),F.TransDate,112)<='''+FormatDateTime('YYYYMMDD',quMainTransDate.AsDateTime)+''''
                    +'   AND F.ItemID=A.ItemID AND F.WareHouseId='''+sDGC+''') as Stock,A.ItemId as Kode_Barang FROM INMsItem A WHERE A.FgActive=''Y'') as K '
                    +'WHERE K.Stock > 0 ORDER BY K.Modal';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
             quDetilItemID.Value := Res[3];

          if (StatusBaruA='A') then
          begin
             quDetilPrice.AsString := Res[1];
             quDetilQty.AsString := Res[4];
//             quDetilnote2.AsString := Res[2];
          end;
       end;
    finally
       free;
    end;
   end;
end;

procedure TfmARTrPenjualanIDR.dbgPenjualanWarehouseIDButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Gudang';
       SQLString := 'SELECT WarehouseID as Kode_Gudang, Warehousename as Nama_Gudang'
                    +' FROM INMsWarehouse ORDER BY WarehouseID';
       if ShowModal = MrOK then
       begin
          if quDetil.State = dsBrowse then quDetil.Edit;
          quDetilWarehouseID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenjualanIDR.dxDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmARTrPenjualanIDR.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime := Date;
  quMainKMKDate.AsDateTime := Date;
  quMainTransDate.FocusControl;
  quMainCurrID.AsString := 'IDR';
  quMainFlagCounter.AsString := 'L';
  quMainAdministrasi.AsCurrency := 0;
  quMainKasir.AsString := dmMain.UserId;
  quMainFgLunas.AsString :='B';
  quMainFgTax.AsString :='Y';
  quMainFgForm.AsString := StatusForm;
  quMainFgUpload.AsString := 'T';
  quMainKodeFG.AsString := '0';
  with quAct3,SQL do
  begin
    Close;Clear;
    Add('select PPN from samsset');
    Open;
  end;
  quMainPPNFee.AsCurrency := quAct3.FieldByName('PPN').AsCurrency;

  quMainFGDetail.AsString := 'Y';
  with quAct1,SQL do
  begin
    Close;Clear;
    Add('SELECT * FROM SAMsSet');
    Open;
  end;

  if quMainFgForm.AsString = 'AR' then
    quMainRekeningK.AsString := quAct1.FieldByName('DGRPj').AsString
  else
    quMainRekeningK.AsString := quAct1.FieldByName('DGRBi').AsString;

  quMainRekeningU.AsString := quAct1.FieldByName('DRPj').AsString;
  quMainRekeningD.AsString := quAct1.FieldByName('DGRBi').AsString;
  quMainRekeningP.AsString := quAct1.FieldByName('CustId').AsString;
  quMainRekPersediaan.AsString := quAct1.FieldByName('sPersediaan').AsString;
  quMainRekHPP.AsString := quAct1.FieldByName('sHPP').AsString;

  quMainFgRek.AsString := 'Y';
end;

procedure TfmARTrPenjualanIDR.txtPelangganButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var tPlg : string;//,tNmPlg : string;
begin
  inherited;
  if AbsoluteIndex= 0 then
  Begin
        with TfmSearch.Create(Self) do
        try
           Title := 'Cari Pelanggan';
           SQLString := 'SELECT Custname as Nama_Pelanggan,Address, City, Phone, Fax, CustType,CustID as Kode_Pelanggan '
                       +' FROM ARMsCustomer ORDER BY CustID';
           if ShowModal = MrOK then
           begin
              if quMain.State = dsBrowse then quMain.Edit;
              quMainCustID.Value := Res[6];
           end;
        finally
           free;
        end;
  End;
  if AbsoluteIndex= 1 then
  Begin
    with TfmARMsPelanggan.Create(self) do
    try
      CallAnotherForm := true;
      ShowModal;
      tPlg := TempPlg;
    finally
      free;
    end;
    if tPlg <> '' then
    begin
      quMainCustID.AsString := tPlg;
      quPelanggan.Requery([]);
      quMainLuCustName.RefreshLookupList;
    end;
  End;
end;

procedure TfmARTrPenjualanIDR.dxDBButtonEdit1ButtonClick(Sender: TObject;
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

procedure TfmARTrPenjualanIDR.quMainBeforePost(DataSet: TDataSet);
var ST : String;
begin
  inherited;
  if TRIM(quMainJatuhTempo.AsString)= '' then quMainJatuhTempo.AsInteger := 0;
  if quMainJatuhTempo.AsInteger < 0 then quMainJatuhTempo.AsInteger := 0;
  if quMainNama.Value = '' then quMainNama.AsString := '';
  if quMainAlamat.Value = '' then quMainAlamat.AsString := '';

  if TRIM(quMainTransDate.AsString)='' Then
  Begin
    MsgInfo('Tanggal tidak boleh kosong');
    quMainTransDate.AsDateTime := Date;
    quMainTransDate.FocusControl;
    Abort;
  End;
  if StatusForm = 'KY' then
  begin
  if TRIM(quMainKontransBrgID.AsString)='' then
  begin
    pesan('Nomor Nota Transfer Barang Konsinyasi Tidak Boleh Kosong');
    quMainKontransBrgID.FocusControl;
    Abort;
  end;
  end;
  if quMainCustID.Value = '' then
  Begin
    MsgInfo('Pelanggan belum diisi');
    quMainCustID.FocusControl;
    Abort;
  End;

  if quMainLuCustName.Value = '' then
  Begin
    MsgInfo('Pelanggan tidak ada dalam Master');
    quMainCustID.FocusControl;
    Abort;
  End;

  if quMainSalesID.Value = '' then
  Begin
    MsgInfo('Sales belum diisi');
    quMainSalesID.FocusControl;
    Abort;
  End;

  if TRIM(quMainLuSalesName.Value) = '' then
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

  if TRIM(quMainLCurrName.Value) = '' then
  Begin
    MsgInfo('Valuta tidak terdaftar');
    quMainCurrID.FocusControl;
    Abort;
  End;

  if TRIM(quMainCurrID.AsString) <> 'IDR' then
  begin
    if Trim(quMainRate.AsString) = '' then
    begin
      pesan('Transaksi pakai USD, Rate tidak boleh kosong');
      quMainRate.FocusControl;
      Abort;
    end;
    if quMainRate.AsCurrency <= 0 then
    begin
      pesan('Rate harus lebih besar dari nilai 0(nol)!!!');
      quMainRate.FocusControl;
      Abort;
    end;
    if TRIM(quMainKMKDate.AsString) = '' then
    begin
      pesan('Transaksi pakai USD, Tgl KMK tidak boleh kosong');
      quMainKMKDate.FocusControl;
      Abort;
    end;
    if TRIM(quMainKMKID.AsString) = '' then
    begin
      pesan('Transaksi pakai USD, No KMK tidak boleh kosong');
      quMainKMKID.FocusControl;
      Abort;
    end;
  end;

  if TRIM(quMainSOID.AsString) = '' then
  begin
    pesan('No SO tidak boleh kosong');
    quMainSOID.FocusControl;
    Abort;
  end;
  with quAct1,SQL do
  begin
    Close;Clear;
    Add('SELECT POID FROM ARTrPurchaseOrderHd WHERE POID='''+quMainSOID.AsString+''' ');
    Open;
    if IsEmpty then
    begin
      pesan('Data Sales Order tidak terdaftar di Transaksi Sales Order');
      quMainSOID.FocusControl;
      Abort;
    end;
  end;

  if StatusForm = 'DP' then
  begin
    if TRIM(quMainKontransBrgID.AsString) = '' then
    begin
      pesan('No PI tidak boleh kosong');
      quMainKontransBrgID.FocusControl;
      Abort;
    end;
    with quAct2,SQL do
    begin
      Close;Clear;
      Add('SELECT * FROM ARTrPerformaHd WHERE PerformaID='''+quMainKontransBrgID.AsString+''' ');
      Open;
      if IsEmpty then
      begin
        pesan('Data Performa Invoice tidak terdaftar');
        quMainKontransBrgID.FocusControl;
        Abort;
      end;
    end;
  end;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT SaleID FROM ARTrPenjualanHd WHERE POID='''+quMainPOID.AsString+''' '
       +'AND SaleID<>'''+quMainSaleID.AsString+''' AND POID<>'''' AND FgForm='''+StatusForm+''' ');
    Open;
    if not IsEmpty then
    begin
      pesan('No PO sudah di pakai di Invoice ['+quAct.FieldByName('SaleID').AsString+']');
      quMainPOID.FocusControl;
      Abort;
    end;
  end;

  if quMain.State=dsInsert then
  Begin
    ST := PT+ '-' + StatusForm+ '/' + FormatDateTime('YYMM/', quMainTransDate.AsDateTime);
    quMainSaleID.Value  := ST + FormatFloat('00000', RunNumberGL(quAct, 'ARTrPenjualanHd', 'SaleId', ST, '0') + 1);
  End;

  if quMainTaxID.AsString<>'' then
  begin
  
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT SaleID,TaxID FROM ARTrPenjualanHd WHERE TaxID='''+quMainTaxID.AsString+''' AND SaleID<>'''+quMainSaleID.AsString+''' ');
      Open;
      if not IsEmpty then
      begin
        pesan('No FPS sudah di pakai untuk Nota ['+quAct.FieldByName('SaleID').AsString+']');
        quMainTaxID.FocusControl;
        Abort;
      end;
    end;

  end;

  quMainUpdUser.AsString := dmMain.UserId;
  quMainUpddate.AsDateTime := GetServerDateTime;
end;

procedure TfmARTrPenjualanIDR.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgProformaItemID,TRUE);
  SetReadOnly(dbgProformaItemName,TRUE);
  SetReadOnly(dbgProformaJumlah,TRUE);
  SetReadOnly(dbgProformaUOMID,TRUE);
  SetReadOnly(dbgProformaPrice,TRUE);
  SetReadOnly(dbgProformaTotal,TRUE);
  SetReadOnly(dbgPenjualanModal,TRUE);
  if GroupUser<>'EditModal' then
  begin
    SetReadOnly(dbgPenjualanItemID,quDetil.State<>dsInsert);
    SetReadOnly(dbgPenjualanItemName,TRUE);
    SetReadOnly(dbgPenjualanWarehouseID,TRUE);
    SetReadOnly(dbgPenjualanTotal,TRUE);
  end else
  begin
    SetReadOnly(dbgPenjualanItemID,quDetil.State<>dsInsert);
    SetReadOnly(dbgPenjualanItemName,TRUE);
    SetReadOnly(dbgPenjualanWarehouseID,TRUE);
    SetReadOnly(dbgPenjualanTotal,TRUE);
    SetReadOnly(dbgPenjualanQty,TRUE);
    SetReadOnly(dbgPenjualanUOMID,TRUE);
    SetReadOnly(dbgPenjualanHarga,TRUE);
    SetReadOnly(dbgPenjualanNote,TRUE);
  end;
end;

procedure TfmARTrPenjualanIDR.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if quDetilItemID.Value= '' then
  begin
     MsgInfo('Kode Barang tidak boleh kosong !');
     quDetilItemID.FocusControl;
     Abort;
  end;
  if TRIM(quDetilLuItemName.Value)='' then
  begin
     MsgInfo('Barang tidak terdaftar di Master Item');
     quDetilItemID.FocusControl;
     Abort;
  end;
  if TRIM(quDetilWarehouseID.Value)= '' then
  begin
     MsgInfo('Gudang tidak boleh kosong');
     quDetilWarehouseID.FocusControl;
     Abort;
  end;
  if TRIM (quDetilLuWareHouseName.Value) = '' then
  begin
     MsgInfo('Gudang tidak terdaftar di Master Gudang');
     quDetilWarehouseID.FocusControl;
     Abort;
  end;

  if TRIM(quDetilQty.AsString)= '' then
  begin
     MsgInfo('Jumlah tidak boleh kosong');
     quDetilQty.FocusControl;
     Abort;
  end;

  if TRIM(quDetilNote.AsString) = '' then
  begin
    pesan('Nama Barang tidak boleh kosong');
    quDetilNote.FocusControl;
    Abort;
  end;

  if quDetilQty.Value < 0 then
  begin
     MsgInfo('Jumlah tidak boleh lebih kecil dari 0');
     quDetilQty.FocusControl;
     Abort;
  end;

  if quDetil.State = dsInsert then
  begin
     with quAct, SQL do
     begin
        Close; Clear;
        Add(' SELECT Top 1 * FROM ARTrPenjualanDt WHERE SaleID='''+quMainSaleID.AsString+''''
           +' AND ItemId='''+quDetilItemID.AsString+''' AND WareHouseiD='''+quDetilWarehouseID.AsString+''''
           +' AND Price='''+quDetilPrice.AsString+''' AND Urut='''+IntToStr(quDetilUrut.AsInteger)+''' ');
        Open;
        if  not IsEmpty then
        begin
           MsgInfo('Kode Item sudah ada dalam List');
           quDetilItemID.FocusControl;
           Abort;
        end;
     end;
  end;

{  with quAct,SQL do
  Begin
    Close;Clear;
    Add('Select LimitPiutang FROM ARMsCustomer WHERE CustId='''+quMainCustID.Value+'''');
    Open;
  End;

  with quAct3,SQL do
  begin
    Close;Clear;
    Add('SELECT L.CustID,ISNULL(SUM(L.Piutang),0) as Piutang,(SELECT TOP 1 Rate FROM SATrRate ORDER BY CONVERT(VARCHAR(8),Transdate,112) DESC) as Rate FROM ('
       +'SELECT K.CustID,CASE WHEN K.CurrID=''IDR'' THEN ISNULL(SUM(K.TTLPj-K.Retur-K.Piutang),0) ELSE '
       +'ISNULL(SUM(K.TTLPj-K.Retur-K.Piutang),0) * (SELECT TOP 1 Rate FROM SATrRate ORDER BY CONVERT(VARCHAR(8),Transdate,112) DESC) END as Piutang '
       +'FROM (SELECT A.SaleID,A.CurrID,A.TTLPj,A.CustID,'
       +'(SELECT ISNULL(SUM(B.Price*B.Qty),0) FROM ARTrReturPenjualanDt B INNER JOIN ARTrReturPenjualanHd C ON B.ReturnID=C.ReturnID '
       +'AND C.FlagRetur=''B'' INNER JOIN ARTrPenjualanHd D ON B.SaleID=D.SaleID WHERE A.CustID=C.CustID AND D.CurrID=A.CurrID) as Retur,'
       +'(SELECT ISNULL(SUM(E.ValuePayment),0) FROM ARTrPiutangDt E INNER JOIN ARTrPiutangHd F ON E.PiutangID=F.PiutangID '
       +'WHERE F.CustID=A.CustID AND F.CurrID=A.CurrID AND E.SaleID=A.SaleID) as Piutang '
       +'FROM ARTrPenjualanHd A WHERE  A.FlagCounter<> ''C'' ) as K GROUP BY K.CustID,K.CurrID) as L WHERE L.CustID='''+quMainCustID.AsString+''' GROUP BY L.CustID');
    Open;
  end;
  if UpperCase(quMainCurrID.AsString)='IDR' then
  begin
    if quAct3.FieldByName('Piutang').AsCurrency + (quDetilQty.AsInteger * quDetilPrice.AsCurrency) >
      quAct.FieldByName('LimitPiutang').AsCurrency then
    begin
      MsgInfo('Limit Piutang '+quMainLuCustName.AsString+' sudah melebihi batas');
      quDetilPrice.FocusControl;
      Abort;
    end;
  end else
  begin
    if quAct3.FieldByName('Piutang').AsCurrency + (quDetilQty.AsInteger * quDetilPrice.AsCurrency * quAct3.FieldByName('Rate').AsCurrency) >
      quAct.FieldByName('LimitPiutang').AsCurrency then
    begin
      MsgInfo('Limit Piutang '+quMainLuCustName.AsString+' sudah melebihi batas');
      quDetilPrice.FocusControl;
      Abort;
    end;
  end;}

{  if TRIM(quMainRate.AsString) = '' then quMainRate.AsCurrency := 0;

  if TRIM(quMainCurrID.AsString) = 'USD' then
  begin
    if quMainRate.AsCurrency <= 0 then
    begin
      pesan('Transaksi menggunakan valuta USD. Rate transaksi harus lebih besar dari 0 (nol)');
      quMainRate.FocusControl;
      Abort;
    end;
  end; }

{  with quAct3,SQL do
  begin
    Close;Clear;
    Add('SELECT TOP 1 ISNULL(CASE WHEN K.CurrID=''IDR'' THEN K.Price ELSE K.Price*K.Rate END,0) as Modal FROM ('
       +'SELECT A.ItemID,A.Price,B.CurrID,B.Rate,B.Transdate FROM APTrPurchaseDt A '
       +'INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID) as K '
       +'WHERE K.ItemID='''+quDetilItemID.AsString+''' ORDER BY CONVERT(VARCHAR(8),K.Transdate,112) DESC ');
    Open;
  end;
  if quDetilPrice.AsCurrency < quAct3.FieldByName('Modal').AsCurrency then
  begin
    if MessageDlg('Modal terakhir untuk barang ini ['+quAct3.FieldByName('Modal').AsString+']. '+#13
                 +'Anda yakin dengan harga yang sudah diinput ? ', mtInformation, [mbYes, mbNo], 0) = mrYes then
    begin
//       quDetil.Post;
    end else
    begin
       quDetilPrice.FocusControl;
       Abort;
    end;
  end;}
  if GroupUser<>'EditModal' then
  begin
    with quAct3,SQL do
    begin
      Close;Clear;
      Add('SELECT A.ItemID,(SELECT ISNULL(SUM(CASE WHEN F.FgTrans < 50  THEN F.QTy ELSE F.Qty * - 1 END),0) '
         +'FROM ALLITEM F WHERE F.ItemID=A.ItemID AND VoucherNo<>'''+quMainSaleID.AsString+''' '
         +'AND CONVERT(VARCHAR(8),F.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',quMainTransDate.AsDateTime)+''') as Stock '
         +'FROM INMsItem A WHERE A.ItemID='''+quDetilItemID.AsString+'''  ');
      Open;
    end;
    if quAct3.FieldByName('Stock').AsInteger - quDetilQty.AsInteger < 0 then
    begin
      ShowMessage('Jumlah Barang kurang dari stock.'+#13
                 +'Sisa Stock saat ini tinggal ['+quAct3.FieldByName('Stock').AsString+']');
      quDetilQty.FocusControl;
      Abort;
    end;
  end;

  quDetilUpdUser.AsString := dmMain.UserId;
  quDetilUpdDate.AsDateTime := GetServerDateTime;
end;

procedure TfmARTrPenjualanIDR.quDetilCalcFields(DataSet: TDataSet);
var SubTotal : Currency;
begin
  inherited;
  SubTotal := ((quDetilPrice.AsCurrency+quDetilKomisi.AsCurrency) * quDetilQty.AsCurrency);
  quDetilATotal.AsFloat :=  SubTotal;
end;

procedure TfmARTrPenjualanIDR.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilItemID.FocusControl;
  quDetilQty.AsInteger :=1;
  quDetilFlagRetur.AsString := 'T';
  quDetilWarehouseID.AsString := sDGPj;
  quDetilKomisi.AsCurrency := 0;
  quDetilModal.AsCurrency := 0;
  quDetilPrice.AsCurrency := 0;
  quDetilSaleID.AsString := quMainSaleID.AsString;
  quDetilFgTampil.AsString := 'Y';
  quDetilFgPPh.AsString := 'P';
  qudetilPPh.AsCurrency := 0;
end;

procedure TfmARTrPenjualanIDR.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  if Hargasblm <> quDetilPrice.Value then
     DeleteFromAllItem(quMainSaleID.Value,quMainCustID.Value,quDetilItemID.Value,quDetilWarehouseID.Value,
                     Hargasblm,55)
  else
     DeleteFromAllItem(quMainSaleID.Value,quMainCustID.Value,quDetilItemID.Value,quDetilWarehouseID.Value,
                     quDetilPrice.value,55);
//buat update ke table allitem
  InsertToAllItem(quMainSaleID.Value,quMainCustID.Value,quMainTransDate.value,quDetilWarehouseID.Value,
                   quDetilItemID.Value,55,abs(quDetilQty.Value),quDetilPrice.value,quMainCurrID.Value,quMainRate.value,'AR',quMainLuCustName.Value
                   ,quMainSalesID.Value,quDetilLKomisi.value);
//Buat cek udah masuk ke allitem apa belum
{  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT * FROM AllItem WHERE VoucherNo='''+quMainSaleID.AsString+''' '
       +'AND FgTrans=55 AND ItemID='''+quDetilItemID.AsString+''' ');
    Open;
    if quAct.RecordCount <> 1 then
    begin
      ShowMessage('Barang '+quDetilLuItemName.AsString+' belum terupdate di kartu stock');
      quDetil.Edit;
      quDetilQty.FocusControl;
      Abort;
    end;
  end;}
  quTotal.Requery();
  UpdateTTlH;
  quDetil.Append;
end;

procedure TfmARTrPenjualanIDR.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTTlH;
end;

procedure TfmARTrPenjualanIDR.quMainAfterPost(DataSet: TDataSet);
var CekPO : string;
begin
  inherited;
  if StatusForm = 'AR' then
  begin
    with quAct,SQL do
    Begin
      Close;Clear;
      add('SELECT POID FROM ARTrPurchaseOrderHd WHERE POID='''+quMainSOID.AsString+''' ');
      Open;
    End;

    if (quAct.RecordCount<>0) and (StatusBaru = 'Baru') then
    begin
      with quAct,SQL do
      begin
        Close;Clear;
        {Add('INSERT ARTrPenjualanDt (SaleID,ItemID,Note,Price,WarehouseID,Qty,UpdDate,UpdUser,FlagRetur,UOMID,Note2,Modal,Komisi) '
           +'SELECT '''+quMainSaleID.AsString+''',A.ItemID,B.ItemName,A.Price,'''+sDGPj+''',A.Qty,GetDate(),'''+dmMain.UserId+''', '
           +'''T'',B.UOMID,A.keterangan,0,ISNULL(Bagasi,0) FROM ARTrPurchaseOrderDt A INNER JOIN INMsItem B on A.ItemID=B.ItemID '
           +'WHERE A.POID='''+quMainSOID.AsString+''' ');
        ExecSQL; }
        Add('INSERT ARTrPenjualanDt (SaleID,ItemID,Note,Price,WarehouseID,Qty,UpdDate,UpdUser,FlagRetur,UOMID,Note2,Modal,Komisi,FGTampil,FgPPh,PPh) '
           +'SELECT '''+quMainSaleID.AsString+''',A.ItemID,B.ItemName,A.Price,'''+sDGPj+''','
           +'A.Qty-ISNULL((SELECT SUM(X.Qty) FROM ARTrPenjualanDt X inner join ARtrPenjualanHd Y on X.SaleID=Y.SaleID '
           +'Where Y.SOID=A.POID AND X.ItemID=A.ItemID),0) as Qty,GetDate(),'''+dmMain.UserId+''', '
           +'''T'',B.UOMID,A.keterangan,0,ISNULL(Bagasi,0),''Y'',''P'',0 '
           +'FROM ARTrPurchaseOrderDt A INNER JOIN INMsItem B on A.ItemID=B.ItemID '
           +'WHERE A.POID='''+quMainSOID.AsString+''' ');
        ExecSQL;
      end;
      quDetil.Requery();
      with quAct1,SQL do
      begin
        Close;Clear;
        Add('INSERT AllItem (VoucherNo,Transdate,WarehouseID,FgTrans,ItemID,Qty,CurrId,Price,ModuleID,TempField,TempField2,Rate,SalesID,Komisi)');
        Add('SELECT A.SaleID,A.Transdate,B.WarehouseID,55,B.ItemID,B.Qty,A.CurrID,B.Price,''AR'',A.CustID,'
           +'CASE WHEN C.CustType=''U'' THEN ''USER-''+C.CustName ELSE ''DEALER-''+CustName END,A.Rate,A.SalesID,B.Komisi '
           +'FROM ARTrPenjualanHd A INNER JOIN ARTrPenjualanDt B ON A.SaleID=B.SaleID '
           +'INNER JOIN ARMsCustomer C ON A.CustID=C.CustID WHERE A.SaleID='''+quMainSaleID.AsString+''' ');
        ExecSQL;
      end;
      quTotal.Requery();
      UpdateTTlH;
    end else
    begin
      quTotal.Requery();
      UpdateTTlH;
      quDetil.Append;
    end;
  end else
  begin
    DataDetail;
    UpdateTTlH;
  end;

  StatusBaru := 'Lama';
end;

procedure TfmARTrPenjualanIDR.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Transaksi Penjualan';
       SQLString := 'SELECT A.SaleID as Nota_Penjualan,A.TaxID as Faktur_Pajak, '
                   +'Convert(varchar(10),TransDate,103) as Tanggal,A.SOID as No_SO,A.POID as No_PO,CustName as Pelanggan,'
                   +'C.SalesName as Sales,B.Email as NPWP,A.CurrID as Valuta,'
                   +'ISNULL(CASE WHEN A.CurrID=''IDR'' THEN 0 ELSE A.Rate END,0) as Rate,'
                   +'ISNULL(CASE WHEN A.CurrID=''IDR'' THEN 0 ELSE StPj END,0) as DPP_USD,'
                   +'ISNULL(CASE WHEN A.CurrID=''IDR'' THEN 0 ELSE StPj*0.1 END,0) as PPN_USD,'
                   +'ISNULL(CASE WHEN A.CurrID=''IDR'' THEN 0 ELSE TTLPj END,0) as Total_USD,'
                   +'ISNULL(CASE WHEN A.CurrID=''IDR'' THEN StPj ELSE StPj*Rate END,0) as DPP_IDR,'
                   +'ISNULL(CASE WHEN A.CurrID=''IDR'' THEN StPj*0.1 ELSE StPj*0.1*Rate END,0) as PPN_IDR,'
                   +'ISNULL(CASE WHEN A.CurrID=''IDR'' THEN TTLPj ELSE TTLPj*Rate END,0) as Total_IDR '
                   +'FROM ARTrPenjualanHd A INNER JOIN ARMsCustomer B ON A.CustID = B.CustID '
                   +'INNER JOIN ARMsSales C ON A.SalesID=C.SalesID WHERE '+FSQLWhere
                   +' AND A.FgForm='''+StatusForm+''' ORDER BY SaleID ';
       if ShowModal = MrOK then
       begin
         quMain.Locate('SaleID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenjualanIDR.dxButton1Click(Sender: TObject);
var sTotal : Currency;
    iPrint : Integer;
    Hari,Bulan,Tahun,Tanggal : string;
begin
  inherited;
  If (Self.quMain.State = dsEdit) or (Self.quMain.State = dsInsert) or
     (Self.quDetil.State = dsEdit) or (Self.quDetil.State = dsInsert) or
     (Self.quSN.State = dsEdit) or (Self.quSN.State = dsInsert) then
  begin
    ShowMessage('Data Belum disimpan');
    Abort;
  end;

  if quTotalGT.AsCurrency < 0 then
  begin
    ShowMessage('Sisa Nota harus lebih besar dari 0 (NOL)');
    Abort;
  end;

  with quAct3,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(A.Qty),0) as Jumlah, (SELECT COUNT(X.SNID) FROM ARTrPenjualanSN X WHERE X.SaleID=A.SaleID) as Total '
       +'FROM ARTrPenjualanDT A WHERE A.SaleID='''+quMainSaleID.AsString+''' GROUP BY A.SaleID');
    Open;
  end;
  if quAct3.FieldByName('Jumlah').AsInteger <> quAct3.FieldByName('Total').AsInteger then
  begin
    ShowMessage('Terjadi kesalahan dalam prosedur input data. Coba cek SN apakah sudah lengkap');
    Abort;
  end;

  with quAct,SQL do
  begin
     Close;Clear;
     Add(' SELECT ISNULL(ROUND(TTLPj,0),0) as TTLPj FROM ArTrPenjualanHD Where SaleId='''+quMainSaleID.AsString+'''');
     Open;
  end;
  if quAct.FieldByName('TTLPj').AsCurrency = 0 then
    stotal := quTotalGT.AsCurrency
  else
    stotal := quAct.FieldByName('TTLPj').AsCurrency;
  iPrint := Printer.Printers.IndexOf(sDPB);
  if RbCetak.ItemIndex = 0 then
  Begin
     {
     if quMainTaxId.AsString='' then
     begin
       ShowMessage('No FPS Belum ada, tidak bisa cetak invoice');
       Abort;
     end;
     }
     with TfmQRRptInvPenjualan.Create(Self) do
     try
       MyReport.PrinterSettings.PrinterIndex := iPrint;
       QRMemo1.Lines.Text := sCompanyAddress;

       if quMainFgRek.AsString='T' then QRLabel18.Enabled := False;

       if TRIM(quMainPOID.AsString) = '' then
       begin
         QRLabel30.Enabled := False; QRLabel31.Enabled := False; QRDBText18.Enabled := False;
       end;
       QRLabel23.Caption := 'PPN :';
       GroupFooterBand1.Height := 0;
       QRLabel4.Caption := 'INVOICE';
       QRLabel21.Enabled := False;
       if RgLembar.ItemIndex = 0 then
         QRLabel21.Caption := 'Lembar Asli - Untuk Pelanggan'
       else
         QRLabel21.Caption := 'Lembar Copy - Untuk Document';

       if cbHarga.Checked then
         sHarga := 'Y'
       else
         sHarga := 'T';

       if CBSpek.Checked then
         ChildBand1.Enabled := True
       else
         ChildBand1.Enabled := False;
       if UpperCase(quMainCurrId.Value) ='IDR' then
       begin
          qlbCurr1.Caption := 'Rp ';
          qlbCurr2.Caption := 'Rp ';
          qlbCurr3.Caption := 'Rp ';
          qlbCurr4.Caption := 'Rp ';
       end;
       if UpperCase(quMainCurrId.Value) ='USD' then
       begin
          qlbCurr1.Caption := 'US ';
          qlbCurr2.Caption := 'US ';
          qlbCurr3.Caption := 'US ';
          qlbCurr4.Caption := 'US ';
       end;

       with qu001,SQL do
       Begin
         Close;Clear;
         add(' SELECT A.FgTax,B.SalesName as Sales,''INV-''+A.SaleId as SaleID,A.SaleID as Nota,A.TaxID,A.CurrId,A.Discount,isnull(DP,0) as DP'
            +' ,isnull((TtlPj-DP),0) as GT,isnull(TTLPj,0) as Total,Convert(varchar(12),Transdate,106) as Tgl,A.CustId,'
            +' CASE WHEN ISNULL(A.Actor,'''')='''' THEN C.CustName ELSE C.CustName+'' (''+A.Actor+'')'' END as Custname,'
            +' C.Address as Address,C.City,A.Alamat,A.POID,'
            +' CASE WHEN ISNULL(JatuhTempo,0) > 0 THEN CONVERT(VARCHAR(12),DATEADD(DAY,JatuhTempo,Transdate),106)+'' (''+CAST(JatuhTempo as VARCHAR(3))+'' Hari)'' '
            +' ELSE CONVERT(VARCHAR(12),DATEADD(DAY,JatuhTempo,Transdate),106) END as JthTempo,'
            +' CASE WHEN C.FgKoma = ''T'' THEN ''Y'' ELSE ''T'' END as Status '
            +' FROM ARTrPenjualanHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId '
            +' INNER JOIN ArMsSales B ON A.SalesID=B.SalesID '
            +' WHERE A.SaleId='''+quMainSaleID.AsString+'''');
         Open;
       End;

       if StatusForm = 'DP' then
       begin
         With qu002,SQL do
         Begin
           Close;Clear;
           add('select A.ItemID,A.ItemName,ISNULL(A.Qty,0) as Qty,ISNULL(A.Price+A.Komisi,0) as Price,'
              +'ISNULL(A.Qty*(A.Price+A.Komisi),0) as total,B.UOMID,B.PartNo,B.Note '
              +'from ARTrPerformaDt A INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
              +'where A.PerformaID='''+quMainKontransBrgID.AsString+''' Order By A.ItemID');
           Open;
         End;
       end else
       begin
         if quMainFGDetail.AsString='T' then
         begin

         With qu002,SQL do
         Begin
           Close;Clear;
           add('SELECT Keterangan as ItemName,''Lot'' as UOMId,1.00 as Qty,ISNULL(StPj,0) as Price,'''' as Note,'''' as ItemID '
              +'FROM ARTrPenjualanHd WHERE SaleId='''+quMainSaleID.AsString+'''  ');
           Open;
         End;

         end else
         begin

         With qu002,SQL do
         Begin
           Close;Clear;
           add('SELECT Note as ItemName,UOMId,ISNULL(Qty,0) as Qty,ISNULL(Price+Komisi,0) as Price,Note2 as Note,ItemID '
              +'FROM ARTrPenjualanDt WHERE SaleId='''+quMainSaleID.AsString+''' AND ISNULL(FgTampil,''Y'') IN (''Y'',''I'') ORDER BY Urut');
           Open;
         End;

         end;
       end;

       if quMainPOID.AsString = '' then
       begin
         QRLabel31.Enabled := False;
         QRLabel32.Enabled := False;
         QRDBText18.Enabled := False;
       end;

       laSubTotal.Caption := quTotalSubTotal.AsString;
       laGT.Caption := quTotalGT.AsString;
       laSC.Caption := quTotalPajak.AsString;
       laDP.Caption := quMainDP.AsString;

       if quMainDP.AsCurrency = 0 then
       begin
         QRLabel7.Enabled := False; qlbCurr2.Enabled := False; laDP.Enabled := False;
         QRLabel23.Top := 17; qlbCurr3.Top := 17; laSC.Top := 17;
         QRLabel20.Top := 36; qlbCurr4.Top := 36; laGT.Top := 36;
         QRShape4.Top := 34;
       end;

     if sCetak = '0' then
       MyReport.PreviewModal
     else
       MyReport.Print;

     finally
        free;
     end;
    with quAct,SQL do
    begin
       close;clear;
       Add('Update ArTrPenjualanHD set FgLunas=''S'' where SaleID=:SaleID');
       with Parameters do
       begin
         ParamByName('SaleID').Value  := quMainSaleID.AsString;
       end;
       ExecSQL;
    end;
  End;

  if RbCetak.ItemIndex = 1 then
  Begin
    if StatusForm = 'DP' then
    begin
      pesan('Invoice Uang Muka tidak perlu cetak Surat Jalan');
      Abort;
    end else
    begin
     with TfmQRRptInvPenjualan.Create(Self) do
     try
       MyReport.PrinterSettings.PrinterIndex := iPrint;
       QRMemo1.Lines.Text := sCompanyAddress;

       if quMainFgRek.AsString='T' then QRLabel18.Enabled := False;
       
       if cbHarga.Checked then
         sHarga := 'Y'
       else
         sHarga := 'T';
       if TRIM(quMainPOID.AsString) = '' then
       begin
         QRLabel30.Enabled := False; QRLabel31.Enabled := False; QRDBText18.Enabled := False;
       end;
       QRLabel21.Enabled := False;
       if RgLembar.ItemIndex = 0 then
         QRLabel21.Caption := 'Lembar Asli - Untuk Pelanggan'
       else
         QRLabel21.Caption := 'Lembar Copy - Untuk Document';
       QRLabel4.Caption := 'Delivery Order';
       QRLabel17.Caption := 'Barang - Barang sudah diterima dengan baik dan benar';
       QRLabel9.Enabled := False; QRLabel7.Enabled := False;
       QRDBText15.Enabled := False; QRExpr1.Enabled := False;
       QRLabel18.Enabled := False; QRLabel10.Enabled := False;
       QRLabel20.Enabled := False; QRLabel23.Enabled := False;
       laSubTotal.Enabled := False; laGT.Enabled := False; laDP.Enabled := False; laSC.Enabled := False;
       qlbCurr1.Enabled := False; qlbCurr2.Enabled := False; qlbCurr3.Enabled := False; qlbCurr4.Enabled := False;
       QRShape4.Enabled := False; qlbValuta.Enabled := False;
       QRLabel22.Enabled := True; QRLabel24.Enabled := True;
       QRLabel8.Left := QRLabel8.Left + 126;
       QRDBText12.Left := QRDBText12.Left + 126; QRDBText14.Left := QRDBText14.Left + 126;
       QRLabel16.Enabled := False; QRDBText5.Enabled := False;

       with qu001,SQL do
       Begin
         Close;Clear;
         add(' SELECT A.FgTax,B.SalesName as Sales,''DO-''+A.SaleId as SaleID,A.SaleID as Nota,A.TaxID,A.CurrId,A.Discount,isnull(DP,0) as DP'
            +' ,isnull((TtlPj-DP),0) as GT,isnull(TTLPj,0) as Total,Convert(varchar(12),KMKDate,106) as Tgl,A.CustId,'
            +' CASE WHEN ISNULL(A.Actor,'''')='''' THEN C.CustName ELSE C.CustName+'' (''+A.Actor+'')'' END as Custname,'
            +' C.Address as Address,C.City,A.Alamat,A.POID,'
            +' CASE WHEN ISNULL(JatuhTempo,0) > 0 THEN CONVERT(VARCHAR(12),DATEADD(DAY,JatuhTempo,Transdate),106)+'' (''+CAST(JatuhTempo as VARCHAR(3))+'' Hari)'' '
            +' ELSE CONVERT(VARCHAR(12),DATEADD(DAY,JatuhTempo,Transdate),106) END as JthTempo,'
            +' CASE WHEN C.FgKoma = ''T'' THEN ''Y'' ELSE ''T'' END as Status '
            +' FROM ARTrPenjualanHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId '
            +' INNER JOIN ArMsSales B ON A.SalesID=B.SalesID '
            +' WHERE A.SaleId='''+quMainSaleID.AsString+'''');
         Open;
       End;

       With qu002,sql do
       Begin
         Close;Clear;
         add(' Select A.Urut,A.ItemId,A.Note as ItemName,A.UOMId,A.Qty,A.Price+A.Komisi as Price,A.Note2 as Note,ItemID FROM ARTrPenjualanDt A'
            +' WHERE A.saleId='''+quMainSaleID.AsString+''' AND ISNULL(A.FgTampil,''Y'') IN (''Y'',''S'') ORDER BY A.Urut');
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
  End;

  if RbCetak.ItemIndex = 2 then
  Begin
     with TfmARQRRptKwitansi.Create(Self) do
     try
       MyReport.PrinterSettings.PrinterIndex := iPrint;

       if quMainFgRek.AsString='T' then QRLabel1.Enabled := False;

       qrlabel47.Enabled := False;
       if RgLembar.ItemIndex = 0 then
         QRLabel47.Caption := 'Lembar Asli - Untuk Pelanggan'
       else
         QRLabel47.Caption := 'Lembar Copy - Untuk Document';
       {with quAct1,SQL do
       begin
         Close;Clear;
         Add('SELECT ISNULL(ROUND(TTLPj,0),0) as Total FROM ARTrPenjualanHd WHERE SaleID='''+quMainSaleID.AsString+''' ');
         Open;
       end;}
       qlbTerbilang.Caption := convert(FormatFloat(sEditFormat,sTotal))+ 'rupiah #';
       qrlPeriode.Caption := 'Jakarta, '+FormatDateTime('d mmmm yyyy',quMainTransDate.AsDateTime);

       with qu001,SQL do
       Begin
         Close;Clear;
         add(' SELECT A.SaleId as KonInvPelID, '
            +' CASE WHEN ISNULL(A.Actor,'''')='''' THEN C.CustName ELSE C.CustName+'' (''+A.Actor+'')'' END as Custname,'
            +' C.Address as Address,A.Keterangan as Keterangan,A.TTLPj as Total, '
            +' CASE WHEN C.FgKoma = ''T'' THEN ''Y'' ELSE ''T'' END as Status,A.Keterangan as Note '
            +' FROM ARTrPenjualanHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId '
            +' INNER JOIN ArMsSales B ON A.SalesID=B.SalesID '
            +' WHERE A.SaleId='''+quMainSaleID.AsString+''' ');
         Open;
       End;

       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;

      finally
        free;
     end;
  End;

  if RbCetak.ItemIndex = 3 then
  Begin
     with quAct3,SQL do
     begin
       Close;Clear;
       Add('SELECT CASE WHEN DATENAME(dw, '''+Formatdatetime('YYYY-mm-dd',quMainTransdate.ASDatetime)+''')=''Sunday'' THEN ''Minggu'' '
          +'            WHEN DATENAME(dw, '''+Formatdatetime('YYYY-mm-dd',quMainTransdate.ASDatetime)+''')=''Monday'' THEN ''Senin'' '
          +'            WHEN DATENAME(dw, '''+Formatdatetime('YYYY-mm-dd',quMainTransdate.ASDatetime)+''')=''Tuesday'' THEN ''Selasa'' '
          +'            WHEN DATENAME(dw, '''+Formatdatetime('YYYY-mm-dd',quMainTransdate.ASDatetime)+''')=''Wednesday'' THEN ''Rabu'' '
          +'            WHEN DATENAME(dw, '''+Formatdatetime('YYYY-mm-dd',quMainTransdate.ASDatetime)+''')=''Thursday'' THEN ''Kamis'' '
          +'            WHEN DATENAME(dw, '''+Formatdatetime('YYYY-mm-dd',quMainTransdate.ASDatetime)+''')=''Friday'' THEN ''Jumat'' ELSE ''Sabtu'' END as hari, '
          +'CASE WHEN '''+Formatdatetime('MM',quMainTransdate.ASDatetime)+'''=''01'' THEN ''Januari'' '
          +'     WHEN '''+Formatdatetime('MM',quMainTransdate.ASDatetime)+'''=''02'' THEN ''Februari'' '
          +'     WHEN '''+Formatdatetime('MM',quMainTransdate.ASDatetime)+'''=''03'' THEN ''Maret'' '
          +'     WHEN '''+Formatdatetime('MM',quMainTransdate.ASDatetime)+'''=''04'' THEN ''April'' '
          +'     WHEN '''+Formatdatetime('MM',quMainTransdate.ASDatetime)+'''=''05'' THEN ''Mei'' '
          +'     WHEN '''+Formatdatetime('MM',quMainTransdate.ASDatetime)+'''=''06'' THEN ''Juni'' '
          +'     WHEN '''+Formatdatetime('MM',quMainTransdate.ASDatetime)+'''=''07'' THEN ''Juli'' '
          +'     WHEN '''+Formatdatetime('MM',quMainTransdate.ASDatetime)+'''=''08'' THEN ''Agustus'' '
          +'     WHEN '''+Formatdatetime('MM',quMainTransdate.ASDatetime)+'''=''09'' THEN ''September'' '
          +'     WHEN '''+Formatdatetime('MM',quMainTransdate.ASDatetime)+'''=''10'' THEN ''Oktober'' '
          +'     WHEN '''+Formatdatetime('MM',quMainTransdate.ASDatetime)+'''=''11'' THEN ''November'' ELSE ''Desember'' END as Bulan ');
       Open;
     end;
     Hari := quAct3.FieldByName('hari').AsString;
     Tanggal := convert2(FormatFloat(sEditFormat,StrToInt(Formatdatetime('D',quMainTransdate.ASDatetime))));
     Bulan := quAct3.FieldByName('bulan').AsString;
     Tahun := convert2(FormatFloat(sEditFormat,StrToInt(Formatdatetime('YYYY',quMainTransdate.ASDatetime))));

     with TfmARQRRptBAST.Create(Self) do
     try
       qrLabel3.Caption := 'No : MAP-BAST'+RightStr(quMainSaleID.AsString,11);
       qrLabel17.Caption := '     Pada '+Hari+' Tanggal '+Tanggal+' Bulan '+Bulan+' Tahun '+Tahun+' ('+Formatdatetime('d-M-yyyy',quMainTransdate.ASDatetime)+'), '
                           +'Rincian barang sesuai dengan Nomor ID Paket '+quMainPOID.ASString+' telah diterima oleh '+quMainLuCustName.ASString+' '
                           +'dengan baik, benar, dan lengkap. Dengan rincian sebagai berikut :';
       if UpperCase(quMainCurrId.Value) ='IDR' then
       begin
          qlbCurr1.Caption := 'Rp ';
          qlbCurr2.Caption := 'Rp ';
          qlbCurr3.Caption := 'Rp ';
          qlbCurr4.Caption := 'Rp ';
       end;
       if UpperCase(quMainCurrId.Value) ='USD' then
       begin
          qlbCurr1.Caption := 'US ';
          qlbCurr2.Caption := 'US ';
          qlbCurr3.Caption := 'US ';
          qlbCurr4.Caption := 'US ';
       end;

       if cbHarga.Checked then
         sHarga := 'Y'
       else
         sHarga := 'T';

       laSubTotal.Caption := quTotalSubTotal.AsString;
       laGT.Caption := quTotalGT.AsString;
       laSC.Caption := quTotalPajak.AsString;
       laDP.Caption := quMainDP.AsString;
       QRLabel23.Caption := 'PPN :';
       if quMainDP.AsCurrency = 0 then
       begin
         QRLabel7.Enabled := False; qlbCurr2.Enabled := False; laDP.Enabled := False;
         QRLabel23.Top := 17; qlbCurr3.Top := 17; laSC.Top := 17;
         QRLabel20.Top := 36; qlbCurr4.Top := 36; laGT.Top := 36;
         QRShape4.Top := 34;
       end;

       with qu001,SQL do
       Begin
         Close;Clear;
         add(' SELECT A.FgTax,B.SalesName as Sales,''DO-''+A.SaleId as SaleID,A.SaleID as Nota,A.TaxID,A.CurrId,A.Discount,isnull(DP,0) as DP'
            +' ,isnull((TtlPj-DP),0) as GT,isnull(TTLPj,0) as Total,Convert(varchar(12),Transdate,106) as Tgl,A.CustId,'
            +' CASE WHEN ISNULL(A.Actor,'''')='''' THEN C.CustName ELSE C.CustName+'' (''+A.Actor+'')'' END as Custname,'
            +' C.Address as Address,C.City,A.Alamat,A.POID,A.PPK,'
            +' CASE WHEN ISNULL(JatuhTempo,0) > 0 THEN CONVERT(VARCHAR(12),DATEADD(DAY,JatuhTempo,Transdate),106)+'' (''+CAST(JatuhTempo as VARCHAR(3))+'' Hari)'' '
            +' ELSE CONVERT(VARCHAR(12),DATEADD(DAY,JatuhTempo,Transdate),106) END as JthTempo,'
            +' CASE WHEN C.FgKoma = ''T'' THEN ''Y'' ELSE ''T'' END as Status '
            +' FROM ARTrPenjualanHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId '
            +' INNER JOIN ArMsSales B ON A.SalesID=B.SalesID '
            +' WHERE A.SaleId='''+quMainSaleID.AsString+'''');
         Open;
       End;

       With qu002,sql do
       Begin
         Close;Clear;
         add(' Select A.Urut,A.ItemId,A.Note as ItemName,A.UOMId,A.Qty,A.Price+A.Komisi as Price,A.Note2 as Note,ItemID FROM ARTrPenjualanDt A'
            +' WHERE A.saleId='''+quMainSaleID.AsString+''' AND ISNULL(A.FgTampil,''Y'') IN (''Y'',''S'') ORDER BY A.Urut');
         Open;
       End;

       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;
     finally
       free;
     end;
     {with TfmQRRptInvPenjualan.Create(Self) do
     try
       MyReport.PrinterSettings.PrinterIndex := iPrint;

       if UpperCase(quMainCurrId.Value) ='IDR' then
       begin
          qlbCurr1.Caption := 'Rp ';
          qlbCurr2.Caption := 'Rp ';
          qlbCurr3.Caption := 'Rp ';
          qlbCurr4.Caption := 'Rp ';
       end;
       if UpperCase(quMainCurrId.Value) ='USD' then
       begin
          qlbCurr1.Caption := 'US ';
          qlbCurr2.Caption := 'US ';
          qlbCurr3.Caption := 'US ';
          qlbCurr4.Caption := 'US ';
       end;

       laSubTotal.Caption := quTotalSubTotal.AsString;
       laGT.Caption := quTotalGT.AsString;
       laSC.Caption := quTotalPajak.AsString;
       laDP.Caption := quMainDP.AsString;
       if quMainDP.AsCurrency = 0 then
       begin
         QRLabel7.Enabled := False; qlbCurr2.Enabled := False; laDP.Enabled := False;
         QRLabel23.Top := 17; qlbCurr3.Top := 17; laSC.Top := 17;
         QRLabel20.Top := 36; qlbCurr4.Top := 36; laGT.Top := 36;
         QRShape4.Top := 34;
       end;

       if TRIM(quMainPOID.AsString) = '' then
       begin
         QRLabel30.Enabled := False; QRLabel31.Enabled := False; QRDBText18.Enabled := False;
       end;
       QRLabel21.Enabled := True;
       if RgLembar.ItemIndex = 0 then
         QRLabel21.Caption := 'Lembar Asli - Untuk Pelanggan'
       else
         QRLabel21.Caption := 'Lembar Copy - Untuk Document';
       QRLabel4.Caption := 'BERITA ACARA SERAH TERIMA';
       QRLabel4.Top := 110; QRLabel4.Left := 127; QRLabel4.AutoSize := True; QRLabel4.Alignment := taCenter; QRLabel4.AlignToBand := True;
       QRLabel17.Caption := 'Demikianlah berita acara serah terima barang, dan atas kerja sama yang baik ini  kami ucapkan terimakasih.';
//       QRLabel9.Enabled := False; QRLabel10.Enabled := False; QRLabel8.Left := QRLabel8.Left + 126;
//       QRDBText15.Enabled := False; QRExpr1.Enabled := False; QRDBText12.Left := QRDBText12.Left + 126; QRDBText14.Left := QRDBText14.Left + 126;
//       qlbValuta.Enabled := False; QRLabel7.Enabled := False; QRLabel23.Enabled := False; QRLabel20.Enabled := False;
//       qlbCurr1.Enabled := False; qlbCurr2.Enabled := False; qlbCurr3.Enabled := False; qlbCurr4.Enabled := False;
//       laSubTotal.Enabled := False; laGT.Enabled := False; laDP.Enabled := False; laSC.Enabled := False; QRShape4.Enabled := False;
       QRLabel18.Enabled := False; QRLabel21.Enabled := False;
       QRShape5.Enabled := False;
       QRLabel22.Enabled := True; QRLabel24.Enabled := True; QRLabel22.Left := 355; QRLabel24.Left := 337;
       QRLabel16.Enabled := False; QRDBText5.Enabled := False;
       QRLabel29.Enabled := False; QRLabel3.Enabled := False; QRLabel32.Enabled := False;
       QRLabel30.Enabled := False; QRLabel19.Enabled := False; QRLabel26.Enabled := False;
       QRLabel31.Enabled := False; QRLabel1.Enabled := False;
       QRDBText13.Enabled := False; QRDBText3.Enabled := False;
       QRDBText18.Enabled := False; QRDBText4.Enabled := False; QRDBText1.Enabled := False;
       QRLabel14.Enabled := True; ColumnHeaderBand1.Height := 240; QRShape2.Top := 214;
       QRLabel6.Top := 215; QRLabel8.Top := 215; QRLabel9.Top := 215; QRLabel10.Top := 215;
       QRLabel5.Alignment := taCenter; QRLabel5.Top := 149; QRLabel5.AlignToBand := True;
       QRLabel5.Caption := 'MAP-BAST'+RightStr(quMainSaleID.AsString,11);
       QRLabel14.Caption := '      Pada Tanggal '+FormatDateTime('DD/MM/YYYY',quMainTransDate.AsDateTime)+' Rincian Barang '+quMainPOID.AsString
                            +' Telah diterima oleh '+quMainLuCustName.AsString+' dengan baik, benar dan lengkap. Dengan Rincian sebagai berikut :';

       with qu001,SQL do
       Begin
         Close;Clear;
         add(' SELECT A.FgTax,B.SalesName as Sales,''DO-''+A.SaleId as SaleID,A.SaleID as Nota,A.TaxID,A.CurrId,A.Discount,isnull(DP,0) as DP'
            +' ,isnull((TtlPj-DP),0) as GT,isnull(TTLPj,0) as Total,Convert(varchar(12),Transdate,106) as Tgl,A.CustId,'
            +' CASE WHEN ISNULL(A.Actor,'''')='''' THEN C.CustName ELSE C.CustName+'' (''+A.Actor+'')'' END as Custname,'
            +' C.Address as Address,C.City,A.Alamat,A.POID,'
            +' CASE WHEN ISNULL(JatuhTempo,0) > 0 THEN CONVERT(VARCHAR(12),DATEADD(DAY,JatuhTempo,Transdate),106)+'' (''+CAST(JatuhTempo as VARCHAR(3))+'' Hari)'' '
            +' ELSE CONVERT(VARCHAR(12),DATEADD(DAY,JatuhTempo,Transdate),106) END as JthTempo,'
            +' CASE WHEN C.FgKoma = ''T'' THEN ''Y'' ELSE ''T'' END as Status '
            +' FROM ARTrPenjualanHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId '
            +' INNER JOIN ArMsSales B ON A.SalesID=B.SalesID '
            +' WHERE A.SaleId='''+quMainSaleID.AsString+'''');
         Open;
       End;

       With qu002,sql do
       Begin
         Close;Clear;
         add(' Select A.Urut,A.ItemId,A.Note as ItemName,A.UOMId,A.Qty,A.Price+A.Komisi as Price,A.Note2 as Note,ItemID FROM ARTrPenjualanDt A'
            +' WHERE A.saleId='''+quMainSaleID.AsString+''' ORDER BY A.Urut');
         Open;
       End;

       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;

      finally
        free;
     end;}
  End;

  if RbCetak.ItemIndex = 4 then
  Begin
     with TfmQRRptBayarPeriksa.Create(Self) do
     try
       MyReport.PrinterSettings.PrinterIndex := iPrint;
       QRLabel6.Top := 400; qrlPeriode.Caption := 'Jakarta, '+FormatDateTime('DD MMMM YYYY',quMainKMKDate.AsDateTime);
       QRLabel10.Enabled := False; QRLabel11.Enabled := False; QRLabel12.Enabled := False;
       QRLabel13.Enabled := False; QRLabel14.Enabled := False; QRLabel9.Enabled := False;
       qrlPerihal.Caption := ': Permohonan Pemeriksaan Barang/Pekerjaan';
       QRLabel6.Top := 348;
       qlbNote1.Caption := 'Berkenaan dengan telah diselesaikannya pekerjaan '+quMainKeterangan2.AsString
                          +' sesuai dengan Surat Pesanan (SP) No: '+quMainNoSP.AsString+', tanggal '+FormatDateTime('DD MMMM YYYY',quMainTglSP.AsDateTime)
                          +' dengan No Paket '+quMainPOID.AsString
                          +' maka dengan ini kami mohonkan kepada Pejabat Pembuat Komitmen (PPK) '+quMainLuCustName.AsString+' untuk mengadakan pemeriksaan terhadap hasil pekerjaan tersebut';
//       qlbNote2.Caption := 'maka dengan ini kami mohonkan kepada Pejabat Pembuat Komitmen (PPK) '+quMainLuCustName.AsString+' untuk mengadakan pemeriksaan terhadap hasil pekerjaan tersebut';

       with qu001,SQL do
       Begin
         Close;Clear;
         add('SELECT '': ''+LEFT(SaleID,3)+RIGHT(SaleID,11) as NoSurat, C.Address,C.Custname,'
            +'NoSP,CONVERT(VARCHAR(10),TglSP,103) as TglSP,A.POID '
            +'FROM ARTrPenjualanHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId '
            +'WHERE A.SaleId='''+quMainSaleID.AsString+''' ');
         Open;
       End;

       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;

      finally
        free;
     end;
  End;

  if RbCetak.ItemIndex = 5 then
  Begin
     with TfmQRRptBayarPeriksa.Create(Self) do
     try
       MyReport.PrinterSettings.PrinterIndex := iPrint;
       qrlPeriode.Caption := 'Jakarta, '+FormatDateTime('DD MMMM YYYY',quMainTransDate.AsDateTime);
       QRLabel10.Enabled := True; QRLabel11.Enabled := True; QRLabel12.Enabled := True;
       QRLabel13.Enabled := True; QRLabel14.Enabled := True; QRLabel9.Enabled := True;
       QRDBText2.Enabled := False; qlbNote2.Enabled := True;
       qrlPerihal.Caption := ': Permohonan Pembayaran';
       qlbNote1.Caption := 'Dengan Hormat,'+#13
                          +'Melalui surat ini kami sampaikan bahwa telah diselesaikannya Paket '+quMainKeterangan2.AsString
                          +' sesuai dengan Surat Pesanan (SP) No: '+quMainNoSP.AsString+', tanggal '+FormatDateTime('DD MMMM YYYY',quMainTglSP.AsDateTime)
                          +' dengan No Paket '+quMainPOID.AsString
                          +' yang telah diserahkan kepada Pejabat Pembuat Komitmen Bendahara Pengeluaran '+quMainActor.AsString;
       qlbNote2.Caption := 'Sehubungan dengan hal tersebut, maka dengan ini kami mengajukan permohonan untuk dilakukan pembayaran tagihan atas Kwitansi Nomor '+quMainSaleID.AsString
                          +' tertanggal '+FormatDateTime('DD MMMM YYYY',quMainTransDate.AsDateTime)+' sebesar '+convert(FormatFloat(sEditFormat,sTotal))+'rupiah # ke rekening sebagai berikut';

       with qu001,SQL do
       Begin
         Close;Clear;
         add('SELECT '': ''+LEFT(SaleID,3)+RIGHT(SaleID,11) as NoSurat, C.Address,C.Custname,'
            +'NoSP,CONVERT(VARCHAR(10),TglSP,103) as TglSP,A.POID '
            +'FROM ARTrPenjualanHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId '
            +'WHERE A.SaleId='''+quMainSaleID.AsString+''' ');
         Open;
       End;

       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;

      finally
        free;
     end;
  End;

  if RbCetak.ItemIndex = 6 then
  Begin
     with quAct3,SQL do
     begin
       Close;Clear;
       Add('SELECT CASE WHEN DATENAME(dw, '''+Formatdatetime('YYYY-mm-dd',quMainTransdate.ASDatetime)+''')=''Sunday'' THEN ''Minggu'' '
          +'            WHEN DATENAME(dw, '''+Formatdatetime('YYYY-mm-dd',quMainTransdate.ASDatetime)+''')=''Monday'' THEN ''Senin'' '
          +'            WHEN DATENAME(dw, '''+Formatdatetime('YYYY-mm-dd',quMainTransdate.ASDatetime)+''')=''Tuesday'' THEN ''Selasa'' '
          +'            WHEN DATENAME(dw, '''+Formatdatetime('YYYY-mm-dd',quMainTransdate.ASDatetime)+''')=''Wednesday'' THEN ''Rabu'' '
          +'            WHEN DATENAME(dw, '''+Formatdatetime('YYYY-mm-dd',quMainTransdate.ASDatetime)+''')=''Thursday'' THEN ''Kamis'' '
          +'            WHEN DATENAME(dw, '''+Formatdatetime('YYYY-mm-dd',quMainTransdate.ASDatetime)+''')=''Friday'' THEN ''Jumat'' ELSE ''Sabtu'' END as hari, '
          +'CASE WHEN '''+Formatdatetime('MM',quMainTransdate.ASDatetime)+'''=''01'' THEN ''Januari'' '
          +'     WHEN '''+Formatdatetime('MM',quMainTransdate.ASDatetime)+'''=''02'' THEN ''Februari'' '
          +'     WHEN '''+Formatdatetime('MM',quMainTransdate.ASDatetime)+'''=''03'' THEN ''Maret'' '
          +'     WHEN '''+Formatdatetime('MM',quMainTransdate.ASDatetime)+'''=''04'' THEN ''April'' '
          +'     WHEN '''+Formatdatetime('MM',quMainTransdate.ASDatetime)+'''=''05'' THEN ''Mei'' '
          +'     WHEN '''+Formatdatetime('MM',quMainTransdate.ASDatetime)+'''=''06'' THEN ''Juni'' '
          +'     WHEN '''+Formatdatetime('MM',quMainTransdate.ASDatetime)+'''=''07'' THEN ''Juli'' '
          +'     WHEN '''+Formatdatetime('MM',quMainTransdate.ASDatetime)+'''=''08'' THEN ''Agustus'' '
          +'     WHEN '''+Formatdatetime('MM',quMainTransdate.ASDatetime)+'''=''09'' THEN ''September'' '
          +'     WHEN '''+Formatdatetime('MM',quMainTransdate.ASDatetime)+'''=''10'' THEN ''Oktober'' '
          +'     WHEN '''+Formatdatetime('MM',quMainTransdate.ASDatetime)+'''=''11'' THEN ''November'' ELSE ''Desember'' END as Bulan ');
       Open;
     end;
     Hari := quAct3.FieldByName('hari').AsString;
     Tanggal := convert2(FormatFloat(sEditFormat,StrToInt(Formatdatetime('D',quMainTransdate.ASDatetime))));
     Bulan := quAct3.FieldByName('bulan').AsString;
     Tahun := convert2(FormatFloat(sEditFormat,StrToInt(Formatdatetime('YYYY',quMainTransdate.ASDatetime))));

     with TfmARQRRptBASTUF.Create(Self) do
     try
       if cbHarga.Checked then
         sHarga := 'Y'
       else
         sHarga := 'T';

       qrLabel3.Caption := 'No : '+RightStr(quMainSaleID.AsString,3)+'/MAP-BAUF/'+PeriodeRomawi(quMainTransDate.AsDateTime)+'/'+FormatDateTime('YYYY',quMainTransDate.AsDateTime);
       qrLabel17.Caption := 'Pada hari ini '+Hari+' Tanggal '+Tanggal+' Bulan '+Bulan+' Tahun '+Tahun+' ('+Formatdatetime('d-M-yyyy',quMainTransdate.ASDatetime)+') '
                           +'bertempat '+quMainLuCustName.ASString+' telah diadakan uji fungsi barang/jasa sebagai berikut :';

       with qu001,SQL do
       Begin
         Close;Clear;
         add(' SELECT A.FgTax,B.SalesName as Sales,''DO-''+A.SaleId as SaleID,A.SaleID as Nota,A.TaxID,A.CurrId,A.Discount,isnull(DP,0) as DP'
            +' ,isnull((TtlPj-DP),0) as GT,isnull(TTLPj,0) as Total,Convert(varchar(12),Transdate,106) as Tgl,A.CustId,'
            +' CASE WHEN ISNULL(A.Actor,'''')='''' THEN C.CustName ELSE C.CustName+'' (''+A.Actor+'')'' END as Custname,'
            +' C.Address as Address,C.City,A.Alamat,A.POID,A.PPK,'
            +' CASE WHEN ISNULL(JatuhTempo,0) > 0 THEN CONVERT(VARCHAR(12),DATEADD(DAY,JatuhTempo,Transdate),106)+'' (''+CAST(JatuhTempo as VARCHAR(3))+'' Hari)'' '
            +' ELSE CONVERT(VARCHAR(12),DATEADD(DAY,JatuhTempo,Transdate),106) END as JthTempo,'
            +' CASE WHEN C.FgKoma = ''T'' THEN ''Y'' ELSE ''T'' END as Status '
            +' FROM ARTrPenjualanHd A INNER JOIN ARMsCustomer C ON A.CustId=C.CustId '
            +' INNER JOIN ArMsSales B ON A.SalesID=B.SalesID '
            +' WHERE A.SaleId='''+quMainSaleID.AsString+'''');
         Open;
       End;

       With qu002,sql do
       Begin
         Close;Clear;
         add(' Select A.Urut,A.ItemId,A.Note as ItemName,A.UOMId,A.Qty,A.Price+A.Komisi as Price,A.Note2 as Note,ItemID FROM ARTrPenjualanDt A'
            +' WHERE A.saleId='''+quMainSaleID.AsString+''' AND ISNULL(A.FgTampil,''Y'') IN (''Y'',''S'') ORDER BY A.Urut');
         Open;
       End;

       if sCetak = '0' then
         MyReport.PreviewModal
       else
         MyReport.Print;
     finally
       free;
     end;
  End;
end;

procedure TfmARTrPenjualanIDR.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  CekRetur;
  Dp := quMainDP.value;
  custSbl := quMainCustID.Value;
end;

procedure TfmARTrPenjualanIDR.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if GroupUser <> 'admin' then
  begin
    if quMainFgLunas.AsString = 'S' then
    begin
      ShowMessage('Sudah pernah cetak tidak bisa dihapus');
      Abort;
    end;
  end;
  CekStatus;
  CekRetur;
  with quAct,SQL do
  begin
    Close;Clear;
    add(' UPDATE APTrPurchaseDtSN SET FgJual=''T'' WHERE SNID IN (SELECT SNID FROM ARTrPenjualanSn WHERE SaleID='''+quMainSaleID.AsString+''') ');
    ExecSQL;
  end;
  with quAct,SQL do
  begin
    Close;Clear;
    add(' Update APTrKonsinyasiDtSn SET FgJual=''T'' WHERE SNID IN (SELECT SNID FROM ARTrPenjualanSn WHERE SaleID='''+quMainSaleID.AsString+''') ');
    ExecSQL;
  end;

  DeleteFromAllMoney(quMainSaleID.AsString,'15');
  DeleteFromAllMoney(quMainSaleID.AsString,'18');
  DeleteFromAllMoney1(quMainSaleID.AsString,quMainSaleID.AsString,'51');
  DeleteFromAllItem(quMainSaleID.Value,55);
end;

procedure TfmARTrPenjualanIDR.quDetilBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  CekRetur;
  Hargasblm := quDetilPrice.Value;
end;

procedure TfmARTrPenjualanIDR.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if GroupUser <> 'admin' then
  begin
    if quMainFgLunas.AsString = 'S' then
    begin
      ShowMessage('Sudah pernah cetak tidak bisa dihapus');
      Abort;
    end;
  end;

  with quAct,SQL do
  begin
    Close;Clear;
    add(' UPDATE APTrPurchaseDtSN SET FgJual=''T'' WHERE ItemID='''+quDetilItemID.AsString+''' '
       +' AND SNID IN (SELECT SNID FROM ARTrPenjualanSn WHERE SaleID='''+quMainSaleID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''') ');
    ExecSQL;
  end;
  with quAct,SQL do
  begin
    Close;Clear;
    add(' Update APTrKonsinyasiDtSn SET FgJual=''T'' WHERE ItemID='''+quDetilItemID.AsString+''' '
       +' AND SNID IN (SELECT SNID FROM ARTrPenjualanSn WHERE SaleID='''+quMainSaleID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''') ');
    ExecSQL;
  end;

  CekStatus;
  CekRetur;
  DeleteFromAllItem(quMainSaleID.Value,quMainCustID.Value,quDetilItemID.Value,quDetilWarehouseID.Value,
                    quDetilPrice.value,55);
end;

procedure TfmARTrPenjualanIDR.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  CekRetur;
end;

procedure TfmARTrPenjualanIDR.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  quMainTglJtTempo.AsDateTime := IncDay(quMainTransDate.AsDateTime, quMainJatuhTempo.AsInteger);

  with quAct, SQL do
  begin
    Close;Clear;
    Add('Select isnull(kodefp,''01'') as kodefp from armscustomer where custid='''+quMainCustID.AsString+''' ');
    Open;
  end;
  quMainKodeFP.AsString := quAct.FieldByName('KodeFP').ASString;

  if quMainFgUpload.ASString='Y' then
  begin
    quMainLStatusUpload.AsString := 'SUDAH UPLOAD';
    DBText11.Font.Color := clLime;
  end else
  begin
    quMainLStatusUpload.AsString := 'BELUM UPLOAD';
    DBText11.Font.Color := clYellow;
  end;
end;

procedure TfmARTrPenjualanIDR.dxDBButtonEdit2ButtonClick(Sender: TObject;
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

procedure TfmARTrPenjualanIDR.TmbBrgClick(Sender: TObject);
begin
  inherited;
  if quMain.IsEmpty then Abort else quDetil.Append;
end;

procedure TfmARTrPenjualanIDR.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmARTrPenjualanIDR.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and
     (MessageDlg('Hapus Barang ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsDetil.DataSet.Delete;
end;

procedure TfmARTrPenjualanIDR.bbSimpanDetilClick(Sender: TObject);
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

procedure TfmARTrPenjualanIDR.quCostItemBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekRetur;
  CekStatus;
end;

procedure TfmARTrPenjualanIDR.quDetilItemIDChange(Sender: TField);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT ItemName,UOMID FROM INMsItem WHERE ItemID='''+quDetilItemID.AsString+''' ');
    Open;
  end;
  quDetilNote.AsString := quAct.FieldByName('ItemName').AsString;
  quDetilUOMID.AsString := quAct.FieldByName('UOMID').AsString;
  with quAct1,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(Keterangan,'''') as Keterangan,ISNULL(Bagasi,0) as Bagasi '
       +'FROM ARTrPurchaseOrderDt WHERE POID='''+quMainSOID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' ');
    Open;
  end;
  quDetilnote2.AsString := quAct1.FieldByName('Keterangan').AsString;
  quDetilKomisi.AsCurrency := quAct1.FieldByName('Bagasi').AsCurrency;
end;

procedure TfmARTrPenjualanIDR.TmbSNClick(Sender: TObject);
begin
  inherited;
  quSN.Append;
end;

procedure TfmARTrPenjualanIDR.KrgSNClick(Sender: TObject);
begin
  inherited;
  if quSN.IsEmpty then Abort;
  if (dsSN <> nil) and (dsSN.DataSet <> nil) and
     (MessageDlg('Hapus Serial Number ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        dsSN.DataSet.Delete;
end;

procedure TfmARTrPenjualanIDR.SimpanSNClick(Sender: TObject);
begin
  inherited;
  if Self.quSN.State = dsInsert then
  begin
   Self.quSN.Edit;
   Self.quSN.Post;
   Self.quSN.Requery();
  end;
  if Self.quSN.State = dsEdit then
  begin
   quSN.Post;
  end;
end;

procedure TfmARTrPenjualanIDR.BtlSNClick(Sender: TObject);
begin
  inherited;
  quSN.Cancel;
end;

procedure TfmARTrPenjualanIDR.quSNNewRecord(DataSet: TDataSet);
begin
  inherited;
  quSNSNID.FocusControl;
  quSNFgSN.AsString := 'Y';
  quSNPrice.AsCurrency := quDetilPrice.AsCurrency;
end;

procedure TfmARTrPenjualanIDR.quSNBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(quSNSNID.Value)='' then
  Begin
    pesan('Kode Serial Number tidak boleh kosong');
    quSNSNID.FocusControl;
    Abort;
  End;

  If quSN.State= dsInsert then
  Begin
    With quAct,SQL do
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
        pesan('Serial Number sudah ada');
        quSNSNID.FocusControl;
        Abort;
      End;
    End;
  End;

  If quSN.State= dsInsert then
  Begin
    With quAct,Sql do
    Begin
      Close;Clear;
      add('SELECT K.FgJual,K.SNID FROM (SELECT SNID,FgJual,ItemID FROM APTrKonsinyasiDtSN) as K '
         +'WHERE K.SNID='''+quSNSNID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' ');
      Open;
      If quAct.FieldByName('SNID').AsString = '' then
      Begin
        pesan('Serial Number ini belum pernah masuk');
        quSNSNID.FocusControl;
        Abort;
      End;
      if quAct.FieldByName('FgJual').AsString = 'Y' then
      Begin
        pesan('Serial Number sudah pernah dipakai');
        quSNSNID.FocusControl;
        Abort;
      End;
    End;
  End;

  quSNPrice.AsCurrency := quDetilPrice.AsCurrency;
  quSNSaleID.ASString := quMainSaleID.ASString;
  quSNWarehouseID.ASString := quDetilWarehouseID.AsString;
  quSNUpdUser.AsString := dmMain.UserId;
  quSNUpdDate.AsDateTime := GetServerDateTime;
end;

procedure TfmARTrPenjualanIDR.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
     try
        Title := 'Nota Konsinyasi';
        SQLString := 'SELECT KontransBrgID as Nota,CONVERT(Varchar(10),Transdate,103) as Tanggal FROM ARTrKonTransBrgHD '
                    +'Where CustID='''+quMainCustID.AsString+''' AND KontransBrgID NOT IN (SELECT ISNULL(KontransBrgID,'''') FROM ARTrPenjualanHD) ';
        if ShowModal = MrOK then
        begin
           if quMain.State = dsBrowse then quMain.Edit;
           quMainKontransBrgID.Value := Res[0];
        end;
     finally
        free;
     end;
end;

procedure TfmARTrPenjualanIDR.quMainBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  StatusBaru := 'Baru';
end;

procedure TfmARTrPenjualanIDR.dscekbayarStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid1Column1,TRUE);
  SetReadOnly(dxDBGrid1Column2,TRUE);
  SetReadOnly(dxDBGrid1Column3,TRUE);
end;

procedure TfmARTrPenjualanIDR.dxDBButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening,'
                   +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                   +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                   +' ORDER BY A.RekeningID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainRekeningU.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenjualanIDR.dxDBButtonEdit6ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening,'
                   +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                   +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                   +' ORDER BY A.RekeningID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainRekeningP.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenjualanIDR.dxDBButtonEdit7ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening,'
                   +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                   +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                   +' ORDER BY A.RekeningID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainRekeningK.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenjualanIDR.dxDBButtonEdit8ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening,'
                   +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                   +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                   +' ORDER BY A.RekeningID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainRekPersediaan.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenjualanIDR.dxDBButtonEdit9ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := ' SELECT Distinct RekeningName as Nama_Rekening,A.RekeningId as Kode_Rekening,'
                   +' A.GroupRekId as Group_Rekening,B.GroupRekName as Nama_Group_Rekening FROM CFMsRekening'
                   +' A INNER JOIN CFMsGroupRek B ON A.GroupRekId=B.GroupRekId'
                   +' ORDER BY A.RekeningID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainRekHPP.Value := Res[1];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenjualanIDR.dxDBGrid2SNIDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Serial Number ';
       SQLString :=   ' SELECT K.SNID as Serial_Number,K.PurchaseId as Nota_Pembelian, '
                     +' Convert(varchar(10),K.TransDate,103) as Tanggal_Nota, '
                     +' K.SuppId as Kode_Supplier, K.SuppName as Nama_Supplier, '
                     +' K.ItemId as Kode_Barang , K.ItemName as Nama_Barang,'
                     +' CASE WHEN K.CurrID=''IDR'' THEN K.Price ELSE K.Price*K.Rate END as Modal,K.FgSN  FROM '
                     +' (SELECT A.SNID, C.KonsinyasiID as PurchaseID, C.Transdate, C.SuppID, D.SuppName, '
                     +' B.ItemID, F.ItemName, A.FgJual,B.Price,B.CurrID,C.Rate,A.FgSN FROM APTrKonsinyasiDtSn A '
                     +' INNER JOIN APTrKonsinyasiDt B ON A.KonsinyasiID=B.KonsinyasiID AND A.ItemID=B.ItemID '
                     +' INNER JOIN APTrKonsinyasiHd C ON B.KonsinyasiID=C.KonsinyasiID '
                     +' INNER JOIN APMsSupplier D ON C.SuppID=D.SuppID '
                     +' INNER JOIN INMsItem F ON F.ItemID=B.ItemID) as K '
                     +' WHERE K.ItemID='''+quDetilItemID.AsString+''' AND K.FgJual=''T'' '
                     +' ORDER BY K.SNID ';
       if ShowModal = MrOK then
       begin
          if quSN.State = dsBrowse then quSN.Edit;
             quSNSNID.Value :=Res[0];
             quSNPurchaseID.Value := Res[1];
             quSNModal.Value := StrToCurr(Res[7]);
             quSNFgSN.Value := Res[8];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenjualanIDR.dsSNStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid2SNID,quSN.State<>dsinsert);
end;

procedure TfmARTrPenjualanIDR.quSNAfterPost(DataSet: TDataSet);
var Modal : currency;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    add(' Update APTrKonsinyasiDtSN SET FgJual=''Y'' WHERE ItemID='''+quDetilItemID.AsString+''' '
       +' AND SNID='''+quSNSNID.AsString+''' ');
    ExecSQL;
  end;

  with quAct1,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(SUM(Modal)/COUNT(*),0) as Total FROM ARTrPenjualanSN WHERE SaleID='''+quMainSaleID.AsString+''' AND ItemID='''+quDetilItemID.AsString+''' ');
    Open;
  end;
  Modal := quAct1.FieldByName('Total').AsCurrency;
  with quAct2,SQL do
  begin
    Close;Clear;
    Add('UPDATE ARTrPenjualanDt SET Modal='''+CurrToStr(Modal)+''' '
       +'WHERE SaleID='''+quMainSaleID.AsString+''' AND ItemID='''+quDetilItemID.AsString+'''');
    ExecSQL;
  end;
  quDetil.Requery();
  quTotal.Requery();
  UpdateTTlH;

  with quAct,SQL do
  begin
    Close;Clear;
    Add(' Select isnull(Count(SNId),0) as jumlah From ARTrPenjualanSN WHERE ItemId='''+quDetilItemID.AsString+''''
       +' AND SaleId='''+quMainSaleID.AsString+''' And WareHouseId='''+quDetilWarehouseID.AsString+''''
       +' AND Price='''+quDetilPrice.AsString+'''');
    Open;
  End;
  if quAct.FieldByName('jumlah').AsInteger = quDetilQty.Value then
  begin
    quDetil.Last;
    qudetil.Append;
    abort;
  End else
  begin
    quSN.Append;
  end;
end;

procedure TfmARTrPenjualanIDR.quSNBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  CekRetur;
  UpdateSerialNumber;
end;

procedure TfmARTrPenjualanIDR.quSNBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  CekRetur;
end;

procedure TfmARTrPenjualanIDR.quSNBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CekStatus;
  CekRetur;
  with quAct,SQL do
  begin
    Close;Clear;
    Add(' Select Count(SNId) as jumlah From ARTrPenjualanSN WHERE ItemId='''+quDetilItemID.AsString+''''
       +' AND SaleId='''+quMainSaleID.AsString+''' And WareHouseId='''+quDetilWarehouseID.AsString+''''
       +' AND Price='''+quDetilPrice.AsString+'''');
    Open;
  End;
  if quAct.FieldByName('jumlah').AsInteger >= quDetilQty.AsInteger then Abort;
end;

procedure TfmARTrPenjualanIDR.dxDBButtonEdit10ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Sales Order';
       SQLString :={ 'SELECT A.POID as No_SO,CONVERT(Varchar(10),A.TransDate,103) as Tanggal,C.SalesName as Sales,B.CustName as Pelanggan,ISNULL(A.TTLSO,0) as Total '
                   +'FROM ARTrPurchaseOrderHd A INNER JOIN ARMsCustomer B ON A.CustID=B.CustID '
                   +'INNER JOIN ARMsSales C ON A.SalesID=C.SalesID '
                   +'WHERE A.POID Not IN (SELECT DISTINCT ISNULL(X.SOID,''-'') as SOID '
                   +'FROM ARTrPenjualanHd X WHERE X.FgForm='''+StatusForm+''') ORDER BY CONVERT(VARCHAR(8),A.Transdate,112),A.POID';   }

                    'SELECT DISTINCT K.POID as Nomor_SO,CONVERT(VARCHAR(10),k.Transdate,111) as Tanggal, '
                   +'K.CustName as Nama_Customer,K.SalesName as Nama_Sales,K.TTLSO as Total FROM ( '
                   +'select B.POID,B.Transdate,C.CustName,D.SalesName,B.TTLSO, '
                   +'A.Qty-ISNULL((SELECT SUM(X.Qty) FROM ARTrPenjualanDt X inner join ARtrPenjualanHd Y on X.SaleID=Y.SaleID '
                   +'Where Y.SOID=B.POID AND X.ItemID=A.ItemID),0) as Qty from ARTrPurchaseOrderDt A '
                   +'inner join ARTrPurchaseOrderHd B on A.POID=B.POID '
                   +'inner join ARMsCustomer C on B.CustID=C.CustID '
                   +'inner join ARMsSales D on B.SalesID=D.SalesID '
                   +'WHERE ISNULL(B.FgClose,''T'')=''T'' AND B.Jenis=''Y''  '
                   +') as K WHERE K.Qty<>0 ORDER BY CONVERT(VARCHAR(10),k.Transdate,111),K.POID ';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainSOID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrPenjualanIDR.quMainSOIDChange(Sender: TField);
var CustID,SalesID,POID : string;
    Ongkir,PPN : currency;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT A.CustID,A.SalesID,ISNULL(A.Administrasi,0) as Ongkir,A.PRID,ISNULL(A.PPN,0) as PPN FROM ARTrPurchaseOrderHd A '
       +'WHERE A.POID='''+quMainSOID.AsString+''' ');
    Open;
  end;
  Ongkir := quAct.FieldByName('Ongkir').AsCurrency;
  PPN := quAct.FieldByName('PPN').AsCurrency;
  SalesID := quAct.FieldByName('SalesID').AsString;
  CustID := quAct.FieldByName('CustID').AsString;
  POID := quAct.FieldByName('PRID').AsString;
  quMainCustID.AsString := CustID;
  quMainSalesID.AsString := SalesID;
  quMainAdministrasi.AsCurrency := Ongkir;
  quMainPOID.AsString := POID;
  quMainPPNFee.AsCurrency := PPN;
end;

procedure TfmARTrPenjualanIDR.dxDBButtonEdit11ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Data Proforma Invoice';
       if StatusForm = 'DP' then
         SQLString := 'SELECT PerformaID as No_PI,CONVERT(VARCHAR(10),Transdate,103) as Tanggal,POID as No_PO,ISNULL(DP*SubTotal*0.01,0) as DP '
                     +'FROM ARTrPerformaHD WHERE CustID='''+quMainCustID.AsString+''' AND SOID='''+quMainSOID.AsString+''' '
                     +'AND PerformaID NOT IN (SELECT KonTransBrgID FROM ARTrPenjualanHd WHERE FgForm='''+StatusForm+''' AND CustID='''+quMainCustID.AsString+''')'
       else
         SQLString := 'SELECT PerformaID as No_PI,CONVERT(VARCHAR(10),Transdate,103) as Tanggal,POID as No_PO,ISNULL(DP*SubTotal*0.01,0) as DP '
                     +'FROM ARTrPerformaHD WHERE CustID='''+quMainCustID.AsString+''' AND SOID='''+quMainSOID.AsString+''' '
                     +'AND PerformaID IN (SELECT KonTransBrgID FROM ARTrPenjualanHd WHERE FgForm=''DP'' AND CustID='''+quMainCustID.AsString+''')';
       if ShowModal = MrOK then
       begin
         if quMain.State = dsBrowse then quMain.Edit;
         quMainKontransBrgID.Value := Res[0];
         quMainPOID.Value := Res[2];
         quMainDP.Value := StrToCurr(Res[3]);
       end;
  finally
    free;
  end;
end;

procedure TfmARTrPenjualanIDR.dsMainDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  DataDetail;
end;

procedure TfmARTrPenjualanIDR.dxButton2Click(Sender: TObject);
begin
  inherited;
  if quDetil.IsEmpty then Abort;
  If (Self.quMain.State = dsEdit) or (Self.quMain.State = dsInsert) or
     (Self.quDetil.State = dsEdit) or (Self.quDetil.State = dsInsert) or
     (Self.quSN.State = dsEdit) or (Self.quSN.State = dsInsert) then
  begin
    ShowMessage('Data Belum disimpan');
    Abort;
  end;
  with TfmARSN.Create(self) do
  try
    KodeBarang := quDetilItemID.AsString;
    SaleID := quMainSaleID.AsString;
    Gudang := quDetilWarehouseID.AsString;
    Price := quDetilPrice.AsString;
    ShowModal;
  finally
    free;
  end;
  quSN.Requery();
  quDetil.Requery();
  quTotal.Requery();
  UpdateTTlH;
end;

procedure TfmARTrPenjualanIDR.quMainCustIDChange(Sender: TField);
begin
  inherited;
  with quAct1,SQL do
  begin
    Close;Clear;
    Add('SELECT ISNULL(Term,0) as Term,ISNULL(KodeNITKU,''000000'') as KodeNITKU FROM ARMsCustomer WHERE CustID='''+quMainCustID.AsString+''' ');
    Open;
  end;
  quMainJatuhTempo.AsInteger := quAct1.FieldByName('Term').AsInteger;
  quMainKodeNITKU.AsString := quAct1.FieldByName('KodeNITKU').asstring;
end;

procedure TfmARTrPenjualanIDR.quSNAfterDelete(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTTlH;
end;

procedure TfmARTrPenjualanIDR.dxButton3Click(Sender: TObject);
begin
  inherited;
  {
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT TOP 1 TaxID,RIGHT(taxid,11) as Invoice FROM ARMsKdPajak WHERE TaxID NOT IN (SELECT TaxID FROM ARTrPenjualanHd)');
    Open;
  end;
  quMainTaxID.AsString := quAct.FieldByName('TaxID').AsString;
  }
  
  if (qumain.State<>dsInsert) and (GroupUser<>'admin') then
  begin
    if quMainTaxID.AsString<>'' then
    begin
      ShowMessage('No FPS hanya bisa diubah oleh admin');
      Abort;
    end;
  end;

  with TfmSearch.Create(Self) do
  try
     Title := 'Cari Nomor FP';
     SQLString := 'SELECT TaxID FROM ARMsKdPajak WHERE FgActive=''Y'' AND TaxID NOT IN (SELECT ISNULL(TaxID,''-'') FROM ARTrPenjualanHd) ORDER BY TaxID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
        quMainTaxID.AsString := Res[0];
     end;
  finally
     free;
  end;
end;

procedure TfmARTrPenjualanIDR.dxButton4Click(Sender: TObject);
var Nota : string;
begin
  inherited;
  Nota := quMainSaleID.AsString;
  with quAct, SQL do
  begin
    Close;Clear;
    Add('update artrpenjualanhd set Fgupload=''Y'' Where Saleid='''+quMainSaleID.AsString+''' ');
    ExecSQL;
  end;
  quMain.Requery();
  quMain.Locate('SaleId',Nota,[]);
end;

procedure TfmARTrPenjualanIDR.dxButton6Click(Sender: TObject);
var Nota : String;
begin
  inherited;
  Nota := quMainSaleID.AsString;
  with quAct, SQL do
  begin
    Close;Clear;
    Add('update artrpenjualanhd set Fgupload=''T'' Where Saleid='''+quMainSaleID.AsString+''' ');
    ExecSQL;
  end;
  quMain.Requery();
  quMain.Locate('SaleId',Nota,[]);
end;

procedure TfmARTrPenjualanIDR.dxButton7Click(Sender: TObject);
var Nota : string;
begin
  inherited;
  Nota := quMainSaleID.AsString;
  with quAct, SQL do
  begin
    Close;Clear;
    Add('update artrpenjualanhd set KodeFg=KodeFg+1 Where Saleid='''+quMainSaleID.AsString+''' ');
    ExecSQL;
  end;
  quMain.Requery();
  quMain.Locate('SaleId',Nota,[]);
end;

procedure TfmARTrPenjualanIDR.dxButton8Click(Sender: TObject);
var Nota : string;
begin
  inherited;
  Nota := quMainSaleID.AsString;
  with quAct, SQL do
  begin
    Close;Clear;
    Add('update artrpenjualanhd set KodeFg=KodeFg-1 Where Saleid='''+quMainSaleID.AsString+''' ');
    ExecSQL;
  end;
  quMain.Requery();
  quMain.Locate('SaleId',Nota,[]);
end;

procedure TfmARTrPenjualanIDR.quMainAfterCancel(DataSet: TDataSet);
begin
  inherited;
  StatusBaru := 'Lama';
end;

end.
