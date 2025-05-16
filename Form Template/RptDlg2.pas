unit RptDlg2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg1, DB, dxExEdtr, dxCntner, ADODB, dxEdLib, dxDBELib,
  dxEditor, ExtCtrls, dxPageControl, dxButton, StdCtrls, Buttons, dxCore,
  dxContainer;

type
  TfmRptDlg2 = class(TfmRptDlg1)
    paButtonNav: TPanel;
    pcRpt: TdxPageControl;
    bbPrev: TdxButton;
    bbNext: TdxButton;
    tsRpt01: TdxTabSheet;
    paPeriod: TPanel;
    tsRpt02: TdxTabSheet;
    tsRpt03: TdxTabSheet;
    tsRpt04: TdxTabSheet;
    tsRpt05: TdxTabSheet;
    quPage1: TADOQuery;
    quPage2: TADOQuery;
    quPage3: TADOQuery;
    quPage4: TADOQuery;
    quPage5: TADOQuery;
    dsPage1: TDataSource;
    dsPage2: TDataSource;
    dsPage3: TDataSource;
    dsPage4: TDataSource;
    dsPage5: TDataSource;
    laPage: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure bbPrevClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  protected
    PageCount : Byte;
    Procedure SetButtonNav;
  public
    { Public declarations }
  end;

var
  fmRptDlg2: TfmRptDlg2;

implementation

uses ConMain;

{$R *.dfm}

procedure TfmRptDlg2.FormCreate(Sender: TObject);
begin
  inherited;
  PageCount := 5;

  pcRpt.HideButtons := TRUe;
  pcRpt.ActivePageIndex := 0;
  
end;

procedure TfmRptDlg2.SetButtonNav;
begin
   laPage.Caption := 'Page '+IntToStr(pcRpt.ActivePageIndex+1)+' of '+IntToStr(PageCount);
   bbPrev.Enabled := (pcRpt.PageCount>0)AND(pcRpt.ActivePageIndex>0);
   bbNext.Enabled := (pcRpt.PageCount>0)AND(pcRpt.ActivePageIndex<PageCount-1);
end;

procedure TfmRptDlg2.bbPrevClick(Sender: TObject);
begin
  inherited;
  if (Sender = bbPrev) then
  begin                                              
     pcRpt.ActivePageIndex := pcRpt.ActivePageIndex - 1;
     SetButtonNav;
  end else
  begin
     pcRpt.ActivePageIndex := pcRpt.ActivePageIndex + 1;
     SetButtonNav;
  end;
end;

procedure TfmRptDlg2.FormShow(Sender: TObject);
begin
  inherited;
  SetButtonNav;
end;

end.
                                                                             