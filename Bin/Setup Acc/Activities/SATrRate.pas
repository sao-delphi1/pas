unit SATrRate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, dxPageControl,
  dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons, dxCore, dxContainer,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms;

type
  TfmSATrRate = class(TfmStdLv31)
    dbgRate: TdxDBGrid;
    quMainTransID: TAutoIncField;
    quMainTransDate: TDateTimeField;
    quMainRate: TBCDField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    dbgRateRate: TdxDBGridColumn;
    dbgRateKeterangan: TdxDBGridColumn;
    dbgRateTglUpdate: TdxDBGridColumn;
    dbgRateUser: TdxDBGridColumn;
    dbgRateTanggal: TdxDBGridDateColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    CallFromAnotherMenu : boolean; 
  end;

var
  fmSATrRate: TfmSATrRate;

implementation

uses UnitGeneral, ConMain, Search, MyUnit, StdLv3;

{$R *.dfm}


procedure TfmSATrRate.FormCreate(Sender: TObject);
begin
  inherited;
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112),TransID';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dbgRate);
end;

procedure TfmSATrRate.FormShow(Sender: TObject);
begin
  inherited;
  quMainRate.DisplayFormat := sDisFormat;
  quMainRate.EditFormat :=sEditformat;
end;

procedure TfmSATrRate.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
   if TRIM(quMainTransDate.AsString)='' then
   Begin
     MsgInfo('Tanggal Rate tidak boleh kosong');
     quMainTransDate.FocusControl;
     Abort;
   End;

   if TRIM(quMainRate.AsString)='' then
   Begin
     MsgInfo('Rate tidak boleh kosong');
     quMainRate.FocusControl;
     Abort;
   End;

  quMainRate.Value := Round(quMainrate.Value);
  quMainUpdDate.Value:= GetServerDateTime;
  quMainUpdUser.Value:= dmMain.UserId;
end;

procedure TfmSATrRate.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Cari Rate';
         SQLString := 'SELECT TransID,TransDate as Tanggal,Rate as Rate,Note as Keterangan from SATrRate';
         if ShowModal = MrOk then
         begin
            qumain.Locate('TransID',Res[0],[]);
         end;
       finally
         free;
       end;
    end;
end;

procedure TfmSATrRate.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgRateTanggal,quMain.State<>dsInsert);
  SetReadOnly(dbgRateTglUpdate,TRUE);
  SetReadOnly(dbgRateUser,TRUE);
end;

procedure TfmSATrRate.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime:=Date;
  quMainTransDate.FocusControl;
end;

end.
