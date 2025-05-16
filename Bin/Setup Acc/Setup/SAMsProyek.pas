unit SAMsProyek;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxEditor, dxDBELib, DBCtrls;

type
  TfmSAMsProyek = class(TfmStdLv4)
    Label1: TLabel;
    Label2: TLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    Label3: TLabel;
    dxDBMemo1: TdxDBMemo;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    quMainProjectID: TStringField;
    quMainProjectName: TStringField;
    quMainAddress: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    dbgListProjectID: TdxDBGridColumn;
    dbgListProjectName: TdxDBGridColumn;
    dbgListAddress: TdxDBGridColumn;
    DBText1: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    DBText2: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure ActNewExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSAMsProyek: TfmSAMsProyek;

implementation

uses StdLv2, StdLv1, StdLv0, UnitGeneral, ConMain, SAMsValuta, Search;

{$R *.dfm}

procedure TfmSAMsProyek.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
  SettingDxGrid(dbgList);
end;

procedure TfmSAMsProyek.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;
end;

procedure TfmSAMsProyek.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,quMain.State<>dsInsert);
end;

procedure TfmSAMsProyek.dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmSAMsProyek.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;

  if Trim(quMainProjectID.Value)='' then
  begin
    MsgInfo('Kode Proyek tidak boleh kosong');
    quMainProjectID.FocusControl;
    Abort;
  end;

  if quMain.State = dsInsert then
  Begin
      with quAct,Sql do
      begin
        Close;Clear;
        add('SELECT ProjectID FROM SAMsValuta Where ProjectId=:ProjectId');
        Parameters.ParamByName('ProjectID').Value := quMainProjectID.Value;
        Open;
        If Not IsEmpty then
        begin
          MsgInfo('Kode proyek sudah pernah dipakai oleh proyek yang lain !');
          quMainProjectID.FocusControl;
          Abort;
        end;
      end;
  end;

  if Trim(quMainProjectName.Value)='' then
  begin
      MsgInfo('Nama Proyek tidak boleh kosong');
      quMainProjectName.FocusControl;
      Abort;
  end;

  quMainUpdDate.Value := GetServerDateTime;
  quMainUpdUser.Value := dmMain.UserId;
end;

procedure TfmSAMsProyek.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    begin
       try
         Title := 'Cari Master Proyek';
         SQLString := 'SELECT ProjectID as Kode_Proyek,ProjectName as Nama_Proyek'
                     +',Address as Alamat'
                     +' FROM SAMsProject'
                     +' ORDER BY ProjectID';
         if ShowModal = MrOk then
         begin
            qumain.Locate('ProjectID',Res[0],[]);
         end;
       finally
         free;
       end;
    end;
end;

procedure TfmSAMsProyek.ActNewExecute(Sender: TObject);
begin
  inherited;
  quMainProjectID.FocusControl;
end;

end.
