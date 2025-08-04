unit ARTrKlaimBagasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxTL, dxDBCtrl, dxDBGrid, DBCtrls, dxDBELib, dxEditor, dxDBTLCl, dxGrClms;

type
  TfmARTrKlaimBagasi = class(TfmStdLv31)
    quMainTransID: TStringField;
    quMainTransDate: TDateTimeField;
    quMainSalesID: TStringField;
    quMainUP: TStringField;
    quMainBank: TStringField;
    quMainCabang: TStringField;
    quMainRekening: TStringField;
    quMainNama: TStringField;
    quMainTotal: TBCDField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    quMainFgOto: TStringField;
    quMainOtoBy: TStringField;
    quMainOtoDate: TDateTimeField;
    quDetilTransID: TStringField;
    quDetilNumAll: TAutoIncField;
    quDetilPOID: TStringField;
    quDetilAmount: TBCDField;
    quDetilUpdUser: TStringField;
    quDetilUpdDate: TDateTimeField;
    Label1: TLabel;
    dxDBEdit1: TdxDBEdit;
    Label2: TLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    Label7: TLabel;
    dxDBButtonEdit3: TdxDBButtonEdit;
    Label3: TLabel;
    dxDBEdit2: TdxDBEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    dxDBEdit3: TdxDBEdit;
    Label5: TLabel;
    dxDBEdit4: TdxDBEdit;
    Label6: TLabel;
    dxDBEdit5: TdxDBEdit;
    Label8: TLabel;
    dxDBEdit6: TdxDBEdit;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    DBText8: TDBText;
    Label22: TLabel;
    DBText9: TDBText;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    DBText1: TDBText;
    Label10: TLabel;
    DBText2: TDBText;
    Label11: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    dbgPenawaran: TdxDBGrid;
    TmbBrg: TdxButton;
    KrgBrg: TdxButton;
    bbSimpanDetil: TdxButton;
    BtlBrg: TdxButton;
    Label12: TLabel;
    DBText5: TDBText;
    Shape6: TShape;
    dbgPenawaranColumn1: TdxDBGridColumn;
    dbgPenawaranColumn2: TdxDBGridButtonColumn;
    dbgPenawaranColumn3: TdxDBGridColumn;
    dbgPenawaranColumn4: TdxDBGridColumn;
    dbgPenawaranColumn5: TdxDBGridColumn;
    quMainLSalesName: TStringField;
    quMainLStatus: TStringField;
    dxButton1: TdxButton;
    quTotal: TADOQuery;
    dsTotal: TDataSource;
    quTotalTransID: TStringField;
    quTotalTotal: TBCDField;
    quDetilLTanggalSO: TStringField;
    quDetilLCustomer: TStringField;
    procedure FormShow(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure quMainCalcFields(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dxButton1Click(Sender: TObject);
    procedure KrgBrgClick(Sender: TObject);
    procedure TmbBrgClick(Sender: TObject);
    procedure bbSimpanDetilClick(Sender: TObject);
    procedure BtlBrgClick(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure dxDBButtonEdit3ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainBeforeEdit(DataSet: TDataSet);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure quDetilBeforeDelete(DataSet: TDataSet);
    procedure quDetilBeforeEdit(DataSet: TDataSet);
    procedure quDetilBeforeInsert(DataSet: TDataSet);
    procedure quDetilNewRecord(DataSet: TDataSet);
    procedure quDetilBeforePost(DataSet: TDataSet);
    procedure quDetilCalcFields(DataSet: TDataSet);
    procedure dsDetilStateChange(Sender: TObject);
    procedure dbgPenawaranColumn2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quMainAfterPost(DataSet: TDataSet);
    procedure quDetilAfterPost(DataSet: TDataSet);
    procedure quDetilAfterDelete(DataSet: TDataSet);
    procedure dbgPenawaranEnter(Sender: TObject);
  private
    { Private declarations }
    procedure CekOto;
    procedure UpdateTotal;
  public
    { Public declarations }
  end;

var
  fmARTrKlaimBagasi: TfmARTrKlaimBagasi;

implementation

{$R *.dfm}

uses MyUnit, UnitGeneral, Search, ConMain, UnitDate, StdLv3;

procedure TfmARTrKlaimBagasi.CekOto;
begin
  if GroupUser<>'admin' then
  begin
    if quMainFgOto.AsString='T' then
    begin
      ShowMessage('Data Sudah Di-submit. Tidak bisa ubah/hapus');
      Abort;
    end else
    if quMainFgOto.AsString='X' then
    begin
      ShowMessage('Data Sudah Di-reject. Tidak bisa ubah/hapus');
      Abort;
    end else
    if quMainFgOto.AsString='Y' then
    begin
      ShowMessage('Data Sudah Di-approve. Tidak bisa ubah/hapus');
      Abort;
    end;
  end;
end;

procedure TfmARTrKlaimBagasi.UpdateTotal;
begin
  with quAct,SQL do
  begin
    Close;Clear;
    Add('update artrklaimbagasihd set Total='+currtostr(quTotalTotal.AsCurrency)+' where transid='''+quMainTransID.AsString+''' ');
    ExecSQL;
  end;
end;

procedure TfmARTrKlaimBagasi.FormShow(Sender: TObject);
begin
  FFieldOrder := 'CONVERT(VARCHAR(8),TransDate,112), TransID';
  FFieldTgl   := 'TransDate';
  inherited;
  quMain.Active := TRUE;
  quDetil.Active := TRUE;
  quTotal.Active := TRUE;

  with quMain,SQL do
  begin
    Close;Clear;
    Add('select * from artrklaimbagasihd ');
    if FgOtoBagasi='T' then
    Add('where Salesid='''+MySalesID+''' ');
    Open;
  end;
end;

procedure TfmARTrKlaimBagasi.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTransDate.AsDateTime := Date;
  quMainSalesID.AsString := MySalesID;
  quMainFgOto.AsString := 'W';
  quMainTransDate.FocusControl;
end;

procedure TfmARTrKlaimBagasi.quMainCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('select salesname from armssales where salesid='''+quMainSalesID.AsString+''' ');
    Open;
  end;
  quMainLSalesName.AsString := quAct.FieldByName('SalesName').AsString;

  if quMainFgOto.AsString = 'W' then
  begin
    DBText3.Font.Color := clYellow;
    quMainLStatus.AsString := 'NOT SUBMITTED';
  end else
  if quMainFgOto.AsString = 'T' then
  begin
    DBText3.Font.Color := clAqua;
    quMainLStatus.AsString := 'SUBMITTED';
  end else
  if quMainFgOto.AsString = 'X' then
  begin
    DBText3.Font.Color := clRed;
    quMainLStatus.AsString := 'REJECTED';
  end else
  begin
    DBText3.Font.Color := clLime;
    quMainLStatus.AsString := 'APPROVED';
  end;

end;

procedure TfmARTrKlaimBagasi.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBEdit1,TRUE);
  if FGOtoBagasi='T' then
  SetReadOnly(dxDBButtonEdit3,TRUE);
end;

procedure TfmARTrKlaimBagasi.quMainBeforePost(DataSet: TDataSet);
var ST : string;
begin
  inherited;
  if TRIM(quMainTransDate.AsString) = '' then
  begin
    pesan('tanggal belum diisi');
    quMainTransDate.FocusControl;
    Abort;
  end;

  if TRIM(quMainSalesID.AsString) = '' then
  begin
    pesan('kode sales belum diisi');
    quMainSalesID.FocusControl;
    Abort;
  end;

  if TRIM(quMainLSalesName.AsString) = '' then
  begin
    pesan('kode sales tidak terdaftar di master');
    quMainSalesID.FocusControl;
    Abort;
  end;

  if quMain.State = dsInsert then
  begin
    ST := 'PKB'+ FormatDateTime('/YYYY/', quMainTransDate.AsDateTime);
    quMainTransID.AsString  := ST + FormatFloat('0000', RunNumberGL(quAct, 'ARTrKlaimBagasiHD', 'TransID', ST, '0') + 1);
  end;

  quMainUpdUser.AsString := dmMain.UserId;
  quMainUpddate.AsDateTime := GetServerDateTime;
end;

procedure TfmARTrKlaimBagasi.dxButton1Click(Sender: TObject);
var Nota : string;
begin
  inherited;
  if quMainFgOto.AsString = 'W' then
  begin

  if (MessageDlg('Data tidak bisa diubah setelah submit. Lanjutkan ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin

    with quAct,SQL do
    begin
      Close;Clear;
      Add('UPDATE ARTrKlaimBagasiHD SET FgOto=''T'' WHERE TransID='''+quMainTransID.AsString+''' ');
      ExecSQL;
      ShowMessage('Data Pengajuan Klaim Bagasi sudah berhasil di submit');
    end;

    Nota := quMainTransID.AsString;
    quMain.Requery();
    quMain.Locate('TransID',Nota,[]);

  end;

  end else
  begin
    ShowMessage('Data sudah di-submit/otorisasi');
    Abort;
  end;
end;

procedure TfmARTrKlaimBagasi.KrgBrgClick(Sender: TObject);
begin
  inherited;
  if (dsdetil <> nil) and (dsDetil.DataSet <> nil) and (MessageDlg('Hapus Data ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      dsDetil.DataSet.Delete;
end;

procedure TfmARTrKlaimBagasi.TmbBrgClick(Sender: TObject);
begin
  inherited;
  if quMain.IsEmpty then Abort else quDetil.Append;
end;

procedure TfmARTrKlaimBagasi.bbSimpanDetilClick(Sender: TObject);
begin
  inherited;
  if Self.quDetil.State = dsInsert then
  begin
   Self.quDetil.Edit;
   Self.quDetil.Post;
   Self.quDetil.Requery();
  end;
  if Self.quDetil.State = dsEdit then
  begin
   quDetil.Post;
  end;
end;

procedure TfmARTrKlaimBagasi.BtlBrgClick(Sender: TObject);
begin
  inherited;
  quDetil.Cancel;
end;

procedure TfmARTrKlaimBagasi.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Data Pengajuan Klaim Bagasi';
     SQLString := ' select CONVERT(varchar(10),A.Transdate,111) as Tanggal,A.TransID as No_Transaksi,B.SalesName as Nama_SAles,A.Total, '
                 +' A.UP,A.Bank,A.Cabang,A.Rekening,A.Nama, '
                 +' CASE WHEN A.FgOto=''W'' THEN ''NOT SUBMITTED'' '
                 +'      WHEN A.FgOto=''T'' THEN ''SUBMITTED'' '
                 +'      WHEN A.FgOto=''X'' THEN ''REJECTED'' '
                 +'      ELSE ''APPROVED'' END as Status_Oto,A.OtoBy as Oto_By,convert(varchar(10),A.OtoDate,103) as Tgl_Oto '
                 +' from ARTrKlaimBagasiHd A inner join ARMsSales B on A.SalesID=B.SalesID '
                 +' WHERE '+FSQLWhere;
     if FGOtoBagasi='T' then
     SQLString := SQLString +' AND A.SalesID='''+MySalesID+''' ';
     SQLString := SQLString +' ORDER BY A.Transdate ';
     if ShowModal = MrOK then
     begin
       quMain.Locate('TransID',Res[1],[]);
     end;
  finally
     free;
  end;
end;

procedure TfmARTrKlaimBagasi.dxDBButtonEdit3ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Cari Sales';
    SQLString := 'SELECT SalesName as Nama_Sales,SalesID as Kode_Sales FROM ARMsSales WHERE FgActive=''1'' ORDER BY SalesName';
    if ShowModal = MrOK then
    begin
       if quMain.State = dsBrowse then quMain.Edit;
       quMainSalesID.AsString := Res[1];
    end;
  finally
    free;
  end;
end;

procedure TfmARTrKlaimBagasi.quMainBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekOto;
end;

procedure TfmARTrKlaimBagasi.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekOto;
end;

procedure TfmARTrKlaimBagasi.quDetilBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CekOto;
end;

procedure TfmARTrKlaimBagasi.quDetilBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CekOto;
end;

procedure TfmARTrKlaimBagasi.quDetilBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CekOto;
end;

procedure TfmARTrKlaimBagasi.quDetilNewRecord(DataSet: TDataSet);
begin
  inherited;
  quDetilAmount.AsCurrency := 0;
  quDetilPOID.FocusControl;
end;

procedure TfmARTrKlaimBagasi.quDetilBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quDetilPOID.AsString) = '' then
  begin
    pesan('nomor invoice penjualan belum diisi');
    quDetilPOID.FocusControl;
    Abort;
  end;

  if TRIM(quDetilLTanggalSO.AsString) = '' then
  begin
    pesan('nomor invoice penjualan tidak terdaftar');
    quDetilPOID.FocusControl;
    Abort;
  end;

  quDetilUpdDate.AsDateTime := GetServerDateTime;
  quDetilUpdUser.AsString := dmmain.userid;
end;

procedure TfmARTrKlaimBagasi.quDetilCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('select convert(varchar(10),A.transdate,103) as tanggal,'
       +'(select B.custname from armscustomer B where B.custid=A.custid) as customer '
       +'from artrpenjualanhd a where a.saleid='''+quDetilPOID.AsString+''' ');
    Open;
  end;
  quDetilLTanggalSO.AsString := quAct.FieldByName('Tanggal').ASString;
  quDetilLCustomer.AsString := quAct.FIeldByNAme('customer').AsString;
end;

procedure TfmARTrKlaimBagasi.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly2(dbgPenawaranColumn4,TRUE);
  SetReadOnly2(dbgPenawaranColumn5,TRUE);
end;

procedure TfmARTrKlaimBagasi.dbgPenawaranColumn2ButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
    Title := 'Cari Sales';
    SQLString := ' Select K.SaleID as Nomor_Invoice,CONVERT(varchar(10),K.Transdate,103) as Tanggal,K.Custname as Pelanggan,K.Bagasi as Titipan,K.Klaim as Bayar,K.Bagasi-K.Klaim as Sisa_Titipan, '

                +' CAST(CAST(ROUND(CASE WHEN K.TTLPJ=0 THEN 0 ELSE K.Bayar/K.TTLPj*100 END,0) as int) as varchar)+'' %'' as Payment '
                +' FROM ( '
                +' select B.SaleID,B.Transdate,B.SalesID,C.CustName, '
                +' ISNULL(ROUND(SUM(A.Qty*A.Komisi),0),0) as Bagasi, '
                +' ISNULL((SELECT SUM(X.Amount) from ARTrKlaimBagasiDt X inner join ARTrKlaimBagasiHd Y on X.TransID=Y.TransID  WHere X.POID=B.SaleID and Y.FgOto<>''X''),0) as Klaim, '
                +' B.TTLPj,ISNULL((SELECT ISNULL(SUM(L.Amount),0) FROM CFTrKKBBDt L INNER JOIN CFTrKKBBHD Q ON L.VoucherID=Q.VoucherID '
                +' WHERE L.Note = B.SaleID  AND CONVERT(VARCHAR(8),Q.Transdate,112) <= '''+FormatDateTime('yyyymmdd',quMainTransDate.AsDateTime)+''' '
                +' AND L.RekeningID='''+sDRPj+''' ),0) as Bayar '
                +' from ARTrPenjualanDt A '
                +' inner join ARTrPenjualanHd B on A.SaleID=B.SaleID '
                +' inner join ARMsCustomer C on B.CustID=C.CustID '
                +' inner join ARMsSales D on D.SalesID=B.SalesID '
                +' WHERE CONVERT(VARCHAR(10),B.Transdate,112) > ''20240831'' '
                +' AND CONVERT(VARCHAR(10),B.Transdate,112) <= '''+FormatDateTime('yyyymmdd',quMainTransDate.AsDateTime)+''' '
                +' AND  (B.FgBAST = ''Y'' AND B.FgSP = ''Y'' AND B.FgBPPH = ''Y'' AND B.FgBPPN = ''Y'') ';
    if FGOtoBagasi='T' then
    SQLString := SQLString + ' AND B.SalesID='''+quMainSalesID.AsString+''' ';
    SQLString := SQLString + ' GROUP BY B.SaleID,B.SalesID,C.CustName,B.Transdate,B.TTLPj ';
    SQLString := SQLString + ' ) as K WHERE K.Bagasi-K.Klaim > 0 AND K.TTLPj-K.Bayar < K.TTLPJ*0.05 ';
    //showmessage(SQLString);
    if ShowModal = MrOK then
    begin
       if qudetil.State = dsBrowse then qudetil.Edit;
       quDetilPOID.AsString := Res[0];
       quDetilAmount.AsCurrency := StrToCurr(Res[5]);
    end;
  finally
    free;
  end;


end;

procedure TfmARTrKlaimBagasi.quMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTotal;
end;

procedure TfmARTrKlaimBagasi.quDetilAfterPost(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTotal;
end;

procedure TfmARTrKlaimBagasi.quDetilAfterDelete(DataSet: TDataSet);
begin
  inherited;
  quTotal.Requery();
  UpdateTotal;
end;

procedure TfmARTrKlaimBagasi.dbgPenawaranEnter(Sender: TObject);
begin
  inherited;
  if quMain.State in dsEditModes then quMain.Post;
  if quDetil.IsEmpty then quDetil.Append;
end;

end.
