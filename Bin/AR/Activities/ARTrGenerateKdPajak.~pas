unit ARTrGenerateKdPajak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv0, dxExEdtr, dxCntner, DB, ADODB, dxCore, dxButton,
  StdCtrls, dxEditor, dxEdLib;

type
  TfmARGenerateKdPajak = class(TfmStdLv0)
    dxEdit2: TdxEdit;
    dxEdit3: TdxEdit;
    dxEdit4: TdxEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dxEdit5: TdxEdit;
    Label7: TLabel;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    quCek: TADOQuery;
    Label1: TLabel;
    dxEdit1: TdxEdit;
    procedure dxEdit1Change(Sender: TObject);
    procedure dxEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARGenerateKdPajak: TfmARGenerateKdPajak;

implementation

uses MyUnit, ConMain, UnitGeneral;

{$R *.dfm}

procedure TfmARGenerateKdPajak.dxEdit1Change(Sender: TObject);
begin
  inherited;
  Label6.Caption := dxEdit2.Text+'-'+dxEdit3.Text+'.'+dxEdit4.Text;
end;

procedure TfmARGenerateKdPajak.dxEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmARGenerateKdPajak.dxButton2Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TfmARGenerateKdPajak.dxButton1Click(Sender: TObject);
var Urut,Nomer,Data : Integer;
    KodePajak,NoPajak : string;
begin
  inherited;
  if TRIM(dxEdit2.Text) = '' then
  begin
    pesan('Seri Faktur tidak boleh kosong');
    dxEdit2.SetFocus;
    Abort;
  end;
  if TRIM(dxEdit3.Text) = '' then
  begin
    pesan('Tahun Faktur tidak boleh kosong');
    dxEdit3.SetFocus;
    Abort;
  end;
  if TRIM(dxEdit4.Text) = '' then
  begin
    pesan('No Faktur tidak boleh kosong');
    dxEdit4.SetFocus;
    Abort;
  end;
  if TRIM(dxEdit5.Text) = '' then
  begin
    pesan('Generate Nomer tidak boleh kosong');
    dxEdit5.SetFocus;
    Abort;
  end;
  if Length(dxEdit2.Text) <> 3 then
  begin
    pesan('Seri Faktur Pajak Harus 3 digit');
    dxEdit2.SetFocus;
    Abort;
  end;
  if Length(dxEdit3.Text) <> 2 then
  begin
    pesan('Tahun Faktur Pajak Harus 2 digit');
    dxEdit3.SetFocus;
    Abort;
  end;
  if Length(dxEdit4.Text) <> 8 then
  begin
    pesan('No Faktur Pajak Harus 8 digit');
    dxEdit4.SetFocus;
    Abort;
  end;

  Nomer := 0;
  Data := StrToInt(dxEdit4.Text);
  Urut := StrToInt(dxEdit5.Text);

  while Nomer <> Urut do
  begin

    if TRIM(LeftJust(dxEdit4.Text,7))= '0000000' then
      NoPajak := '0000000'+IntToStr(Data) else
    if TRIM(LeftJust(dxEdit4.Text,6))= '000000' then
      NoPajak := '000000'+IntToStr(Data) else
    if TRIM(LeftJust(dxEdit4.Text,5))= '00000' then
      NoPajak := '00000'+IntToStr(Data) else
    if TRIM(LeftJust(dxEdit4.Text,4))= '0000' then
      NoPajak := '0000'+IntToStr(Data) else
    if TRIM(LeftJust(dxEdit4.Text,3))= '000' then
      NoPajak := '000'+IntToStr(Data) else
    if TRIM(LeftJust(dxEdit4.Text,2))= '00' then
      NoPajak := '00'+IntToStr(Data) else
    if TRIM(LeftJust(dxEdit4.Text,1))= '0' then
      NoPajak := '0'+IntToStr(Data) else
      NoPajak := IntToStr(Data);

    KodePajak := '.'+dxEdit2.Text+'-'+dxEdit3.Text+'.'+NoPajak;
    with quCek,SQL do
    begin
      Close;Clear;
      Add('SELECT TaxID FROM ARMsKdPajak WHERE TaxID=:TaxID');
      Parameters.ParamByName('TaxID').Value := KodePajak;
      Open;
    end;
    if quCek.RecordCount = 0 then
    begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('INSERT ARMsKdPajak (TaxID,Note,UpdDate,UpdUser) VALUES (:TaxID,:Note,:UpdDate,:UpdUser)');
        with Parameters do
        begin
          ParamByName('TaxID').Value := KodePajak;
          ParamByName('Note').Value := dxEdit1.Text;
          ParamByName('UpdDate').Value := GetServerDateTime;
          ParamByName('UpdUser').Value := dmMain.UserId;
        end;
        ExecSQL;
      end;
    end;
    Data := Data + 1;
    Nomer := Nomer + 1;
  end;
  Self.Close;
end;

end.
