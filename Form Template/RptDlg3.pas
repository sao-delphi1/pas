unit RptDlg3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg2, DB, dxExEdtr, dxCntner, ADODB, dxEdLib, dxDBELib,
  dxEditor, ExtCtrls, dxPageControl, dxButton, StdCtrls, Buttons, dxCore,
  dxContainer, dxTL, dxDBCtrl, dxDBGrid;

type
  TfmRptDlg3 = class(TfmRptDlg2)
    Panel1: TPanel;
    Panel2: TPanel;
    dbgPage1: TdxDBGrid;
    RbAllPage1: TRadioButton;
    RbSelPage1: TRadioButton;
    Panel3: TPanel;
    RbAllPage2: TRadioButton;
    RbSelPage2: TRadioButton;
    Panel4: TPanel;
    RbAllPage3: TRadioButton;
    RbSelPage3: TRadioButton;
    Panel5: TPanel;
    RbAllPage4: TRadioButton;
    RbSelPage4: TRadioButton;
    Panel6: TPanel;
    RbAllPage5: TRadioButton;
    RbSelPage5: TRadioButton;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    dbgPage2: TdxDBGrid;
    dbgPage3: TdxDBGrid;
    dbgPage4: TdxDBGrid;
    dbgPage5: TdxDBGrid;
    procedure FormShow(Sender: TObject);
    procedure RbAllPage1Click(Sender: TObject);
    procedure RbAllPage2Click(Sender: TObject);
    procedure RbAllPage3Click(Sender: TObject);
    procedure RbAllPage4Click(Sender: TObject);
    procedure RbAllPage5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRptDlg3: TfmRptDlg3;

implementation

{$R *.dfm}

procedure TfmRptDlg3.FormShow(Sender: TObject);
begin
  inherited;
  quPage1.Active := TRUE;
end;

procedure TfmRptDlg3.RbAllPage1Click(Sender: TObject);
begin
  inherited;
  if (Sender = RbAllPage1) then
     dbgPage1.OptionsBehavior := dbgPage1.OptionsBehavior - [edgoMultiSelect]
  else
  begin
     dbgPage1.OptionsBehavior := dbgPage1.OptionsBehavior + [edgoMultiSelect];
     dbgPage1.FocusedNode.Selected := TRUE;
  end;
end;

procedure TfmRptDlg3.RbAllPage2Click(Sender: TObject);
begin
  inherited;
  if (Sender = RbAllPage2) then
     dbgPage2.OptionsBehavior := dbgPage2.OptionsBehavior - [edgoMultiSelect]
  else
  begin
     dbgPage2.OptionsBehavior := dbgPage2.OptionsBehavior + [edgoMultiSelect];
     dbgPage2.FocusedNode.Selected := TRUE;
  end;
end;

procedure TfmRptDlg3.RbAllPage3Click(Sender: TObject);
begin
  inherited;
  if (Sender = RbAllPage3) then
     dbgPage3.OptionsBehavior := dbgPage3.OptionsBehavior - [edgoMultiSelect]
  else
  begin
     dbgPage3.OptionsBehavior := dbgPage3.OptionsBehavior + [edgoMultiSelect];
     dbgPage3.FocusedNode.Selected := TRUE;
  end;
end;

procedure TfmRptDlg3.RbAllPage4Click(Sender: TObject);
begin
  inherited;
  if (Sender = RbAllPage4) then
     dbgPage4.OptionsBehavior := dbgPage4.OptionsBehavior - [edgoMultiSelect]
  else
  begin
     dbgPage4.OptionsBehavior := dbgPage4.OptionsBehavior + [edgoMultiSelect];
     dbgPage4.FocusedNode.Selected := TRUE;
  end;
end;

procedure TfmRptDlg3.RbAllPage5Click(Sender: TObject);
begin
  inherited;
  if (Sender = RbAllPage5) then
     dbgPage5.OptionsBehavior := dbgPage5.OptionsBehavior - [edgoMultiSelect]
  else
  begin
     dbgPage5.OptionsBehavior := dbgPage5.OptionsBehavior + [edgoMultiSelect];
     dbgPage5.FocusedNode.Selected := TRUE;
  end;
end;

end.
