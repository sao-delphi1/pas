unit ARRptKartuHutangServiceDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxEdLib, dxCore, dxButton;

type
  TfmARRptKartuPiutangServiceDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    dbgList: TdxDBGrid;
    quActCustID: TStringField;
    quActCustName: TStringField;
    dbgListCustID: TdxDBGridMaskColumn;
    dbgListCustName: TdxDBGridMaskColumn;
    dt1: TdxDateEdit;
    bbCancel: TdxButton;
    cbxOuts: TCheckBox;
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
  fmARRptKartuPiutangServiceDlg: TfmARRptKartuPiutangServiceDlg;

implementation

uses StdLv0, QRRptAPKartuHutang, UnitGeneral, ARQRRptKartuHutangService,
  Search;

{$R *.dfm}

procedure TfmARRptKartuPiutangServiceDlg.rbAllClick(Sender: TObject);
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

procedure TfmARRptKartuPiutangServiceDlg.FormShow(Sender: TObject);
begin
  inherited;
  quAct.Open;
  dt1.Date:=date;
end;

procedure TfmARRptKartuPiutangServiceDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  with TfmARQRRptPiutangService.Create(Self) do
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
       add(' Select Distinct A.CustID, A.CustName,(A.CustId+''-''+A.CustName) as Cust FROM  ARTrInvServiceHd B'
          +' INNER JOIN ARTrServiceHd C ON B.ServiceId=C.ServiceId INNER JOIN ARMsCustomer A ON A.CustId=C.CustId '
          +' WHERE CONVERT(varchar(8),B.TransDate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+'''');
       if bCheckced then
       Add(' AND isnull(B.TTLSV,0) '
          +' -(select isnull(sum(L.ValuePayment),0)'
          +' FROM ARTrPiutInvServiceDt L INNER JOIN ARTrPiutInvServiceHd Q ON L.PiutInvServiceID=Q.PiutInvServiceID'
          +' where L.InvServiceID = B.InvServiceID '
          +' AND CONVERT(varchar(8),Q.Transdate,112) <= '''+FormatDateTime('yyyyMMdd',dt1.Date)+''') <>0');
       if rbSelect.Checked then
       Add(' AND A.CustID IN '+SelGrid(quAct,dbgList,'CustID'));
       Open;
       if IsEmpty then
       begin
          MsgInfo('No Data !');
          Abort;
       end;
    End;

   //qu002.Open;

    if Sender=bbPreview then
       MyReport.PreviewModal
    else
       MyReport.Print;
  finally
     free;
  end;
end;

procedure TfmARRptKartuPiutangServiceDlg.bbCancelClick(Sender: TObject);
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
