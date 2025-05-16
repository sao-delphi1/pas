unit CFRptKeuanganBankDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls, DB,
  ADODB, Buttons, ExtCtrls, dxTL, dxDBCtrl, dxDBGrid;

type
  TfmCFRptKeuanganBankDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    rbSelect: TRadioButton;
    rbAll: TRadioButton;
    dbgList: TdxDBGrid;
    quActBankId: TStringField;
    quActBankName: TStringField;
    dbgListBankId: TdxDBGridMaskColumn;
    dbgListBankName: TdxDBGridMaskColumn;
    RbValuta: TRadioGroup;
    procedure bbPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbSelectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCFRptKeuanganBankDlg: TfmCFRptKeuanganBankDlg;

implementation

uses CFQRRptKeuanganDlg, UnitGeneral, CFQRRptKeuanganBank, StdLv0, UnitDate,
  MyUnit;

{$R *.dfm}

procedure TfmCFRptKeuanganBankDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmCFQRRptKeuanganBank.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);
       TanggalDari := dt1.Date;
       TanggalSampai := dt2.Date;

      With qu001,SQL do
      Begin
        Close;Clear;
        Add(' Select Distinct A.TempField,(A.Tempfield+''-''+B.BankName) as Bank,B.BankName '
           +' FROM ALLMONEY A INNER JOIN CFMsBank B ON A.TempField=B.Bankid WHERE FgBBKK IN(''BM'',''BK'',''PIB'')'
           +' AND B.FgActive=''Y'' ');
        if rbSelect.Checked then
        Add(' AND A.TempField IN '+SelGrid(quAct,dbgList,'BankID'));
        if RbValuta.ItemIndex = 1 then
           Add(' AND A.ValutaId=''IDR''');
        if RbValuta.ItemIndex = 2 then
           Add(' AND A.ValutaId=''USD''');
        Add(' ORDER BY A.TempField ');
        Open;
      End;

      with qu002,sql do
      Begin
        Close;Clear;
        Add(' Select Distinct B.ValutaId,TempField'
           +' FROM ALLMONEY B WHERE FgBBKK IN(''BM'',''BK'',''PIB'')'
           +' AND tempfield=:tempField');
        if RbValuta.ItemIndex = 1 then
           Add(' AND B.ValutaId=''IDR''');
        if RbValuta.ItemIndex = 2 then
           Add(' AND B.ValutaId=''USD''');
        Add(' ORDER BY B.ValutaID');
        Open;
      End;

      qu003.Open;

     if Sender=bbPreview then
          MyReport.Previewmodal
       else
          MyReport.Print;
     finally
        free;
     end;
end;

procedure TfmCFRptKeuanganBankDlg.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date := EncodeDate(GetYear(Date),GetMonth(Date),1);
  dt2.Date := date;
  quAct.Open;
end;

procedure TfmCFRptKeuanganBankDlg.rbSelectClick(Sender: TObject);
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

end.
