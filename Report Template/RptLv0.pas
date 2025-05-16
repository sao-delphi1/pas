unit RptLv0;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, ADODB, QRCtrls, StdCtrls, jpeg;

type
  TfmRptLv0 = class(TForm)
    MyReport: TQuickRep;
    qu001: TADOQuery;
    ds001: TDataSource;
    BndDetail: TQRBand;
    BndTitle: TQRBand;
    qrlCompName: TQRLabel;
    qrlTitle: TQRLabel;
    qrlPeriode: TQRLabel;
    mmTemp: TMemo;
    quSetting: TADOQuery;
    qrlCompAddres: TQRMemo;
    ImgCompany: TQRImage;
    quSettingCompNameFontName: TStringField;
    quSettingCompNameFontSize: TLargeintField;
    quSettingLineLeftVisible: TStringField;
    quSettingLineRightVisible: TStringField;
    quSettingLineSeparatorVisible: TStringField;
    quSettingClFooter: TLargeintField;
    quSettingClTitle: TLargeintField;
    quSettingRptTitleFontName: TStringField;
    quSettingRptTitleFontSize: TLargeintField;
    procedure MyReportBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure quSettingAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure MyReportPreview(Sender: TObject);
  private
    { Private declarations }
    FTitle    : String;
    FPeriode  : String;
  protected
    Function CountLines(intWidth:Integer;strValue:String) : Integer;

  public
    { Public declarations }
    Property RptTitle    : String read FTitle Write FTitle;
    Property RptPeriode  : String read FPeriode Write FPeriode;
  end;

var
  fmRptLv0: TfmRptLv0;

implementation

uses ConMain, MyUnit, RptPrev;

{$R *.dfm}

function TfmRptLv0.CountLines(intWidth: Integer; strValue: String): Integer;
begin
   with mmTemp do
   begin
      Lines.Clear;
      Width := intWidth;
      Lines.Add(strValue);
      Result := Lines.Count;
   end;
end;

procedure TfmRptLv0.MyReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrlCompName.Caption := sCompanyName;
  qrlCompAddres.Lines.Text := sCompanyAddress;
  //qrlTitle.Caption    := FTitle;
  //qrlPeriode.Caption  := FPeriode;
end;

procedure TfmRptLv0.quSettingAfterOpen(DataSet: TDataSet);
begin
 // MyReport.Frame.DrawLeft  := quSettingLineLeftVisible.Value = 'Y';
 // MyReport.Frame.DrawRight := quSettingLineRightVisible.Value = 'Y';
  BndTitle.Color := quSettingClTitle.Value;

  qrlCompName.Font.Name := quSettingCompNameFontName.Value;
  qrlCompName.Font.Size := quSettingCompNameFontSize.Value;

  qrlTitle.Font.Name := quSettingRptTitleFontName.Value;
  qrlTitle.Font.Size := quSettingRptTitleFontSize.Value;
  
  end;

procedure TfmRptLv0.FormCreate(Sender: TObject);
begin
   quSetting.Active := TRUE;
end;

procedure TfmRptLv0.MyReportPreview(Sender: TObject);
begin
   with TfmRptPrev.Create(self, MyReport.Printer) do
    try
       ShowModal;
    finally
      free;
    end;
end;

end.
