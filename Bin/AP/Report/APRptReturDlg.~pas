unit APRptReturDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner, StdCtrls,
  DB, ADODB, Buttons, ExtCtrls, dxEditor, dxEdLib, dxCore, dxButton;

type
  TfmAPRptReturPbDlg = class(TfmRptDlg)
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
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    GrbRetur: TRadioGroup;
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
  fmAPRptReturPbDlg: TfmAPRptReturPbDlg;

implementation

uses StdLv0, INQRRptMsItem, UnitGeneral, APQRRptSisaTerimaBarang,
  APQRRptRtrBlmGnt, APQRRptRetur, ARQRRptRetur, Search;

{$R *.dfm}

procedure TfmAPRptReturPbDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  dt1.Date := date;
  dt2.Date := date;
end;

procedure TfmAPRptReturPbDlg.rbSelectClick(Sender: TObject);
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

procedure TfmAPRptReturPbDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmAPQRRptReturPb.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',date);
       //tgldari := dt1.Date;

       with qu001,sql do
       begin
           Close;Clear;
           add('  SELECT distinct A.SuppId,(A.SuppId+''-''+B.SuppName) as Supplier'
              +'  FROM APTrReturnHd A INNER JOIN APMsSupplier B ON A.SuppID=B.SuppID'
              +'  INNER JOIN APTrReturnDt C ON A.ReturnId=C.ReturnId'
              +'  WHERE CONVERT(varchar(8),A.TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
              if GrbRetur.ItemIndex = 1 Then
                 Add(' AND FlagRetur=''R''');
              if GrbRetur.ItemIndex = 2 Then
                 Add(' AND FlagRetur=''B''');
            if rbSelect.Checked then
            Add(' AND A.SuppId IN '+SelGrid(quAct,dbgList,'SuppID'));
           Add('  ORDER by A.SuppID ');
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
          add(' SELECT Distinct A.SuppId,A.ReturnId,Convert(varchar(10),Transdate,103) as Tgl,A.Note,CONVERT(varchar(8),A.TransDate,112),'
             +' Case When FlagRetur=''R'' Then ''R'' Else ''B'' End As FlagR'
             +' FROM APTrReturnHd A'
             +' WHERE SuppID=:SuppId'
             +' AND CONVERT(varchar(8),A.TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
             if GrbRetur.ItemIndex = 1 Then
                Add(' AND FlagRetur=''R''');
             if GrbRetur.ItemIndex = 2 Then
                Add(' AND FlagRetur=''B''');
          add(' ORDER by CONVERT(varchar(8),A.TransDate,112)');
          Parameters.ParamByName('SuppId').DataType := ftString;
          Open;
       end;

       qu003.Open;


       if Sender=bbPreview then
          MyReport.PreviewModal
       else
          MyReport.Print;


     finally
        free;
     end;
end;

procedure TfmAPRptReturPbDlg.bbCancelClick(Sender: TObject);
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
