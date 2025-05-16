unit SATrRateTax;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv4, dxExEdtr, ActnList, DB, dxCntner, ADODB, dxTL, dxDBCtrl,
  dxDBGrid, dxPageControl, dxEdLib, dxButton, StdCtrls, ExtCtrls, Buttons,
  dxCore, dxContainer, dxDBELib, dxEditor, dxDBTLCl, dxGrClms;

type
  TfmSATrRateTax = class(TfmStdLv4)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cbValutaId: TComboBox;
    cbValutaName: TComboBox;
    TglDate: TdxDBDateEdit;
    dxDBEdit1: TdxDBEdit;
    bbSave: TdxButton;
    bbCancel: TdxButton;
    quMainValutaID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainRate: TBCDField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1TransDate: TdxDBGridDateColumn;
    dxDBGrid1Rate: TdxDBGridCurrencyColumn;
    dxDBGrid1UpdUser: TdxDBGridMaskColumn;
    dbgListValutaID: TdxDBGridMaskColumn;
    dbgListTransDate: TdxDBGridDateColumn;
    dbgListRate: TdxDBGridCurrencyColumn;
    dbgListUpdDate: TdxDBGridDateColumn;
    dbgListUpdUser: TdxDBGridMaskColumn;
    procedure cbValutaIdChange(Sender: TObject);
    procedure cbValutaNameChange(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure ActNewExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TglDateKeyPress(Sender: TObject; var Key: Char);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSATrRateTax: TfmSATrRateTax;

implementation

uses ConMain, UnitGeneral, Search, MyUnit;

{$R *.dfm}

procedure TfmSATrRateTax.cbValutaIdChange(Sender: TObject);
begin
  inherited;
  cbValutaName.ItemIndex:=cbValutaId.ItemIndex;
  with quMain,sql do
  Begin
    Close;Clear;
    add('Select * From SATrRateTax Where ValutaId='''+cbValutaId.Text+''' ORDER BY Transdate desc');
    Open;
  End;
end;

procedure TfmSATrRateTax.cbValutaNameChange(Sender: TObject);
begin
  inherited;
  cbValutaId.ItemIndex:=cbValutaName.ItemIndex;
  with quMain,sql do
  Begin
    Close;Clear;
    add('Select * From SATrRateTax Where ValutaId='''+cbValutaId.Text+''' ORDER BY Transdate desc');
    Open;
  End;
end;

procedure TfmSATrRateTax.quMainBeforePost(DataSet: TDataSet);
var tglAk,tglKl : string;
begin
  inherited;
   If qumain.State =dsinsert then
  Begin
     with quAct,sql do
     Begin
       Close;Clear;
       add('select top 1 Transdate from SATrRateTax Where ValutaID='''+cbValutaId.Text+'''');
       Open;
     end;
        tglAk := FormatDateTime('yyyy/MM/dd', quAct.fieldbyname('TransDate').AsDateTime);
        tglKl := FormatDateTime('dd/MM/yyyy', quAct.fieldbyname('TransDate').AsDateTime);

     if tglAk >= FormatDateTime('yyyy/MM/dd', TglDate.date) then
     begin
        MsgInfo('Tanggal Rate harus lebih besar dari tanggal Rate terakhir ' + tglKl );
        TglDate.SetFocus;
        abort;
     end;
   End;
  if TRIM(quMainTransDate.AsString)='' then
  Begin
     MsgInfo('Tgl Transasksi tidak boleh kosong');
     quMainTransDate.FocusControl;
     Abort;
  end;

  if quMainRate.Value <=0 then
  Begin
     MsgInfo('Rate tidak boleh lebih kecil dari 0');
     quMainRate.FocusControl;
     Abort;
  end;

  quMainValutaID.Value := cbValutaId.Text;
  quMainUpdDate.Value  := GetServerDateTime;
  quMainUpdUser.Value  := dmMain.UserId;
end;

procedure TfmSATrRateTax.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(TglDate,qumain.State<>dsinsert);
  SetReadOnly(cbValutaId,qumain.State<>dsbrowse);
  SetReadOnly(cbValutaName,qumain.State<>dsbrowse);
end;

procedure TfmSATrRateTax.ActNewExecute(Sender: TObject);
begin
  inherited;
  quMainTransDate.FocusControl;
end;

procedure TfmSATrRateTax.FormShow(Sender: TObject);
begin
  inherited;
  
  with quAct,sql do
  Begin
    Close;Clear;
    Add('Select ValutaId,ValutaDesc from SAMsValuta');
    Open;
  End;
  cbValutaId.Clear;
  cbValutaName.Clear;
  quAct.First;
  while Not quAct.Eof do
  Begin
    cbValutaId.Items.Add(quAct.Fieldbyname('valutaId').AsString);
    cbValutaName.Items.Add(quAct.Fieldbyname('valutadesc').AsString);
    quAct.Next;
  end;
  cbValutaId.ItemIndex   :=0;
  cbValutaName.ItemIndex :=0;

  with quMain,sql do
  Begin
    Close;Clear;
    add('Select * From SATrRateTax Where ValutaId='''+cbValutaId.Text+''' ORDER BY TransDate Desc ');
    Open;
  End;
  quMainRate.DisplayFormat:=sDisFormat;
  quMainRate.EditFormat := sEditformat;
  dxDBGrid1Rate.DisplayFormat:=sDisFormat;
  
end;

procedure TfmSATrRateTax.FormCreate(Sender: TObject);
begin
  inherited;
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), ValutaID';
  FFieldTgl   := 'TransDate';
end;

procedure TfmSATrRateTax.TglDateKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmSATrRateTax.dxDBGrid1Enter(Sender: TObject);
begin
  inherited;
  if qumain.State<>dsbrowse then qumain.Post;
end;

procedure TfmSATrRateTax.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainRate.Value:=1;
  quMainTransDate.Value:=GetServerDateTime;
end;

procedure TfmSATrRateTax.bbFindClick(Sender: TObject);
begin
  inherited;
    with TfmSearch.Create(Self) do
      begin
       try
         Title := 'Item';
         SQLString := ' SELECT ValutaID as Kode_Valuta,'
                     +' Convert(varchar(10),Transdate,103) as TglTrans,'
                     +' Convert(varchar,Convert(money,Rate,2)) as Rate, Convert(varchar(10),UpdDate,103)as Last_Update,UpdUser as Updated_By'
                     +' From SATrRateTax'
                     +' WHERE '+FSQLWhere;
         if ShowModal = MrOk then
         begin
            qumain.Locate('ValutaID',Res[0],[]);
         end;
       finally
         free;
       end;
    end;
end;

end.
