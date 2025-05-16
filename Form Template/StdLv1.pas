unit StdLv1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv0, dxCore, dxContainer, dxButton, ExtCtrls, dxExEdtr,
  dxCntner, DB, ADODB, Buttons;

type
  TfmStdLv1 = class(TfmStdLv0)
    paToolBar: TdxContainer;
    sbClose: TSpeedButton;
    quMain: TADOQuery;
    dsMain: TDataSource;
    procedure sbCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    LastState : TDataSetState;
  public
    { Public declarations }
  end;

var
  fmStdLv1: TfmStdLv1;

implementation

uses ConMain;

{$R *.dfm}

procedure TfmStdLv1.sbCloseClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TfmStdLv1.FormCreate(Sender: TObject);
begin
  inherited;
  FActDS := dsMain;
end;

procedure TfmStdLv1.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
  LastState := FActDS.State;
end;

end.
