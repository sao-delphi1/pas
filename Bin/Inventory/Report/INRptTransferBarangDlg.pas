unit INRptTransferBarangDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib;

type
  TfmINRptTransferBarangDlg = class(TfmRptDlg)
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
  fmINRptTransferBarangDlg: TfmINRptTransferBarangDlg;

implementation

uses INQRRptAdjusment, UnitGeneral, INQRRptTransferBarang;

{$R *.dfm}

procedure TfmINRptTransferBarangDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmINQRRptTransferBarang.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);
        with qu001,sql do
       begin
           Close;Clear;
           add(' select A.TransferId,Convert(Varchar(10),Transferdate,103) as Tgl,'
              +' (WareHousesrc+''-''+(Select C.WareHouseName FROM INMsWareHouse C WHERE C.WareHouseId=A.WareHouseSrc)) as Sumber,'
              +' (WareHouseDest+''-''+(Select C.WareHouseName FROM INMsWareHouse C WHERE C.WareHouseId=A.WareHouseDest)) as Tujuan,'
              +' Note'
              +' FROM INTrTransferItemHd A '
              +' WHERE'
              +' Convert(varchar(8),A.TransferDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
           add('  order by Convert(Varchar(10),A.Transferdate,112),A.TransferId');
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
             +' FROM INTrTransferItemDt A INNER JOIN INMsItem B ON A.ItemId=B.ItemId'
             +' WHERE TransferID=:TransferId');
          add('  order by A.ItemID ');
          Parameters.ParamByName('TransferId').DataType := ftString;
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

procedure TfmINRptTransferBarangDlg.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date := date;
  dt2.date := date;
end;

end.
