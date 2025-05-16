unit ARSearchSC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, StdCtrls,
  DB, ADODB, dxEditor, dxEdLib, StdLv0, dxGRCLMS;

type
  TfmSearchSales = class(TfmStdLv0)
    paCenterS: TPanel;
    paTitle: TPanel;
    dbgListSearch: TdxDBGrid;
    quSearch: TADOQuery;
    dsSearch: TDataSource;
    Style: TdxEditStyleController;
    laTitle: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgListSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure peLookInKeyPress(Sender: TObject; var Key: Char);
    procedure dbgListSearchCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: String; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    procedure dbgListSearchDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure PrepareSQL;
  public
    { Public declarations }
    Title     : String;
    SQLString : String;
    KeySearch : String;
    Res       : array [0..20] of string[100]; //balikin hasilnya
  end;

var
  fmSearchSales: TfmSearchSales;


implementation

uses ConMain, myunit;

{$R *.dfm}

procedure TfmSearchSales.FormShow(Sender: TObject);
var i : byte;
begin
   laTitle.Caption := 'PENCARIAN ' + Title;
   PrepareSQL;
   if KeySearch='' then dbgListSearch.KeyField := quSearch.Fields[0].FieldName
   else
   dbgListSearch.KeyField := KeySearch;

   dbgListSearch.CreateDefaultColumns(dsSearch.DataSet,dbgListSearch);
   dbgListSearch.ApplyBestFit(nil);

   //Isi ComboBook Look In
end;

procedure TfmSearchSales.FormCreate(Sender: TObject);
begin
   laTitle.Caption := '';
end;

procedure TfmSearchSales.PrepareSQL;
begin
  with quSearch,SQL do
  begin
      Close; Clear;
      Add(SQLString);
      try
         Open;
      except
         on E: Exception do
         begin
           MessageDlg('Terjadi kesalahan dalam pencarian !'+#13+'Hubungi segera developer anda !'
                     +#13+'Msg Error : '+E.Message,mtError,[mbOK],0);
           Abort;
         end;
      end;
  end;
end;

procedure TfmSearchSales.FormClose(Sender: TObject; var Action: TCloseAction);
var i : byte;
begin
   if ModalResult = MrOK then
   begin
       for i := 0 to quSearch.FieldCount-1 do
          Res[i] := quSearch.Fields[i].AsString;
   end;
end;

procedure TfmSearchSales.dbgListSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_return then ModalResult := MrOk;
end;

procedure TfmSearchSales.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then Close;
end;

procedure TfmSearchSales.peLookInKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmSearchSales.dbgListSearchCustomDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxDBTreeListColumn; const AText: String; AFont: TFont;
  var AColor: TColor; ASelected, AFocused: Boolean; var ADone: Boolean);
begin
  if (ANode.Index mod 2=0) then
    AColor := $00DCC050;
end;

procedure TfmSearchSales.dbgListSearchDblClick(Sender: TObject);
begin
  inherited;
   ModalResult := mrOk;
end;

end.
