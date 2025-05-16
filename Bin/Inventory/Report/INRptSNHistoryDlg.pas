unit INRptSNHistoryDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv1, DB, dxExEdtr, dxCntner, ADODB, Buttons, dxCore,
  dxContainer, dxEdLib, StdCtrls, dxEditor, dxTL, dxDBCtrl, dxDBGrid,
  dxButton, ActnList, dxDBTLCl, dxGrClms;

type
  TfmINRptSNHistoryDlg = class(TfmStdLv1)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    dxEdit1: TdxEdit;
    dxEdit2: TdxEdit;
    dbgList: TdxDBGrid;
    dxButton3: TdxButton;
    dxEdit3: TdxEdit;
    ActionList1: TActionList;
    Action1: TAction;
    dbgListTgl: TdxDBGridColumn;
    dbgListStatus: TdxDBGridColumn;
    dbgListNota: TdxDBGridColumn;
    dbgListActor: TdxDBGridColumn;
    dbgListGudang: TdxDBGridColumn;
    dbgListFPBID: TdxDBGridColumn;
    dbgListPrice: TdxDBGridCurrencyColumn;
    procedure dxButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxEdit3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINRptSNHistoryDlg: TfmINRptSNHistoryDlg;

implementation

uses MyUnit, UnitGeneral, ConMain, Search;

{$R *.dfm}

procedure TfmINRptSNHistoryDlg.dxButton3Click(Sender: TObject);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Serial Number';
       SQLString := 'SELECT K.SNID,CONVERT(VARCHAR(10),K.Transdate,103) as Tgl,K.Status,K.PurchaseID,K.SuppName,K.Price,K.WarehouseID,'
                   +'K.ItemID,L.ItemName FROM (SELECT B.Transdate,''Faktur Pembelian'' as Status,B.PurchaseID,C.SuppName,D.Price,D.WarehouseID,'
                   +'A.SNID,A.FgSN,A.ItemID FROM APTrPurchaseDtSN A INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID '
                   +'INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID INNER JOIN APTrPurchaseDt D ON A.ItemID=D.ItemID AND A.PurchaseID=D.PurchaseID '
                   +'UNION ALL SELECT B.Transdate,''Konsinyasi Terima Barang'',B.KonsinyasiID,C.SuppName,D.Price,B.WarehouseID,'
                   +'A.SNID,A.FgSN,A.ItemID FROM APTrKonsinyasiDtSN A INNER JOIN APTrKonsinyasiHd B ON A.KonsinyasiID=B.KonsinyasiID '
                   +'INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID INNER JOIN APTrKonsinyasiDt D ON A.ItemID=D.ItemID AND A.KonsinyasiID=D.KonsinyasiID) as K '
                   +'INNER JOIN INMsItem L ON K.ItemID=L.ItemID WHERE K.FgSN<>''T'' '
                   +'ORDER BY CONVERT(VARCHAR(8),K.Transdate,112),K.Status,K.SuppName';
       if ShowModal = MrOK then
       begin
         dxEdit1.Text := Res[8];
         dxEdit2.Text := Res[9];
         dxEdit3.Text := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmINRptSNHistoryDlg.FormShow(Sender: TObject);
begin
  inherited;
  dxEdit3.SetFocus;
end;

