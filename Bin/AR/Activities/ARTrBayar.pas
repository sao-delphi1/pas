unit ARTrBayar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv011, dxButton, ExtCtrls, dxCntner, dxEditor, dxEdLib,
  StdCtrls, dxExEdtr, DB, ADODB, Buttons, dxCore, dxContainer, ActnList;

type
  TfmArTrBayar = class(TfmStdLv011)
    Label4: TLabel;
    Label2: TLabel;
    lbTotal: TLabel;
    Shape7: TShape;
    Shape2: TShape;
    lbKembali: TLabel;
    lblasli: TLabel;
    GroupBox1: TGroupBox;
    Shape1: TShape;
    Label1: TLabel;
    dxButton3: TdxButton;
    GroupBox2: TGroupBox;
    Shape4: TShape;
    Label7: TLabel;
    Label3: TLabel;
    dxButton4: TdxButton;
    GroupBox3: TGroupBox;
    Shape3: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    dxButton5: TdxButton;
    dxButton6: TdxButton;
    dxButtonEdit1: TdxButtonEdit;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    Label10: TLabel;
    Label9: TLabel;
    dxButton7: TdxButton;
    dxButtonEdit3: TdxButtonEdit;
    dxButton8: TdxButton;
    dxButton9: TdxButton;
    dxButton10: TdxButton;
    dxButtonEdit2: TdxButtonEdit;
    dxButtonEdit4: TdxButtonEdit;
    ActionList: TActionList;
    Cash1: TAction;
    Debit1: TAction;
    BankDebit: TAction;
    NDebit: TAction;
    CC: TAction;
    Charge1: TAction;
    BCC: TAction;
    NoCC: TAction;
    Cetak: TAction;
    Batal: TAction;
    procedure FormShow(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButton6Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton7Click(Sender: TObject);
    procedure dxButton8Click(Sender: TObject);
    procedure dxButton9Click(Sender: TObject);
    procedure dxButton10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    total,TotalC,Cash,Debit,Credit,Charge,ChargeA,ChargeB,ChargeC : Currency;
    NoNotaC,FgLunas : string;
    TglNota : TDateTime;
    Kembali : currency;
    BD,ND,BK,NK : string;
  end;

var
  fmArTrBayar: TfmArTrBayar;

implementation

uses MyUnit, Keypad, ARSearchSC, KeypadDec, KeypadSC, Allitem, StdLv0;

{$R *.dfm}

procedure TfmArTrBayar.FormShow(Sender: TObject);
begin
  inherited;
  Cash :=0;
  Credit:=0;
  Debit :=0;
  Charge :=0;
  dxButton3.SetFocus;
  lblasli.Caption:='0';
  Label1.Caption := FormatCurr(sDisFormat1,0);
  Label3.Caption := FormatCurr(sDisFormat1,0);
  Label5.Caption := FormatCurr(sDisFormat1,0);
  Label8.Caption := FormatCurr(sDisFormat1,0);
  Label9.Caption := FormatCurr(sDisFormat1,0);
end;

procedure TfmArTrBayar.dxButton3Click(Sender: TObject);
var fhasil : string;
begin
  inherited;


  with TfmKeyPad.Create(self) do
  try
      sDefaultAngka := '0';
      bDecimal := true;
      //iTop := atas;
      //iLeft := kiri;
      ShowModal;
      fhasil := FloatToStr(fHasilAngka);
      Cash  := fhasilAngka ;
  finally
    free;
  end;
   Label1.Caption := FormatCurr(sDisFormat1,Cash);
   lbKembali.Caption := formatcurr(sDisFormat1,(Cash+Debit+Credit+((Credit*Charge)/100) -TotalC));
   Kembali :=Cash+Debit+Credit+((Credit*Charge)/100) -TotalC;
   if Kembali < 0 then
    lbKembali.Font.Color :=clred
   else
    lbKembali.Font.Color :=clBlack;
end;

procedure TfmArTrBayar.dxButton4Click(Sender: TObject);
var fhasil : string;
begin
  inherited;
  with TfmKeyPad.Create(self) do
  try
      sDefaultAngka := '0';
      bDecimal := true;
      //iTop := atas;
      //iLeft := kiri;
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
    lbKembali.Font.Color :=clBlack;

end;

procedure TfmArTrBayar.dxButton5Click(Sender: TObject);
var fhasil : string;
begin
  inherited;
  with TfmKeyPad.Create(self) do
  try
      sDefaultAngka := '0';
      bDecimal := true;
      //iTop := atas;
      //iLeft := kiri;
      ShowModal;
      fhasil := FloatToStr(fHasilAngka);
      Credit  := fhasilAngka ;
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

procedure TfmArTrBayar.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;

  with TfmSearchSales.Create(Self) do
    try
       Title := 'BANK';
       SQLString :=  ' SELECT BankId as [KODE BANK], BankName as [NAMA SALES]'
                    +' FROM CFMsBank'
                    +' ORDER BY BankId';
       if ShowModal = MrOK then
       begin
           dxButtonEdit2.Text := Res[0];
       end;
    finally
       free;
    end;

end;

procedure TfmArTrBayar.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearchSales.Create(Self) do
    try
       Title := 'BANK';
       SQLString :=  ' SELECT BankId as [KODE BANK], BankName as [NAMA BANK]'
                    +' FROM CFMsBank'
                    +' ORDER BY BankId';
       if ShowModal = MrOK then
       begin
           dxButtonEdit1.Text := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmArTrBayar.dxButton6Click(Sender: TObject);
var fhasil : string;
begin
  inherited;


  with TfmKeyPadDec.Create(self) do
  try
      sDefaultAngka := '0';
      bDecimal := true;
      //iTop := atas;
      //iLeft := kiri;
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

procedure TfmArTrBayar.dxButton1Click(Sender: TObject);
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
{    if dxButtonEdit4.Text ='' then
    Begin
       ShowMessage('NOMOR DEBIT HARUS DIISI');
       dxButtonEdit4.SetFocus;
       Abort;
    End;
}
   end;

   if Credit <> 0 then
   Begin
    if dxButtonEdit1.Text ='' then
    Begin
       ShowMessage('BANK CREDIT HARUS DIISI');
       dxButtonEdit1.SetFocus;
       Abort;
    End;
   if dxButtonEdit1.Text = 'BCA' then
     ChargeB := (Credit+ChargeA)*1.5/100
    else
     ChargeB := (Credit+ChargeA)*2/100;

{
    if dxButtonEdit3.Text ='' then
    Begin
       ShowMessage('NOMOR CREDIT CARD HARUS DIISI');
       dxButtonEdit3.SetFocus;
       Abort;
    End;
}
   End;


  if kembali >= 0 then
  Begin

       DeleteFromAllMoney1(NoNotaC,NoNotaC,'51');
       DeleteFromAllMoney1(NoNotaC,NoNotaC,'4');
       if cash <> 0 then
       Begin
         InsertToAllMoney(NoNotaC,NoNotaC,TglNota,'Counter','KM',sDRPj,sDGRPj,
                          cash-kembali,'Pembayaran Cash Nota Penjualan Counter '+NoNotaC+'',
                          '51','','','Tunai','IDR',0);
       End;

       if Debit <> 0 then
       Begin
         with quAct,sql do
         Begin
           Close;Clear;
           Add('Select Bankname from CFMsBank Where BankId='''+dxButtonEdit2.Text+'''');
           Open;
         end;

         InsertToAllMoney(NoNotaC,NoNotaC,TglNota,'Counter','BM',sDRPj,sDGRPj,
                          Debit,'Pembayaran Debit Nota Penjualan Counter '+NoNotaC+'',
                          '51',dxButtonEdit2.Text,quact.fieldbyname('BankName').AsString,'Debit','IDR',0);
{         InsertToAllMoney(NoNotaC,NoNotaC,TglNota,'Counter','BM',sDRPj,sDGRPj,
                          Debit,'Pembayaran Debit Nota Penjualan Counter '+NoNotaC+'',
                          '51',dxButtonEdit2.Text,quact.fieldbyname('BankName').AsString,dxButtonEdit4.Text,'IDR',0);}
       End;

       if Credit <> 0 then
       Begin
          with quAct,sql do
         Begin
           Close;Clear;
           Add('Select Bankname from CFMsBank Where BankId='''+dxButtonEdit1.Text+'''');
           Open;
         end;
         InsertToAllMoney(NoNotaC,NoNotaC,TglNota,'Counter','BM',sDRPj,sDGRPj,
                          Credit,'Pembayaran Credit Card Nota Penjualan Counter '+NoNotaC+'',
                          '51',dxButtonEdit1.Text,quAct.fieldbyname('BankName').AsString,'Kartu','IDR',0);
{         InsertToAllMoney(NoNotaC,NoNotaC,TglNota,'Counter','BM',sDRPj,sDGRPj,
                          Credit,'Pembayaran Credit Card Nota Penjualan Counter '+NoNotaC+'',
                          '51',dxButtonEdit1.Text,quAct.fieldbyname('BankName').AsString,dxButtonEdit3.Text,'IDR',0);
         InsertToAllMoney(NoNotaC,NoNotaC,TglNota,'Counter','BM',sDRPj,sDGRPj,
                          Charge,'Pembayaran Charge Credit Card Nota Penjualan Counter'+NoNotaC+'',
                          '51',dxButtonEdit1.Text,quAct.fieldbyname('BankName').AsString,dxButtonEdit3.Text,'IDR',0);
}
         InsertToAllMoney(NoNotaC,NoNotaC,TglNota,'Counter','BM',sDRPj,sDGRPj,
                          ChargeA,'Pembayaran Charge Credit Card Nota Penjualan Counter '+NoNotaC+'',
                          '51',dxButtonEdit1.Text,quAct.fieldbyname('BankName').AsString,'Charge','IDR',0);
         InsertToAllMoney(NoNotaC,NoNotaC,TglNota,'Counter','BK',sDRPj,sDGRPb,
                          ChargeB,'Administrasi Charge Credit Card Nota Penjualan Counter '+NoNotaC+'',
                          '4',dxButtonEdit1.Text,quAct.fieldbyname('BankName').AsString,'Administrasi','IDR',0);

       End;



  End
  else
  Begin
     ShowMessage('Kembali tidak boleh minus');
     Abort;
  End;

   Kembali :=  Cash+Debit+Credit+((Credit*Charge)/100) -TotalC;
   BD := dxButtonEdit2.Text;
   ND := dxButtonEdit4.Text;
   BK := dxButtonEdit1.Text;
   NK := dxButtonEdit3.Text;
   ModalResult := mrOk ;
end;

procedure TfmArTrBayar.dxButton7Click(Sender: TObject);
var fhasil : string ;
begin
  inherited;
  with TfmKeyPadSC.Create(self) do
  try
      sDefaultAngka := '';
      bDecimal := true;
      //iTop := atas;
      //iLeft := kiri;

       ShowModal;
      fhasil := fHasilAngka;
  finally
    free;
  end;
  dxButtonEdit3.Text := fhasil;
end;

procedure TfmArTrBayar.dxButton8Click(Sender: TObject);
begin
  inherited;

  with TfmSearchSales.Create(Self) do
    try
       Title := 'BANK';
       SQLString :=  ' SELECT BankId as [KODE_BANK], BankName as [NAMA_BANK]'
                    +' FROM CFMsBank'
                    +' ORDER BY BankId';
       if ShowModal = MrOK then
       begin
           dxButtonEdit2.Text := Res[0];
       end;
    finally
       free;
    end;

end;

procedure TfmArTrBayar.dxButton9Click(Sender: TObject);
begin
  inherited;
  with TfmSearchSales.Create(Self) do
  try
       Title := 'BANK';
       SQLString :=  ' SELECT BankId as [KODE BANK], BankName as [NAMA BANK]'
                    +' FROM CFMsBank'
                    +' where BankID=''BCA'' or BankID=''BII'' '
                    +' ORDER BY BankId';
       if ShowModal = MrOK then
       begin
           dxButtonEdit1.Text := Res[0];
       end;
  finally
       free;
  end;
  if dxButtonEdit1.Text = 'BII' then
    Charge:=2.041
  else
    Charge:=1.523;

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

procedure TfmArTrBayar.dxButton10Click(Sender: TObject);
var fhasil : string;
begin
  inherited;
    with TfmKeyPadSC.Create(self) do
  try
      sDefaultAngka := '';
      bDecimal := true;
      //iTop := atas;
      //iLeft := kiri;
      ShowModal;
      fhasil := fHasilAngka;
  finally
    free;
  end;
  dxButtonEdit4.Text := fhasil;

end;

end.
