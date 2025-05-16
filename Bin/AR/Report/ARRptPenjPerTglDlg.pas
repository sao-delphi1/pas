unit ARRptPenjPerTglDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib;

type
  TfmARRptPenjPerTglDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    rcNota: TdxCheckEdit;
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
  fmARRptPenjPerTglDlg: TfmARRptPenjPerTglDlg;

implementation

uses INQRRptAdjusment, UnitGeneral, APQRRptPembPerTgl, ARQRRptPenjPerTgl,
  RptLv4, RptLv2, UnitDate;

{$R *.dfm}

procedure TfmARRptPenjPerTglDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmARQRRptPenjPerTgl.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);
       with qu001,sql do
       begin
           Close;Clear;
           add('SELECT DISTINCT K.Transdate,K.Tgl,K.Tgl2,K.Transdate as Transdate2 FROM'
              +'(SELECT DISTINCT Transdate,Convert(Varchar(10),Transdate,103) as Tgl,Convert(varchar(8),TransDate,112) as Tgl2'
              +' FROM ARTrPenjualanHd WHERE FgForm=''AR'' AND '
              +' Convert(varchar(8),TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
           Add(' ) as K ORDER BY K.Tgl2 ');
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
          add(' SELECT DISTINCT K.Discount,K.SaleId,K.CustId,K.Transdate,K.Cust,K.CurrID,K.TTLPj,K.Rate,K.SubTotal,K.PPN,K.TaxID FROM ('
             +' SELECT A.Discount,A.SaleId, A.CustId,A.Transdate,B.CustName as Cust,CurrID,ISNULL(TTLPj+DP,0) as TTLPj,Rate,'
             +' ISNULL(A.StPj,0) as SubTotal,ISNULL(A.PPN,0) as PPN,A.TaxID FROM ARTrPenjualanHd A '
             +' INNER JOIN ARMsCustomer B ON A.CustId=B.CustId WHERE A.Transdate=:Transdate AND A.FgForm=''AR'') as K ORDER by K.SaleID ');
          Parameters.ParamByName('Transdate').DataType := ftDateTime;
          Open;
       end;
       if rcNota.Checked then
       Begin
           with qu003,sql do
           begin
              Close;Clear;
              add(' SELECT distinct A.ItemId,B.ItemName,A.Qty,(A.Price+A.Komisi) as Price,(A.Qty*(A.Price+A.Komisi)) as Total'
                 +' FROM ARTrPenjualandt A INNER JOIN INMsItem B ON A.ItemId=B.ItemId'
                 +' WHERE A.SaleId=:SaleId');
              add(' ORDER by A.ItemID ');
              Parameters.ParamByName('SaleId').DataType := ftString;
              Open;
           end;
       End Else
       Begin
          bnd002.Enabled := False;
          bndCH.Height := 23;
       End;
       if Sender=bbPreview then
          MyReport.Previewmodal
       else
          MyReport.Print;
     finally
        free;
     end;
end;

procedure TfmARRptPenjPerTglDlg.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date:=EncodeDate(GetYear(Date),GetMonth(Date),1);
  dt2.date := date;
end;

end.
