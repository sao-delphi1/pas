unit ARRptRtrBlmGntDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner, StdCtrls,
  DB, ADODB, Buttons, ExtCtrls, dxEditor, dxEdLib, dxCore, dxButton;

type
  TfmARRptRtrBlmGntDlg = class(TfmRptDlg)
    quActCustID: TStringField;
    quActCustName: TStringField;
    quActAddress: TStringField;
    quActCity: TStringField;
    quActPhone: TStringField;
    quActFax: TStringField;
    quActEmail: TStringField;
    quActNote: TStringField;
    quActCustType: TStringField;
    quActUpdDate: TDateTimeField;
    quActUpdUser: TStringField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    dt1: TdxDateEdit;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    dbgList: TdxDBGrid;
    dbgListCustID: TdxDBGridMaskColumn;
    dbgListCustName: TdxDBGridMaskColumn;
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
  fmARRptRtrBlmGntDlg: TfmARRptRtrBlmGntDlg;

implementation

uses StdLv0, INQRRptMsItem, UnitGeneral, APQRRptSisaTerimaBarang,
  APQRRptRtrBlmGnt, ARQRRptRtrBlmGnt, Search;

{$R *.dfm}

procedure TfmARRptRtrBlmGntDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  dt1.Date := date;
end;

procedure TfmARRptRtrBlmGntDlg.rbSelectClick(Sender: TObject);
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

procedure TfmARRptRtrBlmGntDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmARQRRptRtrBlmGnt.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',date);
       tgldari := dt1.Date;

       with qu001,sql do
       begin
           Close;Clear;
           add('  SELECT distinct A.CustId,(A.CustId+''-''+B.CustName) as langganan'
              +'  FROM ARTrReturPenjualanHd A INNER JOIN ARMsCustomer B ON A.CustID=B.CustID'
              +'  INNER JOIN ARTrReturPenjualanDt C ON A.ReturnId=C.ReturnId'
              +'  WHERE (Select isnull(Sum(F.Qty),0) FROM ARTrReturPenjualanDt F WHERE F.returnId=A.ReturnId AND F.Itemid=C.ItemId)'
              +' -(Select isnull(SUM(Qty),0) FROM ARTrPenggantiReturPenjDt E  WHERE E.ItemId=C.ItemId'
              +'  AND E.ReturnId=A.ReturnId)<> 0 AND FlagRetur=''R''');

           if rbSelect.Checked then
            Add(' AND A.CustId IN '+SelGrid(quAct,dbgList,'CustID'));
           Add('  AND Convert(varchar(8),A.Transdate,112)<='''+FormatDateTime('yyyyMMdd',dt1.Date)+'''');
           add('  ORDER by A.CustID ');
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

procedure TfmARRptRtrBlmGntDlg.bbCancelClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Pelanggan';
       SQLString := ' SELECT CustName as Nama_Pelanggan ,CustId as Kode_Pelanggan'
                   +' FROM ARMsCustomer A '
                   +' ORDER BY CustID';

       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('CustID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

end.
