unit Jurnal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, dxExEdtr, DBCtrls, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, ActnList, DB, ADODB, StdCtrls, Buttons, dxCore, dxContainer,
  dxButton, dxDBTLCl, dxGrClms;

type
  TfmJurnal = class(TfmStdLv2)
    dbg: TdxDBGrid;
    Panel1: TPanel;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label3: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Shape6: TShape;
    Label4: TLabel;
    Label6: TLabel;
    Shape3: TShape;
    Panel2: TPanel;
    Shape4: TShape;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    quDetil: TADOQuery;
    dsDetil: TDataSource;
    quDetilCOAID: TStringField;
    quDetilCOADesc: TStringField;
    quDetilNote: TStringField;
    quDetilDK: TStringField;
    quDetilValutaID: TStringField;
    quDetilrate: TBCDField;
    quDetilAmount: TBCDField;
    quDetilttl: TBCDField;
    dbgCOAID: TdxDBGridMaskColumn;
    dbgCOADesc: TdxDBGridMaskColumn;
    dbgNote: TdxDBGridMaskColumn;
    dbgDK: TdxDBGridMaskColumn;
    dbgValutaID: TdxDBGridMaskColumn;
    dbgttl: TdxDBGridCurrencyColumn;
    quMainJourtransID: TStringField;
    quMainTgl: TStringField;
    quMainJurnal: TStringField;
    quMainJourGLID: TStringField;
    quMainFlag: TIntegerField;
    quMainJourDesc: TStringField;
    quMainDebet: TBCDField;
    quMainKredit: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sFlag, sKunci  : string
  end;

var
  fmJurnal: TfmJurnal;

implementation

uses StdLv0, StdLv1, MyUnit, UnitGeneral, QRRptGLJurnal, RptLv0;

{$R *.dfm}

procedure TfmJurnal.FormShow(Sender: TObject);
var sJourTransID : string;
begin
  inherited;
  quMainDebet.DisplayFormat:=sDisFormat;
  quMainKredit.DisplayFormat:=sDisFormat;
  quDetilAmount.DisplayFormat:=sDisFormat;
  quDetilrate.DisplayFormat:=sDisFormat;
  quDetilttl.DisplayFormat:=sDisFormat;
  dbgttl.DisplayFormat :=sDisFormat;
  With quact,sql do
  Begin
    Close;Clear;
    add('SELECT JourTransID FROM GLTRJournalHD WHERE Flag='''+sFlag+''' and JourGLID='''+sKunci+'''');
    Open;
    if not IsEmpty then
     sJourTransID:=quAct.fieldbyname('JourtransID').AsString
    Else
     sJourTransID:='';
  End;

  With quMain,sql do
  Begin
    Close;Clear;
    add(' SELECT JourtransID,Convert(varchar(20),JourDate,103)as Tgl,'
       +' JourId +''-''+ (Select JurnalDesc From GLMsJurnal as K WHERE A.JourID=K.JurnalID) as Jurnal,'
       +' JourGLID, Flag, JourDesc, '
       +' (select isnull(sum(case when K.DK=''D'' then amount  else 0 end), 0)'
       +' from GLTrjournalDt as K where A.jourTransId=K.jourTransId ) as Debet,'
       +' (select isnull(sum(case when K.DK=''K'' then amount  else 0 end), 0)'
       +' from GLTrjournalDt as K where A.jourTransId=K.jourTransId ) as Kredit'
       +' From GLTrJournalHd A '
       +' WHERE JourTransID=''' + sJourTransID + ''' and flag=''' + sFlag + '''');
    Open;
  End;

  With qudetil,sql do
  Begin
    Close;Clear;
    add(' SELECT A.COAID, B.COADesc,A.Note, case when DK=''D'' then ''Debet'' else ''Kredit'' end as DK,'
       +' A.ValutaID,A.rate,A.Amount,A.Amount as ttl'
       +' FROM GLTrJournalDt A INNER JOIN GLMsCOA B ON A.COAID=B.COAID'
       +' WHERE A.JourtransID=:JourtransID'
       +' ORDER BY A.COAID');
    Open;
  End;
end;

procedure TfmJurnal.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
  SettingDxGrid(dbg);
end;

procedure TfmJurnal.dxButton2Click(Sender: TObject);
var ttl : real;
    sQuery : string;
begin
  inherited;
  if not quDetil.IsEmpty then
    begin
      with TfmQRRptGLJurnal.Create(self) do
        try
           qlbPT.Caption:= sCompanyName;
           qlbJurMid.Caption := ': ' + DBText3.Caption;
           qlbTanggal.Caption := ': ' + DBText2.Caption;
           qlbCekGiro.Caption := ': ';
           qlbKeterangan.Caption := DBText4.Caption;;
           qlbDebit.Caption := DBText5.Caption;;
           qlbKredit.Caption := DBText6.Caption;
           sQuery := ' SELECT 1 as kode, coaid, note, DK,'+
                     ' CASE WHEN DK=''D'' THEN amount ELSE 0 END as debet, '+
                     ' CASE WHEN DK=''K'' THEN amount ELSE 0 END as kredit'+
                     ' FROM GLTrJournalDt WHERE  JourtransID=''' + DBText3.Caption + ''' ';
           SelectQuery(qu001, sQuery + ' order by kode, dk , coaid');
           if sFlag = '0' then
             qlbPeriode.Caption := 'JURNAL UMUM'
           else if sFlag = '31' then
             qlbPeriode.Caption := 'JURNAL KAS MASUK'
           else if sFlag = '32' then
             qlbPeriode.Caption := 'JURNAL KAS KELUAR'
           else if sFlag = '41' then
             qlbPeriode.Caption := 'JURNAL BANK MASUK'
           else if sFlag = '42' then
             qlbPeriode.Caption := 'JURNAL BANK KELUAR'
           else if sFlag = '43' then
             qlbPeriode.Caption := 'TRANSAKSI RECYCLE BIN'
           else if sFlag = '11' then
             qlbPeriode.Caption := 'DP PO'
           else if sFlag = '12' then
             qlbPeriode.Caption := 'PI'
           else if sFlag = '13' then
             qlbPeriode.Caption := 'Pembayaran Secara Kas'
           else if sFlag = '14' then
             qlbPeriode.Caption := 'Pembayaran Secara Bank'
           else if sFlag = '15' then
             qlbPeriode.Caption := 'Pembayaran Secara Cek/Giro'
           else if sFlag = '16' then
             qlbPeriode.Caption := 'Invoice Ekspedisi'
           else if sFlag = '21' then
             qlbPeriode.Caption := 'DP SO'
           else if sFlag = '22' then
             qlbPeriode.Caption := 'SI'
           else if sFlag = '23' then
             qlbPeriode.Caption := 'Penerimaan Secara Kas'
           else if sFlag = '24' then
             qlbPeriode.Caption := 'Penerimaan Secara Bank'
           else if sFlag = '25' then
             qlbPeriode.Caption := 'Penerimaan Secara Cek/Giro';
           MyReport.Preview;
           qu001.close;
        finally
          free;
        end;
    end
  else
    pesan('Tidak ada data');
end;

end.
