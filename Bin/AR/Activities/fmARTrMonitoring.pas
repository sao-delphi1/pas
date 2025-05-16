unit fmARTrMonitoring;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, Buttons, dxCore, dxContainer, dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms, dxEditor, dxEdLib;

type
  TfmARTrMonitor = class(TfmStdLv2)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    dbgPenjualan: TdxDBGrid;
    quDetil: TADOQuery;
    quDetilSaleID: TStringField;
    quDetilItemID: TStringField;
    quDetilPrice: TBCDField;
    quDetilWarehouseID: TStringField;
    quDetilButton: TStringField;
    quDetilQty: TIntegerField;
    quDetilUpdDate: TDateTimeField;
    quDetilUpdUser: TStringField;
    dsDetil: TDataSource;
    quMainSalesId: TStringField;
    quMainSalesName: TStringField;
    quMainSaleId: TStringField;
    quMainTgl_Nota: TStringField;
    dbgPenjualanSalesId: TdxDBGridMaskColumn;
    dbgPenjualanSalesName: TdxDBGridMaskColumn;
    dbgPenjualanSaleId: TdxDBGridMaskColumn;
    dbgPenjualanTgl_Nota: TdxDBGridMaskColumn;
    Button1: TButton;
    quItem: TADOQuery;
    quDetilLitemName: TStringField;
    Timer1: TTimer;
    dbgPenjualanTotalNota: TdxDBGridColumn;
    quMainTTLPj: TBCDField;
    Label3: TLabel;
    DateTrans: TdxDateEdit;
    dbgPenjualanStatus: TdxDBGridColumn;
    quMainStatus: TStringField;
    dbgDetilPenjualan: TdxDBGrid;
    dbgDetilPenjualanKodebarang: TdxDBGridMaskColumn;
    dbgDetilPenjualanNamabarang: TdxDBGridColumn;
    dbgDetilPenjualanHarga: TdxDBGridCurrencyColumn;
    dbgDetilPenjualanJumlah: TdxDBGridMaskColumn;
    Label2: TLabel;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    dbgPenjualan3: TdxDBGrid;
    dbgPenjualan3SalesID: TdxDBGridMaskColumn;
    dbgPenjualan3SalesName: TdxDBGridMaskColumn;
    dbgPenjualan3Nota: TdxDBGridMaskColumn;
    dbgPenjualan3TglPenjualan: TdxDBGridMaskColumn;
    dbgPenjualan3TotalNota: TdxDBGridColumn;
    dbgPenjualan3Status: TdxDBGridColumn;
    dbgDetilPenjualan3: TdxDBGrid;
    dbgDetilPenjualan3ItemID: TdxDBGridMaskColumn;
    dbgDetilPenjualan3ItemName: TdxDBGridColumn;
    dbgDetilPenjualan3Harga: TdxDBGridCurrencyColumn;
    dbgDetilPenjualan3Jumlah: TdxDBGridMaskColumn;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    dbgPenjualan4: TdxDBGrid;
    dbgPenjualan4SalesID: TdxDBGridMaskColumn;
    dbgPenjualan4SalesName: TdxDBGridMaskColumn;
    dbgPenjualan4Nota: TdxDBGridMaskColumn;
    dbgPenjualan4TglPenjualan: TdxDBGridMaskColumn;
    dbgPenjualan4TotalNota: TdxDBGridColumn;
    dbgPenjualan4Status: TdxDBGridColumn;
    dbgDetilPenjualan4: TdxDBGrid;
    dbgDetilPenjualan4ItemID: TdxDBGridMaskColumn;
    dbgDetilPenjualan4ItemName: TdxDBGridColumn;
    dbgDetilPenjualan4Harga: TdxDBGridCurrencyColumn;
    dbgDetilPenjualan4Jumlah: TdxDBGridMaskColumn;
    GroupBox4: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    dbgPenjualan2: TdxDBGrid;
    dbgPenjualan2SalesID: TdxDBGridMaskColumn;
    dbgPenjualan2Sales: TdxDBGridMaskColumn;
    dbgPenjualan2Nota: TdxDBGridMaskColumn;
    dbgPenjualan2TglPenjualan: TdxDBGridMaskColumn;
    dbgPenjualan2TotalNota: TdxDBGridColumn;
    dbgPenjualan2Status: TdxDBGridColumn;
    dbgDetilPenjualan2: TdxDBGrid;
    dbgDetilPenjualan2ItemID: TdxDBGridMaskColumn;
    dbgDetilPenjualan2Itemname: TdxDBGridColumn;
    dbgDetilPenjualan2Harga: TdxDBGridCurrencyColumn;
    dbgDetilPenjualan2Jumlah: TdxDBGridMaskColumn;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    quMain2: TADOQuery;
    quMain2SalesID: TStringField;
    quMain2SalesName: TStringField;
    quMain2SaleID: TStringField;
    quMain2Tgl_Nota: TStringField;
    quMain2TTLPj: TBCDField;
    quMain2Status: TStringField;
    dsMain2: TDataSource;
    quDetil2: TADOQuery;
    quDetil2SaleID: TStringField;
    quDetil2ItemID: TStringField;
    quDetil2Price: TBCDField;
    quDetil2WarehouseID: TStringField;
    quDetil2Button: TStringField;
    quDetil2Qty: TIntegerField;
    quDetil2UpdDate: TDateTimeField;
    quDetil2UpdUser: TStringField;
    quDetil2LitemName: TStringField;
    dsDetil2: TDataSource;
    quMain3: TADOQuery;
    quMain3SalesID: TStringField;
    quMain3SalesName: TStringField;
    quMain3SaleID: TStringField;
    quMain3Tgl_Nota: TStringField;
    quMain3TTLPj: TBCDField;
    quMain3Status: TStringField;
    dsMain3: TDataSource;
    quDetil3: TADOQuery;
    quDetil3SaleID: TStringField;
    quDetil3ItemID: TStringField;
    quDetil3Price: TBCDField;
    quDetil3WarehouseID: TStringField;
    quDetil3Button: TStringField;
    quDetil3Qty: TIntegerField;
    quDetil3UpdDate: TDateTimeField;
    quDetil3UpdUser: TStringField;
    quDetil3LitemName: TStringField;
    dsDetil3: TDataSource;
    quMain4: TADOQuery;
    quMain4SalesID: TStringField;
    quMain4SalesName: TStringField;
    quMain4SaleID: TStringField;
    quMain4Tgl_Nota: TStringField;
    quMain4TTLPj: TBCDField;
    quMain4Status: TStringField;
    dsMain4: TDataSource;
    quDetil4: TADOQuery;
    quDetil4SaleID: TStringField;
    quDetil4itemID: TStringField;
    quDetil4Price: TBCDField;
    quDetil4WarehouseID: TStringField;
    quDetil4Button: TStringField;
    quDetil4Qty: TIntegerField;
    quDetil4UpdDate: TDateTimeField;
    quDetil4UpdUser: TStringField;
    quDetil4LitemName: TStringField;
    dsDetil4: TDataSource;
    CBKasir: TComboBox;
    CBKasir2: TComboBox;
    CBKasir3: TComboBox;
    CBKasir4: TComboBox;
    quUser: TADOQuery;
    quUserUserId: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARTrMonitor: TfmARTrMonitor;

