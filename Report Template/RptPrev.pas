{*******************************************}
{                                           }
{              Report Preview               }
{                                           }
{       Copyright(c) 2002 Djunaidi / CNI    }
{                                           }
{*******************************************}

unit RptPrev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, QRPrntr, ExtCtrls, StdCtrls, Buttons, OleServer,
  Excel2000, QRExport, AppEvnts, QRExportExtra;//, RsRuler; 

{$WARNINGS OFF}
type
  TfmRptPrev = class(TForm)
    Panel1: TPanel;
    pnButton: TPanel;
    Panel2: TPanel;
    stBarRpt: TStatusBar;
    sbLoad: TSpeedButton;
    sbSave: TSpeedButton;
    sbPrint: TSpeedButton;
    sbWidth: TSpeedButton;
    Bevel1: TBevel;
    sbFit: TSpeedButton;
    Bevel2: TBevel;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    sbPrinterSetup: TSpeedButton;
    Label1: TLabel;
    lbZoomFactor: TListBox;
    paBlack: TPanel;
    edZoomFactor: TEdit;
    sbPick: TSpeedButton;
    sbActual: TSpeedButton;
    qrprvRptPrev: TQRPreview;
    sbHTMLFilter: TSpeedButton;
    sbTxtFilter: TSpeedButton;
    sbCSVFilter: TSpeedButton;
    sbXLSFilter: TSpeedButton;
    sbRTFFilter: TSpeedButton;
    Bevel3: TBevel;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    lbRecStatus: TLabel;
    sbNext: TSpeedButton;
    sbLast: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrprvRptPrevProgressUpdate(Sender: TObject;
      Progress: Integer);
    procedure sbFirstClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbPrevClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbWidthClick(Sender: TObject);
    procedure sbFitClick(Sender: TObject);
    procedure sbPrinterSetupClick(Sender: TObject);
    procedure sbPrintClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbZoomFactorClick(Sender: TObject);
    procedure lbZoomFactorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbPickClick(Sender: TObject);
    procedure edZoomFactorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbActualClick(Sender: TObject);
    procedure lbZoomFactorMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure qrprvRptPrevPageAvailable(Sender: TObject; PageNum: Integer);
    procedure sbHTMLFilterClick(Sender: TObject);
    procedure sbTxtFilterClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure sbCSVFilterClick(Sender: TObject);
    procedure sbLoadClick(Sender: TObject);
    procedure sbSaveClick(Sender: TObject);
    procedure qrprvRptPrevClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure lbRecStatusClick(Sender: TObject);
    procedure sbXLSFilterClick(Sender: TObject);
    procedure sbRTFFilterClick(Sender: TObject);
    procedure edZoomFactorKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
  private
    { Private declarations }
    fReportName: String;
    fPageNumber: Integer;
    fPageCount: Integer;
    fQRPrinter: TQRPrinter;

    procedure SetReportName(Value: String);
    procedure SetPageNumber(Value: Integer);
    procedure SetPageCount(Value: Integer);

    function GetPaperInfo(MyPaper: TQRPaperSize): String;
  public
    { Public declarations }
    property RptReportName: String
      read fReportName write SetReportName;
    property PageNumber: Integer
      read fPageNumber write SetPageNumber;
    property PageCount: Integer
      read fPageCount write SetPageCount;

    constructor Create(AOwner: TComponent; AQRPrinter: TQRPrinter); virtual;
  end;
{$WARNINGS ON}

var
  fmRptPrev: TfmRptPrev;

implementation

{$R *.dfm}

constructor TfmRptPrev.Create(AOwner: TComponent; AQRPrinter: TQRPrinter);
begin
  inherited Create(AOWner);
  fQRPrinter := AQRPrinter;
  qrprvRptPrev.QRPrinter := fQRPrinter;
end;

