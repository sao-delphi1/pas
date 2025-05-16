unit SAMsPreference;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, StdCtrls, dxPageControl, ActnList, DB, dxExEdtr,
  dxCntner, ADODB, ExtCtrls, Buttons, dxCore, dxContainer, dxButton,
  dxEditor, dxEdLib, dxDBELib, DBCtrls;

type
  TfmSAMsPreference = class(TfmStdLv2)
    dxPageControl1: TdxPageControl;
    dxTabSheet1: TdxTabSheet;
    PCGL: TdxPageControl;
    dxTabSheet4: TdxTabSheet;
    GroupBox3: TGroupBox;
    cbKasMasuk: TComboBox;
    cbKasMasukName: TComboBox;
    GroupBox4: TGroupBox;
    cbKasKeluar: TComboBox;
    cbKasKeluarName: TComboBox;
    GroupBox5: TGroupBox;
    cbBankMasuk: TComboBox;
    cbBankMasukName: TComboBox;
    GroupBox1: TGroupBox;
    cbBankKeluar: TComboBox;
    cbBankKeluarName: TComboBox;
    GroupBox2: TGroupBox;
    cbUmum: TComboBox;
    cbUmumName: TComboBox;
    dxTabSheet5: TdxTabSheet;
    dxTabSheet6: TdxTabSheet;
    dxTabSheet2: TdxTabSheet;
    dxTabSheet3: TdxTabSheet;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    dxPageControl2: TdxPageControl;
    dxTabSheet7: TdxTabSheet;
    GroupBox6: TGroupBox;
    cbPembelian: TComboBox;
    cbPembelianName: TComboBox;
    GroupBox7: TGroupBox;
    cbPengeluaranBank: TComboBox;
    cbPengeluaranBankName: TComboBox;
    GroupBox8: TGroupBox;
    cbPengeluaranKas: TComboBox;
    cbPengeluaranKasName: TComboBox;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dxTabSheet8: TdxTabSheet;
    dxPageControl3: TdxPageControl;
    dxTabSheet9: TdxTabSheet;
    GroupBox9: TGroupBox;
    cbPenjualan: TComboBox;
    cbPenjualanName: TComboBox;
    GroupBox10: TGroupBox;
    cbPenerimaanBank: TComboBox;
    cbPenerimaanBankName: TComboBox;
    GroupBox11: TGroupBox;
    cbPenerimaanKas: TComboBox;
    cbPenerimaanKasName: TComboBox;
    dxButton3: TdxButton;
    dxButton4: TdxButton;
    dxTabSheet10: TdxTabSheet;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBText25: TDBText;
    DBText26: TDBText;
    Label30: TLabel;
    Label31: TLabel;
    DBText27: TDBText;
    DBText28: TDBText;
    Label32: TLabel;
    Label33: TLabel;
    DBText29: TDBText;
    DBText30: TDBText;
    quGL: TADOQuery;
    dsGL: TDataSource;
    quGLValutaID: TStringField;
    quGLCOACI: TStringField;
    quGLCOACO: TStringField;
    quGLCOABI: TStringField;
    quGLCOABO: TStringField;
    quGLCOAPKURS: TStringField;
    quGLCOALKURS: TStringField;
    quCOA: TADOQuery;
    quGLLCOACI: TStringField;
    quGLLCOACO: TStringField;
    quGLLCOABI: TStringField;
    quGLLCOABO: TStringField;
    quGLLCOAPKURS: TStringField;
    quGLLCOALKURS: TStringField;
    bbSave1: TdxButton;
    bbCancel1: TdxButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    quAR: TADOQuery;
    DBText7: TDBText;
    Label8: TLabel;
    dsAR: TDataSource;
    quARValutaID: TStringField;
    quARCOAAR: TStringField;
    quARCOATax: TStringField;
    quARCOASale: TStringField;
    quARCOADiscount: TStringField;
    quARCOACashP: TStringField;
    quARCOABankP: TStringField;
    quARCOAChequeP: TStringField;
    quAP: TADOQuery;
    dsAP: TDataSource;
    quARLCOAAR: TStringField;
    quARLCOATax: TStringField;
    quARLCOASale: TStringField;
    quARLCOADiscount: TStringField;
    quARLCOACashP: TStringField;
    quARLCOABankP: TStringField;
    quARLCOAChequeP: TStringField;
    bbSave2: TdxButton;
    bbCancel2: TdxButton;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBText8: TDBText;
    DBText9: TDBText;
    Label12: TLabel;
    Label13: TLabel;
    DBText10: TDBText;
    DBText11: TDBText;
    Label14: TLabel;
    Label15: TLabel;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    Label16: TLabel;
    quAPValutaID: TStringField;
    quAPCOADPPay: TStringField;
    quAPCOADP: TStringField;
    quAPCOAAP: TStringField;
    quAPCOATax: TStringField;
    quAPCOABuy: TStringField;
    quAPCOACashP: TStringField;
    quAPCOABankP: TStringField;
    quAPCOAChequeP: TStringField;
    Label17: TLabel;
    DBText15: TDBText;
    quAPLCOADPPay: TStringField;
    quAPLCOADP: TStringField;
    quAPLCOAAP: TStringField;
    quAPLCOATax: TStringField;
    quAPLCOABuy: TStringField;
    quAPLCOACashP: TStringField;
    quAPLCOABankP: TStringField;
    quAPLCOAChequeP: TStringField;
    bbSave3: TdxButton;
    bbCancel3: TdxButton;
    cbValutaid: TComboBox;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit3: TdxDBButtonEdit;
    dxDBButtonEdit4: TdxDBButtonEdit;
    dxDBButtonEdit5: TdxDBButtonEdit;
    dxDBButtonEdit6: TdxDBButtonEdit;
    cbValutaIdAR: TComboBox;
    dxDBButtonEdit7: TdxDBButtonEdit;
    dxDBButtonEdit8: TdxDBButtonEdit;
    dxDBButtonEdit9: TdxDBButtonEdit;
    dxDBButtonEdit10: TdxDBButtonEdit;
    dxDBButtonEdit11: TdxDBButtonEdit;
    dxDBButtonEdit12: TdxDBButtonEdit;
    dxDBButtonEdit13: TdxDBButtonEdit;
    cbValutaIdAP: TComboBox;
    dxDBButtonEdit14: TdxDBButtonEdit;
    dxDBButtonEdit15: TdxDBButtonEdit;
    dxDBButtonEdit16: TdxDBButtonEdit;
    dxDBButtonEdit17: TdxDBButtonEdit;
    dxDBButtonEdit18: TdxDBButtonEdit;
    dxDBButtonEdit19: TdxDBButtonEdit;
    dxDBButtonEdit20: TdxDBButtonEdit;
    dxDBButtonEdit21: TdxDBButtonEdit;
    dxTabSheet11: TdxTabSheet;
    Label18: TLabel;
    OpenDialog1: TOpenDialog;
    quExcel: TADOQuery;
    dsExcel: TDataSource;
    quExcelExcelId: TStringField;
    dxDBButtonEdit22: TdxDBButtonEdit;
    bbSave5: TdxButton;
    bbCancel5: TdxButton;
    Label36: TLabel;
    dtpAwal: TdxDateEdit;
    dxButton5: TdxButton;
    dxButton6: TdxButton;
    Label34: TLabel;
    Label35: TLabel;
    dxButtonEdit1: TdxButtonEdit;
    dxButtonEdit2: TdxButtonEdit;
    RLTahan: TLabel;
    RLJalan: TLabel;
    procedure dxTabSheet4Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbKasMasukChange(Sender: TObject);
    procedure cbKasMasukNameChange(Sender: TObject);
    procedure cbKasKeluarChange(Sender: TObject);
    procedure cbBankMasukChange(Sender: TObject);
    procedure cbBankKeluarChange(Sender: TObject);
    procedure cbUmumChange(Sender: TObject);
    procedure cbKasKeluarNameChange(Sender: TObject);
    procedure cbBankMasukNameChange(Sender: TObject);
    procedure cbBankKeluarNameChange(Sender: TObject);
    procedure cbUmumNameChange(Sender: TObject);
    procedure bbSaveClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure cbPembelianChange(Sender: TObject);
    procedure cbPembelianNameChange(Sender: TObject);
    procedure cbPengeluaranBankChange(Sender: TObject);
    procedure cbPengeluaranBankNameChange(Sender: TObject);
    procedure cbPengeluaranKasChange(Sender: TObject);
    procedure cbPengeluaranKasNameChange(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxTabSheet7Show(Sender: TObject);
    procedure dxTabSheet9Show(Sender: TObject);
    procedure cbPenjualanChange(Sender: TObject);
    procedure cbPenjualanNameChange(Sender: TObject);
    procedure cbPenerimaanBankChange(Sender: TObject);
    procedure cbPenerimaanBankNameChange(Sender: TObject);
    procedure cbPenerimaanKasChange(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure cbPenerimaanKasNameChange(Sender: TObject);
    procedure dxTabSheet5Show(Sender: TObject);
    procedure cbValutaidChange(Sender: TObject);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure bbSave1Click(Sender: TObject);
    procedure quGLBeforePost(DataSet: TDataSet);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit4ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit6ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dsGLStateChange(Sender: TObject);
    procedure bbCancel1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbValutaIdARChange(Sender: TObject);
    procedure dxTabSheet10Show(Sender: TObject);
    procedure dxDBButtonEdit7ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit8ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit9ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit10ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit11ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit12ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit13ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure bbSave2Click(Sender: TObject);
    procedure bbCancel2Click(Sender: TObject);
    procedure quARBeforePost(DataSet: TDataSet);
    procedure dsARStateChange(Sender: TObject);
    procedure dxDBButtonEdit14ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit15ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit16ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit17ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit18ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit19ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit20ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit21ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure bbSave3Click(Sender: TObject);
    procedure bbCancel3Click(Sender: TObject);
    procedure dsAPStateChange(Sender: TObject);
    procedure dxTabSheet8Show(Sender: TObject);
    procedure cbValutaIdAPChange(Sender: TObject);
    procedure quAPBeforePost(DataSet: TDataSet);
    procedure cbValutaidKeyPress(Sender: TObject; var Key: Char);
    procedure cbValutaIdARKeyPress(Sender: TObject; var Key: Char);
    procedure cbValutaIdAPKeyPress(Sender: TObject; var Key: Char);
    procedure dxDBButtonEdit22ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxTabSheet11Show(Sender: TObject);
    procedure dsExcelStateChange(Sender: TObject);
    procedure dxDBButtonEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure bbSave5Click(Sender: TObject);
    procedure bbCancel5Click(Sender: TObject);
    procedure dxTabSheet6Show(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure dxButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxButton6Click(Sender: TObject);
  private
    { Private declarations }
      bJurKM, bJurKK, bJurBM, bJurBK, bJurUm : boolean;
      bJurPl, bJurPgb, bJurPgk : boolean;
      bJurPj, bJurPnb, bJurPnk : boolean;
      bAwalBuku,bRLTahan,bRLJalan : boolean;
      Fac : TDataSource;
  public
    { Public declarations }
  end;

var
  fmSAMsPreference: TfmSAMsPreference;

implementation

uses StdLv0, MyUnit, Search, UnitGeneral;

{$R *.dfm}

procedure TfmSAMsPreference.dxTabSheet4Show(Sender: TObject);
begin
  inherited;
  with quAct,sql do
  Begin
    Close;Clear;
    Add('Select Distinct JurnalId,JurnalDesc from GlMsJurnal');
    Open;
  End;

  quAct.First;
  while Not quAct.Eof do
  Begin
    cbKasMasuk.Items.Add(quAct.Fieldbyname('JurnalId').AsString);
    cbKasMasukName.Items.Add(quAct.Fieldbyname('jurnaldesc').AsString);
    cbKasKeluar.Items.Add(quAct.Fieldbyname('JurnalId').AsString);
    cbKasKeluarName.Items.Add(quAct.Fieldbyname('jurnaldesc').AsString);
    cbBankMasuk.Items.Add(quAct.Fieldbyname('JurnalId').AsString);
    cbBankMasukName.Items.Add(quAct.Fieldbyname('jurnaldesc').AsString);
    cbBankKeluar.Items.Add(quAct.Fieldbyname('JurnalId').AsString);
    cbBankKeluarName.Items.Add(quAct.Fieldbyname('jurnaldesc').AsString);
    cbUmum.Items.Add(quAct.Fieldbyname('JurnalId').AsString);
    cbUmumName.Items.Add(quAct.Fieldbyname('jurnaldesc').AsString);
    quAct.Next;
  end;
{
  with quMain,sql do
  Begin
    Close;Clear;
    add('Select * From SAMsPreference');
    Open;
  End;
}
  //Preference Kas Masuk
   with quAct,sql do
   Begin
     Close;Clear;
     Add(' Select PrefId,PrefDesc From SAMsPreference '
        +' Where PrefId=''JCI'' and ModuleID=''GL'' and TabId=''1''');
     Open;
     bJurKM:= not quAct.IsEmpty;
     If Not IsEmpty then
       sJurKM:=quAct.fieldbyname('PrefDesc').AsString
     Else
       sJurKM:='';
     cbKasMasuk.ItemIndex:=cbKasMasuk.Items.IndexOf(sJurKM);
     cbKasMasukName.ItemIndex:=cbKasMasuk.ItemIndex;
  End;

  //Preference Kas Keluar
  with quAct,sql do
  Begin
     Close;Clear;
     Add(' Select PrefId,PrefDesc From SAMsPreference '
        +' Where PrefId=''JCO'' and ModuleID=''GL'' and TabId=''1''');
     Open;
     bJurKK:= not quAct.IsEmpty;
     If Not IsEmpty then
       sJurKK:=quAct.fieldbyname('PrefDesc').AsString
     Else
       sJurKK:='';
     cbKasKeluar.ItemIndex:=cbKasKeluar.Items.IndexOf(sJurKK);
     cbKasKeluarName.ItemIndex:=cbKasKeluar.ItemIndex;
  End;

   //Preference Bank Masuk
   with quAct,sql do
   Begin
     Close;Clear;
     Add(' Select PrefId,PrefDesc From SAMsPreference '
        +' Where PrefId=''JBI'' and ModuleID=''GL'' and TabId=''1''');
     Open;
     bJurBM:= not quAct.IsEmpty;
     If Not IsEmpty then
       sJurBM:=quAct.fieldbyname('PrefDesc').AsString
     Else
       sJurBM:='';
     cbBankMasuk.ItemIndex:=cbBankMasuk.Items.IndexOf(sJurBM);
     cbBankMasukName.ItemIndex:=cbBankMasuk.ItemIndex;
  End;

  //Preference Bank Keluar
  with quAct,sql do
  Begin
    Close;Clear;
    Add(' Select PrefId,PrefDesc From SAMsPreference '
       +' Where PrefId=''JBO'' and ModuleID=''GL'' and TabId=''1''');
    Open;
    bJurBK:= not quAct.IsEmpty;
    If Not IsEmpty then
      sJurBK:=quAct.fieldbyname('PrefDesc').AsString
    Else
      sJurBK:='';
    cbBankKeluar.ItemIndex:=cbBankKeluar.Items.IndexOf(sJurBK);
    cbBankKeluarName.ItemIndex:=cbBankKeluar.ItemIndex;
   End;

    //Preference Umum
   with quAct,sql do
   Begin
     Close;Clear;
     Add(' Select PrefId,PrefDesc From SAMsPreference '
        +' Where PrefId=''JG'' and ModuleID=''GL'' and TabId=''1''');
     Open;
     bJurUm:= not quAct.IsEmpty;
     If Not IsEmpty then
       sJurUm:=quAct.fieldbyname('PrefDesc').AsString
     Else
       sJurUm:='';
     cbUmum.ItemIndex:=cbUmum.Items.IndexOf(sJurUm);
     cbUmumName.ItemIndex:=cbUmum.ItemIndex;
  End;

end;

procedure TfmSAMsPreference.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmSAMsPreference.cbKasMasukChange(Sender: TObject);
begin
  inherited;
  cbKasMasukName.ItemIndex:=cbKasMasuk.ItemIndex;
end;

procedure TfmSAMsPreference.cbKasMasukNameChange(Sender: TObject);
begin
  inherited;
  cbKasMasuk.ItemIndex:=cbKasMasukName.ItemIndex;
end;

procedure TfmSAMsPreference.cbKasKeluarChange(Sender: TObject);
begin
  inherited;
  cbKasKeluarName.ItemIndex:=cbKasKeluar.ItemIndex;
end;

procedure TfmSAMsPreference.cbBankMasukChange(Sender: TObject);
begin
  inherited;
   cbBankMasukName.ItemIndex:=cbBankMasuk.ItemIndex;
end;

procedure TfmSAMsPreference.cbBankKeluarChange(Sender: TObject);
begin
  inherited;
  cbBankKeluarName.ItemIndex:=cbBankKeluar.ItemIndex;
end;

procedure TfmSAMsPreference.cbUmumChange(Sender: TObject);
begin
  inherited;
  cbUmumName.ItemIndex:=cbUmum.ItemIndex;
end;

procedure TfmSAMsPreference.cbKasKeluarNameChange(Sender: TObject);
begin
  inherited;
  cbKasKeluar.ItemIndex:=cbKasKeluarName.ItemIndex;
end;

procedure TfmSAMsPreference.cbBankMasukNameChange(Sender: TObject);
begin
  inherited;
  cbBankMasuk.ItemIndex:=cbBankMasukName.ItemIndex;
end;

procedure TfmSAMsPreference.cbBankKeluarNameChange(Sender: TObject);
begin
  inherited;
  cbBankKeluar.ItemIndex:=cbBankKeluarName.ItemIndex;
end;

procedure TfmSAMsPreference.cbUmumNameChange(Sender: TObject);
begin
  inherited;
  cbUmum.ItemIndex:=cbUmumName.ItemIndex;
end;

procedure TfmSAMsPreference.bbSaveClick(Sender: TObject);
var sQuery :string;
begin
  inherited;
  sJurKM:=cbKasMasuk.Text;
  if bJurKM then
    sQuery := 'update SAMsPreference set Prefdesc=''' + sJurKM + ''' where PrefID =''JCI'' and ModuleID=''GL'' and TabId=''1'''
  else
    Begin
     sQuery := 'insert into SAMsPreference(ModuleId,TabID,PrefId, PrefDesc, Note) values(''GL'',''1'' ,''JCI'',''' + sJurKM + ''',''default Journal Cash In'')';
     bjurKM:= TRUE;
    End;
  RunQuery(quAct, sQuery);

  sJurKK:=cbKasKeluar.Text;
  if bJurKK then
    sQuery := 'update SAMsPreference set Prefdesc=''' + sJurKK + ''' where PrefID =''JCO'' and ModuleID=''GL'' and TabId=''1'''
  else
    Begin
     sQuery := 'insert into SAMsPreference(ModuleId,TabID,PrefId, PrefDesc, Note) values(''GL'',''1'' ,''JCO'',''' + sJurKK + ''',''default Journal Cash Out'')';
     bJurKK := TRUE;
    End;
  RunQuery(quAct, sQuery);

  sJurBM:=cbBankMasuk.Text;
  if bJurBM then
    sQuery := 'update SAMsPreference set Prefdesc=''' + sJurBM + ''' where PrefID =''JBI'' and ModuleID=''GL'' and TabId=''1'''
  else
    Begin
     sQuery := 'insert into SAMsPreference(ModuleId,TabID,PrefId, PrefDesc, Note) values(''GL'',''1'' ,''JBI'',''' + sJurBM + ''',''default Journal Bank In'')';
     bJurBM :=TRUE;
    End;
  RunQuery(quAct, sQuery);

  sJurBK:=cbBankKeluar.Text;
  if bJurBK then
    sQuery := 'update SAMsPreference set Prefdesc=''' + sJurBK + ''' where PrefID =''JBO'' and ModuleID=''GL'' and TabId=''1'''
  else
    Begin
     sQuery := 'insert into SAMsPreference(ModuleId,TabID,PrefId, PrefDesc, Note) values(''GL'',''1'' ,''JBO'',''' + sJurBK + ''',''default Journal Bank Out'')';
     bJurBK :=TRUE;
    End;

  RunQuery(quAct, sQuery);

  sJurUm:=cbUmum.Text;
  if bJurUm then
    sQuery := 'update SAMsPreference set Prefdesc=''' + sJurUm + ''' where PrefID =''JG'' and ModuleID=''GL'' and TabId=''1'''
  else
    Begin
     sQuery := 'insert into SAMsPreference(ModuleId,TabID,PrefId, PrefDesc, Note) values(''GL'',''1'' ,''JG'',''' + sJurum + ''',''default Journal General'')';
     bJurUm := TRUE;
    End;
  RunQuery(quAct, sQuery);

  ShowMessage('Setting Kode Jurnal Sudah Tersimpan');

end;

procedure TfmSAMsPreference.bbCancelClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfmSAMsPreference.cbPembelianChange(Sender: TObject);
begin
  inherited;
  cbPembelianName.ItemIndex:=cbPembelian.ItemIndex;
end;

procedure TfmSAMsPreference.cbPembelianNameChange(Sender: TObject);
begin
  inherited;
  cbPembelian.ItemIndex:=cbPembelianName.ItemIndex;
end;

procedure TfmSAMsPreference.cbPengeluaranBankChange(Sender: TObject);
begin
  inherited;
  cbPengeluaranBankName.ItemIndex:=cbPengeluaranBank.ItemIndex;
end;

procedure TfmSAMsPreference.cbPengeluaranBankNameChange(Sender: TObject);
begin
  inherited;
  cbPengeluaranBank.ItemIndex:=cbPengeluaranBankName.ItemIndex;
end;

procedure TfmSAMsPreference.cbPengeluaranKasChange(Sender: TObject);
begin
  inherited;
  cbPengeluaranKasName.ItemIndex:= cbPengeluaranKas.ItemIndex;
end;

procedure TfmSAMsPreference.cbPengeluaranKasNameChange(Sender: TObject);
begin
  inherited;
  cbPengeluaranKas.ItemIndex:=cbPengeluaranKasName.ItemIndex;
end;

procedure TfmSAMsPreference.dxButton1Click(Sender: TObject);
var sQuery :string;
begin
  inherited;
  sJurPl:=cbPembelian.Text;
  if bJurPl then
    sQuery := 'update SAMsPreference set Prefdesc=''' + sJurPl + ''' where PrefID =''JP'' and ModuleID=''AP'' and TabId=''1'''
  else
    Begin
     sQuery := 'insert into SAMsPreference(ModuleId,TabID,PrefId, PrefDesc, Note) values(''AP'',''1'' ,''JP'',''' + sJurPl + ''',''default Journal Purchasing'')';
     BjurPl:=True;
    End;
  RunQuery(quAct, sQuery);

  sJurPgb:=cbPengeluaranBank.Text;
  if bJurPgb then
    sQuery := 'update SAMsPreference set Prefdesc=''' + sJurPgb + ''' where PrefID =''JBO'' and ModuleID=''AP'' and TabId=''1'''
  else
    Begin
     sQuery := 'insert into SAMsPreference(ModuleId,TabID,PrefId, PrefDesc, Note) values(''AP'',''1'' ,''JBO'',''' + sJurPgb + ''',''default Journal Bank Out'')';
     bJurPgb :=True;
    End;
  RunQuery(quAct, sQuery);

  sJurPgk:=cbPengeluaranKas.Text;
  if bJurPgk then
    sQuery := 'update SAMsPreference set Prefdesc=''' + sJurPgk + ''' where PrefID =''JCO'' and ModuleID=''AP'' and TabId=''1'''
  else
    Begin
     sQuery := 'insert into SAMsPreference(ModuleId,TabID,PrefId, PrefDesc, Note) values(''AP'',''1'' ,''JCO'',''' + sJurPgk + ''',''default Journal Cash Out'')';
     bJurPgk :=True;
    End;
  RunQuery(quAct, sQuery);

    ShowMessage('Setting Kode Jurnal Sudah Tersimpan');

end;

procedure TfmSAMsPreference.dxTabSheet7Show(Sender: TObject);
begin
  inherited;
  with quAct,sql do
  Begin
    Close;Clear;
    Add('Select Distinct JurnalId,JurnalDesc from GlMsJurnal');
    Open;
  End;

  quAct.First;
  while Not quAct.Eof do
  Begin
    cbPembelian.Items.Add(quAct.Fieldbyname('JurnalId').AsString);
    cbPembelianName.Items.Add(quAct.Fieldbyname('jurnaldesc').AsString);
    cbPengeluaranBank.Items.Add(quAct.Fieldbyname('JurnalId').AsString);
    cbPengeluaranBankName.Items.Add(quAct.Fieldbyname('jurnaldesc').AsString);
    cbPengeluaranKas.Items.Add(quAct.Fieldbyname('JurnalId').AsString);
    cbPengeluaranKasName.Items.Add(quAct.Fieldbyname('jurnaldesc').AsString);
    quAct.Next;
  end;
{
  with quMain,sql do
  Begin
    Close;Clear;
    add('Select * From SAMsPreference');
    Open;
  End;
}
   //Preference Pembelian
   with quAct,sql do
   Begin
     Close;Clear;
     Add(' Select PrefId,PrefDesc From SAMsPreference '
        +' Where PrefId=''JP'' and ModuleId=''AP'' and tabID=''1''');
     Open;
     bJurPl:= not quAct.IsEmpty;
     If Not IsEmpty then
       sJurPl:=quAct.fieldbyname('PrefDesc').AsString
     Else
       sJurPl:='';
     cbPembelian.ItemIndex:=cbPembelian.Items.IndexOf(sJurPl);
     cbPembelianName.ItemIndex:=cbPembelian.ItemIndex;
  End;

  //Preference Pengeluaran Bank
  with quAct,sql do
  Begin
     Close;Clear;
     Add(' Select PrefId,PrefDesc From SAMsPreference '
        +' Where PrefId=''JBO'' and ModuleId=''AP'' and tabID=''1''');
     Open;
     bJurPgb:= not quAct.IsEmpty;
     If Not IsEmpty then
       sJurPgb:=quAct.fieldbyname('PrefDesc').AsString
     Else
       sJurPgb:='';
     cbPengeluaranBank.ItemIndex:=cbPengeluaranBank.Items.IndexOf(sJurPgb);
     cbPengeluaranBankName.ItemIndex:=cbPengeluaranBank.ItemIndex;
  End;

   //Preference Pengeluaran Kas
   with quAct,sql do
   Begin
     Close;Clear;
     Add(' Select PrefId,PrefDesc From SAMsPreference '
        +' Where PrefId=''JCO'' and ModuleId=''AP'' and tabID=''1''');
     Open;
     bJurPgk:= not quAct.IsEmpty;
     If Not IsEmpty then
       sJurPgk:=quAct.fieldbyname('PrefDesc').AsString
     Else
       sJurPgk:='';
     cbPengeluaranKas.ItemIndex:=cbPengeluaranKas.Items.IndexOf(sJurPgk);
     cbPengeluaranKasName.ItemIndex:=cbPengeluaranKas.ItemIndex;
  End;


end;

procedure TfmSAMsPreference.dxTabSheet9Show(Sender: TObject);
begin
  inherited;
   with quAct,sql do
  Begin
    Close;Clear;
    Add('Select Distinct JurnalId,JurnalDesc from GlMsJurnal');
    Open;
  End;

  quAct.First;
  while Not quAct.Eof do
  Begin
    cbPenjualan.Items.Add(quAct.Fieldbyname('JurnalId').AsString);
    cbPenjualanName.Items.Add(quAct.Fieldbyname('jurnaldesc').AsString);
    cbPenerimaanBank.Items.Add(quAct.Fieldbyname('JurnalId').AsString);
    cbPenerimaanBankName.Items.Add(quAct.Fieldbyname('jurnaldesc').AsString);
    cbPenerimaanKas.Items.Add(quAct.Fieldbyname('JurnalId').AsString);
    cbPenerimaanKasName.Items.Add(quAct.Fieldbyname('jurnaldesc').AsString);
    quAct.Next;
  end;
{
  with quMain,sql do
  Begin
    Close;Clear;
    add('Select * From SAMsPreference');
    Open;
  End;
}
   //Preference Pembelian
   with quAct,sql do
   Begin
     Close;Clear;
     Add(' Select PrefId,PrefDesc From SAMsPreference '
        +' Where PrefId=''JS'' and ModuleId=''AR'' and tabID=''1''');
     Open;
     bJurPj:= not quAct.IsEmpty;
     If Not IsEmpty then
       sJurPj:=quAct.fieldbyname('PrefDesc').AsString
     Else
       sJurPj:='';
     cbPenjualan.ItemIndex:=cbPenjualan.Items.IndexOf(sJurPj);
     cbPenjualanName.ItemIndex:=cbPenjualan.ItemIndex;
  End;

  //Preference Pengeluaran Bank
  with quAct,sql do
  Begin
     Close;Clear;
     Add(' Select PrefId,PrefDesc From SAMsPreference '
        +' Where PrefId=''JBI'' and ModuleId=''AR'' and tabID=''1''');
     Open;
     bJurPnb:= not quAct.IsEmpty;
     If Not IsEmpty then
       sJurPnb:=quAct.fieldbyname('PrefDesc').AsString
     Else
       sJurPnb:='';
     cbPenerimaanBank.ItemIndex:=cbPenerimaanBank.Items.IndexOf(sJurPnb);
     cbPenerimaanBankName.ItemIndex:=cbPenerimaanBank.ItemIndex;
  End;

   //Preference Pengeluaran Kas
   with quAct,sql do
   Begin
     Close;Clear;
     Add(' Select PrefId,PrefDesc From SAMsPreference '
        +' Where PrefId=''JCI'' and ModuleId=''AR'' and tabID=''1''');
     Open;
     bJurPnk:= not quAct.IsEmpty;
     If Not IsEmpty then
       sJurPnk:=quAct.fieldbyname('PrefDesc').AsString
     Else
       sJurPnk:='';
     cbPenerimaanKas.ItemIndex:=cbPenerimaanKas.Items.IndexOf(sJurPnk);
     cbPenerimaanKasName.ItemIndex:=cbPenerimaanKas.ItemIndex;
  End;


end;

procedure TfmSAMsPreference.cbPenjualanChange(Sender: TObject);
begin
  inherited;
  cbPenjualanName.ItemIndex:=cbPenjualan.ItemIndex;
end;

procedure TfmSAMsPreference.cbPenjualanNameChange(Sender: TObject);
begin
  inherited;
   cbPenjualan.ItemIndex:=cbPenjualanName.ItemIndex;
end;

procedure TfmSAMsPreference.cbPenerimaanBankChange(Sender: TObject);
begin
  inherited;
  cbPenerimaanBankName.ItemIndex:=cbPenerimaanBank.ItemIndex;
end;

procedure TfmSAMsPreference.cbPenerimaanBankNameChange(Sender: TObject);
begin
  inherited;
  cbPenerimaanBank.ItemIndex:=cbPenerimaanBankName.ItemIndex;
end;

procedure TfmSAMsPreference.cbPenerimaanKasChange(Sender: TObject);
begin
  inherited;
  cbPenerimaanKasName.ItemIndex:=cbPenerimaanKas.ItemIndex;
end;

procedure TfmSAMsPreference.dxButton3Click(Sender: TObject);
var sQuery :string;
begin
  inherited;
  sJurPj:=cbPenjualan.Text;
  if bJurPj then
    sQuery := 'update SAMsPreference set Prefdesc=''' + sJurPj + ''' where PrefID =''JS'' and ModuleID=''AR'' and TabId=''1'''
  else
    Begin
     sQuery := 'insert into SAMsPreference(ModuleId,TabID,PrefId, PrefDesc, Note) values(''AR'',''1'' ,''JS'',''' + sJurPj + ''',''default Journal Sales'')';
     bjurPj:=True;
    End;
  RunQuery(quAct, sQuery);

  sJurPnb:=cbPenerimaanBank.Text;
  if bJurPnb then
    sQuery := 'update SAMsPreference set Prefdesc=''' + sJurPnb + ''' where PrefID =''JBI'' and ModuleID=''AR'' and TabId=''1'''
  else
    Begin
     sQuery := 'insert into SAMsPreference(ModuleId,TabID,PrefId, PrefDesc, Note) values(''AR'',''1'' ,''JBI'',''' + sJurPnb + ''',''default Journal Bank In'')';
     bJurPnb :=True;
    End;
  RunQuery(quAct, sQuery);

  sJurPnk:=cbPenerimaanKas.Text;
  if bJurPnk then
    sQuery := 'update SAMsPreference set Prefdesc=''' + sJurPnk + ''' where PrefID =''JCI'' and ModuleID=''AR'' and TabId=''1'''
  else
    Begin
     sQuery := 'insert into SAMsPreference(ModuleId,TabID,PrefId, PrefDesc, Note) values(''AR'',''1'' ,''JCI'',''' + sJurPnk + ''',''default Journal Cash In'')';
     bJurPnk :=True;
    End;
  RunQuery(quAct, sQuery);

    ShowMessage('Setting Kode Jurnal Sudah Tersimpan');

end;

procedure TfmSAMsPreference.cbPenerimaanKasNameChange(Sender: TObject);
begin
  inherited;
  cbPenerimaanKas.ItemIndex:=cbPenerimaanKasName.ItemIndex;
end;

procedure TfmSAMsPreference.dxTabSheet5Show(Sender: TObject);
begin
  inherited;
  with quAct,sql do
  Begin
    Close;Clear;
    Add('Select ValutaId from SAMsValuta');
    Open;
  End;

  cbValutaId.Clear;
  quAct.First;

  while Not quAct.Eof do
  Begin
    cbValutaId.Items.Add(quAct.Fieldbyname('valutaId').AsString);
    quAct.Next;
  end;
  cbValutaId.ItemIndex:=0;
  Fac := dsGL;
  with quGL,sql do
  Begin
    Close;Clear;
    add('Select * From SAMsPrefGL Where ValutaId='''+cbValutaId.Text+'''');
    Open;
  End;
   cbValutaId.SetFocus;
end;

procedure TfmSAMsPreference.cbValutaidChange(Sender: TObject);
begin
  inherited;
  with quGL,sql do
  Begin
    Close;Clear;
    add('Select * From SAMsPrefGL Where ValutaId='''+cbValutaId.Text+'''');
    Open;
  End;
end;

procedure TfmSAMsPreference.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := 'SELECT COAId as Kode_Rekening, COADesc as Nama_Rekening'
               +' FROM GLMsCOA WHERE ValutaID='''+cbValutaid.Text+''''
               +' ORDER BY COAId';
       if ShowModal = MrOk then
       begin
          if quGL.State = dsBrowse then quGL.Edit;
          quGLCOACI.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSAMsPreference.bbSave1Click(Sender: TObject);
begin
  inherited;
  quGL.Post;
end;

procedure TfmSAMsPreference.quGLBeforePost(DataSet: TDataSet);
begin
  inherited;

  if TRIM(quGLCOACI.Value)='' then
  Begin
    MsgInfo('Kode Rekening Kas Masuk tidak ada dalam Master ');
    quGLCOACI.FocusControl;
    Abort;
  End;

  if TRIM(quGLCOACO.Value)='' then
  Begin
    MsgInfo('Kode Rekening Kas Keluar tidak ada dalam Master ');
    quGLCOACO.FocusControl;
    Abort;
  End;

  if TRIM(quGLCOABI.Value)='' then
  Begin
    MsgInfo('Kode Rekening Bank Masuk tidak ada dalam Master ');
    quGLCOABI.FocusControl;
    Abort;
  End;

  if TRIM(quGLCOABO.Value)='' then
  Begin
    MsgInfo('Kode Rekening Bank Keluar tidak ada dalam Master ');
    quGLCOABO.FocusControl;
    Abort;
  End;

  if TRIM(quGLCOALKURS.Value)='' then
  Begin
    MsgInfo('Kode Rekening Rugi selisih Kurs tidak ada dalam Master ');
    quGLCOALKURS.FocusControl;
    Abort;
  End;

  if TRIM(quGLCOAPKURS.Value)='' then
  Begin
    MsgInfo('Kode Rekening Laba selisih Kurs tidak ada dalam Master ');
    quGLCOAPKURS.FocusControl;
    Abort;
  End;

  quGLValutaID.Value:=cbValutaid.Text;
end;

procedure TfmSAMsPreference.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := 'SELECT COAId as Kode_Rekening, COADesc as Nama_Rekening'
               +' FROM GLMsCOA WHERE ValutaID='''+cbValutaid.Text+''''
               +' ORDER BY COAId';
       if ShowModal = MrOk then
       begin
          if quGL.State = dsBrowse then quGL.Edit;
          quGLCOACO.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSAMsPreference.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := 'SELECT COAId as Kode_Rekening, COADesc as Nama_Rekening'
               +' FROM GLMsCOA WHERE ValutaID='''+cbValutaid.Text+''''
               +' ORDER BY COAId';
       if ShowModal = MrOk then
       begin
          if quGL.State = dsBrowse then quGL.Edit;
          quGLCOABI.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSAMsPreference.dxDBButtonEdit4ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := 'SELECT COAId as Kode_Rekening, COADesc as Nama_Rekening'
               +' FROM GLMsCOA WHERE ValutaID='''+cbValutaid.Text+''''
               +' ORDER BY COAId';
       if ShowModal = MrOk then
       begin
          if quGL.State = dsBrowse then quGL.Edit;
          quGLCOABO.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSAMsPreference.dxDBButtonEdit5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := 'SELECT COAId as Kode_Rekening, COADesc as Nama_Rekening'
               +' FROM GLMsCOA WHERE ValutaID='''+cbValutaid.Text+''''
               +' ORDER BY COAId';
       if ShowModal = MrOk then
       begin
          if quGL.State = dsBrowse then quGL.Edit;
          quGLCOAPKURS.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSAMsPreference.dxDBButtonEdit6ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := 'SELECT COAId as Kode_Rekening, COADesc as Nama_Rekening'
               +' FROM GLMsCOA WHERE ValutaID='''+cbValutaid.Text+''''
               +' ORDER BY COAId';
       if ShowModal = MrOk then
       begin
          if quGL.State = dsBrowse then quGL.Edit;
          quGLCOALKURS.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSAMsPreference.dsGLStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave1,bbCancel1,fac);
end;

procedure TfmSAMsPreference.bbCancel1Click(Sender: TObject);
begin
  inherited;
  quGl.Cancel;
end;

procedure TfmSAMsPreference.FormShow(Sender: TObject);
begin
  inherited;
  dxPageControl1.Show;
  dxTabSheet4.show;
end;

procedure TfmSAMsPreference.cbValutaIdARChange(Sender: TObject);
begin
  inherited;
  with quAR,sql do
  Begin
    Close;Clear;
    add('Select * From SAMsPrefAR Where ValutaId='''+cbValutaIdAR.Text+'''');
    Open;
  End;
end;

procedure TfmSAMsPreference.dxTabSheet10Show(Sender: TObject);
begin
  inherited;
  with quAct,sql do
  Begin
    Close;Clear;
    Add('Select ValutaId from SAMsValuta');
    Open;
  End;

  cbValutaIdAR.Clear;
  quAct.First;

  while Not quAct.Eof do
  Begin
    cbValutaIdAR.Items.Add(quAct.Fieldbyname('valutaId').AsString);
    quAct.Next;
  end;
  cbValutaIdAR.ItemIndex:=0;
  Fac := dsAR;
  with quAR,sql do
  Begin
    Close;Clear;
    add('Select * From SAMsPrefAR Where ValutaId='''+cbValutaIdAR.Text+'''');
    Open;
  End;
  cbValutaIdAR.SetFocus;
end;

procedure TfmSAMsPreference.dxDBButtonEdit7ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := 'SELECT COAId as Kode_Rekening, COADesc as Nama_Rekening'
               +' FROM GLMsCOA WHERE ValutaID='''+cbValutaidAR.Text+''''
               +' ORDER BY COAId';
       if ShowModal = MrOk then
       begin
          if quAR.State = dsBrowse then quAR.Edit;
          quARCOAAR.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSAMsPreference.dxDBButtonEdit8ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := 'SELECT COAId as Kode_Rekening, COADesc as Nama_Rekening'
                   +' FROM GLMsCOA WHERE ValutaID='''+cbValutaidAR.Text+''''
                   +' ORDER BY COAId';
       if ShowModal = MrOk then
       begin
          if quAR.State = dsBrowse then quAR.Edit;
          quARCOATax.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSAMsPreference.dxDBButtonEdit9ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := 'SELECT COAId as Kode_Rekening, COADesc as Nama_Rekening'
               +' FROM GLMsCOA WHERE ValutaID='''+cbValutaidAR.Text+''''
               +' ORDER BY COAId';
       if ShowModal = MrOk then
       begin
          if quAR.State = dsBrowse then quAR.Edit;
          quARCOASale.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSAMsPreference.dxDBButtonEdit10ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := 'SELECT COAId as Kode_Rekening, COADesc as Nama_Rekening'
               +' FROM GLMsCOA WHERE ValutaID='''+cbValutaidAR.Text+''''
               +' ORDER BY COAId';
       if ShowModal = MrOk then
       begin
          if quAR.State = dsBrowse then quAR.Edit;
          quARCOADiscount.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSAMsPreference.dxDBButtonEdit11ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := 'SELECT COAId as Kode_Rekening, COADesc as Nama_Rekening'
               +' FROM GLMsCOA WHERE ValutaID='''+cbValutaidAR.Text+''''
               +' ORDER BY COAId';
       if ShowModal = MrOk then
       begin
          if quAR.State = dsBrowse then quAR.Edit;
          quARCOACashP.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSAMsPreference.dxDBButtonEdit12ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := 'SELECT COAId as Kode_Rekening, COADesc as Nama_Rekening'
               +' FROM GLMsCOA WHERE ValutaID='''+cbValutaidAR.Text+''''
               +' ORDER BY COAId';
       if ShowModal = MrOk then
       begin
          if quAR.State = dsBrowse then quAR.Edit;
          quARCOABankP.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSAMsPreference.dxDBButtonEdit13ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := 'SELECT COAId as Kode_Rekening, COADesc as Nama_Rekening'
               +' FROM GLMsCOA WHERE ValutaID='''+cbValutaidAR.Text+''''
               +' ORDER BY COAId';
       if ShowModal = MrOk then
       begin
          if quAR.State = dsBrowse then quAR.Edit;
          quARCOAChequeP.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSAMsPreference.bbSave2Click(Sender: TObject);
begin
  inherited;
  quAR.Post;
end;

procedure TfmSAMsPreference.bbCancel2Click(Sender: TObject);
begin
  inherited;
  quAR.Cancel;
end;

procedure TfmSAMsPreference.quARBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quARLCOAAR.Value)='' then
  Begin
    MsgInfo('Kode Rekening Piutang tidak ada dalam Master ');
    quARCOAAR.FocusControl;
    Abort;
  End;

  if TRIM(quARLCOATax.Value)='' then
  Begin
    MsgInfo('Kode Rekening PPN Keluar tidak ada dalam Master ');
    quARCOATax.FocusControl;
    Abort;
  End;

  if TRIM(quARLCOASale.Value)='' then
  Begin
    MsgInfo('Kode Rekening Penjualan tidak ada dalam Master ');
    quARCOASale.FocusControl;
    Abort;
  End;

  if TRIM(quARLCOADiscount.Value)='' then
  Begin
    MsgInfo('Kode Rekening Diskon Penjualan tidak ada dalam Master ');
    quARCOADiscount.FocusControl;
    Abort;
  End;

  if TRIM(quARLCOACashP.Value)='' then
  Begin
    MsgInfo('Kode Rekening Penerimaan Kas tidak ada dalam Master ');
    quARLCOACashP.FocusControl;
    Abort;
  End;

  if TRIM(quARLCOABankP.Value)='' then
  Begin
    MsgInfo('Kode Rekening Penerimaan Bank tidak ada dalam Master ');
    quARCOABankP.FocusControl;
    Abort;
  End;

  if TRIM(quARLCOAChequeP.Value)='' then
  Begin
    MsgInfo('Kode Rekening Penerimaan Cek/Giro tidak ada dalam Master ');
    quARCOAChequeP.FocusControl;
    Abort;
  End;

  quARValutaID.Value:=cbValutaIdAR.Text;
end;

procedure TfmSAMsPreference.dsARStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave2,bbCancel2,fac);
end;

procedure TfmSAMsPreference.dxDBButtonEdit14ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := 'SELECT COAId as Kode_Rekening, COADesc as Nama_Rekening'
               +' FROM GLMsCOA WHERE ValutaID='''+cbValutaidAP.Text+''''
               +' ORDER BY COAId';
       if ShowModal = MrOk then
       begin
          if quAP.State = dsBrowse then quAP.Edit;
          quAPCOADPPay.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSAMsPreference.dxDBButtonEdit15ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := 'SELECT COAId as Kode_Rekening, COADesc as Nama_Rekening'
               +' FROM GLMsCOA WHERE ValutaID='''+cbValutaidAP.Text+''''
               +' ORDER BY COAId';
       if ShowModal = MrOk then
       begin
          if quAP.State = dsBrowse then quAP.Edit;
          quAPCOADP.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSAMsPreference.dxDBButtonEdit16ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := 'SELECT COAId as Kode_Rekening, COADesc as Nama_Rekening'
               +' FROM GLMsCOA WHERE ValutaID='''+cbValutaidAP.Text+''''
               +' ORDER BY COAId';
       if ShowModal = MrOk then
       begin
          if quAP.State = dsBrowse then quAP.Edit;
          quAPCOAAP.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSAMsPreference.dxDBButtonEdit17ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := 'SELECT COAId as Kode_Rekening, COADesc as Nama_Rekening'
               +' FROM GLMsCOA WHERE ValutaID='''+cbValutaidAP.Text+''''
               +' ORDER BY COAId';
       if ShowModal = MrOk then
       begin
          if quAP.State = dsBrowse then quAP.Edit;
          quAPCOATax.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSAMsPreference.dxDBButtonEdit18ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := 'SELECT COAId as Kode_Rekening, COADesc as Nama_Rekening'
               +' FROM GLMsCOA WHERE ValutaID='''+cbValutaidAP.Text+''''
               +' ORDER BY COAId';
       if ShowModal = MrOk then
       begin
          if quAP.State = dsBrowse then quAP.Edit;
          quAPCOABuy.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSAMsPreference.dxDBButtonEdit19ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := 'SELECT COAId as Kode_Rekening, COADesc as Nama_Rekening'
               +' FROM GLMsCOA WHERE ValutaID='''+cbValutaidAP.Text+''''
               +' ORDER BY COAId';
       if ShowModal = MrOk then
       begin
          if quAP.State = dsBrowse then quAP.Edit;
          quAPCOACashP.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSAMsPreference.dxDBButtonEdit20ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := 'SELECT COAId as Kode_Rekening, COADesc as Nama_Rekening'
               +' FROM GLMsCOA WHERE ValutaID='''+cbValutaidAP.Text+''''
               +' ORDER BY COAId';
       if ShowModal = MrOk then
       begin
          if quAP.State = dsBrowse then quAP.Edit;
          quAPCOABankP.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSAMsPreference.dxDBButtonEdit21ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Rekening';
       SQLString := 'SELECT COAId as Kode_Rekening, COADesc as Nama_Rekening'
               +' FROM GLMsCOA WHERE ValutaID='''+cbValutaidAP.Text+''''
               +' ORDER BY COAId';
       if ShowModal = MrOk then
       begin
          if quAP.State = dsBrowse then quAP.Edit;
          quAPCOAChequeP.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSAMsPreference.bbSave3Click(Sender: TObject);
begin
  inherited;
  quAP.Post;
end;

procedure TfmSAMsPreference.bbCancel3Click(Sender: TObject);
begin
  inherited;
  quAP.Cancel;
end;

procedure TfmSAMsPreference.dsAPStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave3,bbCancel3,fac);
end;

procedure TfmSAMsPreference.dxTabSheet8Show(Sender: TObject);
begin
  inherited;
  with quAct,sql do
  Begin
    Close;Clear;
    Add('Select ValutaId from SAMsValuta');
    Open;
  End;

  cbValutaIdAP.Clear;
  quAct.First;

  while Not quAct.Eof do
  Begin
    cbValutaIdAP.Items.Add(quAct.Fieldbyname('valutaId').AsString);
    quAct.Next;
  end;
  cbValutaIdAP.ItemIndex:=0;

  Fac := dsAP;
  
  with quAP,sql do
  Begin
    Close;Clear;
    add('Select * From SAMsPrefAP Where ValutaId='''+cbValutaIdAP.Text+'''');
    Open;
  End;
  cbValutaIdAP.SetFocus;
  
end;

procedure TfmSAMsPreference.cbValutaIdAPChange(Sender: TObject);
begin
  inherited;
  with quAP,sql do
  Begin
    Close;Clear;
    add('Select * From SAMsPrefAP Where ValutaId='''+cbValutaIdAP.Text+'''');
    Open;
  End;
end;

procedure TfmSAMsPreference.quAPBeforePost(DataSet: TDataSet);
begin
  inherited;

  if TRIM(quAPLCOADPPay.Value)='' then
  Begin
    MsgInfo('Kode Rekening Pembayaran DP tidak ada dalam Master ');
    quAPCOADPPay.FocusControl;
    Abort;
  End;

  if TRIM(quAPLCOADP.Value)='' then
  Begin
    MsgInfo('Kode Rekening DP Pembelian tidak ada dalam Master ');
    quAPCOADP.FocusControl;
    Abort;
  End;

  if TRIM(quAPLCOAAP.Value)='' then
  Begin
    MsgInfo('Kode Rekening Hutang tidak ada dalam Master ');
    quAPCOAAP.FocusControl;
    Abort;
  End;

  if TRIM(quAPLCOATax.Value)='' then
  Begin
    MsgInfo('Kode Rekening Pajak Masukan tidak ada dalam Master ');
    quAPCOATax.FocusControl;
    Abort;
  End;

  if TRIM(quAPLCOABuy.Value)='' then
  Begin
    MsgInfo('Kode Rekening Pembelian tidak ada dalam Master ');
    quAPLCOABuy.FocusControl;
    Abort;
  End;

  if TRIM(quAPLCOACashP.Value)='' then
  Begin
    MsgInfo('Kode Rekening Pembayaran Kas tidak ada dalam Master ');
    quAPCOACashP.FocusControl;
    Abort;
  End;

  if TRIM(quAPLCOABankP.Value)='' then
  Begin
    MsgInfo('Kode Rekening Pembayaran Bank tidak ada dalam Master ');
    quAPCOABankP.FocusControl;
    Abort;
  End;

  if TRIM(quAPLCOAChequeP.Value)='' then
  Begin
    MsgInfo('Kode Rekening Pembayaran Cek/Giro tidak ada dalam Master ');
    quAPCOAChequeP.FocusControl;
    Abort;
  End;

  quAPValutaID.Value:=cbValutaIdAP.Text;

end;

procedure TfmSAMsPreference.cbValutaidKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmSAMsPreference.cbValutaIdARKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmSAMsPreference.cbValutaIdAPKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmSAMsPreference.dxDBButtonEdit22ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  If OpenDialog1.Execute then
  Begin
     if quExcel.State= dsbrowse then quExcel.Edit;
     quExcelExcelId.Value:=OpenDialog1.FileName;
  End;  
end;

procedure TfmSAMsPreference.dxTabSheet11Show(Sender: TObject);
begin
  inherited;
  Fac := dsExcel;
  quExcel.Open;
End;

procedure TfmSAMsPreference.dsExcelStateChange(Sender: TObject);
begin
  inherited;
   SetBtnOperationVisible(bbSave5,bbCancel5,fac);
end;

procedure TfmSAMsPreference.dxDBButtonEdit22KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmSAMsPreference.bbSave5Click(Sender: TObject);
begin
  inherited;
  quExcel.Post;
  sExcel:=dxDBButtonEdit22.Text;
end;

procedure TfmSAMsPreference.bbCancel5Click(Sender: TObject);
begin
  inherited;
  quExcel.Cancel;
end;

procedure TfmSAMsPreference.dxTabSheet6Show(Sender: TObject);
begin
  inherited;
  with quAct,sql do
  Begin
     Close;Clear;
     Add(' Select PrefId,PrefDesc From SAMsPreference '
        +' Where PrefId=''AwalBuku'' and ModuleID=''GL'' and TabId=''3''');
     Open;
     bAwalBuku:= not quAct.IsEmpty;
     try
     if bAwalBuku then
     begin
         sAwalBuku := quAct.fieldbyname('PrefDesc').AsString;
         dtpAWal.Date := EncodeDate(strtoint(copy(sAwalBuku, 1, 4)), strtoint(copy(sAwalBuku, 6, 2)), strtoint(copy(sAwalBuku, 9, 2)));
     end
     else
     Begin
        sAwalBuku :='';
        dtpAWal.Date := EncodeDate(2005, 1, 1);
     End;
     except
        dtpAWal.Date := EncodeDate(2005, 1, 1);
     end;
  End;

  with quAct,sql do
  Begin
     Close;Clear;
     Add(' Select PrefId,PrefDesc From SAMsPreference '
        +' Where PrefId=''RLTahan'' and ModuleID=''GL'' and TabId=''3''');
     Open;
     bRLTahan:= not quAct.IsEmpty;
     If Not IsEmpty then
       sRLTahan:=quAct.fieldbyname('PrefDesc').AsString
     Else
       sRLTahan:='';

     Close;Clear;
     Add('Select COADesc FROM GLMsCOA Where COAID='''+sRLTahan+'''');
     Open;
     dxButtonEdit1.Text:=sRLTahan;
     RLTahan.Caption:=quAct.fieldbyname('COADesc').AsString;
  End;

  with quAct,sql do
  Begin
     Close;Clear;
     Add(' Select PrefId,PrefDesc From SAMsPreference '
        +' Where PrefId=''RLJalan'' and ModuleID=''GL'' and TabId=''3''');
     Open;
     bRLJalan:= not quAct.IsEmpty;
     If Not IsEmpty then
       sRLJalan:=quAct.fieldbyname('PrefDesc').AsString
     Else
       sRLJalan:='';

     Close;Clear;
     Add('Select COADesc FROM GLMsCOA Where COAID='''+sRLJalan+'''');
     Open;
     dxButtonEdit2.Text:=sRLJalan;
     RLJalan.Caption:=quAct.fieldbyname('COADesc').AsString;
  End;



end;

procedure TfmSAMsPreference.dxButton5Click(Sender: TObject);
Var sQuery : String;
begin
  inherited;
  sAwalBuku:=FormatDateTime('yyyy/MM/dd',dtpAwal.Date) ;
  if bAwalBuku then
    sQuery := 'update SAMsPreference set Prefdesc=''' + sAwalBuku + ''' where PrefID =''AwalBuku'' and ModuleID=''GL'' and TabId=''3'''
  else
  Begin
    sQuery := 'insert into SAMsPreference(ModuleId,TabID,PrefId, PrefDesc, Note) values(''GL'',''3'' ,''AwalBuku'',''' + sAwalBuku + ''',''default awal pembukuan'')';
    bAwalBuku:= TRUE;
  End;
  RunQuery(quAct, sQuery);

  sRLTahan:=dxButtonEdit1.Text ;
  if bRLTahan then
    sQuery := 'update SAMsPreference set Prefdesc=''' + sRLTahan + ''' where PrefID =''RLTahan'' and ModuleID=''GL'' and TabId=''3'''
  else
  Begin
    sQuery := 'insert into SAMsPreference(ModuleId,TabID,PrefId, PrefDesc, Note) values(''GL'',''3'' ,''RLTahan'',''' + sRLTahan + ''',''default RL Tahan'')';
    bRLTahan:= TRUE;
  End;
  RunQuery(quAct, sQuery);

  sRLJalan:=dxButtonEdit2.Text ;
  if bRLJalan then
    sQuery := 'update SAMsPreference set Prefdesc=''' + sRLJalan + ''' where PrefID =''RLJalan'' and ModuleID=''GL'' and TabId=''3'''
  else
  Begin
    sQuery := 'insert into SAMsPreference(ModuleId,TabID,PrefId, PrefDesc, Note) values(''GL'',''3'' ,''RLJalan'',''' + sRLJalan + ''',''default RL Jalan'')';
    bRLJalan:= TRUE;
  End;
  RunQuery(quAct, sQuery);

  ShowMessage('Setting AwalBuku,RLTahan,RLJalan Sudah Tersimpan');

end;

procedure TfmSAMsPreference.dxButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
       Title := 'Rekening';
       SQLString := ' SELECT COAId as Kode_Rekening, COADesc as Nama_Rekening'
                   +' FROM GLMsCOA'
                   +' ORDER BY COAId';
       if ShowModal = MrOk then
       begin
          dxButtonEdit1.Text:= Res[0];
          RLTahan.Caption:= Res[1];
       end;
  finally
     free;
  end;
end;

procedure TfmSAMsPreference.dxButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
       Title := 'Rekening';
       SQLString := ' SELECT COAId as Kode_Rekening, COADesc as Nama_Rekening'
                   +' FROM GLMsCOA'
                   +' ORDER BY COAId';
       if ShowModal = MrOk then
       begin
          dxButtonEdit2.Text:= Res[0];
          RLJalan.Caption:= Res[1];
       end;
  finally
     free;
  end;
end;

procedure TfmSAMsPreference.dxButton6Click(Sender: TObject);
begin
  inherited;
  close;
end;

end.
