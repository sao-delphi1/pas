unit ARUbahSO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv0, dxExEdtr, dxCntner, DB, ADODB, dxEditor, dxEdLib,
  StdCtrls, dxCore, dxButton, ExtCtrls;

type
  TfmARUbahSO = class(TfmStdLv0)
    PanelHeader: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    bbOK1: TdxButton;
    dxButtonEdit1: TdxButtonEdit;
    dxButton1: TdxButton;
    dxButtonEdit2: TdxButtonEdit;
    Label3: TLabel;
    Label5: TLabel;
    dxEdit1: TdxEdit;
    PanelDetail: TPanel;
    LbNamaBarang: TLabel;
    LbJumlah: TLabel;
    LbHarga: TLabel;
    LbBagasi: TLabel;
    LbModal: TLabel;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    dxJumlah: TdxEdit;
    dxHarga: TdxEdit;
    dxBagasi: TdxEdit;
    dxModal: TdxEdit;
    procedure dxButton1Click(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure bbOK1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SOID,KodeBarang,LStatus : string;
  end;

var
  fmARUbahSO: TfmARUbahSO;

implementation

uses Search, ConMain;

{$R *.dfm}

procedure TfmARUbahSO.dxButton1Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TfmARUbahSO.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Pelanggan';
     SQLString := 'SELECT CustName as Pelanggan,CustID as Kode_Pelanggan FROM ARMsCustomer WHERE FgActive=''Y'' ORDER BY CustID';
     if ShowModal = MrOK then
     begin
        dxButtonEdit1.Text := Res[1];
        dxButtonEdit2.Text := Res[0];
     end;
  finally
     free;
  end;
end;

procedure TfmARUbahSO.FormShow(Sender: TObject);
begin
  inherited;
//  dxButtonEdit1.SetFocus;
end;

procedure TfmARUbahSO.bbOK1Click(Sender: TObject);
begin
  inherited;
  if LStatus <> 'Beli' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('UPDATE ARTrPurchaseOrderHd SET CustID='''+dxButtonEdit1.Text+''',PRID='''+dxEdit1.Text+''','
         +'UbahDate=getdate(),UbahUser='''+dmMain.UserId+''' WHERE POID='''+SOID+''' ');
      ExecSQL;
    end;
  end else
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('UPDATE APTrKonsinyasiInvHd SET TaxID='''+dxEdit1.Text+'''WHERE KonsinyasiInvID='''+SOID+''' ');
      ExecSQL;
    end;
  end;
  Self.Close;
end;

procedure TfmARUbahSO.dxButton2Click(Sender: TObject);
begin
  inherited;
  if LStatus = 'PO' then
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('UPDATE ARTrPenawaranDt SET Qty='''+dxJumlah.Text+''',Price='''+dxHarga.Text+''','
         +'UbahDate=getdate(),UbahUser='''+dmMain.UserId+''' WHERE GBUID='''+SOID+''' AND ItemID='''+KodeBarang+''' ');
      ExecSQL;
    end;
  end else
  begin
    with quAct,SQL do
    begin
      Close;Clear;
      Add('UPDATE ARTrPurchaseOrderDt SET Qty='''+dxJumlah.Text+''',Price='''+dxHarga.Text+''',Bagasi='''+dxBagasi.Text+''',Modal='''+dxModal.Text+''','
         +'UbahDate=getdate(),UbahUser='''+dmMain.UserId+''' WHERE POID='''+SOID+''' AND ItemID='''+KodeBarang+''' ');
      ExecSQL;
    end;
  end;
  Self.Close;
end;

end.
