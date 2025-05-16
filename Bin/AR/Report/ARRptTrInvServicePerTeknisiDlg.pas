unit ARRptTrInvServicePerTeknisiDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptDlg, DB, dxExEdtr, dxCntner, ADODB, StdCtrls, Buttons,
  ExtCtrls, dxEditor, dxEdLib, dxTL, dxDBCtrl, dxDBGrid, dxCore, dxButton;

type
  TfmARRptInvServicePerTeknisiDlg = class(TfmRptDlg)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label1: TLabel;
    dxEdit1: TdxEdit;
    rbAll: TRadioButton;
    rbSelect: TRadioButton;
    dbgList: TdxDBGrid;
    quActTeknisiID: TStringField;
    quActTeknisiName: TStringField;
    dbgListTeknisiID: TdxDBGridMaskColumn;
    dbgListTeknisiName: TdxDBGridMaskColumn;
    bbCancel: TdxButton;
    procedure bbPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbSelectClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmARRptInvServicePerTeknisiDlg: TfmARRptInvServicePerTeknisiDlg;

implementation

uses INQRRptAdjusment, UnitGeneral, ARQRRptTrService, ARQRRptTrInvService,
  StdLv0, ARQRRptTrInvServicePerTeknisi, Search;

{$R *.dfm}

procedure TfmARRptInvServicePerTeknisiDlg.bbPreviewClick(Sender: TObject);
begin
  inherited;
  if dxEdit1.Text = '' Then
  Begin
    MsgInfo('Komisi tidak boleh kosong');
    dxEdit1.SetFocus;
    Abort;
  End;

  with TfmARQRRptInvServicePerteknisi.Create(Self) do
     try
       qrlTitle.Caption := laTitle.Caption;
       qrlPeriode.Caption := 'Periode : '+FormatDateTime('dd/MM/yyyy',dt1.date)+' s/d '+FormatDateTime('dd/MM/yyyy',dt2.date);
       Komisi := Strtocurr(dxEdit1.Text);

       With qu001,sql do
       Begin
         Close;Clear;
         Add(' Select Distinct A.TeknisiId,(A.TeknisiId+''-''+B.TeknisiName) As Teknisi  FROM ARTrInvServiceHd A'
            +' INNER JOIN ARMsTeknisi B ON A.TeknisiId=B.TeknisiId'
            +' WHERE Convert(varchar(8),A.TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
         if rbSelect.Checked then
        Add(' AND A.TeknisiId IN '+SelGrid(quAct,dbgList,'TeknisiID'));
        Add(' ORDER BY A.TeknisiId');
        Open;
        if IsEmpty then
          begin
             MsgInfo('No Data !');
             Abort;
          end;
       End;

       with qu002,sql do
       begin
           Close;Clear;
           add(' select A.InvServiceId,Convert(Varchar(10),Transdate,103) as Tgl,ServiceId,A.TeknisiId,D.TeknisiName'
              +' ,Servicefee,TTLSV '
              +' FROM ARTrInvServiceHd A INNER JOIN ARMsTeknisi D ON A.TeknisiId=D.TeknisiId WHERE'
              +' A.TeknisiId=:TeknisiId AND'
              +' Convert(varchar(8),A.TransDate,112) BETWEEN '''+FormatDateTime('yyyyMMdd',dt1.Date)+''' AND '''+FormatDateTime('yyyyMMdd',dt2.Date)+'''');
           add('  order by Convert(Varchar(10),A.Transdate,112),A.InvServiceId');
           Open;
          if IsEmpty then
          begin
             MsgInfo('No Data !');
             Abort;
          end;
       end;

      {
       with qu002,sql do
       begin
          Close;Clear;
          add(' SELECT distinct A.ItemId,B.ItemName,'
             +' A.QTY,A.Price '
             +' FROM ARTrServiceDtPS A INNER JOIN INMsItem B ON A.ItemId=B.ItemId'
             +' WHERE ServiceID=:ServiceId');
          add('  order by A.ItemID ');
          Parameters.ParamByName('ServiceId').DataType := ftString;
          Open;
          if IsEmpty then
          begin
             MsgInfo('No Data !');
             Abort;
          end;
       end;          }


       if Sender=bbPreview then
          MyReport.PreviewModal
       else
          MyReport.Print;

     finally
        free;
     end;
end;

procedure TfmARRptInvServicePerTeknisiDlg.FormShow(Sender: TObject);
begin
  inherited;
  quact.Open;
  dt1.Date := date;
  dt2.date := date;
end;

procedure TfmARRptInvServicePerTeknisiDlg.rbSelectClick(Sender: TObject);
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

procedure TfmARRptInvServicePerTeknisiDlg.bbCancelClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Teknisi';
       SQLString := ' SELECT TeknisiName as Nama_Teknisi ,TeknisiId as Kode_Teknisi'
                   +' FROM ARMsTeknisi A '
                   +' ORDER BY TeknisiID';

       if ShowModal = MrOK then
       begin
         Self.quAct.Locate('TeknisiID',Res[1],[]);
       end;
    finally
       free;
    end;
end;

end.
