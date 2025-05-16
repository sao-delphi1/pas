unit ARTrSC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv01, dxExEdtr, dxCntner, DB, ADODB, dxCore, dxContainer,
  ExtCtrls, StdCtrls, dxButton, dxEditor, dxEdLib;

type
  TfmSC = class(TfmStdLv01)
    bbOK1: TdxButton;
    Label1: TLabel;
    Shape1: TShape;
    dxButtonEdit1: TdxButtonEdit;
    dxButton1: TdxButton;
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure bbOK1Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButtonEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSC: TfmSC;

implementation

uses ARSearchSC, UnitGeneral, StdLv0;

{$R *.dfm}

procedure TfmSC.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearchSales.Create(Self) do
    try
       Title := 'SALES COUNTER';
       SQLString :=  ' SELECT SalesId as [KODE SALES], SalesName as [NAMA SALES]'
                    +' FROM ARMSSales ORDER BY SalesID';
       if ShowModal = MrOK then
       begin
           dxButtonEdit1.Text := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSC.bbOK1Click(Sender: TObject);
begin
  if TRIM(dxButtonEdit1.Text)='' then
  Begin
    MsgInfo('Sales Counter Harus Disi');
    dxButtonEdit1.SetFocus;
    Abort;
  End;
  with quAct,sql do
  Begin
    Close;Clear;
    Add('Select SalesId FROM ARMsSales Where SalesId='''+dxButtonEdit1.Text+'''');
    Open;
    if IsEmpty then
    begin
      MsgInfo('Sales Counter tidak ada dalam Master');
      dxButtonEdit1.SetFocus;
      Abort;
    end;
  End;

  inherited;
  ModalResult := Mrok;
end;

procedure TfmSC.dxButton1Click(Sender: TObject);
begin
  inherited;
    ModalResult := mrCancel;
end;

procedure TfmSC.dxButtonEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

end.
