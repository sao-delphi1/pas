unit SAMsValuta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv3, ActnList, DB, dxExEdtr, dxCntner, ADODB, dxEdLib,
  dxButton, StdCtrls, ExtCtrls, Buttons, dxCore, dxContainer, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms;

type
  TfmSAMsValuta = class(TfmStdLv3)
    dbgList: TdxDBGrid;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    dbgListUpdDate: TdxDBGridDateColumn;
    dbgListUpdUser: TdxDBGridMaskColumn;
    dbgListValutaID: TdxDBGridColumn;
    dbgListValutaDesc: TdxDBGridColumn;
    quMainCurrID: TStringField;
    quMainCurrName: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSAMsValuta: TfmSAMsValuta;

implementation

uses StdLv2, StdLv1, UnitGeneral, ConMain, Search;

{$R *.dfm}

procedure TfmSAMsValuta.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
  SettingDxGrid(dbgList);
end;

procedure TfmSAMsValuta.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;
  SettingDxGrid(dbgList);
end;

procedure TfmSAMsValuta.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;

 if Trim(quMainCurrID.Value)='' then
 begin
  MsgInfo('Kode Valuta tidak boleh kosong');
  quMainCurrID.FocusControl;
  Abort;
 end;

 if quMain.State = dsInsert then
 Begin
  With quAct,Sql do
  Begin
    Close;Clear;
    add('Select CurrID from SAMsValuta Where CurrId='''+quMainCurrID.Value+''' ');
    Open;
    If Not IsEmpty then
    Begin
      MsgInfo('Kode Valuta sudah dipakai Kode Valuta lain');
      quMainCurrID.FocusControl;
      Abort;
    End;
  End;
 End;

 if Trim(quMainCurrName.Value)='' then
 begin
  MsgInfo('Deskripsi Valuta tidak boleh kosong');
  quMainCurrName.FocusControl;
  Abort;
 end;

  quMainUpdDate.Value := GetServerDateTime;
  quMainUpdUser.Value := dmMain.UserId;
end;

procedure TfmSAMsValuta.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgListValutaID,quMain.State<>dsInsert);
end;

procedure TfmSAMsValuta.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Valuta';
         SQLString := ' Select CurrID as Kode_Valuta, CurrName as Nama_Valuta '
                     +' FROM SAMsValuta'
                     +' ORDER BY CurrID';
         if ShowModal = MrOk then
         begin
           qumain.Locate('CurrID',Res[0],[]);
         end;
       finally
         free;
       end;
    end;
end;

end.
