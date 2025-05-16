unit CFRptNetCash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEdLib, dxDBELib, dxEditor, dxTL, dxDBCtrl, dxDBGrid, dxCore,
  dxButton, dxGRCLMS, ComCtrls;

type
  TfmCFRptNetCash = class(TfmRptDlg)
    dxButton1: TdxButton;
    dgrReport: TdxDBGrid;
    quCalc: TADOQuery;
    dxTahun: TdxSpinEdit;
    dxBulan: TdxImageEdit;
    dgrReportColumn1: TdxDBGridColumn;
    quActKode: TStringField;
    quActBankID: TStringField;
    quActBankName: TStringField;
    quActDSDesigner1: TBCDField;
    quActDSDesigner2: TBCDField;
    quActDSDesigner3: TBCDField;
    quActDSDesigner4: TBCDField;
    quActDSDesigner5: TBCDField;
    quActDSDesigner6: TBCDField;
    quActDSDesigner7: TBCDField;
    quActDSDesigner8: TBCDField;
    quActDSDesigner9: TBCDField;
    quActDSDesigner10: TBCDField;
    quActDSDesigner11: TBCDField;
    quActDSDesigner12: TBCDField;
    quActDSDesigner13: TBCDField;
    quActDSDesigner14: TBCDField;
    quActDSDesigner15: TBCDField;
    quActDSDesigner16: TBCDField;
    quActDSDesigner17: TBCDField;
    quActDSDesigner18: TBCDField;
    quActDSDesigner20: TBCDField;
    quActDSDesigner21: TBCDField;
    quActDSDesigner22: TBCDField;
    quActDSDesigner23: TBCDField;
    quActDSDesigner24: TBCDField;
    quActDSDesigner25: TBCDField;
    quActDSDesigner26: TBCDField;
    quActDSDesigner27: TBCDField;
    quActDSDesigner28: TBCDField;
    quActDSDesigner29: TBCDField;
    quActDSDesigner30: TBCDField;
    quActDSDesigner31: TBCDField;
    dgrReportColumn2: TdxDBGridColumn;
    dgrReportColumn3: TdxDBGridColumn;
    dgrReportColumn4: TdxDBGridColumn;
    dgrReportColumn5: TdxDBGridColumn;
    dgrReportColumn6: TdxDBGridColumn;
    dgrReportColumn7: TdxDBGridColumn;
    dgrReportColumn8: TdxDBGridColumn;
    dgrReportColumn9: TdxDBGridColumn;
    dgrReportColumn10: TdxDBGridColumn;
    dgrReportColumn11: TdxDBGridColumn;
    dgrReportColumn12: TdxDBGridColumn;
    dgrReportColumn13: TdxDBGridColumn;
    dgrReportColumn14: TdxDBGridColumn;
    dgrReportColumn15: TdxDBGridColumn;
    dgrReportColumn16: TdxDBGridColumn;
    dgrReportColumn17: TdxDBGridColumn;
    dgrReportColumn18: TdxDBGridColumn;
    dgrReportColumn19: TdxDBGridColumn;
    dgrReportColumn20: TdxDBGridColumn;
    dgrReportColumn21: TdxDBGridColumn;
    dgrReportColumn22: TdxDBGridColumn;
    dgrReportColumn23: TdxDBGridColumn;
    dgrReportColumn24: TdxDBGridColumn;
    dgrReportColumn25: TdxDBGridColumn;
    dgrReportColumn26: TdxDBGridColumn;
    dgrReportColumn27: TdxDBGridColumn;
    dgrReportColumn28: TdxDBGridColumn;
    dgrReportColumn29: TdxDBGridColumn;
    dgrReportColumn30: TdxDBGridColumn;
    dgrReportColumn31: TdxDBGridColumn;
    dgrReportColumn32: TdxDBGridColumn;
    dgrReportColumn33: TdxDBGridColumn;
    dgrReportColumn34: TdxDBGridColumn;
    quActDSDesigner19: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCFRptNetCash: TfmCFRptNetCash;

implementation

uses MyUnit, UnitGeneral, ConMain;

