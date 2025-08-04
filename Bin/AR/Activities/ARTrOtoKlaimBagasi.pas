unit ARTrOtoKlaimBagasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid;

type
  TfmARTrOtoKlaimBagasi = class(TfmStdLv31)
    dgrReport: TdxDBGrid;
    quMainTransdate: TDateTimeField;
    quMainTransID: TStringField;
    quMainSalesName: TStringField;
    quMainTotal: TBCDField;
    quMainUpdUser: TStringField;
    RadioGroup1: TRadioGroup;
    dgrReportColumn1: TdxDBGridColumn;
    dgrReportColumn2: TdxDBGridColumn;
    dgrReportColumn3: TdxDBGridColumn;
    dgrReportColumn4: TdxDBGridColumn;
    dgrReportColumn5: TdxDBGridColumn;
    quMainUP: TStringField;
    quMainRekening: TStringField;
    quMainNama: TStringField;
    quMainBank: TStringField;
    quMainCabang: TStringField;
    dgrReportColumn6: TdxDBGridColumn;
    dgrReportColumn7: TdxDBGridColumn;
    dgrReportColumn8: TdxDBGridColumn;
    dgrReportColumn9: TdxDBGridColumn;
    dgrReportColumn10: TdxDBGridColumn;
    quDetilTransid: TStringField;
    quDetilPOID: TStringField;
    quDetilTransdate: TDateTimeField;
    quDetilCustName: TStringField;
    quDetilAmount: TBCDField;
    dbgPenawaran: TdxDBGrid;
    dbgPenawaranColumn1: TdxDBGridColumn;
    dbgPenawaranColumn2: TdxDBGridButtonColumn;
    dbgPenawaranColumn4: TdxDBGridColumn;
    dbgPenawaranColumn5: TdxDBGridColumn;
    dbgPenawaranColumn3: TdxDBGridColumn;
    quCalc: TADOQuery;
    procedure RadioGroup1Click(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dsDetilStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure dgrReportDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshData;
  public
    { Public declarations }
  end;

var
  fmARTrOtoKlaimBagasi: TfmARTrOtoKlaimBagasi;

implementation

{$R *.dfm}
uses MyUnit, UnitGeneral, Search, ConMain, StdLv3, StdLv2;

procedure TfmARTrOtoKlaimBagasi.RefreshData;
var FgOto : string;
begin
  if RadioGroup1.ItemIndex=0 then FgOto:='T';
  if RadioGroup1.ItemIndex=1 then FgOto:='X';
  if RadioGroup1.ItemIndex=2 then FgOto:='Y';

  with quMain,SQL do
  begin
    Close;Clear;
    Add('select A.Transdate,A.TransID,B.SalesName,A.Total,A.UpdUser,A.UP,A.Rekening,A.Nama,A.Bank,A.Cabang '
       +'from ARTrKlaimBagasiHd A '
       +'inner join ARMsSales B on A.SalesID=B.SalesID '
       +'WHERE A.FgOto='''+Fgoto+''' '
       +'order by A.transdate ');
    Open;
  end;
end;


procedure TfmARTrOtoKlaimBagasi.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfmARTrOtoKlaimBagasi.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly2(dgrReportColumn1,TRUE);
  SetReadOnly2(dgrReportColumn2,TRUE);
  SetReadOnly2(dgrReportColumn3,TRUE);
  SetReadOnly2(dgrReportColumn4,TRUE);
  SetReadOnly2(dgrReportColumn5,TRUE);
  SetReadOnly2(dgrReportColumn6,TRUE);
  SetReadOnly2(dgrReportColumn7,TRUE);
  SetReadOnly2(dgrReportColumn8,TRUE);
  SetReadOnly2(dgrReportColumn9,TRUE);
  SetReadOnly2(dgrReportColumn10,TRUE);
end;

procedure TfmARTrOtoKlaimBagasi.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly2(dbgPenawaranColumn1,TRUE);
  SetReadOnly2(dbgPenawaranColumn2,TRUE);
  SetReadOnly2(dbgPenawaranColumn3,TRUE);
  SetReadOnly2(dbgPenawaranColumn4,TRUE);
  SetReadOnly2(dbgPenawaranColumn5,TRUE);
end;

procedure TfmARTrOtoKlaimBagasi.FormShow(Sender: TObject);
begin
  UsePeriod := False;
  inherited;
  quMain.Active := TRUE;
  quDetil.Active := TRUE;

  RefreshData;
end;

procedure TfmARTrOtoKlaimBagasi.bbFindClick(Sender: TObject);
var FgOto : string;
begin
  inherited;
  if RadioGroup1.ItemIndex=0 then FgOto:='T';
  if RadioGroup1.ItemIndex=1 then FgOto:='X';
  if RadioGroup1.ItemIndex=2 then FgOto:='Y';

  with TfmSearch.Create(Self) do
  try
     Title := 'Data Pengajuan Klaim Bagasi';
     SQLString := 'select convert(varchar(10),A.Transdate,103) as Tanggal,A.TransID as No_Transaksi,B.SalesName as Nama_Sales,A.Total,'
                 +'A.UpdUser as Nama_User,A.UP,A.Rekening,A.Nama,A.Bank,A.Cabang '
                 +'from ARTrKlaimBagasiHd A '
                 +'inner join ARMsSales B on A.SalesID=B.SalesID '
                 +'WHERE A.FgOto='''+Fgoto+''' '
                 +'order by A.transdate ';
     if ShowModal = MrOK then
     begin
       quMain.Locate('TransID',Res[1],[]);
     end;
  finally
     free;
  end;
end;

procedure TfmARTrOtoKlaimBagasi.dgrReportDblClick(Sender: TObject);
begin
  inherited;
  case (MessageDlg('YES = APPROVED, NO = REJECT, OR CANCEL ?', mtConfirmation, [mbYes, mbNo, mbCancel], 0)) of
  mrYes:
  begin
    with quCalc,SQL do
    begin
      Close;Clear;
      Add('UPDATE ARTrKlaimBagasiHD set FgOto=''Y'',otoBy='''+dmMain.UserID+''',OtoDate=getdate() where TransID='''+quMainTransID.AsString+''' ');
      ExecSQL;
    end;
    ShowMessage('Data Sudah di-Approved');
    quMain.Requery();
  end;

  mrNo:
  begin
    with quCalc,SQL do
    begin
      Close;Clear;
      Add('UPDATE ARTrKlaimBagasiHD set FgOto=''X'',otoBy='''+dmMain.UserID+''',OtoDate=getdate() where TransID='''+quMainTransID.AsString+''' ');
      ExecSQL;
    end;
    ShowMessage('Data Sudah di-Reject');
    quMain.Requery();
  end;

  end;
end;

end.
