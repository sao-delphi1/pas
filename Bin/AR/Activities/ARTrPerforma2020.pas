unit ARTrPerforma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  DBCtrls, dxDBELib, dxEditor;

type
  TfmARTrPerforma = class(TfmStdLv31)
    quMainPerformaID: TStringField;
    quMainSOID: TStringField;
    quMainupddate: TDateTimeField;
    quMainupduser: TStringField;
    quMainDP: TBCDField;
    quMainCustID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainJthTempo: TIntegerField;
    quMainFgPayment: TStringField;
    dxDBEdit1: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBButtonEdit3: TdxDBButtonEdit;
    txtPelanggan: TdxDBButtonEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    Label6: TLabel;
    Label33: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    Label20: TLabel;
    Label7: TLabel;
    DBText2: TDBText;
    DBRadioGroup1: TDBRadioGroup;
    quMainLjatuhTempo: TDateTimeField;
    quMainLCustName: TStringField;
    DBText4: TDBText;
    DBText1: TDBText;
    DBText12: TDBText;
    Label18: TLabel;
    Label25: TLabel;
    Label16: TLabel;
    Label10: TLabel;
    DBText3: TDBText;
    Shape5: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape6: TShape;
    DBText5: TDBText;
    dxButton1: TdxButton;
    quMainLTotalSO: TCurrencyField;
    quMainLDP: TCurrencyField;
    quMainLPPN: TCurrencyField;
    quMainLGT: TCurrencyField;
    rgKoma: TRadioGroup;
    RadioGroup1: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure txtPelangganButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dxButton1Click(Sender: TObject);
    procedure dxDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure bbFindClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARTrPerforma: TfmARTrPerforma;

implementation

{$R *.dfm}
uses UnitGeneral,UnitDate,ConMain,Search,DateUtils,MyUnit,QRPerforma;

procedure TfmARTrPerforma.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), PerformaID';
  FFieldTgl   := 'TransDate';
  inherited;
  quMain.Active  := TRUE;
  DBRadioGroup1.Top := 140; DBRadioGroup1.Left := 2;
  rgKoma.Top := 233; rgKoma.Left := 133;
  RadioGroup1.Top := 233; RadioGroup1.Left := 209;
end;

procedure TfmARTrPerforma.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBEdit1,TRUE);
end;

procedure TfmARTrPerforma.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime := Date;
  quMainTransDate.FocusControl;
  quMainDP.AsCurrency := 0;
  quMainJthTempo.AsInteger := 0;
  quMainFgPayment.ASString := 'K';
end;