{$R *.dfm}

procedure TfmCFRptNetCash.FormShow(Sender: TObject);
begin
  inherited;
  dxBulan.Text := FormatDateTime('MM',Date);
  dxTahun.Text := FormatDateTime('YYYY',Date);
end;

procedure TfmCFRptNetCash.dxButton1Click(Sender: TObject);
var Periode,Query1,Query2,Query3,Query4,dari,tanggalan : string;
    Jum,i,a : integer;
begin
  inherited;
  //-----------------------------------------------------------------------------------------------------
  //menentukan jumlah perulangan
  //-----------------------------------------------------------------------------------------------------
  Periode := dxTahun.Text+'-'+dxBulan.Text+'-01';
  dari := dxTahun.Text+dxBulan.Text;

  with quCalc,SQL do
  begin
    Close;Clear;
    Add('SELECT DATEDIFF(day,'''+Periode+''',DATEADD(month,1,'''+Periode+''')) as JumlahHari ');
    Open;
  end;
  Jum := quCalc.FieldByName('JumlahHari').AsInteger;

  //-----------------------------------------------------------------------------------------------------
  //menentukan set awal query
  //-----------------------------------------------------------------------------------------------------

  Query1 := ' DECLARE @TABELKKBB TABLE(RekeningID varchar(50),Transdate datetime,Jenis varchar(50),Amount numeric(18,4),CurrID varchar(10),Rate numeric(18,4)) '
           +' '
           +' INSERT INTO @TABELKKBB (RekeningID,Transdate,Jenis,Amount,CurrID,Rate) '
           +' SELECT K.RekeningID,K.Transdate,K.Jenis,K.Amount,K.CurrID,K.Rate FROM ( '

           +'SELECT A.RekeningID,B.Transdate,A.Jenis,ISNULL(A.Amount,0) as Amount,B.CurrID,B.Rate '
           +'FROM CFTrKKBBDt A INNER JOIN CFTrKKBBHd B ON A.VoucherID=B.VoucherID AND B.FgPayment=''T'' UNION ALL '

           +'SELECT B.RekeningID,A.Transdate,CASE WHEN A.FlagKKBB IN (''KM'',''BM'',''ARK'',''ARB'',''ARC'') THEN ''D'' '
           +'WHEN A.FlagKKBB IN (''KK'',''BK'',''APK'',''APB'',''APC'') THEN ''K'' '
           +'WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''KM'',''BM'',''ARK'',''ARB'',''ARC'') THEN ''D'' '
           +'WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''KK'',''BK'',''APK'',''APB'',''APC'') THEN ''K'' END,'
           +'ISNULL(CASE WHEN A.FlagKKBB IN (''KM'',''BM'',''ARK'',''ARB'',''ARC'') THEN JumlahD WHEN A.FlagKKBB IN (''KK'',''BK'',''APK'',''APB'',''APC'') THEN JumlahK '
           +'WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''KM'',''BM'',''ARK'',''ARB'',''ARC'') THEN JumlahD '
           +'WHEN (SELECT X.FlagKKBB FROM CFTrKKBBHd X WHERE X.VoucherID=A.IDVoucher) IN (''KK'',''BK'',''APK'',''APB'',''APC'') THEN JumlahK END,0),A.CurrID,A.Rate FROM CFTrKKBBHd A '
           +'INNER JOIN CFMsBank B ON A.BankID=B.BankID WHERE A.FgPayment=''T'' AND A.FgPayment=''T'' UNION ALL '

           +'SELECT '''+sDRKas+''',Transdate,CASE WHEN FlagKKBB IN (''KM'',''BM'',''ARK'',''ARB'',''ARC'') THEN ''D'' WHEN FlagKKBB IN (''KK'',''BK'',''APK'',''APB'',''APC'') THEN ''K'' END,'
           +'ISNULL(CASE WHEN FlagKKBB IN (''KM'',''BM'',''ARK'',''ARB'',''ARC'') THEN JumlahD WHEN FlagKKBB IN (''KK'',''BK'',''APK'',''APB'',''APC'') THEN JumlahK END,0),CurrID,Rate '
           +'FROM CFTrKKBBHd '
           +'WHERE FlagKKBB IN (''KM'',''KK'',''ARK'',''APK'') AND FgPayment=''T'' UNION ALL '

           +'SELECT RekeningU,Transdate,''D'',ISNULL(TTLPj,0),CurrID,Rate FROM ARTrPenjualanHd UNION ALL '
           +'SELECT RekeningK,Transdate,''K'',ISNULL(CASE WHEN FGForm=''AR'' THEN StPj-DP ELSE DP END,0),CurrID,Rate FROM ARTrPenjualanHd UNION ALL '
           +'SELECT RekeningP,Transdate,''K'',ISNULL(CASE WHEN FgTax=''T'' THEN 0 ELSE PPN END,0),CurrID,Rate FROM ARTrPenjualanHd UNION ALL '
           +'SELECT RekHPP,Transdate,''D'',ISNULL(HPP,0),CurrID,Rate FROM ARTrPenjualanHd UNION ALL '
           +'SELECT RekPersediaan,Transdate,''K'',ISNULL(HPP,0),CurrID,Rate FROM ARTrPenjualanHd UNION ALL '

           +'SELECT RekeningU,Transdate,''K'',ISNULL(TTLPb,0),CurrID,Rate FROM APTrPurchaseHd UNION ALL '
           +'SELECT RekeningK,Transdate,''D'',ISNULL(StPb,0),CurrID,Rate FROM APTrPurchaseHd UNION ALL '
           +'SELECT RekeningP,Transdate,''D'',ISNULL(PPN,0),CurrID,Rate FROM APTrPurchaseHd UNION ALL '
           +'SELECT RekPersediaan,Transdate,''D'',ISNULL(StPb,0),CurrID,Rate FROM APTrPurchaseHd UNION ALL '
           +'SELECT RekHPP,Transdate,''K'',ISNULL(StPb,0),CurrID,Rate FROM APTrPurchaseHd '

           +' ) as K '
           +' '
           +' select ''MB'' as Kode,A.BankID,A.BankName,';

  Query2 := ' select ''KK'' as Kode,''KAS'',''KAS KECIL'',';

  Query3 := ' SELECT ''AP'',''AP'',''HUTANG DAGANG'',';

  Query4 := ' SELECT ''AR'',''AR'',''PIUTANG DAGANG'',';
  //-----------------------------------------------------------------------------------------------------
  //looping query
  //-----------------------------------------------------------------------------------------------------

  for i := 1 to 31 do
  begin

    if i<= Jum then
    begin

    if i<10 then
    tanggalan := '0'+IntToStr(i)
    else
    tanggalan := IntToStr(i);

    Query1 := Query1 + 'ISNULL((Select ISNULL(SUM(CASE WHEN X.Jenis=''D'' THEN X.Amount ELSE X.Amount*-1 END),0) FROM @TABELKKBB X WHERE CONVERT(varchar(10),X.Transdate,112)<='''+dari+tanggalan+''' AND X.RekeningID=A.RekeningID),0) as '''+IntToStr(i)+'''';
    Query2 := Query2 + 'ISNULL((Select ISNULL(SUM(CASE WHEN X.Jenis=''D'' THEN X.Amount ELSE X.Amount*-1 END),0) FROM @TABELKKBB X WHERE CONVERT(varchar(10),X.Transdate,112)<='''+dari+tanggalan+''' AND X.RekeningID='''+sDRKas+'''),0) as '''+IntToStr(i)+'''';
    Query3 := Query3 + 'ISNULL((SELECT ISNULL(SUM(K.Kredit-K.Debit)*-1,0) FROM ( '
                     + 'SELECT A.SuppID,A.TransDate,A.PurchaseID,A.CurrID,ISNULL(A.TTLPb,0)-ISNULL((Select ISNULL(SUM(Price*Qty),0) FROM APTrReturnDt F '
                     + 'INNER JOIN APTrReturnHd G  ON F.ReturnID=G.ReturnID WHERE G.FlagRetur=''B'' AND F.purchaseID=A.PurchaseID AND G.SuppID=A.SuppID '
                     + 'AND CONVERT(varchar(8),G.Transdate,112) <= '''+dari+tanggalan+'''),0) as Kredit,A.PurchaseID as SOID, '
                     + 'ISNULL((SELECT ISNULL(SUM(L.Amount),0) FROM Cftrkkbbdt L INNER JOIN cftrkkbbhd H ON L.voucherid=H.voucherid '
                     + 'WHERE L.note=A.PurchaseID AND H.Actor=A.SuppID '
                     + 'AND CONVERT(VARCHAR(8),H.Transdate,112) <='''+dari+tanggalan+'''),0) as Debit '
                     + 'FROM APTrPurchaseHd A '
                     + ') as K '
                     + 'WHERE K.Kredit <> 0 AND ISNULL(K.Kredit-K.Debit,0) > 0 '
                     + 'AND CONVERT(VARCHAR(8),K.Transdate,112) <= '''+dari+tanggalan+'''),0) as '''+IntToStr(i)+'''';
    Query4 := Query4 + 'ISNULL((Select ISNULL(SUM(CASE WHEN X.Jenis=''D'' THEN X.Amount ELSE X.Amount*-1 END),0) FROM @TABELKKBB X WHERE CONVERT(varchar(10),X.Transdate,112)<='''+dari+tanggalan+''' AND X.RekeningID='''+sDRPj+'''),0) as '''+IntToStr(i)+'''';

    end else
    begin
      Query1 := Query1 + '0.00 as '''+IntToStr(i)+'''';
      Query2 := Query2 + '0.00 as '''+IntToStr(i)+'''';
      Query3 := Query3 + '0.00 as '''+IntToStr(i)+'''';
      Query4 := Query4 + '0.00 as '''+IntToStr(i)+'''';
    end;

    if (i <> 31) then
    begin
      Query1 := Query1 + ',';
      Query2 := Query2 + ',';
      Query3 := Query3 + ',';
      Query4 := Query4 + ',';
    end;
  end;

  //-----------------------------------------------------------------------------------------------------
  //akhiran query
  //-----------------------------------------------------------------------------------------------------
  Query1 := Query1 + ' from CFMsBank A UNION ALL ';
  Query2 := Query2 + ' UNION ALL ';
  Query3 := Query3 + ' UNION ALL ';

  with quAct,SQL do
  begin
    Close;Clear;
    Add(Query1+Query2+Query3+Query4);
    //showmessage(Query2);
    Open;
  end;

  //dgrReport.DestroyColumns;
  //dgrReport.KeyField := 'Kode';
  //dgrReport.CreateDefaultColumns(dsAct.DataSet,dgrReport);
  //dgrReport.ApplyBestFit(nil);
  //dgrReport.ClearGroupColumns;
  //dgrReport.AddGroupColumn(dgrReport.Columns[0]);

  //u := 0;
  {
  for a := 0 to quAct.FieldCount-1 do
  begin
     if dgrReport.Columns[a].Field.DataType in [ftBCD, ftCurrency] then
     begin
       if dgrReport.Columns[a] is TdxDBGridCurrencyColumn then
       begin
         (dgrReport.Columns[a] as TdxDBGridCurrencyColumn).DisplayFormat := sdisformat;

         //dgrReport.SummaryGroups.Items[0].SummaryItems.Add;
         //dgrReport.SummaryGroups.Items[0].SummaryItems.Items[u].SummaryType := cstcount;
         //dgrReport.SummaryGroups.Items[0].SummaryItems.Items[u].SummaryField := dgrReport.Columns[a].FieldName;
         //dgrReport.SummaryGroups.Items[0].SummaryItems.Items[u].SummaryFormat := '#,##0';
         //dgrReport.SummaryGroups.Items[0].SummaryItems.Items[u].ColumnName := dgrReport.Columns[a].Name;
         //U:= u+1;
       end;
     end;

     if dgrReport.Columns[a].Width > 110 then dgrReport.Columns[a].Width:=110;
  end;
  }
  dgrReport.FullExpand;
end;

end.
