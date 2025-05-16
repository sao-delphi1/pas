unit RptDlg1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv0, dxExEdtr, dxCntner, DB, ADODB, dxCore, dxContainer,
  StdCtrls, Buttons, dxButton, dxEditor, dxEdLib, dxPageControl, QuickRpt,
  ExtCtrls, dxDBEdtr, dxDBELib;

type
  TfmRptDlg1 = class(TfmStdLv0)
    paTitle: TdxContainer;
    paButton: TdxContainer;
    LaRptTitle: TLabel;
    sbSetting: TSpeedButton;
    bbPreview: TdxButton;
    bbPrint: TdxButton;
    bbClose: TdxButton;
    edRptTitle: TdxEdit;
    pcMain: TdxPageControl;
    tsRpt: TdxTabSheet;
    tsSetting: TdxTabSheet;
    btnSaveSetting: TdxButton;
    btnCancelSetting: TdxButton;
    shReport: TShape;
    pcSetting: TdxPageControl;
    tsCompName: TdxTabSheet;
    laCompName: TLabel;
    laSetRptTitle: TLabel;
    Shape1: TShape;
    tsRptTitle: TdxTabSheet;
    tsBandColumn: TdxTabSheet;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    shLineLeft: TShape;
    shLineRight: TShape;
    Label3: TLabel;
    Label4: TLabel;
    shHeader: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ColorDialog: TColorDialog;
    btnChangeColor: TdxButton;
    shLevel1: TShape;
    shLevel2: TShape;
    shLevel3: TShape;
    Label9: TLabel;
    dxButton3: TdxButton;
    Label10: TLabel;
    dxButton4: TdxButton;
    Label11: TLabel;
    dxButton5: TdxButton;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    tsLine: TdxTabSheet;
    Label16: TLabel;
    FontDialog: TFontDialog;
    sh01: TShape;
    sh02: TShape;
    sh03: TShape;
    Label2: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    quSetting: TADOQuery;
    dsSetting: TDataSource;
    peFNCompName: TdxDBPickEdit;
    Label22: TLabel;
    dxDBSpinEdit1: TdxDBSpinEdit;
    Label23: TLabel;
    CeLineL: TdxDBCheckEdit;
    CeLineR: TdxDBCheckEdit;
    ceSeparator: TdxDBCheckEdit;
    shFooter: TShape;
    Label24: TLabel;
    dxButton1: TdxButton;
    Label25: TLabel;
    dxButton2: TdxButton;
    shTitle: TShape;
    Label1: TLabel;
    peFNRptTitle: TdxDBPickEdit;
    Label26: TLabel;
    dxDBSpinEdit2: TdxDBSpinEdit;
    quSettingCompNameFontName: TStringField;
    quSettingCompNameFontSize: TLargeintField;
    quSettingLineLeftVisible: TStringField;
    quSettingLineRightVisible: TStringField;
    quSettingLineSeparatorVisible: TStringField;
    quSettingClFooter: TLargeintField;
    quSettingClTitle: TLargeintField;
    quSettingRptTitleFontName: TStringField;
    quSettingRptTitleFontSize: TLargeintField;
    procedure bbCloseClick(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LaRptTitleClick(Sender: TObject);
    procedure edRptTitleExit(Sender: TObject);
    procedure sbSettingClick(Sender: TObject);
    procedure btnSaveSettingClick(Sender: TObject);
    procedure btnCancelSettingClick(Sender: TObject);
    procedure laCompNameMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure laSetRptTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure shHeaderMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnChangeColorClick(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure shLineLeftMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure peFNCompNameChange(Sender: TObject);
    procedure dxDBSpinEdit1Change(Sender: TObject);
    procedure CeLineLChange(Sender: TObject);
    procedure CeLineRChange(Sender: TObject);
    procedure quSettingAfterOpen(DataSet: TDataSet);
    procedure ceSeparatorChange(Sender: TObject);
    procedure dsSettingStateChange(Sender: TObject);
    procedure shFooterMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure shTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure peFNRptTitleChange(Sender: TObject);
    procedure dxDBSpinEdit2Change(Sender: TObject);
    procedure edRptTitleKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRptDlg1: TfmRptDlg1;

implementation

uses ConMain, UnitGeneral;

{$R *.dfm}

procedure TfmRptDlg1.bbCloseClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TfmRptDlg1.bbPreviewClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfmRptDlg1.FormShow(Sender: TObject);
var i, n : Smallint;
    s : String;
begin
  inherited;
  //--Setting--/
  quSetting.Active  := TRUE;
  laCompName.Font.Name := quSettingCompNameFontName.Value;
  //--End Setting--/

  laRptTitle.Caption := GetMenuName((Sender as TForm).Tag);
  edRptTitle.Text    := LaRptTitle.Caption;
  pcMain.ActivePage  := tsRpt;
  //pcMain.HideButtons := TRUE;

  peFNCompName.Items.Clear;
  n := Screen.Fonts.Count-1;
  for i := 0 to n do
  begin
     s := Screen.Fonts.Strings[i];
     peFNCompName.Items.Add(s);
     peFNRptTitle.Items.Add(s);
  end;

end;

procedure TfmRptDlg1.LaRptTitleClick(Sender: TObject);
begin
  inherited;
  edRptTitle.Visible := TRUE;
  LaRptTitle.Visible := FALSE;
  edRptTitle.SelectAll;
  edRptTitle.SetFocus;
end;

procedure TfmRptDlg1.edRptTitleExit(Sender: TObject);
begin
  inherited;
  edRptTitle.Visible := FALSE;
  LaRptTitle.Caption := edRptTitle.Text;
  LaRptTitle.Visible := TRUE;
end;

procedure TfmRptDlg1.sbSettingClick(Sender: TObject);
begin
  inherited;
  pcMain.ActivePage := tsSetting;
end;

procedure TfmRptDlg1.btnSaveSettingClick(Sender: TObject);
begin
  inherited;
  if quSetting.State in dsEditModes then quSetting.Post;
  pcMain.ActivePage := tsRpt;
end;

procedure TfmRptDlg1.btnCancelSettingClick(Sender: TObject);
begin
  inherited;
  if quSetting.State in dsEditModes then quSetting.Cancel;
  pcMain.ActivePage := tsRpt;
end;

procedure TfmRptDlg1.laCompNameMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  pcSetting.ActivePageIndex := (Sender as TLabel).Tag;
end;

procedure TfmRptDlg1.laSetRptTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  pcSetting.ActivePageIndex := (Sender as TLabel).Tag;
end;

procedure TfmRptDlg1.shHeaderMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
   pcSetting.ActivePageIndex := (Sender as TShape).Tag;
end;

procedure TfmRptDlg1.btnChangeColorClick(Sender: TObject);
begin
  inherited;
  ColorDialog.Color := shHeader.Brush.Color;
  if ColorDialog.Execute then
  begin
     shHeader.Brush.Color := ColorDialog.Color;
  end;
end;

procedure TfmRptDlg1.dxButton3Click(Sender: TObject);
begin
  inherited;
  ColorDialog.Color := shLevel1.Brush.Color;
  if ColorDialog.Execute then
  begin
     shLevel1.Brush.Color := ColorDialog.Color;
  end;
end;

procedure TfmRptDlg1.dxButton4Click(Sender: TObject);
begin
  inherited;
  ColorDialog.Color := shLevel2.Brush.Color;
  if ColorDialog.Execute then
  begin
     shLevel2.Brush.Color := ColorDialog.Color;
  end;
end;

procedure TfmRptDlg1.dxButton5Click(Sender: TObject);
begin
  inherited;
  ColorDialog.Color := shLevel3.Brush.Color;
  if ColorDialog.Execute then
  begin
     shLevel3.Brush.Color := ColorDialog.Color;
  end;
end;

procedure TfmRptDlg1.shLineLeftMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  pcSetting.ActivePageIndex := (Sender as TShape).Tag;
end;

procedure TfmRptDlg1.peFNCompNameChange(Sender: TObject);
begin
  inherited;
  laCompName.Font.Name := (Sender as TdxDBPickEdit).Text;
end;

procedure TfmRptDlg1.dxDBSpinEdit1Change(Sender: TObject);
begin
  inherited;
  laCompName.Font.Size := (Sender as TdxDBSpinEdit).IntValue;
end;

procedure TfmRptDlg1.CeLineLChange(Sender: TObject);
begin
  inherited;
  shLineLeft.Visible := CeLineL.Checked;
end;

procedure TfmRptDlg1.CeLineRChange(Sender: TObject);
begin
  inherited;
  shLineRight.Visible := CeLineR.Checked;
end;

procedure TfmRptDlg1.quSettingAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CeLineLChange(CeLineL);
  CeLineRChange(CeLineR);
  ceSeparatorChange(ceSeparator);
  shFooter.Brush.Color := quSettingClFooter.Value;
  shTitle.Brush.Color  := quSettingClTitle.Value;
end;

procedure TfmRptDlg1.ceSeparatorChange(Sender: TObject);
begin
  inherited;
  sh01.Visible := ceSeparator.Checked;
  sh02.Visible := ceSeparator.Checked;
  sh03.Visible := ceSeparator.Checked;
end;

procedure TfmRptDlg1.dsSettingStateChange(Sender: TObject);
begin
  inherited;
  bbPreview.Enabled := quSetting.State = dsBrowse;
  bbPrint.Enabled   := quSetting.State = dsBrowse;
end;

procedure TfmRptDlg1.shFooterMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  pcSetting.ActivePageIndex := (Sender as TShape).Tag;
end;

procedure TfmRptDlg1.dxButton1Click(Sender: TObject);
begin
  inherited;
  ColorDialog.Color := shFooter.Brush.Color;
  if ColorDialog.Execute then
  begin
     shFooter.Brush.Color := ColorDialog.Color;
     if quSetting.State = dsBrowse then quSetting.Edit;
     quSettingClFooter.Value := ColorDialog.Color;
  end;
end;

procedure TfmRptDlg1.dxButton2Click(Sender: TObject);
begin
  inherited;
  ColorDialog.Color := shTitle.Brush.Color;
  if ColorDialog.Execute then
  begin
     shTitle.Brush.Color := ColorDialog.Color;
     if quSetting.State = dsBrowse then quSetting.Edit;
     quSettingClTitle.Value := ColorDialog.Color;
  end;
end;

procedure TfmRptDlg1.shTitleMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  pcSetting.ActivePageIndex := (Sender as TShape).Tag;
end;

procedure TfmRptDlg1.peFNRptTitleChange(Sender: TObject);
begin
  inherited;
  laSetRptTitle.Font.Name := (Sender as TdxDBPickEdit).Text;
end;

procedure TfmRptDlg1.dxDBSpinEdit2Change(Sender: TObject);
begin
  inherited;
  laSetRptTitle.Font.Size := (Sender as TdxDBSpinEdit).IntValue;
end;

procedure TfmRptDlg1.edRptTitleKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

end.