function TfmRptPrev.GetPaperInfo(MyPaper: TQRPaperSize): String;
begin
  if MyPaper = A3 then Result := 'A4 (11.69 in x 16.54 in)';
  if MyPaper = A4 then Result := 'A4 (8.27 in x 11.69 in)';
  if MyPaper = A4Small then Result := 'A4 Small (8.27 in x 11.69 in)';
  if MyPaper = A5 then Result := 'A5 (5.83 in x 8.27 in)';
  if MyPaper = B4 then Result := 'B4 (9.84 in x 13.94 in)';
  if MyPaper = B5 then Result := 'B5 (7.17 in x 10.12 in)';
  if MyPaper = Folio then Result := 'Folio (8.50 in x 13.00 in)';
  if MyPaper = Quarto then Result := 'Quarto (8.46 in x 10.83 in)';
  if MyPaper = Letter then Result := 'Letter (8.50 in x 11.00 in)';
  if MyPaper = LetterSmall then Result := 'Letter Small (8.50 in x 11.00 in)';
  if MyPaper = Tabloid then Result := 'Tabloid (11.00 in x 17.00 in)';
  if MyPaper = Ledger then Result := 'Ledger (17.00 in x 11.00 in)';
  if MyPaper = Legal then Result := 'Legal (8.50 in x 14.00 in)';
  if MyPaper = Statement then Result := 'Statement (5.50 in x 8.50 in)';
  if MyPaper = Executive then Result := 'Executive (7.50 in x 10.50 in)';
  if MyPaper = Quarto then Result := 'Quarto (8.46 in x 10.83 in)';
  if MyPaper = Env9 then Result := 'Envelope #9 (3.88 in x 8.87 in)';
  if MyPaper = Env10 then Result := 'Envelope #10 (4.13 in x 9.50 in)';
  if MyPaper = Env11 then Result := 'Envelope #11 (4.50 in x 10.37 in)';
  if MyPaper = Env12 then Result := 'Envelope #12 (4.00 in x 11.00 in)';
  if MyPaper = Env14 then Result := 'Envelope #14 (5.00 in x 11.50 in)';
  if MyPaper = CSheet then Result := 'C Size Sheet (3.94 in x 3.94 in)';
  if MyPaper = DSheet then Result := 'D Size Sheet (3.94 in x 3.94 in)';
  if MyPaper = ESheet then Result := 'E Size Sheet (3.94 in x 3.94 in)';
  if MyPaper = Note then Result := 'E Size Sheet (8.50 in x 11.00 in)';
  if MyPaper = qr10X14 then Result := '10.00 in x 14.00 in';
  if MyPaper = qr11X17 then Result := '11.00 in x 17.00 in';
  if MyPaper = Custom then Result := 'Custom Size';
end;

procedure TfmRptPrev.SetReportName(Value: String);
//var t : string;
begin
//  fReportName := Value;
//  t:= 'GTIDevelopment Accounting - ' + Value;
//  fmRptPrev.Caption := t;
end;

procedure TfmRptPrev.SetPageNumber(Value: Integer);
begin
  fPageNumber := Value;
  lbRecStatus.Caption := 'Hal ' + IntToStr(Value) + ' / ' + IntToStr(fPageCount);
end;

procedure TfmRptPrev.SetPageCount(Value: Integer);
begin
  fPageCount := Value;
  lbRecStatus.Caption := 'Hal ' + IntToStr(PageNumber) + ' / ' + IntToStr(Value);
end;

procedure TfmRptPrev.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qrprvRptPrev.QRPrinter.Cleanup;
  qrprvRptPrev.QRPrinter.ClosePreview(Self);
//  Action := caFree;
end;

procedure TfmRptPrev.qrprvRptPrevProgressUpdate(Sender: TObject;
  Progress: Integer);
begin
  if qrprvRptPrev.PageNumber > 1 then
    qrprvRptPrev.PageNumber := 1
  else
    qrprvRptPrev.PageNumber := 0;
  PageNumber := qrprvRptPrev.PageNumber;
  PageCount := qrprvRptPrev.QRPrinter.PageCount;
  edZoomFactor.Text := IntToStr(qrprvRptPrev.Zoom);
  stBarRpt.Panels[0].Text := IntToStr(Progress) + ' %';

  sbLast.Enabled := Progress >= 100;
  sbFirst.Enabled := Progress >= 100;
  sbPrev.Enabled := Progress >= 100;
  sbNext.Enabled := Progress >= 100;

  sbPrint.Enabled := Progress >= 100;
  sbPrinterSetup.Enabled := Progress >= 100;
  sbLoad.Enabled := Progress >= 100;
  sbSave.Enabled := Progress >= 100;

  sbWidth.Enabled := Progress >= 100;
  sbFit.Enabled := Progress >= 100;
  sbActual.Enabled := Progress >= 100;

  sbHTMLFilter.Enabled := Progress >= 100;
  sbTxtFilter.Enabled := Progress >= 100;
  sbCSVFilter.Enabled := Progress >= 100;
  sbXLSFilter.Visible := Progress >= 100;
  sbRTFFilter.Visible := Progress >= 100;

  paBlack.Enabled := Progress >= 100;
