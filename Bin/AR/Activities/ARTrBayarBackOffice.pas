unit ARTrBayarBackOffice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv011, dxExEdtr, dxCntner, DB, ADODB, StdCtrls, Buttons,
  dxCore, dxContainer, dxEditor, dxEdLib, dxButton, ExtCtrls, ActnList;

type
  TfmArTrBayarBackOffice = class(TfmStdLv011)
    Shape2: TShape;
    Shape7: TShape;
    Label4: TLabel;
    Label2: TLabel;
    lbTotal: TLabel;
    lbKembali: TLabel;
    GroupBox1: TGroupBox;
    Shape1: TShape;
    Label1: TLabel;
    dxButton3: TdxButton;
    GroupBox3: TGroupBox;
    Shape3: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    dxButton5: TdxButton;
    dxButton6: TdxButton;
    dxButtonEdit1: TdxButtonEdit;
    dxButton7: TdxButton;
    dxButtonEdit3: TdxButtonEdit;
    dxButton9: TdxButton;
    GroupBox2: TGroupBox;
    Shape4: TShape;
    Label7: TLabel;
    Label3: TLabel;
    dxButton4: TdxButton;
    dxButton8: TdxButton;
    dxButton10: TdxButton;
    dxButtonEdit2: TdxButtonEdit;
    dxButtonEdit4: TdxButtonEdit;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    lbAsli: TLabel;
    ActionList: TActionList;
    Cash1: TAction;
    Debit1: TAction;
    BankDebit: TAction;
    CC: TAction;
    Charge1: TAction;
    BCC: TAction;
    procedure FormShow(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton8Click(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton9Click(Sender: TObject);
    procedure dxButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Kembali,Total,TotalC,Cash,Debit,Credit,Charge,ChargeA,ChargeB : Currency;
    NoNotaC,Actor,Valuta : String;
    TglNota : TDateTime;
  end;

var
  fmArTrBayarBackOffice: TfmArTrBayarBackOffice;

implementation

uses MyUnit, Keypad, ARSearchSC, Allitem, KeypadDec;

{$R *.dfm}

procedure TfmArTrBayarBackOffice.FormShow(Sender: TObject);
begin
  inherited;
  Cash :=0;
  Credit:=0;
  Debit :=0;
  Charge :=0;
  dxButton3.SetFocus;
  Label1.Caption := FormatCurr(sDisFormat1,0);
  Label3.Caption := FormatCurr(sDisFormat1,0);
  Label5.Caption := FormatCurr(sDisFormat1,0);
  Label8.Caption := FormatCurr(sDisFormat1,0);
  Label9.Caption := FormatCurr(sDisFormat1,0);
end;

procedure TfmArTrBayarBackOffice.dxButton3Click(Sender: TObject);
var fhasil : string;
begin
  inherited;
  with TfmKeyPad.Create(self) do
  try
      sDefaultAngka := '0';
      bDecimal := true;
      ShowModal;
      fhasil := FloatToStr(fHasilAngka);
      Cash  := fhasilAngka ;
  finally
    free;
  end;
   Label1.Caption := FormatCurr(sDisFormat1,Cash);
   lbKembali.Caption := FormatCurr(sDisFormat1,(Cash+Debit+Credit+((Credit*Charge)/100) -TotalC));
   Kembali :=Cash+Debit+Credit+((Credit*Charge)/100) -TotalC;
   if Kembali < 0 then
    lbKembali.Font.Color :=clred
   else
    lbKembali.Font.Color :=clBlack;end;

procedure TfmArTrBayarBackOffice.dxButton4Click(Sender: TObject);
var fHasil : string;
begin
  inherited;
  with TfmKeyPad.Create(self) do
  try
      sDefaultAngka := '0';
      bDecimal := true;
      ShowModal;
      fhasil := FloatToStr(fHasilAngka);
      Debit  := fhasilAngka ;
  finally
    free;
  end;
   Label3.Caption := FormatCurr(sDisFormat1,Debit);
   lbKembali.Caption := formatcurr(sDisFormat1,Cash+Debit+Credit+((Credit*Charge)/100) -TotalC);
  if debit = 0 then
  begin
    dxButtonEdit2.Text:='';
    dxButtonEdit4.Text:='';
  end;
  Kembali :=Cash+Debit+Credit+((Credit*Charge)/100) -TotalC;
   if Kembali < 0 then
    lbKembali.Font.Color :=clred
   else
    lbKembali.Font.Color :=clBlack;end;

procedure TfmArTrBayarBackOffice.dxButton8Click(Sender: TObject);
begin
  inherited;
  with TfmSearchSales.Create(Self) do
    try
       Title := 'BANK';
       SQLString :=  ' SELECT BankId as [KODE_BANK], BankName as [NAMA_BANK]'
                    +' FROM CFMsBank WHERE FgActive=''Y'' ORDER BY BankId';
       if ShowModal = MrOK then
       begin
           dxButtonEdit2.Text := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmArTrBayarBackOffice.dxButton5Click(Sender: TObject);
var fhasil : string;
begin
  inherited;
  with TfmKeyPad.Create(self) do
  try
      sDefaultAngka := '0';
      bDecimal := true;
      ShowModal;
      fhasil := FloatToStr(fHasilAngka);
      Credit  := fhasilAngka ;
      dxButtonEdit1.Clear;
  finally
    free;
  end;
   Label5.Caption := FormatCurr(sDisFormat1,Credit);
   TotalC := Total;
   Charge :=0;
   Label9.Caption := currtostr(Charge);
   Label8.Caption := FormatCurr(sDisFormat1,(Credit*Charge)/100);
   if Credit = 0 then
   begin
    dxButtonEdit1.Text:='';
    dxButtonEdit3.Text:='';
   end;
   lbTotal.Caption := FormatCurr(sDisFormat1,totalC);
   lbKembali.Caption := formatcurr(sDisFormat1,(Cash+Debit+Credit-((Credit*Charge)/100) -TotalC));
   Kembali :=Cash+Debit+Credit+((Credit*Charge)/100) -TotalC;
   if Kembali < 0 then
    lbKembali.Font.Color :=clred
   else
    lbKembali.Font.Color :=clBlack;
end;

procedure TfmArTrBayarBackOffice.dxButton1Click(Sender: TObject);
begin
  inherited;
  ChargeA := (Credit*Charge)/100;
  if Debit <> 0 then
  Begin
    if dxButtonEdit2.Text ='' then
    Begin
       ShowMessage('BANK DEBIT HARUS DIISI');
       dxButtonEdit2.SetFocus;
       Abort;
    End;
  end;

  if Credit <> 0 then
  Begin
    if dxButtonEdit1.Text ='' then
    Begin
       ShowMessage('BANK CREDIT HARUS DIISI');
       dxButtonEdit1.SetFocus;
       Abort;
    End;
    if Label9.Caption = '0' then
    begin
      ShowMessage('Charge Kartu Kredit belum di set');
      dxButton6.SetFocus;
      Abort;
    end;
    if dxButtonEdit1.Text = 'Mandiri' then
       ChargeB := (Credit+ChargeA)*2.25/100
    else
       ChargeB := (Credit+ChargeA)*2/100;
  end;
//  if Kembali = 0 then
//  Begin
     DeleteFromAllMoney1(NoNotaC,NoNotaC,'15');
     DeleteFromAllMoney1(NoNotaC,NoNotaC,'18');
     if cash <> 0 then
     Begin
       InsertToAllMoney(NoNotaC,NoNotaC,TglNota,Actor,'KM',sDRPj,sDGRPj, cash-kembali,'Pembayaran Tunai untuk DP Nota Penjualan '+NoNotaC+'',
                        '15','','','Tunai',Valuta,1);
     End;

     if Debit <> 0 then
     Begin
       with quAct,sql do
       Begin
         Close;Clear;
         Add('Select Bankname from CFMsBank Where BankId='''+dxButtonEdit2.Text+'''');
         Open;
       end;
       InsertToAllMoney(NoNotaC,NoNotaC,TglNota,Actor,'BM',sDRPj,sDGRPj,Debit,'Pembayaran Debit untuk Nota Penjualan '+NoNotaC+'',
                        '15',dxButtonEdit2.Text,quact.fieldbyname('BankName').AsString,'Debit',Valuta,0);
     End;

     if Credit <> 0 then
     Begin
        with quAct,sql do
       Begin
         Close;Clear;
         Add('Select Bankname from CFMsBank Where BankId='''+dxButtonEdit1.Text+'''');
         Open;
       end;
       InsertToAllMoney(NoNotaC,NoNotaC,TglNota,Actor,'BM',sDRPj,sDGRPj,Credit,'Pembayaran Credit Card untuk Nota Penjualan '+NoNotaC+'',
                        '15',dxButtonEdit1.Text,quAct.FieldByName('BankName').AsString,'Kredit',Valuta,1);
       InsertToAllMoney(NoNotaC,NoNotaC,TglNota,Actor,'BM',sDRPj,sDGRPj,ChargeA,'Pembayaran Charge Credit Card untuk Nota Penjualan '+NoNotaC+'',
                        '15',dxButtonEdit1.Text,quAct.FieldByName('BankName').AsString,'Charge',Valuta,1);
       InsertToAllMoney(NoNotaC,NoNotaC,TglNota,Actor,'BK',sDRPb,sDGRPb,ChargeB,'Administrasi Charge Credit Card Nota Penjualan '+NoNotaC+'',
                        '18',dxButtonEdit1.Text,quAct.FieldByName('BankName').AsString,'Administrasi',Valuta,1);

     End;
{  End
  else
  Begin
     ShowMessage('Nilai Kembali harus sama dengan 0 (NOL)');
     Abort;
  End;}
  with quAct,SQL do
  begin
    Close;Clear;
    Add('UPDATE ARTrPenjualanHd SET DP='''+FormatCurr('0.00',Cash+Debit+Credit)+''',TTLPj='''+FormatCurr('0.00',Total-Cash-Debit-Credit)+''' '
       +'WHERE SaleID='''+NoNotaC+''' ');
    ExecSQL;
  end;

   ModalResult := mrOk ;
end;

procedure TfmArTrBayarBackOffice.dxButton9Click(Sender: TObject);
begin
  inherited;
  with TfmSearchSales.Create(Self) do
  try
       Title := 'BANK';
       SQLString :=  ' SELECT BankId as [KODE BANK], BankName as [NAMA BANK]'
                    +' FROM CFMsBank WHERE FgActive=''Y'' ORDER BY BankId';
       if ShowModal = MrOK then
       begin
           dxButtonEdit1.Text := Res[0];
       end;
  finally
       free;
  end;

  Label9.Caption := CurrToStr(Charge);
  Label8.Caption := FormatCurr(sDisFormat1,(Credit*Charge)/100);
  totalC:=total+((Credit*Charge)/100);
  lbTotal.Caption := FormatCurr(sDisFormat1,totalC);
  lbKembali.Caption := formatcurr(sDisFormat1,(Cash+Debit+Credit+((Credit*Charge)/100) -TotalC));
  Kembali :=Cash+Debit+Credit+((Credit*Charge)/100) -TotalC;
  if Kembali < 0 then
   lbKembali.Font.Color :=clred
  else
   lbKembali.Font.Color :=clBlack;end;

procedure TfmArTrBayarBackOffice.dxButton6Click(Sender: TObject);
var fHasil : string;
begin
  inherited;
  with TfmKeyPadDec.Create(self) do
  try
      sDefaultAngka := '0';
      bDecimal := true;
      ShowModal;
      fhasil := FloatToStr(fHasilAngka);
      Charge := fHasilAngka;
  finally
    free;
  end;
  Label9.Caption := currtostr(Charge);
  Label8.Caption := FormatCurr(sDisFormat1,(Credit*Charge)/100);
  totalC:=total+((Credit*Charge)/100);
  lbTotal.Caption := FormatCurr(sDisFormat1,totalC);
  lbKembali.Caption := formatcurr(sDisFormat1,(Cash+Debit+Credit+((Credit*Charge)/100) -TotalC));
  Kembali :=Cash+Debit+Credit+((Credit*Charge)/100) -TotalC;
  if Kembali < 0 then
   lbKembali.Font.Color :=clred
  else
   lbKembali.Font.Color :=clBlack;
end;

end.
