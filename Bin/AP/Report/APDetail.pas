unit APDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid;

type
  TfmAPDetail = class(TfmRptDlg)
    dbgPenjualan: TdxDBGrid;
    quActitemid: TStringField;
    quActitemname: TStringField;
    quActqty: TBCDField;
    quActuomid: TStringField;
    quActprice: TBCDField;
    quActtotal: TBCDField;
    dbgPenjualanColumn1: TdxDBGridColumn;
    dbgPenjualanColumn2: TdxDBGridColumn;
    dbgPenjualanColumn3: TdxDBGridColumn;
    dbgPenjualanColumn4: TdxDBGridColumn;
    dbgPenjualanColumn5: TdxDBGridColumn;
    dbgPenjualanColumn6: TdxDBGridColumn;
    quActflag: TStringField;
    quActpurchaseid: TStringField;
    procedure FormShow(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    AP : string;
  end;

var
  fmAPDetail: TfmAPDetail;

implementation

{$R *.dfm}
uses MyUnit, UnitGeneral;

procedure TfmAPDetail.FormShow(Sender: TObject);
begin
  inherited;
  with quAct, SQL do
  begin
    Close;Clear;
    Add('select K.* from ( '
       +'select ''AP'' as Flag,A.PurchaseID,a.itemid,itemname,qty,uomid,price,qty*price as total '
       +'from APTrPurchaseDt a '
       +'inner join inmsitem b on a.itemid=b.itemid '
       +'union all '
       +'select ''B'' as Flag,A.SaleID,a.itemid,itemname,qty,a.uomid,price,qty*price as total '
       +'from artrpenjualandt a '
       +'inner join inmsitem b on a.itemid=b.itemid '
       +') as K '
       +'Where K.Flag='''+AP+''' AND K.PurchaseID='''+laTitle.Caption+''' '
       +'order by K.Itemid ');
    Open;
  end;
end;

procedure TfmAPDetail.dsActStateChange(Sender: TObject);
begin
  inherited;
  setReadOnly(dbgPenjualanColumn1,TRUE);
  setReadOnly(dbgPenjualanColumn2,TRUE);
  setReadOnly(dbgPenjualanColumn3,TRUE);
  setReadOnly(dbgPenjualanColumn4,TRUE);
  setReadOnly(dbgPenjualanColumn5,TRUE);
  setReadOnly(dbgPenjualanColumn6,TRUE);
end;

end.
