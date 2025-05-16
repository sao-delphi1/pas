unit ARMsPelanggan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxDBELib, dxEditor, DBCtrls;

type
  TfmAPMsPelanggan = class(TfmStdLv4)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    dbgListKdPelanggan: TdxDBGridColumn;
    dbgListNmPelanggan: TdxDBGridColumn;
    dbgListContactPerson: TdxDBGridColumn;
    dbgListPhone: TdxDBGridColumn;
    dbgListAlamat: TdxDBGridColumn;
    dbgListKota: TdxDBGridColumn;
    dbgListFax: TdxDBGridColumn;
    DBText2: TDBText;
    Label4: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    Label10: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    dxDBEdit4: TdxDBEdit;
    dxDBMemo2: TdxDBMemo;
    dbgListEmail: TdxDBGridColumn;
    dbgListNote: TdxDBGridColumn;
    quMainCustID: TStringField;
    quMainCustName: TStringField;
    quMainAddress: TStringField;
    quMainCity: TStringField;
    quMainPhone: TStringField;
    quMainFax: TStringField;
    quMainEmail: TStringField;
    quMainNote: TStringField;
    quMainCustType: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure ActNewExecute(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAPMsPelanggan: TfmAPMsPelanggan;

implementation

uses StdLv2, StdLv1, StdLv0, UnitGeneral, ConMain, Search;

{$R *.dfm}

procedure TfmAPMsPelanggan.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
  
end;

procedure TfmAPMsPelanggan.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;
end;

procedure TfmAPMsPelanggan.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBEdit1,qumain.state <> dsInsert);
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
end;

procedure TfmAPMsPelanggan.dxDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmAPMsPelanggan.ActNewExecute(Sender: TObject);
begin
  inherited;
 quMainSuppID.FocusControl;
end;

procedure TfmAPMsPelanggan.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
 if Trim(quMainCustID.Value)='' then
 begin
  MsgInfo('Kode Pelanggan tidak boleh kosong');
  quMainCustID.FocusControl;
  Abort;
 end;

 if quMain.State = dsInsert then
 Begin
  With quAct,Sql do
  Begin
    Close;Clear;
    add('Select CustId from ARMsCustomer Where CustId='''+quMainCustID.Value+''' ');
    Open;
    If Not IsEmpty then
    Begin
      MsgInfo('Kode Customer sudah dipakai Kode Customer lain');
      quMainCustID.FocusControl;
      Abort;
    End;
  End;
 End;

 If Trim(quMainCustName.Value)='' then
 begin
  MsgInfo('Nama Customer tidak boleh kosong');
  quMainCustName.FocusControl;
  Abort;
 end;

 {
 If Trim(quMainAddress.Value)='' then
 begin
  MsgInfo('Alamat Supplier tidak boleh kosong');
  quMainAddress.FocusControl;
  Abort;
 end;

 If Trim(quMainCity.Value)='' then
 begin
  MsgInfo('Kota tidak boleh kosong');
  quMainCity.FocusControl;
  Abort;
 end;

 If Trim(quMainContactPerson.Value)='' then
 begin
  MsgInfo('Contact Person tidak boleh kosong');
  quMainContactPerson.FocusControl;
  Abort;
 end;

 If Trim(quMainPhone.Value)='' then
 begin
  MsgInfo('Nomor Telepon tidak boleh kosong');
  quMainPhone.FocusControl;
  Abort;
 end;

 If Trim(quMainFax.Value)='' then
 begin
  MsgInfo('Nomor Fax tidak boleh kosong');
  quMainFax.FocusControl;
  Abort;
 end;
 }

 quMainUpdDate.Value := Date;
 quMainUpdUser.value := dmMain.UserId;

end;

procedure TfmAPMsPelanggan.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Cari Master Customer';
         SQLString := ' Select CustId,CustName,Address,City,Phone,'
                     +' Contactperson,Fax from ARMsCustomer ';
         if ShowModal = MrOk then
         begin
            qumain.Locate('CustId',Res[0],[]);
         end;
       finally
         free;
       end;
    end;
end;

end.
