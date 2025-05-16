unit ARRptAbsensiDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxCore, dxButton, dxEditor, dxEdLib;

type
  TfmARRptAbsensiDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    bbKaryawan: TdxButton;
    dbgList: TdxDBGrid;
    dbgListSalesID: TdxDBGridMaskColumn;
    dbgListSalesName: TdxDBGridMaskColumn;
    procedure bbKaryawanClick(Sender: TObject);
    procedure rbSelectClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARRptAbsensiDlg: TfmARRptAbsensiDlg;

implementation

uses Search, MyUnit, UnitGeneral, ARQRRptAbsensi, RptLv0;

{$R *.dfm}

procedure TfmARRptAbsensiDlg.bbKaryawanClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Cari Karyawan';
       SQLString := ' SELECT SalesName as Nama_Karyawan ,SalesId as Kode_Karyawan'
                   +' FROM ARMsSales A '
                   +' ORDER BY SalesID';

       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('SalesID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARRptAbsensiDlg.rbSelectClick(Sender: TObject);
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

procedure TfmARRptAbsensiDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  dt1.Date := date;
  dt2.date := date;
end;

procedure TfmARRptAbsensiDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
 with TfmARQRRptAbsensi.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);

       with qu001,sql do
       begin
          Close;Clear;
          add(' Select B.SalesName as Karyawan, '
             +' Convert(Varchar(8),JamMasuk,108) as JamMasuk, '
             +' Convert(Varchar(8),JamKeluar,108) as JamKeluar, '
             +' Convert(Varchar(10),Tanggal,103) as Tanggal, '
             +' Convert(Varchar(8),JamKeluar-JamMasuk,108) as Durasi '
             +' FROM TrAbsensi A, ArMsSales B'
             +' WHERE A.SalesId=B.SalesID'
             +' AND Convert(varchar(8),Tanggal,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' '
             +' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
          if rbSelect.Checked then
          Add('AND B.SalesID IN '+SelGrid(quAct,dbgList,'SalesID'));
          Add(' ORDER BY A.Tanggal,A.SalesID');
          Open;
          if IsEmpty then
           begin
              MsgInfo('No Data !');
              Abort;
           end;
       end;

       if Sender=bbPreview then
          MyReport.Previewmodal
       else
          MyReport.Print;
     finally
        free;
     end;
end;

end.
