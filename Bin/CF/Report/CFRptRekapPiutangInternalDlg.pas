unit CFRptRekapPiutangInternalDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxCore, dxButton, dxEditor, dxEdLib, dxTL, dxDBCtrl, dxDBGrid;

type
  TfmCFRptRekapPiutangInternalDlg = class(TfmRptDlg)
    rbSelect: TRadioButton;
    rbAll: TRadioButton;
    GroupBox1: TGroupBox;
    dt1: TdxDateEdit;
    bbCancel: TdxButton;
    cbxOuts: TCheckBox;
    dbgListKaryawan: TdxDBGrid;
    dbgListKaryawanSalesID: TdxDBGridColumn;
    dbgListKaryawanSalesName: TdxDBGridColumn;
    procedure rbAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure bbPreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCFRptRekapPiutangInternalDlg: TfmCFRptRekapPiutangInternalDlg;

implementation

uses UnitGeneral, Search, CFQRRptRekapPiutangInternal;

{$R *.dfm}

procedure TfmCFRptRekapPiutangInternalDlg.rbAllClick(Sender: TObject);
begin
  inherited;
  if Sender=rbAll then
  begin
     dbgListKaryawan.OptionsBehavior := dbgListKaryawan.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=rbSelect then
  begin
     dbgListKaryawan.OptionsBehavior := dbgListKaryawan.OptionsBehavior + [edgoMultiSelect];
     if dbgListKaryawan.FocusedNode <> nil then
       dbgListKaryawan.FocusedNode.Selected := TRUE;
  end;
end;

procedure TfmCFRptRekapPiutangInternalDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  dt1.Date:=date;
end;

procedure TfmCFRptRekapPiutangInternalDlg.bbCancelClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Karyawan';
       SQLString := ' SELECT SalesName as Nama_Karyawan, SalesId as Kode_Sales'
                   +' FROM ARMsSales ORDER BY SalesID';
       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('SalesID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

procedure TfmCFRptRekapPiutangInternalDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmCFQRRptRekapPiutangInternal.Create(Self) do
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
       add(' SELECT DISTINCT A.SalesID, A.SalesName, (A.SalesID+''-''+A.SalesName) as Sales FROM ARMsSales A '
          +' INNER JOIN CFTrKKBBHd B ON A.SalesID=B.Actor AND B.FlagKKBB IN (31,32) '
          +' WHERE CONVERT(VARCHAR(8),B.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' ');
       if bCheckced then
       Add(' AND (SELECT ISNULL(SUM(C.Amount),0) FROM CFTrKKBBDt C INNER JOIN CFTrKKBBHd D ON C.VoucherID=D.VoucherID WHERE D.Actor=A.SalesID)- '
          +' (SELECT ISNULL(SUM(L.ValuePayment),0) FROM CFTrPiutangInternalDt L '
          +' INNER JOIN CFTrPiutangInternalHd Q ON L.PiutangID=Q.PiutangID WHERE Q.SalesID=B.Actor '
          +' AND CONVERT(varchar(8),Q.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''') <>0');

       if rbSelect.Checked then
       Add(' AND A.SalesID IN '+SelGrid(quAct,dbgListKaryawan,'SalesID'));
       Open;
       if IsEmpty then
       begin
          MsgInfo('No Data !');
          Abort;
       end;
    End;

    With qu002,SQL do
    Begin
       Close;Clear;
       add(' SELECT DISTINCT B.Actor, A.CurrID, A.CurrName, (A.CurrId+''-''+A.CurrName) as Valuta FROM SAMsValuta A '
          +' INNER JOIN CFTrKKBBHd B ON A.CurrID=B.CurrID AND B.FlagKKBB IN (31,32) '
          +' WHERE B.Actor='''+qu001.FieldByName('SalesID').AsString+''' '
          +' AND CONVERT(VARCHAR(8),B.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' ');
       if bCheckced then
       Add(' AND (SELECT ISNULL(SUM(C.Amount),0) FROM CFTrKKBBDt C INNER JOIN CFTrKKBBHd D ON C.VoucherID=D.VoucherID)- '
          +' (SELECT ISNULL(SUM(L.ValuePayment),0) FROM CFTrPiutangInternalDt L '
          +' INNER JOIN CFTrPiutangInternalHd Q ON L.PiutangID=Q.PiutangID WHERE L.VoucherID=B.VoucherID'
          +' AND CONVERT(varchar(8),Q.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''') <>0');
       Open;
    End;

    qu003.Open;

    if Sender=bbPreview then
       MyReport.Previewmodal
    else
       MyReport.Print;
  finally
     free;
  end;
end;

end.
