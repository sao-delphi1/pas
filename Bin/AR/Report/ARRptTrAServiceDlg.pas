unit ARRptTrAServiceDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib, dxTL, dxDBCtrl, dxDBGrid, dxCore, dxButton;

type
  TfmARRptAServiceDlg = class(TfmRptDlg)
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
  fmARRptAServiceDlg: TfmARRptAServiceDlg;

implementation

uses INQRRptAdjusment, UnitGeneral, ARQRRptTrService, ARQRRptTrAService,
  StdLv0, Search;

{$R *.dfm}

procedure TfmARRptAServiceDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmARQRRptAService.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt2.date);

       with qu001,sql do
       begin
           Close;Clear;
           Add(' SELECT DISTINCT A.ServiceId,Convert(varchar(10),TransDate,103) as Tgl, '
              +' A.Barang, C.QTY,B.CustName+'' - ''+A.Nama as Pelanggan, Convert(Varchar(8),A.JamMasuk,108) as JamMasuk, '
              +' Convert(Varchar(8),A.JamSelesai,108) as JamSelesai,Convert(Varchar(10),A.JamSelesai,103) as TglSelesai FROM ARTrServiceHd A '
              +' INNER JOIN ArMsCustomer B ON A.CustID=B.CustID '
              +' INNER JOIN ARTrServiceDt C ON A.ServiceId=C.ServiceId '
              +' WHERE A.FlagService=''S'' AND A.ServiceId NOT IN (Select ServiceId FROM ARTrInvServiceHd)'
              +' AND Convert(varchar(8),A.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
           if rbSelect.Checked then
            Add(' AND A.CustId IN '+SelGrid(quAct,dbgList,'CustID'));
           Add(' ORDER by A.ServiceID ');
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

procedure TfmARRptAServiceDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  dt1.Date := date;
  dt2.date := date;
end;

procedure TfmARRptAServiceDlg.rbSelectClick(Sender: TObject);
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

procedure TfmARRptAServiceDlg.bbCancelClick(Sender: TObject);
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
