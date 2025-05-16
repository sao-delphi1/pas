unit SAMsCalenderKerja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms;

type
  TfmSACalenderKerja = class(TfmStdLv31)
    dbgCalender: TdxDBGrid;
    quMainTransdate: TDateTimeField;
    quMainHari: TStringField;
    quMainBulan: TIntegerField;
    quMainTahun: TIntegerField;
    quMainTgl: TIntegerField;
    quMainMinggu: TIntegerField;
    quMainFgOff: TIntegerField;
    quMainNote: TStringField;
    dbgCalenderTransdate: TdxDBGridDateColumn;
    dbgCalenderBulan: TdxDBGridMaskColumn;
    dbgCalenderTahun: TdxDBGridMaskColumn;
    dbgCalenderTgl: TdxDBGridMaskColumn;
    dbgCalenderMinggu: TdxDBGridMaskColumn;
    dbgCalenderHari: TdxDBGridColumn;
    dbgCalenderNote: TdxDBGridColumn;
    quMainstatus: TStringField;
    dbgCalenderStatus: TdxDBGridColumn;
    dxButton1: TdxButton;
    dbgCalenderFgOff: TdxDBGridCheckColumn;
    procedure FormCreate(Sender: TObject);
    procedure dbgCalenderCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: String; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure dxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSACalenderKerja: TfmSACalenderKerja;

implementation

uses UnitGeneral, ConMain, Search, StdLv1, StdLv3;

{$R *.dfm}

procedure TfmSACalenderKerja.FormCreate(Sender: TObject);
begin
  inherited;
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112)';
  FFieldTgl   := 'TransDate';
  SettingDxGrid(dbgCalender);
end;

procedure TfmSACalenderKerja.dbgCalenderCustomDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxDBTreeListColumn; const AText: String; AFont: TFont;
  var AColor: TColor; ASelected, AFocused: Boolean; var ADone: Boolean);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT FgOff FROM Calendar WHERE CONVERT(VARCHAR(8),Transdate,112)='''+FormatDateTime ('yyyyMMdd',quMainTransdate.AsDateTime)+''' ');
    Open;
  end;
  if quAct.FieldByName('FgOff').AsInteger = 1 then
    AColor := $00DCC050;
end;

procedure TfmSACalenderKerja.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  Abort;
end;

procedure TfmSACalenderKerja.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgCalenderTransdate,quMain.State<>dsInsert);
  SetReadOnly(dbgCalenderHari,TRUE);
  SetReadOnly(dbgCalenderStatus,TRUE);
end;

procedure TfmSACalenderKerja.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  quMain.Requery();
end;

procedure TfmSACalenderKerja.dxButton1Click(Sender: TObject);
begin
  inherited;
  quMain.Post;
end;

end.
