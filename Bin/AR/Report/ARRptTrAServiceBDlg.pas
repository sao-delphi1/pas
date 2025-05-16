unit ARRptTrAServiceBDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib, dxTL, dxDBCtrl, dxDBGrid, dxCore, dxButton;

type
  TfmARRptAServiceBDlg = class(TfmRptDlg)
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
    RbCetak: TRadioGroup;
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
  fmARRptAServiceBDlg: TfmARRptAServiceBDlg;

implementation

uses INQRRptAdjusment, UnitGeneral, ARQRRptTrService, ARQRRptTrAService,
  StdLv0, Search, ARQRRptTrAServiceB;

{$R *.dfm}

procedure TfmARRptAServiceBDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmARQRRptAServiceB.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt2.date);

       with qu001,sql do
       begin
           Close;Clear;
           Add(' SELECT DISTINCT A.ServiceId,Convert(varchar(10),TransDate,103) as Tgl, '
              +' A.Barang, C.QTY,B.CustName+'' - ''+A.Nama as Pelanggan, Convert(Varchar(8),A.JamMasuk,108) as JamMasuk '
              +' FROM ARTrServiceHd A INNER JOIN ArMsCustomer B ON A.CustID=B.CustID '
              +' INNER JOIN ARTrServiceDt C ON A.ServiceId=C.ServiceId '
              +' WHERE A.FlagService=''B'' AND A.ServiceId NOT IN (Select ServiceId FROM ARTrInvServiceHd)'
              +' AND Convert(varchar(8),A.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
           if rbSelect.Checked then
            Add(' AND A.CustId IN '+SelGrid(quAct,dbgList,'CustID'));
           if RbCetak.ItemIndex = 0 then
              Add(' ORDER by A.ServiceID ')
           else
              Add(' ORDER by A.Barang ');
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

procedure TfmARRptAServiceBDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  dt1.Date := date;
  dt2.date := date;
end;

procedure TfmARRptAServiceBDlg.rbSelectClick(Sender: TObject);
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

procedure TfmARRptAServiceBDlg.bbCancelClick(Sender: TObject);
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
