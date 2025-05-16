unit ARRptSisaTransferBarangDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner, StdCtrls,
  DB, ADODB, Buttons, ExtCtrls, dxEditor, dxEdLib, dxCore, dxButton;

type
  TfmARRptSisaTransferBarangDlg = class(TfmRptDlg)
    quActCustID: TStringField;
    quActCustName: TStringField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    dt1: TdxDateEdit;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    dbgList: TdxDBGrid;
    dbgListCustID: TdxDBGridMaskColumn;
    dbgListCustName: TdxDBGridMaskColumn;
    bbCancel: TdxButton;
    RgOption: TRadioGroup;
    CheckBox1: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure rbSelectClick(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure RgOptionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    lStatus : string;
  end;

var
  fmARRptSisaTransferBarangDlg: TfmARRptSisaTransferBarangDlg;

implementation

uses StdLv0, INQRRptMsItem, UnitGeneral, APQRRptSisaTerimaBarang,
  ARQRRptSisaTransferBarang, ARQRRptTransferBarang, Search, ARQRRptSOBelumInvoice;

{$R *.dfm}

procedure TfmARRptSisaTransferBarangDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  dt1.Date := date;
  if lStatus = 'DO' then
  begin
    laTitle.Caption := 'Laporan Sisa Konsinyasi Pelanggan';
    RgOption.Visible := False;
    CheckBox1.Visible := False;
  end else
  begin
    laTitle.Caption := 'Laporan SO Pending';
    RgOption.Visible := True;

  end;
end;

procedure TfmARRptSisaTransferBarangDlg.rbSelectClick(Sender: TObject);
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

procedure TfmARRptSisaTransferBarangDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  if lStatus = 'DO' then
  begin
  with TfmARQRRptSisaTransferBarang.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.Date);
       tgldari := dt1.Date;

         with qu001,SQL do
         begin
           Close;Clear;
           add('SELECT distinct A.CustId,(A.CustId+''-''+B.CustName) as Pelanggan '
              +'FROM ARTrKonTransBrgHd A INNER JOIN ARMsCustomer B ON A.CustID=B.CustID '
              +'INNER JOIN ARTrKonTransBrgDt C ON A.KonTransBrgID=C.KonTransBrgId '
              +'WHERE isnull(C.Qty,0)-(Select Isnull(sum(qty),0) FROM ARTrKonInvPelDt D '
              +'WHERE D.ItemId=C.ItemId AND D.KonTransBrgId=A.KonTransBrgId) '
              +'-(Select Isnull(Sum(qty),0) FROM ARTrKonReturDt G WHERE G.ItemId=C.ItemId And G.KonTransBrgId=A.KonTransBrgId '
              +')<> 0 ');
           if rbSelect.Checked then
              Add(' AND A.CustId IN '+SelGrid(quAct,dbgList,'CustID'));
           Add('  AND Convert(varchar(8),A.Transdate,112)<='''+FormatDateTime('yyyyMMdd',dt1.Date)+''' ');
           add('  ORDER by A.CustID ');
           Open;
           if IsEmpty then
           begin
             MsgInfo('No Data !');
             Abort;
           end;
         end;

       qu002.Open;

       if Sender=bbPreview then
          MyReport.PreviewModal
       else
          MyReport.Print;
     finally
        free;
     end;

    end else
    begin
    with TfmARQRRptSOBelumInvoice.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.Date);
       tgldari := dt1.Date;

         if RgOption.ItemIndex = 0 then
         begin
           iStatus := 'P';
         end else
         begin
           iStatus := 'S';
           QRLabel10.Caption := 'Sales';
           QRLabel10.Caption := 'Pelanggan';
         end;

         with qu001,SQL do
         begin
           Close;Clear;
           add(' SELECT DISTINCT K.CustID,K.CustName+'' - ''+K.CustID as Pelanggan,K.CustName FROM ( ');
           if RgOption.ItemIndex = 0 then
           Add(' SELECT B.CustID,C.CustName,A.POID,B.Transdate,A.Qty, ')
           else
           Add(' SELECT B.SalesID as CustID,C.SalesName as CustName,A.POID,B.Transdate,A.Qty, ');
           Add(' ISNULL((SELECT SUM(X.Qty) FROM ARTrPenjualanDt X Inner join ARtrPenjualanHd Y on X.SaleID=Y.SaleID '
              +' Where Y.SOID=A.POID AND X.ItemID=A.ItemID),0) as Invoice '
              +' FROM ARTrPurchaseOrderDt A '
              +' INNER JOIN ARTrPurchaseOrderHd B ON A.POID=B.POID AND ISNULL(B.FgClose,''T'')=''T'' AND B.Jenis=''Y'' ');
           if RgOption.ItemIndex = 0 then
           Add(' INNER JOIN ARMsCustomer C ON B.CustID=C.CustID ')
           else
           Add(' INNER JOIN ARMsSales C ON B.SalesID=C.SalesID ');
           Add(' ) as K ');
           Add(' WHERE Convert(varchar(8),K.Transdate,112) BETWEEN ''20210101'' AND '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' ');
           Add(' AND K.Qty-K.Invoice>0 ');
           if rbSelect.Checked then
           Add(' AND K.CustId IN '+SelGrid(quAct,dbgList,'CustID'));
           add(' ORDER by K.CustName ');

           Open;
           if IsEmpty then
           begin
             MsgInfo('No Data !');
             Abort;
           end;
         end;

       qu002.Open;

       if CheckBox1.Checked then
       qu003.Open
       else
       begin
         FGGRN := 'X';
         bnd002.Enabled := False;
       end;

       if Sender=bbPreview then
          MyReport.PreviewModal
       else
          MyReport.Print;


     finally
        free;
     end;
  end;

end;

procedure TfmARRptSisaTransferBarangDlg.bbCancelClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
      if RgOption.ItemIndex = 0 then
      begin
        Title := 'Pelanggan';
        SQLString := ' SELECT CustName as Nama_Pelanggan ,CustId as Kode_Pelanggan FROM ARMsCustomer ORDER BY CustID';
      end else
      begin
        Title := 'Pelanggan';
        SQLString := ' SELECT SalesName as Nama_Sales,SalesID as Kode_SalesID FROM ARMsSales ORDER BY SalesID';
      end;
       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('CustID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARRptSisaTransferBarangDlg.RgOptionClick(Sender: TObject);
begin
  inherited;
  if RgOption.ItemIndex = 0 then
  begin
    dbgListCustID.Caption := 'Kode Pelanggan';
    dbgListCustName.Caption := 'Nama Pelanggan';
    bbCancel.Caption := 'CARI PELANGGAN';
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT CustID,CustName FROM ARMsCustomer ORDER BY CustID');
      Open;
    end;
  end else
  begin
    dbgListCustID.Caption := 'Kode Sales';
    dbgListCustName.Caption := 'Nama Sales';
    bbCancel.Caption := 'CARI SALES';
    with quAct,SQL do
    begin
      Close;Clear;
      Add('SELECT SalesID as CustID,SalesName as CustName FROM ARMsSales WHERE FgActive <> 0 ORDER BY SalesID');
      Open;
    end;
  end;
end;

end.