end;

procedure TfmRptPrev.sbFirstClick(Sender: TObject);
begin
  lbZoomFactor.Hide;
  
  qrprvRptPrev.PageNumber := 1;
  PageNumber := qrprvRptPrev.PageNumber;
  PageCount := qrprvRptPrev.QRPrinter.PageCount;
end;

procedure TfmRptPrev.sbLastClick(Sender: TObject);
begin
  lbZoomFactor.Hide;

  qrprvRptPrev.PageNumber := PageCount;
  PageNumber := qrprvRptPrev.PageNumber;
  PageCount := qrprvRptPrev.QRPrinter.PageCount;
end;

procedure TfmRptPrev.sbPrevClick(Sender: TObject);
var X: Integer;
begin
  lbZoomFactor.Hide;

  X := qrprvRptPrev.PageNumber - 1;
  qrprvRptPrev.PageNumber := X;
  PageNumber := qrprvRptPrev.PageNumber;
  PageCount := qrprvRptPrev.QRPrinter.PageCount;
end;

procedure TfmRptPrev.sbNextClick(Sender: TObject);
var X: Integer;
begin
  lbZoomFactor.Hide;

  X := qrprvRptPrev.PageNumber + 1;
  qrprvRptPrev.PageNumber := X;
  PageNumber := qrprvRptPrev.PageNumber;
  PageCount := qrprvRptPrev.QRPrinter.PageCount;
end;

procedure TfmRptPrev.sbWidthClick(Sender: TObject);
begin
  lbZoomFactor.Hide;

  qrprvRptPrev.ZoomToWidth;
  edZoomFactor.Text := IntToStr(qrprvRptPrev.Zoom);
  qrprvRptPrev.UpdateZoom;
end;

procedure TfmRptPrev.sbFitClick(Sender: TObject);
begin
  lbZoomFactor.Hide;

  qrprvRptPrev.ZoomToFit;
  edZoomFactor.Text := IntToStr(qrprvRptPrev.Zoom);
  qrprvRptPrev.UpdateZoom;
end;

procedure TfmRptPrev.sbPrinterSetupClick(Sender: TObject);
begin
  qrprvRptPrev.QRPrinter.PrintSetup;
  lbZoomFactor.Hide;
//  stBarRpt.Panels[1].Text := GetPaperInfo(qrprvRptPrev.QRPrinter.PaperSize);
end;

procedure TfmRptPrev.sbPrintClick(Sender: TObject);
begin
  qrprvRptPrev.QRPrinter.Print;
  lbZoomFactor.Hide;
end;

procedure TfmRptPrev.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = VK_LEFT) then
    qrprvRptPrev.HorzScrollBar.Position := qrprvRptPrev.HorzScrollBar.Position - 15;

  if (Shift = [ssCtrl]) and (Key = VK_RIGHT) then
    qrprvRptPrev.HorzScrollBar.Position := qrprvRptPrev.HorzScrollBar.Position + 15;

  if Key = 33 then
    qrprvRptPrev.VertScrollBar.Position := qrprvRptPrev.VertScrollBar.Position - 15;

  if Key = 34 then
    qrprvRptPrev.VertScrollBar.Position := qrprvRptPrev.VertScrollBar.Position + 15;

  if (Shift = [ssCtrl]) and (Key = VK_UP) then sbPrevClick(Self);
  if (Shift = [ssCtrl]) and (Key = VK_DOWN) then sbNextClick(Self);

  if (Shift = [ssCtrl]) and (Key = VK_RETURN) and (edZoomFactor.Focused) then
  begin
    lbZoomFactor.Show;
    lbZoomFactor.ItemIndex := 0;
    lbZoomFactor.SetFocus;
  end;
end;

procedure TfmRptPrev.lbZoomFactorClick(Sender: TObject);
var ZoomFactor: Integer;
begin
  ZoomFactor := StrToIntDef(lbZoomFactor.Items[lbZoomFactor.ItemIndex], 100);
  lbZoomFactor.Hide;

  edZoomFactor.Text := IntToStr(ZoomFactor);
  qrprvRptPrev.Zoom := ZoomFactor;

  qrprvRptPrev.UpdateZoom;

  edZoomFactor.SetFocus;
end;