procedure TfmINRptSNHistoryDlg.dxEdit3Change(Sender: TObject);
begin
  inherited;
  with quMain,SQL do
  begin
    Close;Clear;
{    Add('SELECT K.SNID,CONVERT(VARCHAR(10),K.Transdate,103) as Tgl,K.Status,K.PurchaseID,K.SuppName,K.Price,K.WarehouseID,K.FPBID,K.ItemID,L.ItemName FROM ('
       +'SELECT B.Transdate,''Faktur Pembelian'' as Status,B.PurchaseID,C.SuppName,D.Price,D.WarehouseID,B.FPBID,A.SNID,A.FgSN,A.ItemID '
       +'FROM APTrPurchaseDtSN A INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID '
       +'INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID INNER JOIN APTrPurchaseDt D ON A.ItemID=D.ItemID AND A.PurchaseID=D.PurchaseID '
       +'UNION ALL SELECT B.Transdate,''Konsinyasi Terima Barang'',B.KonsinyasiID,C.SuppName,D.Price,B.WarehouseID,''Konsinyasi'',A.SNID,A.FgSN,A.ItemID '
       +'FROM APTrKonsinyasiDtSN A INNER JOIN APTrKonsinyasiHd B ON A.KonsinyasiID=B.KonsinyasiID '
       +'INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID INNER JOIN APTrKonsinyasiDt D ON A.ItemID=D.ItemID AND A.KonsinyasiID=D.KonsinyasiID) as K '
       +'INNER JOIN INMsItem L ON K.ItemID=L.ItemID '
       +'WHERE K.FgSN <>''T'' AND K.SNID='''+dxEdit3.Text+''' '
       +'ORDER BY CONVERT(VARCHAR(8),K.Transdate,112),K.Status,K.SuppName');}
    Add('SELECT CONVERT(VARCHAR(10),K.Transdate,103) as Tgl,K.Status,K.PurchaseID,K.SuppName,K.Price,K.WarehouseID,K.ItemID,L.ItemName FROM ('
       +'SELECT B.Transdate,''Faktur Pembelian'' as Status,B.PurchaseID,C.SuppName,D.Price,D.WarehouseID,A.SNID,1 as urut,A.FgSN,A.ItemID '
       +'FROM APTrPurchaseDtSN A INNER JOIN APTrPurchaseHd B ON A.PurchaseID=B.PurchaseID INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID '
       +'INNER JOIN APTrPurchaseDt D ON A.ItemID=D.ItemID AND A.PurchaseID=D.PurchaseID UNION ALL '
       +'SELECT B.Transdate,''Retur Pembelian'',B.ReturnID,C.SuppName,D.Price,D.WarehouseID,A.SNID,2,''Y'',A.ItemID '
       +'FROM APTrReturnSN A INNER JOIN APTrReturnHD B ON A.ReturnID=B.ReturnID INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID '
       +'INNER JOIN APTrReturnDt D ON A.ItemID=D.ItemID AND A.ReturnID=D.ReturnID UNION ALL '
       +'SELECT B.Transdate,''Pengganti Retur Pembelian'',B.ReturnRepID,C.SuppName,D.Price,D.WarehouseID,A.SNID,3,A.FgSN,A.ItemID '
       +'FROM APTrReturnRepSN A INNER JOIN APTrReturnRepHd B ON A.ReturnRepID=B.ReturnRepID INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID '
       +'INNER JOIN APTrReturnRepDt D ON A.ItemID=D.ItemID AND A.ReturnRepID=D.ReturnRepID UNION ALL '
       +'SELECT B.Transdate,''Konsinyasi Terima Barang'',B.KonsinyasiID,C.SuppName,D.Price,B.WarehouseID,A.SNID,4,A.FgSN,A.ItemID '
       +'FROM APTrKonsinyasiDtSN A INNER JOIN APTrKonsinyasiHd B ON A.KonsinyasiID=B.KonsinyasiID INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID '
       +'INNER JOIN APTrKonsinyasiDt D ON A.ItemID=D.ItemID AND A.KonsinyasiID=D.KonsinyasiID UNION ALL '
       +'SELECT B.Transdate,''Retur Konsinyasi'',B.ReturnKonID,C.SuppName,0,D.WarehouseID,A.SNID,5,''Y'',A.ItemID '
       +'FROM APTrReturnKonSN A INNER JOIN APTrReturnKonHd B ON A.ReturnKonID=B.ReturnKonID INNER JOIN APMsSupplier C ON B.SuppID=C.SuppID '
       +'INNER JOIN APTrReturnKonDt D ON A.ItemID=D.ItemID AND A.ReturnKonID=D.ReturnKonID UNION ALL '
       +'SELECT B.Transdate,''Faktur Penjualan'',B.SaleID, '
       +'CASE WHEN B.Nama='''' THEN C.CustName ELSE B.Nama END as Pelanggan,D.Price,D.WarehouseID,A.SNID,6,A.FgSN,A.ItemID '
       +'FROM ARTrPenjualanSN A INNER JOIN ARTrPenjualanHd B ON A.SaleID=B.SaleID INNER JOIN ARMsCustomer C ON B.CustID=C.CustID '
       +'INNER JOIN ARTrPenjualanDt D ON A.SaleID=D.SaleID AND A.ItemID=D.ItemID UNION ALL '
       +'SELECT B.Transdate,''Retur Penjualan'',B.ReturnID,C.CustName,D.Price,D.WarehouseID,A.SNID,7,A.FgSN,A.ItemID '
       +'FROM ARTrReturPenjualanDtSN A INNER JOIN ARTrReturPenjualanHd B ON A.ReturnID=B.ReturnID '
       +'INNER JOIN ARMsCustomer C ON B.CustID=C.CustID INNER JOIN ARTrReturPenjualanDt D ON A.ReturnID=D.ReturnID AND A.ItemID=D.ItemID UNION ALL '
       +'SELECT B.Transdate,''Pengganti Retur'',B.ReturnRepID,C.CustName,0,D.WarehouseID,A.SNID,8,''Y'',A.ItemID '
       +'FROM ARTrPenggantiReturPenjDtSN A INNER JOIN ARTrPenggantiReturPenjHd B ON A.ReturnRepID=B.ReturnRepID '
       +'INNER JOIN ARMsCustomer C ON B.CustID=C.CustID INNER JOIN ARTrPenggantiReturPenjDt D ON A.ReturnRepID=D.ReturnRepID AND A.ItemID=D.ItemID '
       +'UNION ALL SELECT B.Transdate,''Konsinyasi Transfer Barang'',B.KonTransBrgID,C.CustName,0,B.WarehouseID,'
       +'A.SNID,9,A.FgSN,A.ItemID FROM ARTrKonTransBrgDtSN A INNER JOIN ARTrKonTransBrgHd B ON A.KonTransBrgID=B.KonTransBrgID '
       +'INNER JOIN ARMsCustomer C ON B.CustID=C.CustID INNER JOIN ARTrKonTransBrgDt D ON A.ItemID=D.ItemID AND A.KonTransBrgID=D.KonTransBrgID UNION ALL '
       +'SELECT B.Transdate,''Retur Konsinyasi'',B.KonReturID,C.CustName,0,D.WarehouseID,A.SNID,10,''Y'',A.ItemID '
       +'FROM ARTrKonReturDtSN A INNER JOIN ARTrKonReturHd B ON A.KonReturID=B.KonReturID INNER JOIN ARMsCustomer C ON B.CustID=C.CustID '
       +'INNER JOIN ARTrKonReturDt D ON A.KonReturID=D.KonReturID AND A.ItemID=D.ItemID) as K '
       +'INNER JOIN INMsItem L ON K.ItemID=L.ItemID WHERE K.SNID='''+dxEdit3.Text+''' '
       +'ORDER BY CONVERT(VARCHAR(8),K.Transdate,112),K.Urut,K.Status,K.SuppName');
    Open;
  end;
  dxEdit1.Text := quMain.FieldByName('ItemID').AsString;
  dxEdit2.Text := quMain.FieldByName('ItemName').AsString;
end;

end.