procedure TfmARTrPerforma.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Data Sales Order';
     SQLString := 'select A.POID,CONVERT(VARCHAR(10),TransDate,103) as Tanggal from ARTrPurchaseOrderHd A '
                 +'WHERE A.CustID='''+quMainCustID.ASString+''' '
                 +'AND CONVERT(VARCHAR(8),A.TransDate,112) <= '''+FormatDateTime('yyyymmdd',quMainTransDate.ASDatetime)+''' ';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
        quMainSOID.Value := Res[0];
     end;
  finally
     free;
  end;
end;

procedure TfmARTrPerforma.txtPelangganButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Cari Pelanggan';
     SQLString := 'SELECT Custname as Nama_Pelanggan,Address, City, Phone, Fax, CustType,CustID as Kode_Pelanggan '
                 +' FROM ARMsCustomer ORDER BY CustID';
     if ShowModal = MrOK then
     begin
        if quMain.State = dsBrowse then quMain.Edit;
        quMainCustID.Value := Res[6];
     end;
  finally
     free;
  end;
end;

procedure TfmARTrPerforma.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  quMainLjatuhTempo.AsDateTime := IncDay(quMainTransDate.AsDateTime, quMainJthTempo.AsInteger);

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT CustName FROM ARMsCustomer WHERE CustID='''+quMainCustID.AsString+''' ');
    Open;
  end;
  quMainLCustName.AsString := quAct.FieldByName('CustName').AsString;

  with quAct,SQL do
    Begin
      Close;Clear;
      add('SELECT '
         +'ISNULL((SELECT sum(Qty*Price) from ARTrPurchaseOrderDt where POID=A.SOID),0) AS Total, '
         +'ISNULL((SELECT sum(Qty*Price) from ARTrPurchaseOrderDt where POID=A.SOID),0)*A.DP/100 AS DP, '
         +'ISNULL((SELECT sum(Qty*Price) from ARTrPurchaseOrderDt where POID=A.SOID),0)*A.DP/1000 AS PPN, '
         +'(ISNULL((SELECT sum(Qty*Price) from ARTrPurchaseOrderDt where POID=A.SOID),0)*A.DP/100)+ '
         +'(ISNULL((SELECT sum(Qty*Price) from ARTrPurchaseOrderDt where POID=A.SOID),0)*A.DP/1000) as TotalAkhir '
         +'from ARTrPerformaHD A '
         +'inner join ARMsCustomer B on A.CustID=B.CustID '
         +'inner join ARTrPurchaseOrderHd C on A.SOID=C.POID '
         +'where A.PerformaID='''+quMainPerformaID.AsString+''' ');
      Open;
    End;

    quMainLTotalSO.AsCurrency := quAct.FieldByName('Total').AsCurrency;
    quMainLDP.AsCurrency := quAct.FieldByName('DP').AsCurrency;
    quMainLPPN.AsCurrency := quAct.FieldByName('PPN').AsCurrency;
    quMainLGT.AsCurrency := quAct.FieldByName('TotalAkhir').AsCurrency;
end;

procedure TfmARTrPerforma.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;
  if TRIM(quMainTransDate.AsString)='' Then
  Begin
    MsgInfo('Tanggal tidak boleh kosong');
    quMainTransDate.AsDateTime := Date;
    quMainTransDate.FocusControl;
    Abort;
  End;

  if quMainCustID.Value = '' then
  Begin
    MsgInfo('Pelanggan belum diisi');
    quMainCustID.FocusControl;
    Abort;
  End;

  if TRIM(quMainLCustName.Value) = '' then
  Begin
    MsgInfo('Customer Tidak Terdaftar');
    quMainCustID.FocusControl;
    Abort;
  End;

  if quMain.State=dsInsert then
  Begin
    ST := 'PI-SAS/' + FormatDateTime('YY/MM', quMainTransDate.AsDateTime) +'/' ;
    quMainPerformaID.Value  := ST + FormatFloat('000', RunNumberGL(quAct, 'ARTrPerformaHD', 'PerformaID', ST, '0') + 1);
  End;

  quMainUpdUser.AsString := dmMain.UserId;
  quMainUpddate.AsDateTime := GetServerDateTime;
end;

procedure TfmARTrPerforma.dxButton1Click(Sender: TObject);
var bossname : string;
begin
  inherited;
  If (Self.quMain.State = dsEdit) or (Self.quMain.State = dsInsert) then
  begin
    ShowMessage('Data Belum disimpan');
    Abort;
  end;

  with quAct,SQL do
  Begin
    Close;Clear;
    if RadioGroup1.ItemIndex=1 then
    add('SELECT B.SalesName as BossName from ARTrPurchaseOrderHd A Inner Join ArMsSales B on A.SalesID=B.SalesID where A.POID='''+quMainSOID.ASString+''' ');
    if RadioGroup1.ItemIndex=0 then
    add('SELECT BossName from SaMsSet');
    if RadioGroup1.ItemIndex=2 then
    Add('SELECT '''+dmMain.UserId+''' as BossName');
    if RadioGroup1.ItemIndex=3 then
    Add('SELECT ''Hindra Kumala'' as BossName');
    Open;
  End;
  BossName := quAct.FieldByName('BossName').AsString;

  with TfmQRPerforma.Create(Self) do
  try
    if RgKoma.ItemIndex=0 then
    Koma := 'Y'
    else
    Koma := 'T';

    qlbSales.Caption := BossName;
    qrLabel36.Caption := 'DP '+FormatCurr('#,0',quMainDp.AsCurrency)+'% :';
    
    if (RadioGroup1.ItemIndex=2) or (RadioGroup1.ItemIndex=3) then
    QRDBImage1.Enabled := False
    else
    QRDBImage1.Enabled := True;

    with qu001,SQL do
    Begin
      Close;Clear;
      add('SELECT A.PerformaID,A.CustID,B.CustName,C.UP,B.Phone,A.SOID,C.POID,');
      if RadioGroup1.ItemIndex=0 then
      Add('(Select SAS FROM SAMSSet) as TTD,');
      if RadioGroup1.ItemIndex=1 then
      Add('D.SAS as TTD,');
      if RadioGroup1.ItemIndex=2 then
      Add('null as TTD,');
      if RadioGroup1.ItemIndex=3 then
      Add('null as TTD,');
      Add('convert(varchar(10),A.TransDate,103) as Tanggal,convert(varchar(10),A.TransDate+JthTempo,103) as TglJthTempo, '
         +'ISNULL((SELECT sum(Qty*Price) from ARTrPurchaseOrderDt where POID=A.SOID),0) AS Total, '
         +'ISNULL((SELECT sum(Qty*Price) from ARTrPurchaseOrderDt where POID=A.SOID),0)*A.DP/100 AS DP, '
         +'ISNULL((SELECT sum(Qty*Price) from ARTrPurchaseOrderDt where POID=A.SOID),0)*A.DP/1000 AS PPN, '
         +'(ISNULL((SELECT sum(Qty*Price) from ARTrPurchaseOrderDt where POID=A.SOID),0)*A.DP/100)+ '
         +'(ISNULL((SELECT sum(Qty*Price) from ARTrPurchaseOrderDt where POID=A.SOID),0)*A.DP/1000) as TotalAkhir,A.fgPayment '
         +'from ARTrPerformaHD A '
         +'inner join ARMsCustomer B on A.CustID=B.CustID '
         +'inner join ARTrPurchaseOrderHd C on A.SOID=C.POID '
         +'inner join ARMsSales D on C.SalesID=D.SalesID '
         +'where A.PerformaID='''+quMainPerformaID.AsString+''' ');
      Open;
    End;

    With qu002,SQL do
    Begin
      Close;Clear;
      add('select B.Urut,B.PartNo,B.ItemName,ISNULL(B.Qty,0) as Qty,ISNULL(B.Price,0) as Price,ISNULL(B.Qty*B.Price,0) as total from ARTrPerformaHD A '
         +'INNER JOIN ARTrSalesOrderdt B on A.SOID=B.SOID where A.PerformaID='''+quMainPerformaID.AsString+''' Order By B.Urut');
      Open;
    End;

  if sCetak = '0' then
  begin
    MyReport.PreviewModal;
  end else
  begin
    MyReport.Print;
  end;

  finally
    free;
  end;
end;

procedure TfmARTrPerforma.dxDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then PostMessage(Self.Handle,WM_NEXTDLGCTL,0,0);
end;

procedure TfmARTrPerforma.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Transaksi Performa';
       SQLString := 'select B.CustName,CONVERT(VARCHAR(10),A.TransDate,103) as Tanggal, '
                   +'A.PerformaID,A.SOID,A.DP from artrperformahd A Inner Join ArMsCustomer B on A.CustID=B.CustID WHERE '+FSQLWhere
                   +' ORDER BY A.TransDate ';
       if ShowModal = MrOK then
       begin
         quMain.Locate('PerformaID',Res[2],[]);
       end;
    finally
       free;
    end;
end;

end.
