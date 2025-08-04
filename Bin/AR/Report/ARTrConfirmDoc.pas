unit ARTrConfirmDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxCore, dxContainer, Buttons, dximctrl, dxButton, dxEditor,
  dxEdLib;

type
  TfmARTrConfirmDoc = class(TfmStdLv2)
    bbSimpanDetil: TdxButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    dxImageEdit1: TdxImageEdit;
    dxImageEdit2: TdxImageEdit;
    dxImageEdit3: TdxImageEdit;
    dxImageEdit4: TdxImageEdit;
    dxBlobEdit1: TdxBlobEdit;
    dxBlobEdit2: TdxBlobEdit;
    procedure FormCreate(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARTrConfirmDoc: TfmARTrConfirmDoc;

implementation

uses MyUnit, UnitGeneral, StdLv0;

{$R *.dfm}

procedure TfmARTrConfirmDoc.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmARTrConfirmDoc.bbSimpanDetilClick(Sender: TObject);
var JudulPesan : String;
begin
  inherited;
  JudulPesan := 'Update Status Dokumen Pada Invoice No '+Label5.Caption+' ? Status Dokumen akan Ter-Update ';

    if (MessageDlg(JudulPesan, mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('UPDATE ARTrPenjualanHd SET FgBAST='''+dxImageEdit1.Text+''', '
           +'FgSP='''+dxImageEdit2.Text+''', '
           +'FgBPPH='''+dxImageEdit3.Text+''', '
           +'FgBPPN='''+dxImageEdit4.Text+''' , '
           +'NotePPH='''+dxBlobEdit1.Text+''', '
           +'NotePPN='''+dxBlobEdit2.Text+''' '
           +'WHERE SaleID='''+Label5.Caption+'''  ');
        ExecSQL;
      end;
      ShowMessage('Data Sudah Di-Update');
      ModalResult := MrOK;




  end else
  begin


    end;




end;

procedure TfmARTrConfirmDoc.FormShow(Sender: TObject);
begin
  inherited;
  With quAct,SQL do
    Begin
      Close;Clear;
      add('SELECT ISNULL(FgBAST,''T'') as FgBAST,ISNULL(FgSP,''T'') as FgSP,ISNULL(FgBPPH,''T'') as FgBPPH, '
         +'ISNULL(FgBPPN,''T'') as FgBPPN,ISNULL(NotePPH,'''') as NotePPH,ISNULL(NotePPN,'''') as NotePPN '
         +' From ARTrPenjualanHd Where SaleID='''+Label5.Caption+''' ');
      Open;
    End;
    dxImageEdit1.Text := quAct.FieldByName('FgBAST').AsString;
    dxImageEdit2.Text := quAct.FieldByName('FgSP').AsString;
    dxImageEdit3.Text := quAct.FieldByName('FgBPPH').AsString;
    dxImageEdit4.Text := quAct.FieldByName('FgBPPN').AsString;
    dxBlobEdit1.Text :=  quAct.FieldByName('NotePPH').AsString;
    dxBlobEdit2.Text :=  quAct.FieldByName('NotePPN').AsString;

end;

end.
