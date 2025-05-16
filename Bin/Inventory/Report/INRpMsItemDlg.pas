unit INRpMsItemDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner, StdCtrls,
  DB, ADODB, Buttons, ExtCtrls;

type
  TfmINRptMsItemDlg = class(TfmRptDlg)
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    dbgList: TdxDBGrid;
    dbgListItemId: TdxDBGridMaskColumn;
    dbgListItemName: TdxDBGridMaskColumn;
    quActItemID: TStringField;
    quActItemName: TStringField;
    quActProductID: TStringField;
    quActGroupID: TStringField;
    quActUOMID: TStringField;
    quActGarantee: TStringField;
    quActCurrID: TStringField;
    quActUserPrice: TBCDField;
    quActDealerPrice: TBCDField;
    quActUpdDate: TDateTimeField;
    quActUpdUser: TStringField;
    quActJangkaGarantee: TBCDField;
    quActMinimumStok: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure rbSelectClick(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINRptMsItemDlg: TfmINRptMsItemDlg;

implementation

uses StdLv0, INQRRptMsItem, UnitGeneral;

{$R *.dfm}

procedure TfmINRptMsItemDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
end;

procedure TfmINRptMsItemDlg.rbSelectClick(Sender: TObject);
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

procedure TfmINRptMsItemDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmINQRRptMsItem.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',date);

       with qu001,sql do
       begin
           Close;Clear;
           add(' select distinct A.GroupId,(A.GroupID+''-''+B.GroupDesc) as NamaGroup'
              +'  FROM INMsItem A INNER JOIN INMsGroup B ON A.GroupID=B.GroupID');
           if rbSelect.Checked then
            Add('  WHERE A.ItemId IN '+SelGrid(quAct,dbgList,'ItemID'));
           add('  order by A.GroupID ');
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
          add(' select distinct ItemId,ItemName,ProductDesc,CurrID,UserPrice,dealerPrice '
             +' FROM INMsItem A INNER JOIN INMSProduct B ON A.ProductId=B.ProductId'
             +' WHERE GroupID=:GroupId');
           if rbSelect.Checked then
            Add('  and ItemID IN '+SelGrid(quact,dbgList,'ItemID'));
          add('  order by ItemID ');
          Parameters.ParamByName('GroupId').DataType := ftString;
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

end.
