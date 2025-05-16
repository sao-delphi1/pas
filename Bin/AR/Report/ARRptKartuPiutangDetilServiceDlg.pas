unit ARRptKartuPiutangDetilServiceDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxEdLib, dxCore, dxButton;

type
  TfmARRptKartuPiutangDetilServiceDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    dt1: TdxDateEdit;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    dbgList: TdxDBGrid;
    dbgListCustId: TdxDBGridMaskColumn;
    dbgListCustName: TdxDBGridMaskColumn;
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
  fmARRptKartuPiutangDetilServiceDlg: TfmARRptKartuPiutangDetilServiceDlg;

implementation

uses StdLv0, QRRptAPKartuHutang, UnitGeneral, QRRptAPKartuHutangDetil,
  ARQRRptKartuPiutangDetil, ARQRRptKartuPiutangDetilService, Search;

{$R *.dfm}

procedure TfmARRptKartuPiutangDetilServiceDlg.rbAllClick(Sender: TObject);
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

procedure TfmARRptKartuPiutangDetilServiceDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;        
  dt1.Date:=date;
end;

procedure TfmARRptKartuPiutangDetilServiceDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmARQRRptKartuPiutangDetilService.Create(Self) do
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
       add(' Select Distinct A.CustId, A.CustName,(A.CustId+''-''+A.CustName) as Cust from ARMsCustomer A '
          +' INNER JOIN ARTrServiceHd C ON A.CustId=C.CustId INNER JOIN ARTrInvServiceHd B ON B.ServiceId=C.ServiceId'
          +' WHERE CONVERT(varchar(8),B.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''''
          +' AND isnull(B.TTLSV,0)');
          if bCheckced then
          Add(' -isnull((Select isnull(Sum(ValuePayment),0) FROM ARTrPiutInvServiceDt P '
             +' INNER JOIN ARTrPiutInvServiceHd Q ON P.PiutInvServiceId=Q.PiutInvServiceId '
            +'  WHERE P.InvServiceId=B.InvServiceID AND CONVERT(varchar(8),Q.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''),0)');
          Add(' <> 0 ');
       if rbSelect.Checked then
       Add(' AND A.CustID IN '+SelGrid(quAct,dbgList,'CustID'));
       Add('ORDER BY A.CustId');
       Open;
       if IsEmpty then
       begin
          MsgInfo('No Data !');
          Abort;
       end;
    End;

    qu002.Open;
    qu003.Open;

    if Sender=bbPreview then
       MyReport.PreviewModal
    else
       MyReport.Print;
  finally
     free;
  end;
end;

procedure TfmARRptKartuPiutangDetilServiceDlg.bbCancelClick(
  Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Pelanggan';
       SQLString := ' SELECT CustName as Nama_Pelanggan ,CustId as Kode_Pelanggan'
                   +' FROM ARMsCustomer A '
                   +' ORDER BY CustID';

       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('CustID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

end.