implementation

uses MyUnit, UnitGeneral, StdLv1;

{$R *.dfm}

procedure TfmARTrMonitor.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := false;
  SettingDxGrid(dbgPenjualan);
  SettingDxGrid(dbgDetilPenjualan);
  SettingDxGrid(dbgPenjualan2);
  SettingDxGrid(dbgDetilPenjualan2);
  SettingDxGrid(dbgPenjualan3);
  SettingDxGrid(dbgDetilPenjualan3);
  SettingDxGrid(dbgPenjualan4);
  SettingDxGrid(dbgDetilPenjualan4);
end;

procedure TfmARTrMonitor.FormShow(Sender: TObject);
begin
  inherited;
  DateTrans.Date := date;
  quUser.Close;
  quUser.Open;
  while not quUser.Eof do
  begin
     CBKasir.Items.Add(quUser.FieldByName('UserID').AsString);
     CBKasir2.Items.Add(quUser.FieldByName('UserID').AsString);
     CBKasir3.Items.Add(quUser.FieldByName('UserID').AsString);
     CBKasir4.Items.Add(quUser.FieldByName('UserID').AsString);
     quUser.Next;
  end;
  CBKasir.ItemIndex :=1;
  CBKasir2.ItemIndex :=0;
  CBKasir3.ItemIndex :=4;
  CBKasir4.ItemIndex :=3;

  with quMain,SQL do
  Begin
    Close;Clear;
    add(' SELECT A.SalesId,B.SalesName,SaleId,TTLPj,Convert(varchar(10),transdate,103) as Tgl_Nota, '
       +' Case When FgLunas =''T'' Then ''Belum Lunas'' '
       +'      When FgLunas =''Y'' Then ''Sudah Lunas'' end as Status FROM '
       +' ARTrPenjualanHd A INNER JOIN ARMsSales B ON A.SalesId=B.SalesId AND FlagCounter=''C'' AND'
       +' Convert(varchar(10),Transdate,112)= '''+FormatDateTime('yyyyMMdd',DateTrans.Date)+''' '
       +' AND A.Kasir='''+CBKasir.Text+''' '
       +' ORDER BY Status,SaleId desc');
    Open;
  End;

  with quMain2,SQL do
  Begin
    Close;Clear;
    add(' SELECT A.SalesId,B.SalesName,SaleId,TTLPj,Convert(varchar(10),transdate,103) as Tgl_Nota, '
       +' Case When FgLunas =''T'' Then ''Belum Lunas'' '
       +'      When FgLunas =''Y'' Then ''Sudah Lunas'' end as Status FROM '
       +' ARTrPenjualanHd A INNER JOIN ARMsSales B ON A.SalesId=B.SalesId AND FlagCounter=''C'' AND'
       +' Convert(varchar(10),Transdate,112)= '''+FormatDateTime('yyyyMMdd',DateTrans.Date)+''' '
       +' AND A.Kasir='''+CBKasir2.Text+''' '
       +' ORDER BY Status,SaleId desc');
    Open;
  End;

  with quMain3,SQL do
  Begin
    Close;Clear;
    add(' SELECT A.SalesId,B.SalesName,SaleId,TTLPj,Convert(varchar(10),transdate,103) as Tgl_Nota, '
       +' Case When FgLunas =''T'' Then ''Belum Lunas'' '
       +'      When FgLunas =''Y'' Then ''Sudah Lunas'' end as Status FROM '
       +' ARTrPenjualanHd A INNER JOIN ARMsSales B ON A.SalesId=B.SalesId AND FlagCounter=''C'' AND'
       +' Convert(varchar(10),Transdate,112)= '''+FormatDateTime('yyyyMMdd',DateTrans.Date)+''' '
       +' AND A.Kasir='''+CBKasir3.Text+''' '
       +' ORDER BY Status,SaleId desc');
    Open;
  End;

  with quMain4,SQL do
  Begin
    Close;Clear;
    add(' SELECT A.SalesId,B.SalesName,SaleId,TTLPj,Convert(varchar(10),transdate,103) as Tgl_Nota, '
       +' Case When FgLunas =''T'' Then ''Belum Lunas'' '
       +'      When FgLunas =''Y'' Then ''Sudah Lunas'' end as Status FROM '
       +' ARTrPenjualanHd A INNER JOIN ARMsSales B ON A.SalesId=B.SalesId AND FlagCounter=''C'' AND'
       +' Convert(varchar(10),Transdate,112)= '''+FormatDateTime('yyyyMMdd',DateTrans.Date)+''' '
       +' AND A.Kasir='''+CBKasir4.Text+''' '
       +' ORDER BY Status,SaleId desc');
    Open;
  End;

  quDetil.Open;
  quDetil2.Open;
  quDetil3.Open;
  quDetil4.Open;
  quMainTTLPj.DisplayFormat := sDisFormat;
  quMain2TTLPj.DisplayFormat := sDisFormat;
  quMain3TTLPj.DisplayFormat := sDisFormat;
  quMain4TTLPj.DisplayFormat := sDisFormat;
  quDetilQty.DisplayFormat:= sDisFormat1;
  quDetil2Qty.DisplayFormat:= sDisFormat1;
  quDetil3Qty.DisplayFormat:= sDisFormat1;
  quDetil4Qty.DisplayFormat:= sDisFormat1;
  dbgDetilPenjualanHarga.DisplayFormat:=sDisFormat;
  dbgDetilPenjualan2Harga.DisplayFormat := sDisFormat;
  dbgDetilPenjualan3Harga.DisplayFormat := sDisFormat;
  dbgDetilPenjualan4Harga.DisplayFormat := sDisFormat;
  Timer1.Enabled:=true;
end;

procedure TfmARTrMonitor.Timer1Timer(Sender: TObject);
var temp : string;
begin
  inherited;
  temp:= quMainSaleId.Value;
  with qumain,sql do
  Begin
    Close;Clear;
    add(' SELECT A.SalesId,B.SalesName,SaleId,TTLPj,Convert(varchar(10),transdate,103) as Tgl_Nota, '
       +' Case When FgLunas =''T'' Then ''Belum Lunas'' '
       +'      When FgLunas =''Y'' Then ''Sudah Lunas'' end as Status FROM '
       +' ARTrPenjualanHd A INNER JOIN ARMsSales B ON A.SalesId=B.SalesId AND FlagCounter=''C'' AND'
       +' Convert(varchar(10),Transdate,112)= '''+FormatDateTime('yyyyMMdd',DateTrans.Date)+''' '
       +' AND A.Kasir='''+CBKasir.Text+''' '
       +' ORDER BY Status,SaleId desc');
    Open;
  End;
  with quMain2,SQL do
  Begin
    Close;Clear;
    add(' SELECT A.SalesId,B.SalesName,SaleId,TTLPj,Convert(varchar(10),transdate,103) as Tgl_Nota, '
       +' Case When FgLunas =''T'' Then ''Belum Lunas'' '
       +'      When FgLunas =''Y'' Then ''Sudah Lunas'' end as Status FROM '
       +' ARTrPenjualanHd A INNER JOIN ARMsSales B ON A.SalesId=B.SalesId AND FlagCounter=''C'' AND'
       +' Convert(varchar(10),Transdate,112)= '''+FormatDateTime('yyyyMMdd',DateTrans.Date)+''' '
       +' AND A.Kasir='''+CBKasir2.Text+''' '
       +' ORDER BY Status,SaleId desc');
    Open;
  End;
  with quMain3,SQL do
  Begin
    Close;Clear;
    add(' SELECT A.SalesId,B.SalesName,SaleId,TTLPj,Convert(varchar(10),transdate,103) as Tgl_Nota, '
       +' Case When FgLunas =''T'' Then ''Belum Lunas'' '
       +'      When FgLunas =''Y'' Then ''Sudah Lunas'' end as Status FROM '
       +' ARTrPenjualanHd A INNER JOIN ARMsSales B ON A.SalesId=B.SalesId AND FlagCounter=''C'' AND'
       +' Convert(varchar(10),Transdate,112)= '''+FormatDateTime('yyyyMMdd',DateTrans.Date)+''' '
       +' AND A.Kasir='''+CBKasir3.Text+''' '
       +' ORDER BY Status,SaleId desc');
    Open;
  End;
  with quMain4,SQL do
  Begin
    Close;Clear;
    add(' SELECT A.SalesId,B.SalesName,SaleId,TTLPj,Convert(varchar(10),transdate,103) as Tgl_Nota, '
       +' Case When FgLunas =''T'' Then ''Belum Lunas'' '
       +'      When FgLunas =''Y'' Then ''Sudah Lunas'' end as Status FROM '
       +' ARTrPenjualanHd A INNER JOIN ARMsSales B ON A.SalesId=B.SalesId AND FlagCounter=''C'' AND'
       +' Convert(varchar(10),Transdate,112)= '''+FormatDateTime('yyyyMMdd',DateTrans.Date)+''' '
       +' AND A.Kasir='''+CBKasir4.Text+''' '
       +' ORDER BY Status,SaleId desc');
    Open;
  End;
  qumain.Locate('SaleId',temp,[]);
end;

procedure TfmARTrMonitor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Timer1.Enabled:=False;
end;

procedure TfmARTrMonitor.Button1Click(Sender: TObject);
begin
  inherited;
  qumain.Requery();
  qumain2.Requery();
  qumain3.Requery();
  qumain4.Requery();
end;

end.