procedure TfmRptPrev.lbZoomFactorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  lbZoomFactor.OnClick := nil;

  if Key = VK_RETURN then
  begin
    lbZoomFactor.OnClick := lbZoomFactorClick;
    lbZoomFactorClick(Self);
  end;

  if Key = VK_ESCAPE then lbZoomFactor.Hide;
end;

procedure TfmRptPrev.sbPickClick(Sender: TObject);
begin
  lbZoomFactor.Show;
  lbZoomFactor.ItemIndex := 0;
  lbZoomFactor.SetFocus;
end;

procedure TfmRptPrev.edZoomFactorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var ZoomFactor: Integer;
begin
  if Key = VK_RETURN then
  begin
    ZoomFactor := StrToIntDef(edZoomFactor.Text, 100);

    if (ZoomFactor > 300) or (ZoomFactor < 10) then
    begin
      MessageDlg('Zoom harus berkisar antara 10 sampai dengan 300', mtError, [mbOK], 0);
    end
    else begin
      edZoomFactor.Text := IntToStr(ZoomFactor);
      qrprvRptPrev.Zoom := ZoomFactor;
      qrprvRptPrev.UpdateZoom;
    end;

    edZoomFactor.SetFocus;
  end;
end;

procedure TfmRptPrev.sbActualClick(Sender: TObject);
begin
  lbZoomFactor.Hide;

  qrprvRptPrev.Zoom := 100;
  edZoomFactor.Text := IntToStr(qrprvRptPrev.Zoom);
  qrprvRptPrev.UpdateZoom;
end;

procedure TfmRptPrev.lbZoomFactorMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var MyPos: TPoint;
begin
  MyPos.X := X;
  MyPos.Y := Y;

  lbZoomFactor.ItemIndex := lbZoomFactor.ItemAtPos(MyPos, False);
end;

procedure TfmRptPrev.qrprvRptPrevPageAvailable(Sender: TObject;
  PageNum: Integer);
begin
//  stBarRpt.Panels[1].Text := GetPaperInfo(qrprvRptPrev.QRPrinter.PaperSize);
end;

procedure TfmRptPrev.sbHTMLFilterClick(Sender: TObject);
var MyExportFilter: TQRHTMLDocumentFilter;
begin
  lbZoomFactor.Hide;

  SaveDialog.Filter := 'HTML File (*.htm)|*.htm';
  SaveDialog.FileName := '';

  if SaveDialog.Execute then
  begin
    MyExportFilter := TQRHTMLDocumentFilter.Create(SaveDialog.FileName);

    try
      qrprvRptPrev.QRPrinter.ExportToFilter(MyExportFilter)
    finally
      MyExportFilter.Free;
    end;
  end;
end;

procedure TfmRptPrev.sbTxtFilterClick(Sender: TObject);
var MyExportFilter: TQRASCIIExportFilter;
begin
  lbZoomFactor.Hide;
  
  SaveDialog.Filter := 'Text File (*.txt)|*.txt';
  SaveDialog.FileName := '';

  if SaveDialog.Execute then
  begin
    MyExportFilter := TQRASCIIExportFilter.Create(SaveDialog.FileName);

    try
      qrprvRptPrev.QRPrinter.ExportToFilter(MyExportFilter)
    finally
     MyExportFilter.Free;
    end;
  end;
end;

procedure TfmRptPrev.FormResize(Sender: TObject);
begin
  edZoomFactor.Text := IntToStr(qrprvRptPrev.Zoom);
  qrprvRptPrev.UpdateZoom;
end;

procedure TfmRptPrev.sbCSVFilterClick(Sender: TObject);
var MyExportFilter: TQRCommaSeparatedFilter;
begin
  lbZoomFactor.Hide;

  SaveDialog.Filter := 'Comma Separated File (*.csv)|*.csv';
  SaveDialog.FileName := '';

  if SaveDialog.Execute then
  begin
    MyExportFilter := TQRCommaSeparatedFilter.Create(SaveDialog.FileName);

    try
      qrprvRptPrev.QRPrinter.ExportToFilter(MyExportFilter)
    finally
      MyExportFilter.Free;
    end;
  end;
end;

