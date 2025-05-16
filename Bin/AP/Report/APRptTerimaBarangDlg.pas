unit APRptTerimaBarangDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib;

type
  TfmAPRptTerimaBarangDlg = class(TfmRptDlg)
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
  fmAPRptTerimaBarangDlg: TfmAPRptTerimaBarangDlg;

implementation

uses INQRRptAdjusment, UnitGeneral, INQRRptTransferBarang,
  APQRRptTerimaBarang;

{$R *.dfm}

procedure TfmAPRptTerimaBarangDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmAPQRRptTerimaBarang.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);


       with qu001,sql do
       begin
           Close;Clear;
           add(' select A.KonsinyasiId,Convert(Varchar(10),Transdate,103) as Tgl,'
              +' A.CustId,B.CustName,A.WareHouseId,C.WareHouseName,'
              +' A.Note'
              +' FROM APTrKonsinyasiHd A INNER JOIN ARMsCustomer B ON A.CustId=B.CustId'
              +' INNER JOIN INMsWareHouse C ON A.WareHouseId=C.WareHouseId'
              +' WHERE'
              +' CONVERT(varchar(8),A.TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
           add(' ORDER by Convert(Varchar(10),A.Transdate,112),A.KonsinyasiId');
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
             +' QTY  '
             +' FROM APTrKonsinyasiDt A INNER JOIN INMsItem B ON A.ItemId=B.ItemId'
             +' WHERE KonsinyasiID=:KonsinyasiId');
          add('  order by A.ItemID ');
          Parameters.ParamByName('KonsinyasiId').DataType := ftString;
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

procedure TfmAPRptTerimaBarangDlg.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date := date;
  dt2.date := date;
end;

end.
