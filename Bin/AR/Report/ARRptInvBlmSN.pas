unit ARRptInvBlmSN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxEdLib;

type
  TfmARRptInvBlmSN = class(TfmRptDlg)
    dgrReport: TdxDBGrid;
    quActSaleID: TStringField;
    quActTransdate: TDateTimeField;
    quActCustID: TStringField;
    quActCustName: TStringField;
    quActItemID: TStringField;
    quActItemName: TStringField;
    quActQty: TIntegerField;
    quActUpdUser: TStringField;
    quActJumSN: TIntegerField;
    dgrReportColumn1: TdxDBGridColumn;
    dgrReportColumn2: TdxDBGridColumn;
    dgrReportColumn3: TdxDBGridColumn;
    dgrReportColumn4: TdxDBGridColumn;
    dgrReportColumn5: TdxDBGridColumn;
    dgrReportColumn6: TdxDBGridColumn;
    dgrReportColumn7: TdxDBGridColumn;
    dgrReportColumn8: TdxDBGridColumn;
    dt1: TdxDateEdit;
    bbRefresh: TBitBtn;
    procedure dsActStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshData;
  public
    { Public declarations }
  end;

var
  fmARRptInvBlmSN: TfmARRptInvBlmSN;

implementation

uses UnitGeneral, MyUnit, ConMain;
{$R *.dfm}

procedure TfmARRptInvBlmSN.dsActStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly2(dgrReportColumn1,TRUE);
  SetReadOnly2(dgrReportColumn2,TRUE);
  SetReadOnly2(dgrReportColumn3,TRUE);
  SetReadOnly2(dgrReportColumn4,TRUE);
  SetReadOnly2(dgrReportColumn5,TRUE);
  SetReadOnly2(dgrReportColumn6,TRUE);
  SetReadOnly2(dgrReportColumn7,TRUE);
  SetReadOnly2(dgrReportColumn8,TRUE);
end;

procedure TfmARRptInvBlmSN.RefreshData;
begin
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT K.* FROM ( '
       +'select B.SaleID,B.Transdate,B.CustID,C.CustName,A.ItemID,D.ItemName,A.Qty,A.UpdUser, '
       +'ISNULL((SELECT COUNT(X.SNID) FROM ARTrPenjualanSN X WHERE X.ItemID=A.ItemID AND X.SaleID=B.SaleID),0) as JumSN '
       +'from ARTrPenjualanDt A '
       +'inner join ARTrPenjualanHd B on A.SaleID=B.SaleID '
       +'inner join ARMsCustomer C on B.CustID=C.CustID '
       +'inner join INMsItem D on A.ItemID=D.ItemID '
       +'WHERE CONVERT(VARCHAR(10),B.Transdate,112) between ''20210101'' and '''+FormatDateTime('yyyymmdd',dt1.date)+''' '
       +') as K '
       +'WHERE Qty-K.JumSN<>0 '
       +'ORDER BY K.TransDate ');
    Open;
  end;
end;

procedure TfmARRptInvBlmSN.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date := Date;
  RefreshData;
end;

procedure TfmARRptInvBlmSN.bbRefreshClick(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

end.
