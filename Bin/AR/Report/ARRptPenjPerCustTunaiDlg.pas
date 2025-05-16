unit ARRptPenjPerCustTunaiDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxCore, dxButton, dxEditor, dxEdLib;

type
  TfmARRptPenjPerCustTunaiDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    dt2: TdxDateEdit;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    bbCancel: TdxButton;
    dbgList: TdxDBGrid;
    quActNAMA: TStringField;
    dbgListNAMA: TdxDBGridMaskColumn;
    procedure bbCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbSelectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARRptPenjPerCustTunaiDlg: TfmARRptPenjPerCustTunaiDlg;

implementation

uses Search, UnitGeneral;

{$R *.dfm}

procedure TfmARRptPenjPerCustTunaiDlg.bbCancelClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Pelanggan';
       SQLString := ' SELECT Nama, Alamat FROM ARTrPenjualanHD '
                   +' WHERE CustID=''TUNAI'' AND NAMA <>''CASH'' '
                   +' ORDER BY Nama';
       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('Nama',Res[1],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmARRptPenjPerCustTunaiDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  dt2.Date := date;
end;

procedure TfmARRptPenjPerCustTunaiDlg.rbSelectClick(Sender: TObject);
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
