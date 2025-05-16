unit APRptPembPerBrgDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib, dxTL, dxDBCtrl, dxDBGrid, dxCore, dxButton;

type
  TfmAPRptPembPerBrgDlg = class(TfmRptDlg)
    quActItemID: TStringField;
    quActItemName: TStringField;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    dbgList: TdxDBGrid;
    dbgListItemID: TdxDBGridMaskColumn;
    dbgListItemName: TdxDBGridMaskColumn;
    bbCancel: TdxButton;
    procedure bbPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbSelectClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAPRptPembPerBrgDlg: TfmAPRptPembPerBrgDlg;

implementation

uses INQRRptAdjusment, UnitGeneral,  
  StdLv0, APQRRptPembPerBrg, Search;

{$R *.dfm}

procedure TfmAPRptPembPerBrgDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmAPQRRptPembPerBrg.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);

       with qu001,sql do
       begin
           Close;Clear;
           add(' Select Distinct K.ItemId,K.itemId as ItemId2,K.Barang FROM'
              +' (SELECT Distinct B.ItemId,(B.ItemId+''-''+C.ItemName) as Barang'
              +' FROM APTrPurchasedt B INNER JOIN INMsItem C ON C.ItemId=B.ItemId'
              +' INNER JOIN APTrPurchaseHd A ON A.PurchaseId=B.PurchaseId AND A.SuppId=B.SuppId WHERE'
              +' Convert(varchar(8),TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
           if rbSelect.Checked then
           Add(' AND B.ItemId IN '+SelGrid(quAct,dbgList,'ItemID'));
            Add(' ) as K ORDER BY K.ItemId');
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
          add(' SELECT Distinct K.PurchaseId,K.Tgl,K.Tgl2,K.Qty,K.SuppName,K.CurrId,K.Price,K.Total FROM'
             +' ( SELECT distinct A.ItemID,C.PurchaseId,Convert(varchar(10),TransDate,103) as Tgl,Convert(varchar(8),TransDate,112) as Tgl2,'
             +' A.QTY,B.SuppName,C.CurrId,A.Price,(A.Price*A.Qty) as Total '
             +' FROM APTrPurchaseDt A INNER JOIN APTrPurchaseHd C ON A.PurchaseId=C.PurchaseId AND A.SuppId=C.SuppId'
             +' INNER JOIN APMsSupplier B ON A.SuppId=B.SuppId'
             +' ) as K WHERE K.ItemID=:ItemID AND K.tgl2 BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' '
             +' ORDER by K.Tgl2');
          Parameters.ParamByName('ItemId').DataType := ftString;
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

procedure TfmAPRptPembPerBrgDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  dt1.Date := date;
  dt2.date := date;
end;

procedure TfmAPRptPembPerBrgDlg.rbSelectClick(Sender: TObject);
begin
  inherited;
  if Sender=rbAll then
  begin
     dbgList.OptionsBehavior := dbgList.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=rbSelect then
  begin
     dbgList.OptionsBehavior := dbgList.OptionsBehavior + [edgoMultiSelect];
     if dbgList.FocusedNode <> nil then
       dbgList.FocusedNode.Selected := TRUE;
  end;
end;

procedure TfmAPRptPembPerBrgDlg.bbCancelClick(Sender: TObject);
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
