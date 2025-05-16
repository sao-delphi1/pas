unit RptAPKartuHutangDetilPRDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxEdLib, dxCore, dxButton;

type
  TfmAPRptKartuHutangDetilPRDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    dt1: TdxDateEdit;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    dbgList: TdxDBGrid;
    dbgListSupp: TdxDBGridMaskColumn;
    dbgListSuppName: TdxDBGridMaskColumn;
    cbxOuts: TCheckBox;
    bbCancel: TdxButton;
    procedure rbAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAPRptKartuHutangDetilPRDlg: TfmAPRptKartuHutangDetilPRDlg;

implementation

uses StdLv0, QRRptAPKartuHutang, UnitGeneral, QRRptAPKartuHutangDetil,
  QRRptAPKartuHutangDetilPR, Search;

{$R *.dfm}

procedure TfmAPRptKartuHutangDetilPRDlg.rbAllClick(Sender: TObject);
begin
  inherited;
  if Sender=rbAll then
  begin
     dbgList.OptionsBehavior := dbgList.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=rbSelect then
  begin
     dbgList.OptionsBehavior := dbgList.OptionsBehavior + [edgoMultiSelect];
     if dbgList.FocusedNode <> nil then
       dbgList.FocusedNode.Selected := TRUE;
  end;
end;

procedure TfmAPRptKartuHutangDetilPRDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;        
  dt1.Date:=date;
End;

procedure TfmAPRptKartuHutangDetilPRDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
   with TfmAPQRRptKartuHutangDetilPR.Create(Self) do
  try
    tglDari:=dt1.Date;
    qrlTitle.Caption := laTitle.Caption;
    qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date);

    if cbxOuts.Checked then
      bCheckced := True
    else
      bCheckced := False;

    With qu001,sql do
    Begin
       Close;Clear;
       add(' Select Distinct A.SuppId, A.SuppName,(A.SuppId+''-''+A.SuppName) as Supp from APMsSupplier A '
          +' INNER JOIN APTrReturnRepHd B ON A.SuppId=B.SuppId '
          +' WHERE CONVERT(varchar(8),B.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''''
          +' AND isnull(B.TTLReturRep,0)');
         if bCheckced then
         Add(' -isnull((Select isnull(Sum(ValuePayment),0) FROM APTrPayReturnRepDt N INNER JOIN '
            +' APTrPayReturnRepHd M ON M.PayReturnRepId=N.PayReturnRepId WHERE N.ReturnRepId=B.ReturnrepID'
            +' AND CONVERT(varchar(8),M.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0)');
         Add(' <>0 ');
       if rbSelect.Checked then
       Add(' AND A.SuppID IN '+SelGrid(quAct,dbgList,'SuppID'));
       Add('ORDER By A.SuppId');
       Open;
       if IsEmpty then
       begin
          MsgInfo('No Data !');
          Abort;
       end;
    End;

    With qu002,sql do
    Begin
       Close;Clear;
       add(' Select Distinct B.SuppId,A.CurrID, A.CurrName,(A.CurrId+''-''+A.CurrName) as Valuta from SAMsValuta A '
          +' INNER JOIN APTrReturnRepHd B ON A.CurrId=B.CurrId'
          +' WHERE B.SuppId=:SuppId'
          +' AND CONVERT(varchar(8),B.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''''
          +' AND isnull(B.TTLReturRep,0)');
         if bCheckced then
         Add(' -isnull((Select isnull(Sum(ValuePayment),0) FROM APTrPayReturnRepDt N INNER JOIN '
            +' APTrPayReturnRepHd M ON M.PayReturnRepId=N.PayReturnRepId WHERE N.ReturnRepId=B.ReturnrepID'
            +' AND CONVERT(varchar(8),M.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''  ),0)');
          Add(' <>0 ORDER By B.SuppId');
       Parameters.ParamByName('SuppId').DataType := ftString;
       Open;
    End;

    qu003.Open;
    qu004.Open;



    if Sender=bbPreview then
       MyReport.PreviewModal
    else
       MyReport.Print;
  finally
     free;
  end;
end;

procedure TfmAPRptKartuHutangDetilPRDlg.bbCancelClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Supplier';
       SQLString := ' SELECT SuppName as Nama_Supplier ,SuppId as Kode_Supplier'
                   +' FROM APMsSupplier A '
                   +' ORDER BY SuppID';

       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('SuppID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

end.
