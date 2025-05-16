unit CFMsBank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, dxEdLib, dxDBELib, dxEditor, DB, DBCtrls,
  ActnList, dxCntner, ADODB, dxTL, dxDBCtrl, dxDBGrid, dxPageControl,
  dxButton, StdCtrls, ExtCtrls, Buttons, dxCore, dxContainer, dxDBTLCl,
  dxGrClms;

type
  TfmCFMsBank = class(TfmStdLv4)
    Label1: TLabel;
    Label2: TLabel;
    DBText2: TDBText;
    Label4: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    Label13: TLabel;
    quGroupRek: TADOQuery;
    quMainBankId: TStringField;
    quMainBankName: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainNote: TStringField;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBMemo2: TdxDBMemo;
    dbgListBankId: TdxDBGridMaskColumn;
    dbgListBankName: TdxDBGridMaskColumn;
    dbgListUpdDate: TdxDBGridDateColumn;
    dbgListUpdUser: TdxDBGridMaskColumn;
    dbgListNote: TdxDBGridMaskColumn;
    DBRadioGroup3: TDBRadioGroup;
    quMainFgActive: TStringField;
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActNewExecute(Sender: TObject);
    procedure ActSaveExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure ActDeleteExecute(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    Procedure Status;
  public
    { Public declarations }
    CallFromAnotherMenu : boolean;
  End;
var
  fmCFMsBank: TfmCFMsBank;

implementation

uses ConMain, UnitGeneral, Search;

{$R *.dfm}
Procedure TfmCFMsBank.Status;
Begin
  // Nanti Dolo INGETTTTTTTTTTT
 { with quAct,sql do
  Begin
    Close;Clear;
    Add('Select RekeningId FROM CFMsRekening WHERE RekeningId='''+quMainRekeningId.Value+'''');
    Open;
    if not IsEmpty then
    Begin
       MsgInfo('Kode Supplier sudah di pakai di Penjualan');
       Abort;
    End;
 End;}
End;
procedure TfmCFMsBank.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBEdit1,qumain.state <> dsInsert);
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
end;

procedure TfmCFMsBank.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(quMainBankId.Value)='' then
 begin
  MsgInfo('Kode Bank tidak boleh kosong');
  quMainBankId.FocusControl;
  Abort;
 end;

 if quMain.State = dsInsert then
 Begin
  With quAct,Sql do
  Begin
    Close;Clear;
    add('Select BankId from CFMsBank Where BankId='''+quMainBankId.Value+''' ');
    Open;
    If Not IsEmpty then
    Begin
      MsgInfo('Kode Bank sudah dipakai Kode Bank lain');
      quMainBankId.FocusControl;
      Abort;
    End;
  End;
 End;

 If Trim(quMainBankName.Value)='' then
 begin
  MsgInfo('Nama Bank tidak boleh kosong');
  quMainBankName.FocusControl;
  Abort;
 end;

  quMainUpdDate.Value := Date;
 quMainUpdUser.value := dmMain.UserId;

end;

procedure TfmCFMsBank.dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmCFMsBank.FormShow(Sender: TObject);
begin
  inherited;
   quMain.Active := TRUE;
   if CallFromAnotherMenu then
   begin
     ActNewExecute(bbNew);
   End;
end;

procedure TfmCFMsBank.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
  SettingDxGrid(dbgList);
  CallFromAnotherMenu:=False;
end;

procedure TfmCFMsBank.ActNewExecute(Sender: TObject);
begin
  inherited;
  quMainBankId.FocusControl;
end;

procedure TfmCFMsBank.ActSaveExecute(Sender: TObject);
begin
  inherited;
  if CallFromAnotherMenu then ModalResult:=MrOk;
end;

procedure TfmCFMsBank.ActCancelExecute(Sender: TObject);
begin
  inherited;
  if CallFromAnotherMenu then ModalResult:=MrOk;
end;

procedure TfmCFMsBank.ActDeleteExecute(Sender: TObject);
begin
   Status;
  inherited;

end;

procedure TfmCFMsBank.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Cari Master Bank';
         SQLString := ' Select BankId as Kode_Bank, BankName as Nama_Bank,'
                     +' Note as Keterangan'
                     +' from CFMsBank ';
         if ShowModal = MrOk then
         begin
            qumain.Locate('BankId',Res[0],[]);
         end;
       finally
         free;
       end;
    end;
end;

procedure TfmCFMsBank.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainBankId.FocusControl;
  quMainFgActive.AsString := 'Y';
end;

procedure TfmCFMsBank.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT TempField FROM AllMoney WHERE TempField='''+quMainBankId.AsString+''' ');
    Open;
    if not IsEmpty then
    begin
      ShowMessage('Data sudah dipakai di transaksi lain, tidak bisa dihapus lagi');
      Abort;
    end;
  end;
end;

end.
