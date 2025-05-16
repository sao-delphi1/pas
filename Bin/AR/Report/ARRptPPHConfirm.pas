unit ARRptPPHConfirm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxCore, dxContainer, Buttons, dxEditor, dxEdLib, dxButton;

type
  TfmARRptPPHConfirm = class(TfmStdLv2)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    bbSimpanDetil: TdxButton;
    Edit1: TEdit;
    dt1: TdxDateEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    CheckBox1: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FgForm : string;
  end;

var
  fmARRptPPHConfirm: TfmARRptPPHConfirm;

implementation

{$R *.dfm}
uses MyUnit, UnitGeneral;

procedure TfmARRptPPHConfirm.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmARRptPPHConfirm.bbSimpanDetilClick(Sender: TObject);
var JudulPesan : String;
begin
  inherited;
  if TRIM(dt1.Text)='' then
  begin
    ShowMessage('Tanggal Bukti Tidak Boleh Kosong');
    dt1.SetFocus;
    Abort;
  end;

  if TRIM(Edit1.Text)='' then
  begin
    ShowMessage('Nomor Bukti Tidak Boleh Kosong');
    Edit1.SetFocus;
    Abort;
  end;

  if FgForm='H' then
  begin

    if CheckBox1.Checked then
    JudulPesan := 'Update Semua Data Bukti Potong Yang Masih Kosong Pada Invoice No '+Label5.Caption+' ? '
    else
    JudulPesan := 'Update Semua Data Bukti Potong Pada Invoice No '+Label5.Caption+' ? Bukti Potong Yang Sudah Ada akan Ter-Update ';

    if (MessageDlg(JudulPesan, mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('UPDATE ARTrPenjualanDT SET BuktiPotong='''+Edit1.Text+''',TglBukti='''+FormatDateTime('yyyy-mm-dd',dt1.date)+''' '
           +'WHERE SaleID='''+Label5.Caption+''' '
           +'AND PPH<>0 ');
        if CheckBox1.Checked then
        Add('AND ISNULL(BuktiPotong,'''')='''' ');
        ExecSQL;
      end;
      ShowMessage('Data Detail Sudah Di-Update');
      ModalResult := MrOK;
    end;



  end else
  begin

    JudulPesan := 'Update Bukti Potong Pada Invoice No '+Label5.Caption+' dan Kode Barang '''+Label6.Caption+''' ? ';

    if (MessageDlg(JudulPesan, mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('UPDATE ARTrPenjualanDT SET BuktiPotong='''+Edit1.Text+''',TglBukti='''+FormatDateTime('yyyy-mm-dd',dt1.date)+''' '
           +'WHERE SaleID='''+Label5.Caption+''' AND ItemID='''+Label6.Caption+''' '
           +'AND PPH<>0 ');
        ExecSQL;
      end;
      ShowMessage('Data Detail Sudah Di-Update');
      ModalResult := MrOK;
    end;



  end;
end;

end.
