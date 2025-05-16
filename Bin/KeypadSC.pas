unit KeypadSC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv0, dxExEdtr, dxCntner, DB, ADODB, StdCtrls, dxCore,
  dxButton, dxContainer;

type
  TfmKeyPadSC = class(TfmStdLv0)
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
    procedure dxButton5Click(Sender: TObject);
    procedure dxButton16Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure paUpKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure CetakAngka(data : string);
  public
    { Public declarations }
    bDecimal : boolean;
    fHasilAngka : String;
    sHasilAngka : string;
    iTop, iLeft : integer;
    sDefaultAngka : string;
  end;

var
  fmKeyPadSC: TfmKeyPadSC;

implementation

{$R *.dfm}

procedure TfmKeyPadSC.CetakAngka(data : string);
var sData : string;
begin
  sData := data;
  if (sData <> '10') and (sData <> '11') then
    begin
      if bDecimal then
        begin
          if length(lblasli.Caption) < 18 then
            lblasli.Caption := lblasli.Caption + sData
        end
      else
        if length(lblasli.Caption) < 25 then
          lblasli.Caption := lblasli.Caption + sData
    end
  else
    begin
      if sData = '10' then
        begin
         lblasli.Caption := copy (lblasli.Caption, 1, length(lblasli.Caption) -1);
        end
      else
        begin
          close;
        end;
    end;
  if lblasli.Caption <> '' then
    begin
      if bDecimal then
        mmAngka.Lines.Text := lblasli.Caption
      else
        mmAngka.Lines.Text := lblasli.Caption;
    end
  else
    mmAngka.Lines.Text := '';

   paUp.SetFocus;
end;

procedure TfmKeyPadSC.dxButton5Click(Sender: TObject);
begin
  inherited;
  CetakAngka(TdxButton(sender).Hint);
end;

procedure TfmKeyPadSC.dxButton16Click(Sender: TObject);
begin
  inherited;
   close;
end;

procedure TfmKeyPadSC.FormCreate(Sender: TObject);
begin
  inherited;
  bDecimal := true;
  sDefaultAngka := '';
end;

procedure TfmKeyPadSC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
    if bDecimal then
    begin
      if lblasli.Caption <> '' then
        fHasilAngka := lblasli.Caption
      else
        fHasilAngka := '';
    end
  else
    sHasilAngka := lblasli.Caption;
end;

procedure TfmKeyPadSC.FormShow(Sender: TObject);
begin
  inherited;
  mmAngka.Lines.Text := sDefaultAngka;
  mmAngka.SetFocus;
  if sDefaultAngka = '0' then
    lblasli.Caption := ''
  else
    lblasli.Caption := sDefaultAngka;
  fHasilAngka := sDefaultAngka;
  sHasilAngka := lblasli.Caption;
  if bDecimal then
    begin
      mmAngka.MaxLength := 20;
      mmAngka.Font.Size := 24;
    end
  else
    begin
      mmAngka.MaxLength := 20;
      mmAngka.Font.Size := 18;
    end;
  paUp.SetFocus;
end;

procedure TfmKeyPadSC.paUpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if ( (key >= '0') and (key <= '9') ) or (key = #13) or (key = #8)   then
    begin
      if ( (key >= '0') and (key <= '9') )  then
        CetakAngka(key)
      else
        if key = #13 then
          CetakAngka('11')
        else
          CetakAngka('10');
      paUp.SetFocus;
    end;
end;

end.

