unit INRptUmurBarangDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxDBGrid, dxTL, dxDBCtrl, dxEditor, dxEdLib, dxCore, dxButton;

type
  TfmINRptUmurBarangDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    dt1: TdxDateEdit;
    dbgList: TdxDBGrid;
    dbgListSNID: TdxDBGridMaskColumn;
    Panel1: TPanel;
    rbselect2: TRadioButton;
    rbAll2: TRadioButton;
    bbCariSN: TdxButton;
    Panel2: TPanel;
    rbSelect: TRadioButton;
    rbAll: TRadioButton;
    bbCari: TdxButton;
    quMain: TADOQuery;
    dsMain: TDataSource;
    dbgItem: TdxDBGrid;
    dxDBGridItemID: TdxDBGridColumn;
    dxDBGridItemName: TdxDBGridColumn;
    procedure rbAll2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbCariSNClick(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure rbAllClick(Sender: TObject);
    procedure bbCariClick(Sender: TObject);
    procedure dbgItemClick(Sender: TObject);
  private
    { Private declarations }
    Query : String;
    procedure RefreshData;
  public
    { Public declarations }
  end;

var
  fmINRptUmurBarangDlg: TfmINRptUmurBarangDlg;

implementation

uses MyUnit, UnitGeneral, Search, INQRRptUmurBarang;

{$R *.dfm}

procedure TfmINRptUmurBarangDlg.RefreshData;
begin
  Query := 'SELECT K.SNID, K.ItemID, F.ItemName FROM '
          +'(SELECT SNID, ItemID, FgJual FROM APTrPurchaseDtSN UNION ALL '
          +'SELECT SNID, ItemID, FgJual FROM APTrKonsinyasiDtSn UNION ALL '
          +'SELECT SNID, ItemID, FgJual FROM APTrReturnRepSN) as K '
          +'INNER JOIN INMsItem F ON F.ItemID=K.ItemID '
          +'WHERE K.ItemID='''+quMain.FieldByName('ItemID').AsString+''' '
          +'AND K.FgJual=''T'' ORDER BY K.SNID';
  with quAct do
    begin
      if active then close;
      SQL.Text := Query;
      Open;
    end;
  dbgList.OptionsBehavior := dbgList.OptionsBehavior - [edgoMultiselect];
  rbAll2.Checked := true;
  rbAll2Click(rbAll2);
end;

procedure TfmINRptUmurBarangDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  quMain.Open;
  dt1.Date:=date;
  rbAllClick(rbSelect);
  RefreshData;
end;

procedure TfmINRptUmurBarangDlg.rbAll2Click(Sender: TObject);
begin
  inherited;
  if Sender=rbAll2 then
  begin
     dbgList.OptionsBehavior := dbgList.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=rbSelect2 then
  begin
     dbgList.OptionsBehavior := dbgList.OptionsBehavior + [edgoMultiSelect];
     if dbgList.FocusedNode <> nil then
       dbgList.FocusedNode.Selected := TRUE;
  end;
end;

procedure TfmINRptUmurBarangDlg.bbCariSNClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Serial Number ';
       SQLString := ' SELECT K.SNID as Serial_Number, K.PurchaseId as Nota_Pembelian, '
           +' Convert(varchar(10),K.TransDate,103) as Tanggal_Nota, '
           +' K.SuppId as Kode_Supplier, K.SuppName as Nama_Supplier, '
           +' K.ItemId as Kode_Barang , K.ItemName as Nama_Barang, K.FgJual  FROM '
           +' (SELECT SNID, C.PurchaseId, C.TransDate, C.SuppId, D.SuppName, '
           +' B.ItemId, F.ItemName, A.FgJual FROM APTrPurchaseDtSN A '
           +' INNER JOIN APTrPurchasedt B ON A.PurchaseID=B.PurchaseID AND A.ItemID=B.ItemID '
           +' AND A.WareHouseID=B.WareHouseID AND A.Price=B.Price AND A.SuppId=B.SuppId '
           +' INNER JOIN APTrPurchaseHd C ON B.PurchaseId=C.PurchaseId and B.SuppId=C.SuppId'
           +' INNER JOIN APMsSupplier D ON C.SuppID = D.SuppID '
           +' INNER JOIN INMsItem F ON F.ItemId=B.ItemId '
           +' UNION ALL '
           +' SELECT A.SNID, C.KonsinyasiID, C.Transdate, C.CustID,D.CustName, B.ItemID, F.ItemName, A.FgJual '
           +' FROM APTrKonsinyasiDtSn A '
           +' INNER JOIN APTrKonsinyasiDt B ON A.KonsinyasiID=B.KonsinyasiID AND A.ItemID=B.ItemID '
           +' INNER JOIN APTrKonsinyasiHd C ON B.KonsinyasiID=C.KonsinyasiID '
           +' INNER JOIN ARMsCustomer D ON C.CustID = D.CustID '
           +' INNER JOIN INMsItem F ON F.ItemId=B.ItemId) as K '
           +' WHERE K.ItemID='''+quMain.FieldByName('ItemID').AsString+''' '
           +' AND K.FgJual=''T'' '
           +' ORDER BY SNID ';
       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('SNID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmINRptUmurBarangDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmINQRRptUmurBarang.Create(Self) do
     try
         qrlTitle.Caption  := laTitle.Caption;
         qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date);
         TanggalDari := dt1.date;
     with qu001,sql do
     begin
        Close;Clear;
        add('SELECT DISTINCT K.ItemID+'' - ''+B.ItemName as ItemName, C.ProductID+'' - ''+C.ProductDesc as ProductDesc, '
           +'D.GroupID+'' - ''+D.GroupDesc as Kelompok FROM (SELECT ItemID FROM APTrPurchaseDtSN UNION ALL '
           +'SELECT ItemID FROM APTrKonsinyasiDtSn UNION ALL SELECT ItemID FROM APTrReturnRepSN) as K '
           +'INNER JOIN InMsItem B ON K.ItemID=B.ItemID INNER JOIN InMsProduct C ON B.ProductID=C.ProductID '
           +'INNER JOIN InMsGroup D ON B.GroupID=D.GroupID');
        if rbSelect.Checked then
          Add('WHERE K.ItemID IN '+SelGrid(quMain,dbgItem,'ItemID'));
        Open;
        if IsEmpty then
        begin
           MsgInfo('No Data !');
           Abort;
        end;
     end;

     with qu002,sql do
     begin
        Close;Clear;
        add(' SELECT K.SNID, K.PurchaseId, K.SuppId+''-''+K.SuppName as Supplier, '
           +' CONVERT(Varchar(10),K.Transdate,103) as Tanggal, K.ItemID, '
           +' dateadd(Day, isnull(K.JatuhTempo,0),K.Transdate) as jth FROM '
           +' (SELECT A.SNID, C.PurchaseId, C.SuppId, D.SuppName, C.Transdate, A.ItemID, '
           +' C.JatuhTempo, A.FgJual FROM APTrPurchaseDtSN A '
           +' INNER JOIN APTrPurchaseHd C ON A.PurchaseId=C.PurchaseId '
           +' INNER JOIN APMsSupplier D ON C.SuppID = D.SuppID UNION ALL '
           +' SELECT A.SNID, C.KonsinyasiID, C.CustID, D.CustName, C.Transdate, A.ItemID, '
           +' C.JatuhTempo, A.FgJual FROM APTrKonsinyasiDtSn A '
           +' INNER JOIN APTrKonsinyasiHd C ON A.KonsinyasiID=C.KonsinyasiID '
           +' INNER JOIN ARMsCustomer D ON C.CustID=D.CustID UNION ALL '
           +' SELECT A.SNID, C.ReturnRepID, C.SuppID, D.SuppName, C.Transdate, A.ItemID,  0 as JatuhTempo, A.FgJual '
           +' FROM APTrReturnRepSN A INNER JOIN APTrReturnRepHd C ON A.ReturnRepID=C.ReturnRepID '
           +' INNER JOIN APMsSupplier D ON C.SuppID=D.SuppID) as K '
           +' WHERE K.ItemID ='''+quMain.FieldByName('ItemID').AsString+''' '
           +' AND K.FgJual=''T'' ');
        if rbSelect2.Checked then
           Add('AND K.SNID IN '+SelGrid(quAct,dbgList,'SNID'));
        add('ORDER BY K.SNID ');
        Open;
        if IsEmpty then
        begin
           MsgInfo('No Data !');
           Abort;
        end;
     end;

     if Sender=bbPreview then
        MyReport.PreviewModal
     else
        MyReport.Print;
     finally
        free;
     end;
end;

procedure TfmINRptUmurBarangDlg.rbAllClick(Sender: TObject);
begin
  inherited;
  if Sender=rbAll then
  begin
     dbgItem.OptionsBehavior := dbgItem.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=rbSelect then
  begin
     dbgItem.OptionsBehavior := dbgItem.OptionsBehavior + [edgoMultiSelect];
     if dbgItem.FocusedNode <> nil then
       dbgItem.FocusedNode.Selected := True;
  end;
end;

procedure TfmINRptUmurBarangDlg.bbCariClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Barang ';
       SQLString := ' SELECT Distinct K.ItemName as Nama_Barang, K.ItemID as Kode_Barang FROM '
           +' (SELECT A.ItemID,B.ItemName FROM APTrPurchaseDtSN A '
           +' INNER JOIN InMsItem B ON A.ItemID=B.ItemID '
           +' UNION ALL '
           +' SELECT A.ItemID,B.ItemName FROM APTrKonsinyasiDtSn A '
           +' INNER JOIN InMsItem B ON A.ItemID=B.ItemID) as K';
       if ShowModal = MrOK then
       begin
         Self.quMain.Locate('ItemID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmINRptUmurBarangDlg.dbgItemClick(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

end.
