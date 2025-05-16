unit ARRptReturDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner, StdCtrls,
  DB, ADODB, Buttons, ExtCtrls, dxEditor, dxEdLib, dxCore, dxButton;

type
  TfmARRptReturPjDlg = class(TfmRptDlg)
    quActCustID: TStringField;
    quActCustName: TStringField;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    GrbRetur: TRadioGroup;
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
  fmARRptReturPjDlg: TfmARRptReturPjDlg;

implementation

uses StdLv0, INQRRptMsItem, UnitGeneral, 
  APQRRptRtrBlmGnt, APQRRptRetur, ARQRRptRetur, Search;

{$R *.dfm}

procedure TfmARRptReturPjDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  dt1.Date := date;
  dt2.Date := date;
end;

procedure TfmARRptReturPjDlg.rbSelectClick(Sender: TObject);
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

procedure TfmARRptReturPjDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmARQRRptReturPj.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',date);
       //tgldari := dt1.Date;

       with qu001,sql do
       begin
           Close;Clear;
           add('  SELECT distinct A.CustId,(A.CustId+''-''+B.CustName) as Pelanggan'
              +'  FROM ARTrReturPenjualanHd A INNER JOIN ARMsCustomer B ON A.CustID=B.CustID'
              +'  INNER JOIN ARTrReturPenjualanDt C ON A.ReturnId=C.ReturnId'
              +'  WHERE CONVERT(varchar(8),A.TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
              if GrbRetur.ItemIndex = 1 Then
                 Add(' AND FlagRetur=''R''');
              if GrbRetur.ItemIndex = 2 Then
                 Add(' AND FlagRetur=''B''');
            if rbSelect.Checked then
            Add(' AND A.CustId IN '+SelGrid(quAct,dbgList,'CustID'));
           Add('  ORDER by A.CustID ');
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
          add(' SELECT Distinct A.CustId,A.ReturnId,Convert(varchar(10),Transdate,103) as Tgl,A.Note,'
             +' Case When FlagRetur=''R'' Then ''R'' Else ''B'' End As FlagR'
             +' FROM ARTrReturPenjualanHd A'
             +' WHERE CustID=:CustId'
             +' AND CONVERT(varchar(8),A.TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
             if GrbRetur.ItemIndex = 1 Then
                Add(' AND FlagRetur=''R''');
             if GrbRetur.ItemIndex = 2 Then
                Add(' AND FlagRetur=''B''');
          add(' ORDER by Convert(varchar(10),Transdate,103),A.CustId,A.ReturnId,A.Note,'
             +' Case When FlagRetur=''R'' Then ''R'' Else ''B'' End');
          Parameters.ParamByName('CustId').DataType := ftString;
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

procedure TfmARRptReturPjDlg.bbCancelClick(Sender: TObject);
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
