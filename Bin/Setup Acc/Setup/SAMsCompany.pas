unit SAMsCompany;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, dxExEdtr, dxEdLib, dxCntner, dxEditor, ExtCtrls,
  ActnList, DB, ADODB, StdCtrls, Buttons, dxCore, dxContainer, dxButton;

type
  TfmSAMsCompany = class(TfmStdLv2)
    Panel1: TPanel;
    Label15: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    dxEdit2: TdxEdit;
    dxMemo1: TdxMemo;
    dxEdit3: TdxEdit;
    dxEdit4: TdxEdit;
    dxEdit1: TdxEdit;
    dxMemo2: TdxMemo;
    Label2: TLabel;
    dxEdit5: TdxEdit;
    Label6: TLabel;
    dxEdit6: TdxEdit;
    Label21: TLabel;
    procedure FormShow(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure bbSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSAMsCompany: TfmSAMsCompany;

implementation

uses StdLv0, MyUnit, UnitGeneral;

{$R *.dfm}

procedure TfmSAMsCompany.FormShow(Sender: TObject);
begin
  inherited;
  with quAct,sql do
  Begin
    Close;Clear;
    add('Select * from SAMsCompany');
    Open;
    if Not IsEmpty then
    Begin
      dxEdit2.Text:=quAct.Fieldbyname('CompanyName').AsString;
      dxEdit3.Text:=quAct.Fieldbyname('Phone').AsString;
      dxEdit4.Text:=quAct.Fieldbyname('Fax').AsString;
      dxMemo1.Text:=quAct.Fieldbyname('CompanyAdd1').AsString;
      dxMemo2.Text:=quAct.Fieldbyname('CompanyAdd2').AsString;
      dxEdit1.Text:=quAct.Fieldbyname('Email').AsString;
      dxEdit5.Text:=quAct.Fieldbyname('NPWP').AsString;
      dxEdit6.Text:=quAct.Fieldbyname('KodeNITKU').AsString;
    End;
  End;
end;

procedure TfmSAMsCompany.bbCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfmSAMsCompany.bbSaveClick(Sender: TObject);
begin
  inherited;
  with quAct,sql do
  Begin
    Close;Clear;
    add('Select * from SAMsCompany');
    Open;
    if  IsEmpty then
    Begin
       With qumain,sql do
       begin
        Close;Clear;
        Add(' INSERT INTO SAMsCompany(Companyname,Companyadd1,Companyadd2,Phone,Email,Fax,NPWP,NPWPDate,KodeNITKU)'
           +' values('''+dxEdit2.Text+''','''+dxMemo1.Text+''' ,'''','''+ dxEdit3.Text+''''
           +' ,'''+dxEdit1.Text+''','''+dxEdit4.Text+''','''+dxEdit5.Text+''','''','''+dxEdit6.Text+''')');
        ExecSQL;
       End;
    End
    Else
    Begin
      With qumain,sql do
       begin
        Close;Clear;
        Add(' UPDATE SAMsCompany SET Companyname='''+dxEdit2.Text+''',Companyadd1='''+dxMemo1.Text+''''
           +' ,Companyadd2='''+dxMemo2.Text+''',Phone='''+ dxEdit3.Text+''',Email='''+dxEdit1.Text+''''
           +' ,Fax='''+dxEdit4.Text+''',NPWP='''+dxEdit5.Text+''',NPWPDate='''',KodeNITKU='''+dxEdit6.Text+''' ');
        ExecSQL;
       End;
    End;
  End;
  sCompanyName   := dxEdit2.Text;
  sCompanyAddress := dxMemo1.Text;
  MsgInfo('Setting Perusahaan berhasil di ubah');
  Close;
end;

procedure TfmSAMsCompany.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod:=False;
end;

procedure TfmSAMsCompany.dxEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)  
end;

end.
