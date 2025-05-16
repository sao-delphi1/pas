unit APRptRtrBlmGntDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner, StdCtrls,
  DB, ADODB, Buttons, ExtCtrls, dxEditor, dxEdLib, dxCore, dxButton;

type
  TfmAPRptRtrBlmGntDlg = class(TfmRptDlg)
    quActSuppID: TStringField;
    quActSuppName: TStringField;
    quActAddress: TStringField;
    quActCity: TStringField;
    quActContactPerson: TStringField;
    quActPhone: TStringField;
    quActFax: TStringField;
    quActEmail: TStringField;
    quActNote: TStringField;
    quActUpdDate: TDateTimeField;
    quActUpdUser: TStringField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    dt1: TdxDateEdit;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    dbgList: TdxDBGrid;
    dbgListSuppID: TdxDBGridMaskColumn;
    dbgListSuppName: TdxDBGridMaskColumn;
    bbCancel: TdxButton;
    procedure FormShow(Sender: TObject);
    procedure rbSelectClick(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAPRptRtrBlmGntDlg: TfmAPRptRtrBlmGntDlg;

implementation

uses StdLv0, INQRRptMsItem, UnitGeneral, 
  APQRRptRtrBlmGnt, Search;

{$R *.dfm}

procedure TfmAPRptRtrBlmGntDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  dt1.Date := date;
end;

procedure TfmAPRptRtrBlmGntDlg.rbSelectClick(Sender: TObject);
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

procedure TfmAPRptRtrBlmGntDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmAPQRRptRtrBlmGnt.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',date);
       tgldari := dt1.Date;

       with qu001,sql do
       begin
           Close;Clear;
           add('  SELECT distinct A.SuppId,(A.SuppId+''-''+B.SuppName) as Supplier'
              +'  FROM APTrReturnHd A INNER JOIN APMsSupplier B ON A.SuppID=B.SuppID'
              +'  INNER JOIN APTrReturnDt C ON A.ReturnId=C.ReturnId'
              +'  WHERE (Select isnull(Sum(F.Qty),0) FROM APTrReturndt F WHERE F.returnId=A.ReturnId AND F.Itemid=C.ItemId)'
              +' -(Select isnull(SUM(Qty),0) FROM APTrReturnRepDt E  WHERE E.ItemId=C.ItemId'
              +'  AND E.ReturnId=A.ReturnId)<> 0 AND FlagRetur=''R''');

           if rbSelect.Checked then
            Add(' AND A.SuppId IN '+SelGrid(quAct,dbgList,'SuppID'));
           Add('  AND Convert(varchar(8),A.Transdate,112)<='''+FormatDateTime('yyyyMMdd',dt1.Date)+'''');
           add('  ORDER by A.SuppID ');  
           Open;
          if IsEmpty then
          begin
             MsgInfo('No Data !');
             Abort;
          end;
       end;

      qu002.Open;
      
       if Sender=bbPreview then
          MyReport.PreviewModal
       else
          MyReport.Print;


     finally
        free;
     end;
end;

procedure TfmAPRptRtrBlmGntDlg.bbCancelClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Supplier';
       SQLString := ' SELECT SuppName as Nama_Supplier ,SuppId as Kode_Supplier'
                   +' FROM APMsSupplier A '
                   +' ORDER BY SuppID';

       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('SuppID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

end.
