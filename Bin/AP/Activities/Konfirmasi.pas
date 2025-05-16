unit Konfirmasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv0, dxExEdtr, dxCntner, DB, ADODB, dxCore, dxButton,
  StdCtrls;

type
  TfmKonfirmasi = class(TfmStdLv0)
    dxButton4: TdxButton;
    dxButton3: TdxButton;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    Label2: TLabel;
    Label1: TLabel;
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    FgOto,FgStatus : string;
    jumlah : currency;
    { Public declarations }
  end;

var
  fmKonfirmasi: TfmKonfirmasi;

implementation

uses Keypad,Conmain;
{$R *.dfm}

procedure TfmKonfirmasi.dxButton4Click(Sender: TObject);
begin
  inherited;
  if FgStatus = 'AP' then
  begin
    If FgOto = 'Head' then
    begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('UPDATE APTrPurchaseHd SET FgOto=''Y'' WHERE PurchaseID='''+Label2.Caption+''' ');
        ExecSQL;
      end;
      ModalResult := MrOK;
    end else
    begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('UPDATE APTrPurchaseOrderDt SET FgOto=''Y'' WHERE POID='''+Label2.Caption+''' AND ItemID='''+Label1.Caption+'''');
        ExecSQL;
      end;
      ModalResult := MrOK;
    end;
  end else
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('UPDATE ARTrPurchaseOrderHd SET Jenis=''Y'',OtoDate=getdate(),OtoBy='''+dmMain.UserId+''' WHERE POID='''+Label2.Caption+''' ');
      ExecSQL;
    end;
    ModalResult := MrOK;
  end;
end;

procedure TfmKonfirmasi.dxButton3Click(Sender: TObject);
begin
  inherited;
  if FgStatus = 'AP' then
  begin
    If FgOto = 'Head' then
    begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('UPDATE APTrPurchaseHd SET FgOto=''T'' WHERE PurchaseID='''+Label2.Caption+''' ');
        ExecSQL;
      end;
      ModalResult := MrOK;
    end else
    begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add('UPDATE APTrPurchaseOrderDt SET FgOto=''T'' WHERE POID='''+Label2.Caption+''' AND ItemID='''+Label1.Caption+'''');
        ExecSQL;
      end;
      ModalResult := MrOK;
    end;
  end else
    Self.Close;
end;

procedure TfmKonfirmasi.dxButton1Click(Sender: TObject);
begin
  inherited;
  If FgOto = 'Head' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('UPDATE APTrPurchaseHd SET FgOto=''X'' WHERE PurchaseID='''+Label2.Caption+''' ');
      ExecSQL;
    end;
    ModalResult := MrOK;
  end;
end;

procedure TfmKonfirmasi.dxButton2Click(Sender: TObject);
var fHasil : String ;
begin
  inherited;
  with TfmKeyPad.Create(self) do
  try
      sDefaultAngka := CurrToStr(Jumlah);
      bDecimal := true;
      ShowModal;
      fhasil := FloatToStr(fHasilAngka);
  finally
    free;
  end;
  jumlah:=StrToCurr(fhasil) ;
  If FgOto = 'Detil' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('UPDATE APTrPurchaseOrderdt SET FgOto=''E'',Jumlah='+CurrToStr(Jumlah)+',Qty='+CurrToStr(Jumlah)+' '
         +'WHERE POID='''+Label2.Caption+''' AND ItemID='''+Label1.Caption+''' ');
      ExecSQL;
    end;
    ModalResult := MrOK;
  end;
end;

end.
