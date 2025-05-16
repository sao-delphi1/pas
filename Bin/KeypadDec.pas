unit KeypadDec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv0, dxExEdtr, dxCntner, DB, ADODB, StdCtrls, dxCore,
  dxButton, dxContainer;

type
  TfmKeyPadDec = class(TfmStdLv0)
    lblasli: TLabel;
    paUp: TdxContainer;
    mmAngka: TMemo;
    dxButton15: TdxButton;
    dxButton11: TdxButton;
    dxButton5: TdxButton;
    dxButton7: TdxButton;
    dxButton10: TdxButton;
    dxButton14: TdxButton;
    dxButton13: TdxButton;
    dxButton9: TdxButton;
    dxButton6: TdxButton;
    dxButton12: TdxButton;
    dxButton8: TdxButton;
    dxButton16: TdxButton;
    dxButton1: TdxButton;
    procedure dxButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure paUpKeyPress(Sender: TObject; var Key: Char);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton16Click(Sender: TObject);
  private
    { Private declarations }
    procedure CetakAngka(data : string);
  public
    { Public declarations }
    bDecimal : boolean;
    fHasilAngka : real;
    sHasilAngka : string;
    iTop, iLeft : integer;
    sDefaultAngka : string;
    titik : boolean;
  end;

var
  fmKeyPadDec: TfmKeyPadDec;

implementation

uses UnitGeneral;

{$R *.dfm}

procedure TfmKeyPadDec.CetakAngka(data : string);
var sData : string;
    sHasil : string;
    ctr : integer;
begin
  sData := data;
  if (data ='.') AND (titik) then
  Begin
    MsgInfo('Titik hanya digunakan sekali');
    Abort;
  End;

  if (titik) AND (length(lblasli.Caption)- pos('.',lblasli.Caption)+1>1) AND (sdata <>'10')  AND (sdata <>'11') then
  Begin
    MsgInfo('Angka dibelakang koma Hanya boleh satu');
    Abort;
  End;

  if (sData <> '10') and (sData <> '11') then
    begin
      if bDecimal then
        begin
          if length(lblasli.Caption) < 9 then
            lblasli.Caption := lblasli.Caption + sData
        end
      else
        if length(lblasli.Caption) < 20 then
          lblasli.Caption := lblasli.Caption + sData ;
     if sdata = '.' then titik := True;
    end
  else
    begin
      if sData = '10' then
        begin
          lblasli.Caption := '';
        end
      else
        begin
          close;
        end;
    end;
  if lblasli.Caption <> '' then
    begin
      if bDecimal then
        mmAngka.Lines.Text := FormatFloat('#,0.0', StrToFloat(lblasli.Caption))
      else
        mmAngka.Lines.Text := lblasli.Caption;
    end
  else
   Begin
    mmAngka.Lines.Text :=  FormatFloat('#,0.0', StrToFloat('0'));
    titik := False;
   End;
end;

procedure TfmKeyPadDec.dxButton5Click(Sender: TObject);
begin
  inherited;
  CetakAngka(TdxButton(sender).Hint);
end;

procedure TfmKeyPadDec.FormCreate(Sender: TObject);
begin
  inherited;
  bDecimal := true;
  sDefaultAngka := '0';
  titik := false;
end;

procedure TfmKeyPadDec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   if bDecimal then
    begin
      if lblasli.Caption <> '' then
        fHasilAngka := strtofloat(lblasli.Caption)
      else
        fHasilAngka := 0;
    end
  else
    sHasilAngka := lblasli.Caption;
end;

procedure TfmKeyPadDec.FormShow(Sender: TObject);
begin
  inherited;
  mmAngka.Lines.Text := FormatFloat('#,0.0',StrToFloat(sDefaultAngka));
  mmAngka.SetFocus;
  if StrToFloat(sDefaultAngka) = 0 then
    lblasli.Caption := ''
  else
    lblasli.Caption := FormatFloat('#,0.0',StrToFloat(sDefaultAngka));
  fHasilAngka := StrToFloat(sDefaultAngka);
  sHasilAngka := lblasli.Caption;
  if bDecimal then
    begin
      mmAngka.MaxLength := 12;
      mmAngka.Font.Size := 24;
    end
  else
    begin
      mmAngka.MaxLength := 16;
      mmAngka.Font.Size := 18;
    end;
  paUp.SetFocus;
end;

procedure TfmKeyPadDec.paUpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if ( (key >= '0') and (key <= '9') ) or (key = #13) or (key = #8) or (key = #46) then
    begin
      if ( (key >= '0') and (key <= '9') )  then
        CetakAngka(key)
      else
        if key = #13 then
          CetakAngka('11');
        if key = #8 then
          CetakAngka('10');
        if key = #46 then
          CetakAngka('.');

      paUp.SetFocus;
    end;
end;

procedure TfmKeyPadDec.dxButton1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfmKeyPadDec.dxButton16Click(Sender: TObject);
begin
  inherited;
  CetakAngka(TdxButton(sender).Hint);
end;

end.
