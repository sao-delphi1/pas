unit ARRptBukuBesarPiutangDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls, DB,
  ADODB, Buttons, ExtCtrls;

type
  TfmARRptBukuBesarPiutangDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    procedure FormShow(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARRptBukuBesarPiutangDlg: TfmARRptBukuBesarPiutangDlg;

implementation

uses UnitGeneral, ARQRRptBukuBesar;

{$R *.dfm}

procedure TfmARRptBukuBesarPiutangDlg.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date := date;
  dt2.date := date;
end;

procedure TfmARRptBukuBesarPiutangDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmARQRRptBukuBesar.Create(Self) do
     try
      qrlTitle.Caption := laTitle.Caption;
      qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);

      with qu001,sql do
       begin
           Close;Clear;
           Add(' SELECT A.SaleID,CONVERT(Varchar(10),A.Transdate,103) as Tanggal, '
              +' A.CustID+'' - ''+B.CustName+''(''+A.Nama+'')'' as Pelanggan, C.SalesName, A.CurrID,A.StPj,A.DP '
              +' FROM ARTrPenjualanHd A '
              +' INNER JOIN ArMsCustomer B ON A.CustID=B.CustID '
              +' INNER JOIN ArMsSales C ON A.SalesID=C.SalesID '
              +' WHERE CONVERT(VARCHAR(8),A.Transdate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' '
              +' AND A.FlagCounter <>''C'' ');
           Add(' ORDER by A.SaleId ');
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
           Add(' SELECT SUM(ValuePayment) as Total_Bayar '
              +' FROM ARTrPiutangDt  '
              +' WHERE SaleID=:SaleID');
           Parameters.ParamByName('SaleId').DataType := ftString;
           Open;
       end;

      with qu003,sql do
       begin
           Close;Clear;
           Add(' SELECT TOP 1 CONVERT(VARCHAR(10),Transdate,103) AS Tanggal_Bayar '
              +' FROM ARTrPiutangHd A, ArTrPiutangDt B  '
              +' WHERE A.PiutangID=B.PiutangID AND B.SaleID=:SaleID');
           Parameters.ParamByName('SaleId').DataType := ftString;
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

end.
