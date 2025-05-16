unit ARTrSalesCall;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxDBELib, dxEditor, DBCtrls;

type
  TfmARTrSalesCall = class(TfmStdLv31)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText5: TDBText;
    Label23: TLabel;
    DBText6: TDBText;
    Label30: TLabel;
    Label33: TLabel;
    Label5: TLabel;
    Label32: TLabel;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    dxDBEdit1: TdxDBEdit;
    quMainCustomer: TStringField;
    quMainUP: TStringField;
    quMainPhone: TStringField;
    quMainFax: TStringField;
    quMainEmail: TStringField;
    quMainRespon: TStringField;
    quMainNote: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainSalesID: TStringField;
    quSales: TADOQuery;
    quValuta: TADOQuery;
    quMainLSalesName: TStringField;
    quMainLValuta: TStringField;
    quMainTransdate: TDateTimeField;
    quMainCurrID: TStringField;
    Label7: TLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBButtonEdit1: TdxDBButtonEdit;
    dxDBButtonEdit2: TdxDBButtonEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    quMainSCID: TStringField;
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dxDBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBButtonEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure bbFindClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARTrSalesCall: TfmARTrSalesCall;

implementation

uses MyUnit, Search, UnitGeneral, ConMain, StdLv1;

{$R *.dfm}

procedure TfmARTrSalesCall.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), SCID';
  FFieldTgl   := 'TransDate';
  inherited;
  quMain.Active := TRUE;
end;

procedure TfmARTrSalesCall.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetBtnOperationVisible(bbSave,bbCancel,FActDS);
  SetReadOnly(dxDBEdit1,TRUE);
  SetReadOnly(dxDBDateEdit1,quMain.State<>dsInsert);
  SetReadOnly(dxDBButtonEdit1,quMain.State<>dsinsert);
  SetReadOnly(dxDBButtonEdit2,quMain.State<>dsinsert);
  SetReadOnly(dxDBEdit2,quMain.State<>dsInsert);
  SetReadOnly(dxDBEdit3,quMain.State<>dsInsert);
  SetReadOnly(dxDBEdit7,quMain.State<>dsInsert);
  SetReadOnly(dxDBEdit8,quMain.State<>dsInsert);
end;

procedure TfmARTrSalesCall.dxDBDateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmARTrSalesCall.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransdate.FocusControl;
  quMainTransdate.AsDateTime := Date;
  quMainCurrID.AsString := 'IDR';
  quMainUP.AsString := '';
end;

procedure TfmARTrSalesCall.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Sales';
       SQLString := 'SELECT SalesID as Kode_Sales, Salesname as Nama_Sales'
                   +',Address, Phone, HP FROM ARMsSales WHERE FgActive <> 0 '
                   +' ORDER BY SalesID';
       if ShowModal = MrOK then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
          quMainSalesID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrSalesCall.dxDBButtonEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
   with TfmSearch.Create(Self) do
    try
       Title := 'Valuta';
       SQLString := 'SELECT CurrId as Kode_Valuta, CurrName as Nama_Valuta'
               +' FROM SAMsValuta'
               +' ORDER BY CurrId';
       if ShowModal = MrOk then
       begin
          if quMain.State = dsBrowse then quMain.Edit;
             quMainCurrID.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmARTrSalesCall.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;
  if TRIM(quMainTransDate.AsString)='' Then
  Begin
    MsgInfo('Tanggal tidak boleh kosong');
    quMainTransDate.FocusControl;
    Abort;
  End;

  if TRIM(quMainCustomer.AsString) = '' then
  Begin
    MsgInfo('Pelanggan belum diisi');
    quMainCustomer.FocusControl;
    Abort;
  End;

  if quMainSalesID.Value = '' then
  Begin
    MsgInfo('Sales belum diisi');
    quMainSalesID.FocusControl;
    Abort;
  End;

  if TRIM(quMainLSalesName.Value) = '' then
  Begin
    MsgInfo('Sales tidak terdaftar');
    quMainSalesID.FocusControl;
    Abort;
  End;

  if TRIM(quMainCurrID.Value) = '' then
  Begin
    MsgInfo('Valuta belum diisi');
    quMainCurrID.FocusControl;
    Abort;
  End;

  if TRIM(quMainLValuta.Value) = '' then
  Begin
    MsgInfo('Valuta tidak terdaftar');
    quMainCurrID.FocusControl;
    Abort;
  End;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT '''+dxDBEdit3.Text+''' ');
    try
      Open;
    Except
      on E :Exception do
      begin
        ShowMessage('Field Nama Tidak boleh mengandung character petik tunggal');
        quMainCustomer.FocusControl;
        Abort;
      end;
    end;
  end;

  if quMain.State=dsInsert then
  Begin
    ST := PT+'-SC.'+ FormatDateTime('YYMM', quMainTransDate.AsDateTime);
    quMainSCID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrSCHD', 'SCId', ST, '0') + 1);
  End;

  quMainUpdUser.AsString := dmMain.UserId;
  quMainUpddate.AsDateTime := GetServerDateTime;
end;

procedure TfmARTrSalesCall.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Transaksi Sales Call';
       SQLString := 'SELECT A.SCID as No,CONVERT(VARCHAR(10),A.Transdate,103) as Tgl,A.CurrID,A.Customer,A.UP,A.Phone,A.Fax,A.Email,'
                   +'B.SalesName as Sales FROM ARTrSCHD A INNER JOIN ARMsSales B ON A.SalesID=B.SalesID '
                   +'WHERE '+FSQLWhere
                   +' ORDER BY A.SCID ';
       if ShowModal = MrOK then
       begin
         quMain.Locate('SCID',Res[0],[]);
       end;
    finally
       free;
    end;
end;

end.
