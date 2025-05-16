unit ARRptSisaTransferBarangDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner, StdCtrls,
  DB, ADODB, Buttons, ExtCtrls, dxEditor, dxEdLib, dxCore, dxButton;

type
  TfmARRptSisaTransferBarangDlg = class(TfmRptDlg)
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
  fmARRptSisaTransferBarangDlg: TfmARRptSisaTransferBarangDlg;

implementation

uses StdLv0, INQRRptMsItem, UnitGeneral, APQRRptSisaTerimaBarang,
  ARQRRptSisaTransferBarang, ARQRRptTransferBarang, Search;

{$R *.dfm}

procedure TfmARRptSisaTransferBarangDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  dt1.Date := date;
end;

procedure TfmARRptSisaTransferBarangDlg.rbSelectClick(Sender: TObject);
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

procedure TfmARRptSisaTransferBarangDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmARQRRptSisaTransferBarang.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.Date);
       tgldari := dt1.Date;

       with qu001,sql do
       begin
           Close;Clear;
           add('  SELECT distinct A.CustId,(A.CustId+''-''+B.CustName) as Pelanggan'
              +'  FROM ARTrKonTransBrgHd A INNER JOIN ARMsCustomer B ON A.CustID=B.CustID'
              +'  INNER JOIN ARTrKonTransBrgDt C ON A.KonTransBrgID=C.KonTransBrgId'
              +'  WHERE isnull(C.Qty,0)-(Select Isnull(sum(qty),0) FROM ARTrKonInvPelDt D '
              +'    WHERE D.ItemId=C.ItemId AND D.KonTransBrgId=A.KonTransBrgId )'
              +'   -(Select Isnull(Sum(qty),0) FROM ARTrKonReturDt G WHERE G.ItemId=C.ItemId And G.KonTransBrgId=A.KonTransBrgId'
              +'    )<> 0');
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

procedure TfmARRptSisaTransferBarangDlg.bbCancelClick(Sender: TObject);
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
