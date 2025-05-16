unit PeriodDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv011, dxExEdtr, dxCntner, DB, ADODB, StdCtrls, Buttons,
  dxCore, dxContainer, dxEditor, dxEdLib, ExtCtrls;

type
  TfmPeriodDlg = class(TfmStdLv011)
    Label1: TLabel;
    dt1: TdxDateEdit;
    Label2: TLabel;
    dt2: TdxDateEdit;
    paMsgError: TdxContainer;
    imSign: TImage;
    procedure FormShow(Sender: TObject);
    procedure bbOKClick(Sender: TObject);
  private
    { Private declarations }
    FPrd1, FPrd2 : TDateTime;     
  public
    { Public declarations }
    Property PrdStart : TDateTime Read FPrd1 Write FPrd1;
    Property PrdUntil : TDateTime Read FPrd2 Write FPrd2;
  end;

var
  fmPeriodDlg: TfmPeriodDlg;

implementation

{$R *.dfm}

procedure TfmPeriodDlg.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date := FPrd1;
  dt2.Date := FPrd2;
  
end;

procedure TfmPeriodDlg.bbOKClick(Sender: TObject);
begin
  inherited;
  if INT(dt1.Date) > INT(dt2.Date) then
  begin
     imSign.Visible := TRUE;
     paMsgError.Caption :=  'Tanggal mulai harus lebih kecil dari Tanggal sampai !';
     dt1.SetFocus;
     Abort;
  end;
  PrdStart := dt1.Date;
  PrdUntil := dt2.Date;
  ModalResult := mrOk;
end;

end.
