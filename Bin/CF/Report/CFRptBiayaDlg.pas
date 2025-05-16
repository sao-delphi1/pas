unit CFRptBiayaDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls, DB,
  ADODB, Buttons, ExtCtrls;

type
  TfmCFRptBiayaDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    RbJenis: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCFRptBiayaDlg: TfmCFRptBiayaDlg;

implementation

uses UnitGeneral, UnitDate, MyUnit, CFQRRptBiaya;

{$R *.dfm}

procedure TfmCFRptBiayaDlg.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date := EncodeDate(GetYear(Date),GetMonth(Date),1);
  dt2.Date := date;
end;

procedure TfmCFRptBiayaDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmCFQRRptBiaya.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);
       TanggalDari := dt1.Date;
       TanggalSampai := dt2.Date;

     with qu001,SQL do
     Begin
       Close;Clear;
       Add('SELECT DISTINCT ValutaID, ISNULL(SUM(Amount),0) as Total '
          +'FROM AllMoney WHERE GroupRekID='''+sDGRBi+''' AND CONVERT(VARCHAR(8),Transdate,112) '
          +'BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+''' '
          +'GROUP BY ValutaID');
       Open;
     End;

     With qu002,sql do
     Begin
        Close;Clear;
        Add(' SELECT DISTINCT A.RekeningId,(A.RekeningId+'' - ''+B.RekeningName) as Rek,B.RekeningName, ISNULL(SUM(A.Amount),0) as Total  '
           +' FROM ALLMONEY A INNER JOIN CFMsRekening B ON A.RekeningID=B.RekeningID WHERE A.ValutaID=:ValutaID AND A.GroupRekID='''+sDGRBi+''' AND'
           +' CONVERT(VARCHAR(8),TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
        Add(' GROUP BY A.RekeningID, B.RekeningName ORDER BY A.RekeningId ');
        Parameters.ParamByName('ValutaID').DataType := ftString;
        Open;
     End;

     qu003.Open;

     if RbJenis.ItemIndex = 0 then
     begin
       QRLabel9.Enabled := False;
       QRDBText8.Enabled := False;
     end else
     begin
       QRSubDetail2.Height := 0;
       GroupFooterBand2.Height := 0;
     end;

     if Sender=bbPreview then
          MyReport.Previewmodal
       else
          MyReport.Print;
     finally
        free;
     end;
end;

end.
