unit ARMsSales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, dxEdLib, dxDBELib, dxEditor, DB, DBCtrls,
  ActnList, dxCntner, ADODB, dxTL, dxDBCtrl, dxDBGrid, dxPageControl,
  dxButton, StdCtrls, ExtCtrls, Buttons, dxCore, dxContainer, ExtDlgs;

type
  TfmARMsSales = class(TfmStdLv4)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBText2: TDBText;
    Label4: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    quMainSalesID: TStringField;
    quMainSalesName: TStringField;
    quMainAddress: TStringField;
    quMainPhone: TStringField;
    quMainHP: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    dbgListSalesID: TdxDBGridMaskColumn;
    dbgListSalesName: TdxDBGridMaskColumn;
    dbgListAddress: TdxDBGridMaskColumn;
    dbgListPhone: TdxDBGridMaskColumn;
    dbgListHP: TdxDBGridMaskColumn;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    Label11: TLabel;
    Label13: TLabel;
    quMainEmail: TStringField;
    quMainNote: TStringField;
    dbgListEmail: TdxDBGridColumn;
    dbgListNote: TdxDBGridColumn;
    Label6: TLabel;
    quJabatan: TADOQuery;
    quMainJabatan: TStringField;
    DBText3: TDBText;
    quMainluJabatan: TStringField;
    quMainUangMakan: TBCDField;
    quMainUangBulanan: TBCDField;
    quMainFgActive: TStringField;
    quMainTglGabung: TDateTimeField;
    quMainLimitKasbon: TBCDField;
    Label8: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    DBRadioGroup3: TDBRadioGroup;
    Label10: TLabel;
    Label15: TLabel;
    quMainKerajinan: TBCDField;
    DBImage1: TDBImage;
    bbLogo: TBitBtn;
    bbHpsLogo: TBitBtn;
    DBImage2: TDBImage;
    bbLogoSAS: TBitBtn;
    bbHpsLogoSAS: TBitBtn;
    odLogo: TOpenPictureDialog;
    odLogoSAS: TOpenPictureDialog;
    quMainFoto: TBlobField;
    quMainSAS: TBlobField;
    Label16: TLabel;
    quMainTOmzet: TBCDField;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    quMainKom1: TBCDField;
    quMainKom2: TBCDField;
    quMainKom3: TBCDField;
    quMainKom4: TBCDField;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBMemo1: TdxDBMemo;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBMemo2: TdxDBMemo;
    dxDBEdit10: TdxDBEdit;
    dxDBSpinEdit1: TdxDBSpinEdit;
    dxDBSpinEdit2: TdxDBSpinEdit;
    dxDBSpinEdit4: TdxDBSpinEdit;
    dxDBSpinEdit3: TdxDBSpinEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActSaveExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure ActDeleteExecute(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure bbLogoClick(Sender: TObject);
    procedure bbHpsLogoClick(Sender: TObject);
    procedure bbLogoSASClick(Sender: TObject);
    procedure bbHpsLogoSASClick(Sender: TObject);
  private
    { Private declarations }
    Procedure Status;
  public
    { Public declarations }
    CallFromAnotherMenu : boolean;
  End;
var
  fmARMsSales: TfmARMsSales;

implementation

uses ConMain, UnitGeneral, Search, MyUnit;

{$R *.dfm}
Procedure TfmARMsSales.Status;
Begin
  with quAct,sql do
  Begin
    Close;Clear;
    Add('Select SalesId FROM ARTrPenjualanHd WHERE SalesId='''+quMainSalesID.Value+'''');
    Open;
    if not IsEmpty then
    Begin
       MsgInfo('Kode Sales sudah di pakai di Penjualan');
       Abort;
    End;
 End;
End;
procedure TfmARMsSales.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBEdit1,TRUE);
  bbLogo.Enabled := quMain.State in dseditmodes;
  bbHpsLogo.Enabled := quMain.State in dseditmodes;
  bbLogoSAS.Enabled := quMain.State in dseditmodes;
  bbHpsLogoSAS.Enabled := quMain.State in dseditmodes;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
end;

procedure TfmARMsSales.quMainBeforePost(DataSet: TDataSet);
var A : string;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT UPPER(LEFT('''+dxDBEdit2.Text+''',1)) as A ');
    Open;
  end;

  if quMain.State = dsInsert then
  begin
    A:= quAct.FieldByName('A').AsString;
    quMainSalesID.AsString  := A + FormatFloat('000', RunNumberGL(quAct, 'ARMsSales', 'SalesID', A, '0') + 1);
  end;

  if Trim(quMainSalesID.Value)='' then
  begin
    MsgInfo('Kode Sales tidak boleh kosong');
    quMainSalesID.FocusControl;
    Abort;
  end;

  if TRIM(quMainJabatan.Value) = '' then
  begin
    MsgInfo('Jabatan belum diisi');
    quMainJabatan.FocusControl;
    Abort;
  end;

  if quMainluJabatan.Value = '' then
  begin
    MsgInfo('Jabatan tidak terdaftar');
    quMainJabatan.FocusControl;
    Abort;
  end;

  if quMain.State = dsInsert then
  Begin
    With quAct,Sql do
    Begin
      Close;Clear;
      add('Select SalesId from ARMsSales Where SalesId='''+quMainSalesID.Value+''' ');
      Open;
      If Not IsEmpty then
      Begin
        MsgInfo('Kode Sales sudah dipakai Kode Sales lain');
        quMainSalesID.FocusControl;
        Abort;
      End;
    End;
  End;

  If Trim(quMainSalesName.Value)='' then
  begin
    MsgInfo('Nama Sales tidak boleh kosong');
    quMainSalesName.FocusControl;
    Abort;
  end;

  quMainUpdDate.AsDateTime := GetServerDateTime;
  quMainUpdUser.AsString := dmMain.UserId;
end;

procedure TfmARMsSales.dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmARMsSales.FormShow(Sender: TObject);
begin
  inherited;
   quMain.Active := TRUE;
   DBImage1.Top := 9; DBImage1.Left := 32;
   DBImage2.Top := 136; DBImage2.Left := 32;
   bbLogo.Top := 104; bbLogo.Left := 27;
   bbHpsLogo.Top := 104; bbHpsLogo.Left := 87;
   bbLogoSAS.Top := 231; bbLogoSAS.Left := 27;
   bbHpsLogoSAS.Top := 231; bbHpsLogoSAS.Left := 87;
   if CallFromAnotherMenu then
   begin
     ActNewExecute(bbNew);
   End;
   if dmMain.UserId <> 'shoen' then
   begin
     dxDBEdit5.Visible := False; Label10.Visible := False;
     dxDBEdit6.Visible := False; Label12.Visible := False;
     dxDBEdit8.Visible := False; Label14.Visible := False;
     dxDBEdit9.Visible := False; Label15.Visible := False;
   end;
end;

procedure TfmARMsSales.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
  SettingDxGrid(dbgList);
  CallFromAnotherMenu:=False;
end;

procedure TfmARMsSales.ActSaveExecute(Sender: TObject);
begin
  inherited;
  if CallFromAnotherMenu then ModalResult:=MrOk;
end;

procedure TfmARMsSales.ActCancelExecute(Sender: TObject);
begin
  inherited;
  if CallFromAnotherMenu then ModalResult:=MrOk;
end;

procedure TfmARMsSales.ActDeleteExecute(Sender: TObject);
begin
   Status;
  inherited;

end;

procedure TfmARMsSales.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Master Sales';
         SQLString := ' Select SalesID as Kode_Sales,SalesName as Nama_Sales,'
                     +' Address as Alamat,HP,Phone as Telepon,Email,Note as Keterangan'
                     +' from ARMsSales ';
         if ShowModal = MrOk then
         begin
            qumain.Locate('SalesId',Res[0],[]);
         end;
       finally
         free;
       end;
    end;
end;

procedure TfmARMsSales.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Cari Jabatan';
       SQLString := 'SELECT Jabatan'
                   +' FROM ARMsJabatan'
                   +' ORDER BY Jabatan';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainJabatan.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARMsSales.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTglGabung.AsDateTime := Date;
  quMainSalesID.FocusControl;
end;

procedure TfmARMsSales.bbLogoClick(Sender: TObject);
begin
  inherited;
  if odLogo.Execute then
    begin
      DBImage1.Picture.LoadFromFile(odLogo.FileName);
      DBImage1.Refresh;
    end;
end;

procedure TfmARMsSales.bbHpsLogoClick(Sender: TObject);
begin
  inherited;
  DBImage1.Picture.Bitmap := nil;
end;

procedure TfmARMsSales.bbLogoSASClick(Sender: TObject);
begin
  inherited;
  if odLogoSAS.Execute then
    begin
      DBImage2.Picture.LoadFromFile(odLogoSAS.FileName);
      DBImage2.Refresh;
    end;
end;

procedure TfmARMsSales.bbHpsLogoSASClick(Sender: TObject);
begin
  inherited;
  DBImage2.Picture.Bitmap := nil;
end;

end.
