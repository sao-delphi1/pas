unit INRptHistoryStokDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls, DB,
  ADODB, Buttons, ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxCore, dxButton;

type
  TfmINRptHistoryBarangDlg = class(TfmRptDlg)
    quMain: TADOQuery;
    dsMain: TDataSource;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    dbgWare: TdxDBGrid;
    dbgListWareHouseID: TdxDBGridColumn;
    dbgListwareHouseName: TdxDBGridColumn;
    Panel1: TPanel;
    rbselect2: TRadioButton;
    rbAll2: TRadioButton;
    dbgList: TdxDBGrid;
    dbgListItemId: TdxDBGridMaskColumn;
    dbgListItemName: TdxDBGridMaskColumn;
    bbCancel: TdxButton;
    procedure rbSelectClick(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbselect2Click(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINRptHistoryBarangDlg: TfmINRptHistoryBarangDlg;

implementation

uses StdLv0, INQRRptHistoryStok, UnitGeneral, RptLv0, Search, UnitDate;

{$R *.dfm}

procedure TfmINRptHistoryBarangDlg.rbSelectClick(Sender: TObject);
begin
  inherited;
  if Sender=rbAll then
  begin
     dbgWare.OptionsBehavior := dbgWare.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=rbSelect then
  begin
     dbgware.OptionsBehavior := dbgWare.OptionsBehavior + [edgoMultiSelect];
     if dbgware.FocusedNode <> nil then
       dbgware.FocusedNode.Selected := TRUE;
  end;
end;

procedure TfmINRptHistoryBarangDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmINQRRptHistoryStok.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);
       tgldari:=dt1.date;
       tglsmp:=dt2.Date;

       with qu001,sql do
       begin
          Close;Clear;
          add('select distinct A.WareHouseId,(A.WareHouseID+''-''+B.WareHouseName) as Gudang '
             +' FROM Allitem A INNER JOIN '
             +' INMsWareHouse B ON A.WareHouseID=B.WareHouseID');
          if rbSelect.Checked then
           Add('  and A.WareHouseID IN '+SelGrid(quMain,dbgWare,'WareHouseID'));
          if rbSelect2.Checked then
           Add('  and A.ItemID IN '+SelGrid(quact,dbgList,'ItemID'));
           add('  order by A.WareHouseID ');
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
          add(' select distinct A.ItemId,(A.ItemID+''-''+B.ItemName) as Barang,B.ItemName,B.UOMId,C.ProductDesc, '
             +' WareHouseID FROM Allitem A INNER JOIN '
             +' INMsItem B ON A.ItemID=B.ItemID'
             +' INNER JOIN INMsProduct C ON B.ProductId=C.ProductId'
             +' WHERE WareHouseID=:WareHouseId'
             +' And CONVERT(varchar(8),A.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' ');//BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
          if rbSelect2.Checked then
           Add('  and A.ItemID IN '+SelGrid(quact,dbgList,'ItemID'));
           add('  order by A.ItemID ');
           Open;
          if IsEmpty then
          begin
             MsgInfo('No Data !');
             Abort;
          end;
       end;

       qu003.Open;

       if Sender=bbPreview then
          MyReport.PreviewModal
       else
          MyReport.Print;


     finally
        free;
     end;
end;

procedure TfmINRptHistoryBarangDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  qumain.Open;
  dt1.Date:=EncodeDate(GetYear(Date),GetMonth(Date),1);
  dt2.Date:=date;
end;

procedure TfmINRptHistoryBarangDlg.rbselect2Click(Sender: TObject);
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

procedure TfmINRptHistoryBarangDlg.bbCancelClick(Sender: TObject);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       SQLString := ' SELECT ItemName as Nama_Barang ,ItemId as Kode_Barang'
                   +' FROM INMsItem A '
                   +' ORDER BY ItemID';

       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('ItemID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

end.
