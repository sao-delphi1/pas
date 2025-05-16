unit ARRptTrStServiceDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib, dxTL, dxDBCtrl, dxDBGrid, dxCore, dxButton;

type
  TfmARRptStServiceDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    dbgList: TdxDBGrid;
    dbgListCustID: TdxDBGridMaskColumn;
    dbgListCustName: TdxDBGridMaskColumn;
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
  fmARRptStServiceDlg: TfmARRptStServiceDlg;

implementation

uses INQRRptAdjusment, UnitGeneral, ARQRRptTrService, StdLv0, Search;

{$R *.dfm}

procedure TfmARRptStServiceDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmARQRRptService.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);

       with qu001,sql do
       begin
           Close;Clear;
           add(' select A.ServiceId,Convert(Varchar(10),Transdate,103) as Tgl,'
              +' A.WareHouseId,B.WareHouseName,'
              +' A.CustId,C.CustName ,A.Note'
              +' FROM ARTrServiceHd A INNER JOIN INMsWareHouse B ON A.WareHouseID=B.WareHouseID'
              +' INNER JOIN ARMsCustomer C ON A.CustId=C.CustId WHERE'
              +' Convert(varchar(8),A.TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
          if rbSelect.Checked then
           Add(' AND A.CustId IN '+SelGrid(quAct,dbgList,'CustID'));
           add('  order by Convert(Varchar(10),A.Transdate,112),A.ServiceId');
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
          add(' SELECT distinct A.ItemId,B.ItemName,'
             +' A.QTY '
             +' FROM ARTrServiceDt A INNER JOIN INMsItem B ON A.ItemId=B.ItemId'
             +' WHERE ServiceID=:ServiceId');
          add('  order by A.ItemID ');
          Parameters.ParamByName('ServiceId').DataType := ftString;
          Open;

       end;

        with qu003,sql do
       begin
          Close;Clear;
          add(' SELECT distinct A.ItemId,B.ItemName,'
             +' A.QTY '
             +' FROM ARTrServiceDtPS A INNER JOIN INMsItem B ON A.ItemId=B.ItemId'
             +' WHERE ServiceID=:ServiceId');
          add('  order by A.ItemID ');
          Parameters.ParamByName('ServiceId').DataType := ftString;
          Open;
          
       end;


       if Sender=bbPreview then
          MyReport.PreviewModal
       else
          MyReport.Print;


     finally
        free;
     end;
end;

procedure TfmARRptStServiceDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  dt1.Date := date;
  dt2.date := date;
end;

procedure TfmARRptStServiceDlg.rbSelectClick(Sender: TObject);
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

procedure TfmARRptStServiceDlg.bbCancelClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Pelanggan';
       SQLString := ' SELECT CustName as Nama_Pelanggan ,CustId as Kode_Pelanggan'
                   +' FROM ARMsCustomer A '
                   +' ORDER BY CustID';

       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('CustID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

end.
