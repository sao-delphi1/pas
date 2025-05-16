unit StdLv2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv1, dxButton, dxCore, dxContainer, ExtCtrls, dxExEdtr,
  dxCntner, DB, ADODB, Buttons, ActnList, StdCtrls;

type
  TfmStdLv2 = class(TfmStdLv1)
    sbHelp: TSpeedButton;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    sbPrev: TSpeedButton;
    sbFirst: TSpeedButton;
    Shape1: TShape;
    Shape2: TShape;
    sbExcel: TSpeedButton;
    ActionList: TActionList;
    ActFirst: TAction;
    ActPrev: TAction;
    ActNext: TAction;
    ActLast: TAction;
    sbPeriod: TSpeedButton;
    BvlPeriod: TBevel;
    laPeriod: TLabel;
    sbRefresh: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure ActFirstExecute(Sender: TObject);
    procedure ActPrevExecute(Sender: TObject);
    procedure ActNextExecute(Sender: TObject);
    procedure ActLastExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbPeriodClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
  private
    { Private declarations }
  Protected
    FPrd1, FPrd2 : TDateTime;
    FSQLSelect   : String;
    FFieldOrder  : String;
    FFieldTgl    : String;
    FSQLWhere    : String;
    FAfterWhere  : String;
    UsePeriod    : Boolean; //--Kalau True Periodnya keliatan--/
    Procedure SetLaPeriod;
    Procedure GenerateSQLPeriod; //--Generate SQL String yang ada periodenya--/
  public
    { Public declarations }
  end;

var
  fmStdLv2: TfmStdLv2;

implementation

uses StdLv0, PeriodDlg, UnitDate, UnitGeneral, ConMain;

{$R *.dfm}

procedure TfmStdLv2.ActFirstExecute(Sender: TObject);
begin
  inherited;
  if (FActDS.DataSet<>nil)AND(FActDS<>nil)AND(FActDS.DataSet.Active) then
     FActDS.DataSet.First;
  SetBtnNavigation(sbFirst,sbPrev,sbNext,sbLast,FActDS);
end;

procedure TfmStdLv2.ActPrevExecute(Sender: TObject);
begin
  inherited;
  if (FActDS.DataSet<>nil)AND(FActDS<>nil)AND(FActDS.DataSet.Active) then
     FActDS.DataSet.Prior;
  SetBtnNavigation(sbFirst,sbPrev,sbNext,sbLast,FActDS);
end;

procedure TfmStdLv2.ActNextExecute(Sender: TObject);
begin
  inherited;
  if (FActDS.DataSet<>nil)AND(FActDS<>nil)AND(FActDS.DataSet.Active) then
     FActDS.DataSet.Next;
  SetBtnNavigation(sbFirst,sbPrev,sbNext,sbLast,FActDS);
end;

procedure TfmStdLv2.ActLastExecute(Sender: TObject);
begin
  inherited;
  if (FActDS.DataSet<>nil)AND(FActDS<>nil)AND(FActDS.DataSet.Active) then
     FActDS.DataSet.Last;
  SetBtnNavigation(sbFirst,sbPrev,sbNext,sbLast,FActDS);
end;

procedure TfmStdLv2.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := TRUE;
  //--Set Tanggal Period
  FPrd1 := dmMain.FSysPrd1;
  FPrd2 := dmMain.FSysPrd2;
  SetLaPeriod;

  SetBtnNavigation(sbFirst,sbPrev,sbNext,sbLast,FActDS);
end;

procedure TfmStdLv2.sbPeriodClick(Sender: TObject);
begin
  inherited;
  with TfmPeriodDlg.Create(Self) do
    try
       PrdStart := FPrd1;
       PrdUntil := FPrd2;
       if ShowModal = MrOK then
       begin
           FPrd1 := PrdStart;
           FPrd2 := PrdUntil;
           SetLaPeriod;
           GenerateSQLPeriod;
       end;
    finally
       free;
    end;
end;

procedure TfmStdLv2.SetLaPeriod;
begin
  laPeriod.Caption := 'Period : '+FormatDateTime('DD/MM/YYYY',FPrd1)+' s/d '+FormatDateTime('DD/MM/YYYY',FPrd2);
end;

procedure TfmStdLv2.FormShow(Sender: TObject);
begin
  inherited;
  //--Kalau nggak pake periode yah dimatiin--/
  BvlPeriod.Visible := UsePeriod;
  laPeriod.Visible  := UsePeriod;
  sbPeriod.Visible  := UsePeriod;

  //--Generate SQL String buat quMain--/
  if UsePeriod then
  begin
    FSQLSelect := quMain.SQL.Text;
    GenerateSQLPeriod;

  end;
end;

procedure TfmStdLv2.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnNavigation(sbFirst,sbPrev,sbNext,sbLast,FActDS);
end;

procedure TfmStdLv2.GenerateSQLPeriod;
var FStr : String;
begin
    if TRIM(FFieldTgl)='' then
    begin
        MsgError('Variable FFieldTgl Belum diSet !');
        Abort;
    end;
    FStr := FSQLSelect;
    if Pos(UpperCase('where'),uppercase(FStr)) > 0 then
        FStr := FStr + ' AND '
    else
        FStr := FStr + ' WHERE ';

    FSQLWhere := 'CONVERT(VARCHAR(8),' + FFieldTgl +',112) '
                 + ' BETWEEN '+FormatDateTime('YYYYMMDD',FPrd1)+' AND '+FormatDateTime('YYYYMMDD',FPrd2);

    if TRIM(FFieldOrder)<>'' then
       FStr := FStr + FSQLWhere + FAfterWhere + ' ORDER BY ' + FFieldOrder;
    Try
       with quMain,SQL do
       begin
          Close; Clear;
          Add(FStr);
          Open;
        end;
    Except
       on E : Exception do MsgError('Ada Error ketika generate SQL !'+#13+'Msg Error:'+E.Message);
    end;
end;

end.
