unit ARRptTrInvServiceDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib, dxTL, dxDBCtrl, dxDBGrid;

type
  TfmARRptInvServiceDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    procedure bbPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARRptInvServiceDlg: TfmARRptInvServiceDlg;

implementation

uses INQRRptAdjusment, UnitGeneral, ARQRRptTrService, ARQRRptTrInvService,
  StdLv0;

{$R *.dfm}

procedure TfmARRptInvServiceDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmARQRRptInvService.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);
       with qu001,sql do
       begin
           Close;Clear;
           add(' select A.InvServiceId,Convert(Varchar(10),A.Transdate,103) as Tgl,A.ServiceId,A.TeknisiId,D.TeknisiName'
              +' ,A.Servicefee,A.TTLSV,B.Note, A.Note as Keterangan, E.Nama '
              +' FROM ARTrInvServiceHd A INNER JOIN ARMsTeknisi D ON A.TeknisiId=D.TeknisiId '
              +' INNER JOIN ArTrServiceDt B ON A.ServiceID=B.ServiceID '
              +' INNER JOIN ArTrServiceHd E ON A.ServiceID=E.ServiceID WHERE'
              +' Convert(varchar(8),A.TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
           add('  order by Convert(Varchar(10),A.Transdate,112),A.InvServiceId');
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
             +' A.QTY,C.Address,C.Barang,C.SeriNumber '
             +' FROM ARTrServiceDt A INNER JOIN INMsItem B ON A.ItemId=B.ItemId'
             +' INNER JOIN ArTrServiceHD C ON A.ServiceID=C.ServiceID '
             +' WHERE A.ServiceID=:ServiceId');
          add('  order by A.ItemID ');
          Parameters.ParamByName('ServiceId').DataType := ftString;
          Open;

       end;

       with qu003,sql do
       begin
          Close;Clear;
          add(' SELECT distinct A.ItemId,B.ItemName,A.QTY,A.Price '
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

procedure TfmARRptInvServiceDlg.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date := date;
  dt2.date := date;
end;

end.
