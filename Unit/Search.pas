unit Search;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, StdCtrls,
  DB, ADODB, dxEditor, dxEdLib, StdLv0, dxGRCLMS;

type
  TfmSearch = class(TfmStdLv0)
    paLeftS: TPanel;
    paCenterS: TPanel;
    paTitle: TPanel;
    dbgListSearch: TdxDBGrid;
    laTitle: TLabel;
    quSearch: TADOQuery;
    dsSearch: TDataSource;
    Shape1: TShape;
    Style: TdxEditStyleController;
    Label1: TLabel;
    peLookIn: TdxPickEdit;
    Label2: TLabel;
    EdAllWord: TdxEdit;
    Label3: TLabel;
    edPartWord: TdxEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdAllWordChange(Sender: TObject);
    procedure edPartWordChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgListSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgListSearchDblClick(Sender: TObject);
    procedure peLookInChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure peLookInKeyPress(Sender: TObject; var Key: Char);
    procedure dbgListSearchCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: String; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
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
  fmSearch: TfmSearch;


implementation

uses ConMain, myunit;

{$R *.dfm}

procedure TfmSearch.FormShow(Sender: TObject);
var i : byte;
begin
   edPartWord.SetFocus;
   laTitle.Caption := 'Cari ' + Title;
   PrepareSQL;
   if KeySearch='' then dbgListSearch.KeyField := quSearch.Fields[0].FieldName
   else
   dbgListSearch.KeyField := KeySearch;

   dbgListSearch.CreateDefaultColumns(dsSearch.DataSet,dbgListSearch);
   dbgListSearch.ApplyBestFit(nil);

   //Isi ComboBook Look In
   peLookIn.Clear;
   for i := 0 to quSearch.FieldCount-1 do
   begin
     if dbgListSearch.Columns[i].Field.DataType in [ftBCD, ftCurrency] then
       begin
         if dbgListSearch.Columns[i] is TdxDBGridCurrencyColumn then
           (dbgListSearch.Columns[i] as TdxDBGridCurrencyColumn).DisplayFormat := sdisformat;
       end;
     if dbgListSearch.Columns[i].Width > 300 then dbgListSearch.Columns[i].Width := 300;
     peLookIn.Items.Add(quSearch.Fields[i].FieldName);
   end;
   peLookIn.ItemIndex := 0;
end;

procedure TfmSearch.FormCreate(Sender: TObject);
begin
   laTitle.Caption := '';
   peLookIn.Clear;
end;

procedure TfmSearch.PrepareSQL;
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

procedure TfmSearch.EdAllWordChange(Sender: TObject);
begin
 with quSearch do
 begin
    try
      if EdAllWord.Text <> '' then
      begin
         Filtered := false;
         Filter   := '[' + peLookIn.Text + ']' + ' LIKE ' + QuotedStr(edAllWord.Text+'%');
         Filtered := true;
      end else
         Filtered := false;
    except
      Filtered := false;
    end;
 end;
end;

procedure TfmSearch.edPartWordChange(Sender: TObject);
begin
   with quSearch do
   begin
     try
        if edPartWord.Text <> '' then
        begin
           Filtered := false;
           Filter := '[' + peLookIn.Text + ']' + ' LIKE '+ QuotedStr('%'+edPartWord.Text+'%');
           Filtered := true;
        end else
           Filtered := false;
     except
           Filtered := false;
     end;
   end;
end;

procedure TfmSearch.FormClose(Sender: TObject; var Action: TCloseAction);
var i : byte;
begin
   if ModalResult = MrOK then
   begin
       for i := 0 to quSearch.FieldCount-1 do
          Res[i] := quSearch.Fields[i].AsString;
   end;
end;

procedure TfmSearch.dbgListSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_return then ModalResult := MrOk;
end;

procedure TfmSearch.dbgListSearchDblClick(Sender: TObject);
begin
   ModalResult := mrOk;
end;

procedure TfmSearch.peLookInChange(Sender: TObject);
begin
   if EdAllWord.Text<>'' then EdAllWordChange(EdAllWord)
   else
   if edPartWord.Text<>'' then edPartWordChange(edPartWord);
end;

procedure TfmSearch.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then Close;
end;

procedure TfmSearch.peLookInKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0)
end;

procedure TfmSearch.dbgListSearchCustomDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxDBTreeListColumn; const AText: String; AFont: TFont;
  var AColor: TColor; ASelected, AFocused: Boolean; var ADone: Boolean);
begin
  if (ANode.Index mod 2=0) then
    AColor := $00DCC050;
end;

end.
