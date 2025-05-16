unit RptINStokDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib, dxTL, dxDBCtrl, dxDBGrid, dxCore, dxButton;

type
  TfmINRptStokDlg = class(TfmRptDlg)
    dsMain: TDataSource;
    quMain: TADOQuery;
    quActItemID: TStringField;
    quActItemName: TStringField;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    dbgWare: TdxDBGrid;
    dxDBGridColumn1: TdxDBGridColumn;
    dxDBGridColumn2: TdxDBGridColumn;
    Panel1: TPanel;
    rbselect2: TRadioButton;
    rbAll2: TRadioButton;
    dbgList: TdxDBGrid;
    dbgListItemID: TdxDBGridMaskColumn;
    dbgListItemName: TdxDBGridMaskColumn;
    bbCancel: TdxButton;
    cbxOuts: TCheckBox;
    CBDetil: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure rbSelectClick(Sender: TObject);
    procedure rbselect2Click(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINRptStokDlg: TfmINRptStokDlg;

implementation

uses QRRptINStok, MyUnit, UnitGeneral, Search;

{$R *.dfm}

procedure TfmINRptStokDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  qumain.Open;        
  dt1.Date:=date;
  dt2.Date:=date;
end;

procedure TfmINRptStokDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmINQRRptStok.Create(Self) do
     try
         qrlTitle.Caption  := laTitle.Caption;
         qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);
         TanggalDari := dt1.date;
         TanggalSampai:= dt2.date;
     if cbxOuts.Checked then
       bChecked := True
     else
       bChecked := False;
     if CBDetil.Checked then
       bDetail := True
     else
       bDetail := False;
         
       with qu001,SQL do
       begin
          Close;Clear;
          add('select distinct A.WareHouseId,(A.WareHouseID+''-''+B.WareHouseName) as Gudang '
             +' FROM Allitem A INNER JOIN '
             +' INMsWareHouse B ON A.WareHouseID=B.WareHouseID');// WHERE'
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

       with qu002,SQL do
       begin
          Close;Clear;
          add(' select distinct A.ItemId,(A.ItemID+''-''+B.ItemName) as Barang,B.ItemName,B.UOMId, '
             +' WareHouseID FROM Allitem A INNER JOIN '
             +' INMsItem B ON A.ItemID=B.ItemID WHERE B.Ctk=''Y'' AND WareHouseID=:WareHouseId');
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

procedure TfmINRptStokDlg.rbSelectClick(Sender: TObject);
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

procedure TfmINRptStokDlg.rbselect2Click(Sender: TObject);
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

procedure TfmINRptStokDlg.bbCancelClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Barang';
       SQLString := ' SELECT ItemName as Nama_Barang ,ItemId as Kode_Barang'
                   +' FROM INMsItem WHERE FgActive=''Y'' '
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
