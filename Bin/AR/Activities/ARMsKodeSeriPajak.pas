unit ARMsKodeSeriPajak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv3, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ActnList,
  DB, ADODB, DBCtrls, StdCtrls, ExtCtrls, dxEdLib, dxButton, dxCore,
  dxContainer, Buttons, dxDBTLCl, dxGrClms;

type
  TfmARMsKdSeriPajak = class(TfmStdLv3)
    dbgKodePajak: TdxDBGrid;
    quMainTaxID: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainUpdUser: TStringField;
    dbgKodePajakTaxID: TdxDBGridColumn;
    dbgKodePajakUpdDate: TdxDBGridColumn;
    dbgKodePajakUpdUser: TdxDBGridColumn;
    dxButton1: TdxButton;
    quMainNote: TStringField;
    dbgKodePajakNote: TdxDBGridColumn;
    quMainFgActive: TStringField;
    dbgKodePajakFgStatus: TdxDBGridImageColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure quMainNewRecord(DataSet: TDataSet);
    procedure quMainBeforePost(DataSet: TDataSet);
    procedure dsMainStateChange(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure quMainBeforeDelete(DataSet: TDataSet);
    procedure dxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARMsKdSeriPajak: TfmARMsKdSeriPajak;

implementation

uses MyUnit, Search, ConMain, UnitGeneral, ARTrGenerateKdPajak;

{$R *.dfm}

procedure TfmARMsKdSeriPajak.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := FALSE;
  SettingDxGrid(dbgKodePajak);  
end;

procedure TfmARMsKdSeriPajak.FormShow(Sender: TObject);
begin
  inherited;
  quMain.Active := TRUE;
end;

procedure TfmARMsKdSeriPajak.quMainNewRecord(DataSet: TDataSet);
begin
  inherited;
  quMainTaxID.FocusControl;
  quMainFgActive.AsString := 'Y';
end;

procedure TfmARMsKdSeriPajak.quMainBeforePost(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quMainTaxID.AsString) = '' then
  begin
    pesan('No Seri Faktur Pajak tidak boleh kosong');
    quMainTaxID.FocusControl;
    Abort;
  end;
  quMainUpdDate.AsDateTime := GetServerDateTime;
  quMainUpdUser.AsString := dmMain.UserId;
end;

procedure TfmARMsKdSeriPajak.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgKodePajakTaxID,quMain.State<>dsInsert);
  SetReadOnly(dbgKodePajakUpdDate,TRUE);
  SetReadOnly(dbgKodePajakUpdUser,TRUE);
end;

procedure TfmARMsKdSeriPajak.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
      begin
       try
         Title := 'No Seri Faktur Pajak';
         SQLString := 'SELECT TaxID as No_Seri_Faktur_Pajak,Note as No_Surat FROM ARMsKdPajak ORDER BY TaxID';
         if ShowModal = MrOk then
         begin
            qumain.Locate('TaxID',Res[0],[]);
         end;
       finally
         free;
       end;
    end;
end;

procedure TfmARMsKdSeriPajak.quMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT TaxID FROM ARTrPenjualanHd WHERE TaxID=:TaxID');
    Parameters.ParamByName('TaxID').Value := quMainTaxID.AsString;
    Open;
    if not IsEmpty then
    begin
      pesan('Data sudah digunakan di transaksi Penjualan. Tidak bisa di ubah atau hapus lagi');
      Abort;
    end;
  end;
end;

procedure TfmARMsKdSeriPajak.dxButton1Click(Sender: TObject);
begin
  inherited;
  with TfmARGenerateKdPajak.Create(Self) do
  try
    ShowModal;
  finally
    free;
  end;
  quMain.Requery();
end;

end.
