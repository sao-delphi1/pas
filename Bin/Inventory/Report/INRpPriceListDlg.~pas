unit INRpPriceListDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, StdCtrls, DB, dxExEdtr, dxCntner, ADODB, Buttons,
  ExtCtrls, dxDBGrid, dxTL, dxDBCtrl, dxEditor, dxEdLib, dxDBTLCl, dxGrClms;

type
  TfmINRptPriceListDlg = class(TfmRptDlg)
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
    quActCtk: TStringField;
    GroupBox1: TGroupBox;
    dt1: TdxDateEdit;
    RadioGroup1: TRadioGroup;
    dbg: TdxDBGrid;
    dbgColumn4: TdxDBGridCheckColumn;
    dbgKdItem: TdxDBGridButtonColumn;
    dbgNmItem: TdxDBGridColumn;
    dbgProduk: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure dsActStateChange(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmINRptPriceListDlg: TfmINRptPriceListDlg;

implementation

uses StdLv0, UnitGeneral, INQRRptPriceList;

{$R *.dfm}

procedure TfmINRptPriceListDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  dt1.Date := date;

end;

procedure TfmINRptPriceListDlg.dsActStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgKdItem,TRUE);
  SetReadOnly(dbgNmItem,TRUE);
  SetReadOnly(dbgProduk,TRUE);
end;

procedure TfmINRptPriceListDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmINQRRptPriceList.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',date);

       with qu001,sql do
       begin
           Close;Clear;
           add('  SELECT distinct A.GroupId,(A.GroupID+''-''+B.GroupDesc) as NamaGroup'
              +'  FROM INMsItem A INNER JOIN INMsGroup B ON A.GroupID=B.GroupID'
              +'  WHERE A.Ctk=''Y''');
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
          add(' select distinct ItemId,ItemName,ProductDesc,CurrID,');
             if RadioGroup1.ItemIndex=0 then
          Add(' UserPrice as Price, ''UP'' as Flag')
             else
          Add(' DealerPrice as Price,''DP'' as Flag');
          Add(' FROM INMsItem A INNER JOIN INMSProduct B ON A.ProductId=B.ProductId'
             +' WHERE GroupID=:GroupId AND A.Ctk=''Y''');
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