procedure TfmRptPrev.sbLoadClick(Sender: TObject);
var MyQRPrinter: TQRPrinter;
begin
  lbZoomFactor.Hide;

  OpenDialog.Filter := 'Quick Report File (*.qrp)|*.qrp';
  OpenDialog.FileName := '';

  if OpenDialog.Execute then
  begin
    MyQRPrinter := TQRPrinter.Create;
    MyQRPrinter.Load(OpenDialog.FileName);
    qrprvRptPrev.QRPrinter := MyQRPrinter;

    PageNumber := qrprvRptPrev.PageNumber;
    PageCount := qrprvRptPrev.QRPrinter.PageCount;

    qrprvRptPrev.ZoomToWidth;
    edZoomFactor.Text := IntToStr(qrprvRptPrev.Zoom);
    qrprvRptPrev.UpdateZoom;
  end;
end;

procedure TfmRptPrev.sbSaveClick(Sender: TObject);
begin
  lbZoomFactor.Hide;

  SaveDialog.Filter := 'Quick Report File (*.qrp)|*.qrp';
  SaveDialog.FileName := '';

  if SaveDialog.Execute then
  begin
    qrprvRptPrev.QRPrinter.Save(SaveDialog.FileName);
  end;
end;

procedure TfmRptPrev.qrprvRptPrevClick(Sender: TObject);
begin
  lbZoomFactor.Hide;
end;

procedure TfmRptPrev.Image3Click(Sender: TObject);
begin
  lbZoomFactor.Hide;
end;

procedure TfmRptPrev.lbRecStatusClick(Sender: TObject);
begin
  lbZoomFactor.Hide;
end;

procedure TfmRptPrev.sbXLSFilterClick(Sender: TObject);
var MyExportFilter: TQRXLSFilter;
begin
  lbZoomFactor.Hide;

  SaveDialog.Filter := 'Excel File (*.xls)|*.xls';
  SaveDialog.FileName := '';

  if SaveDialog.Execute then
  begin
    MyExportFilter := TQRXLSFilter.Create(SaveDialog.FileName);

    try
      qrprvRptPrev.QRPrinter.ExportToFilter(MyExportFilter)
    finally
      MyExportFilter.Free;
    end;
  end;
end;

procedure TfmRptPrev.sbRTFFilterClick(Sender: TObject);
var MyExportFilter: TQRRTFExportFilter;
begin
  lbZoomFactor.Hide;

  SaveDialog.Filter := 'Rich Text Format (*.rtf)|*.rtf';
  SaveDialog.FileName := '';

  if SaveDialog.Execute then
  begin
    MyExportFilter := TQRRTFExportFilter.Create(SaveDialog.FileName);

    try
      qrprvRptPrev.QRPrinter.ExportToFilter(MyExportFilter)
    finally
      MyExportFilter.Free;
    end;
  end;
end;

procedure TfmRptPrev.edZoomFactorKeyPress(Sender: TObject; var Key: Char);
begin
  if ((key<'0') or (key>'9')) and (key<>#8) then
    key := #0;
end;

procedure TfmRptPrev.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
//  CanClose := sbWidth.Enabled;  
end;

procedure TfmRptPrev.FormCreate(Sender: TObject);
begin
  SaveDialog.InitialDir := ExtractFileDir(Application.ExeName);
  OpenDialog.InitialDir := SaveDialog.InitialDir;  
end;

procedure TfmRptPrev.FormShow(Sender: TObject);
begin
{  sbLast.Enabled := false;
  sbFirst.Enabled := false;
  sbPrev.Enabled := false;
  sbNext.Enabled := false;
}
  sbPrint.Enabled := false;
  sbPrinterSetup.Enabled := false;
  sbLoad.Enabled := false;
  sbSave.Enabled := false;

  sbWidth.Enabled := false;
  sbFit.Enabled := false;
  sbActual.Enabled := false;

  sbHTMLFilter.Enabled := false;
  sbTxtFilter.Enabled := false;
  sbCSVFilter.Enabled := false;
  sbXLSFilter.Visible := false;
  sbRTFFilter.Visible := false;

  stBarRpt.Panels[0].Text := '0 %';
  lbRecStatus.Caption := 'Hal 1 / 0';
  qrprvRptPrev.PageNumber := 0;
  PageNumber := qrprvRptPrev.PageNumber;
end;

procedure TfmRptPrev.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  if key = 27 then
//    close;
end;

procedure TfmRptPrev.FormMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  qrprvRptPrev.VertScrollBar.Position := qrprvRptPrev.VertScrollBar.Position + 15;
end;

procedure TfmRptPrev.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  qrprvRptPrev.VertScrollBar.Position := qrprvRptPrev.VertScrollBar.Position - 15;
end;

end.

