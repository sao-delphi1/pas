unit CFRptKeuanganDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls, DB,
  ADODB, Buttons, ExtCtrls;

type
  TfmCFRptKeuanganDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    rbJenis: TRadioGroup;
    rbTipe: TRadioGroup;
    procedure bbPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCFRptKeuanganDlg: TfmCFRptKeuanganDlg;

implementation

uses CFQRRptKeuanganDlg, UnitGeneral, UnitDate;

{$R *.dfm}

procedure TfmCFRptKeuanganDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmCFQRRptKeuangan.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);
       TanggalDari := dt1.Date;
       TanggalSampai := dt2.Date;
      with qu001,sql do
      Begin
        Close;Clear;
        Add(' Select Distinct B.ValutaId'
           +' FROM ALLMONEY B WHERE FgBBKK IN(''KM'',''KK'',''PIK'')');
        if rbJenis.ItemIndex = 1 then
           Add(' AND B.ValutaId=''IDR''');
        if rbJenis.ItemIndex = 2 then
           Add(' AND B.ValutaId=''USD''');
        Add(' ORDER BY B.ValutaID');
           Open;
      End;

      with qu002,SQL do
      begin
          Close;Clear;
          add(' SELECT A.Transdate,VoucherNo,Convert(Varchar(10),Transdate,103) as Tanggal,A.Note,A.Amount,A.GroupRekId,B.BankName'
             +' FROM AllMoney A LEFT JOIN CFMsBank B ON A.TempField=B.BankId WHERE'
             +' Convert(varchar(8),TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''''
             +' AND ValutaId=:ValutaId AND FgBBKK IN(''KM'',''KK'',''PIK'')');
          if rbTipe.ItemIndex = 1 then
            Add('AND ACTOR=''Counter'' ');
          if rbTipe.ItemIndex = 2 then
            Add('AND ACTOR<>''Counter'' ');
          add(' order by Convert(Varchar(10),Transdate,112),RIGHT(FgBBKK,1) DESC,GroupRekID,VoucherNo,Numall');
          Open;
      end;

      if rbTipe.ItemIndex = 1 then Awal:=0;

     if Sender=bbPreview then
          MyReport.Previewmodal
       else
          MyReport.Print;
     finally
        free;
     end;
end;

procedure TfmCFRptKeuanganDlg.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date := EncodeDate(GetYear(Date),GetMonth(Date),1);
  dt2.Date := date;
end;

end.
