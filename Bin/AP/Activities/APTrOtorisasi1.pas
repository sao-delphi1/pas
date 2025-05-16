unit APTrOtorisasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv31, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxPageControl, dxEdLib, dxButton, dxCore, dxContainer, Buttons,
  dxTL, dxDBCtrl, dxDBGrid;

type
  TfmAPTrOtorisasi = class(TfmStdLv31)
    dxDBGrid1: TdxDBGrid;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    dxDBGrid1Column3: TdxDBGridColumn;
    dxDBGrid1Column4: TdxDBGridColumn;
    dxDBGrid1Column5: TdxDBGridColumn;
    dxDBGrid1Column6: TdxDBGridColumn;
    dxDBGrid1Column8: TdxDBGridColumn;
    dxDBGrid1Column9: TdxDBGridColumn;
    dxDBGrid1Column10: TdxDBGridColumn;
    dxDBGrid2Column1: TdxDBGridColumn;
    dxDBGrid2Column2: TdxDBGridColumn;
    dxDBGrid2Column5: TdxDBGridColumn;
    dxDBGrid2Column6: TdxDBGridColumn;
    RadioGroup1: TRadioGroup;
    BtlBrg: TdxButton;
    dxDBGrid2Column8: TdxDBGridColumn;
    dxDBGrid2Column9: TdxDBGridColumn;
    quMainPurchaseID: TStringField;
    quMainSuppName: TStringField;
    quMainTgl: TStringField;
    quMainTerm: TIntegerField;
    quMainJthTempo: TStringField;
    quMainTTLPb: TBCDField;
    quMainUpdUser: TStringField;
    quMainUpdDate: TDateTimeField;
    quMainStatusOto: TStringField;
    RadioGroup2: TRadioGroup;
    quDetilItemID: TStringField;
    quDetilItemName: TStringField;
    quDetilQty: TBCDField;
    quDetilUOMID: TStringField;
    quDetilPrice: TBCDField;
    quDetilTotal: TBCDField;
    dxDBGrid3: TdxDBGrid;
    dxDBGrid3Column1: TdxDBGridColumn;
    dxDBGrid3Column2: TdxDBGridColumn;
    dxDBGrid3Column3: TdxDBGridColumn;
    dxDBGrid3Column4: TdxDBGridColumn;
    quSN: TADOQuery;
    quSNPurchaseID: TStringField;
    quSNitemID: TStringField;
    quSNSNID: TStringField;
    quSNFgJual: TStringField;
    quSNSaleID: TStringField;
    quSNPrice: TBCDField;
    quSNCustName: TStringField;
    quSNTgl: TStringField;
    quSNStatus: TIntegerField;
    quSNLKeterangan: TStringField;
    quSNFgTax: TStringField;
    dsSN: TDataSource;
    quDetilPurchaseID: TStringField;
    quSNBayar: TBCDField;
    dxDBGrid3Column5: TdxDBGridColumn;
    procedure BtlBrgClick(Sender: TObject);
    procedure bbFindClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dsDetilStateChange(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxDBGrid2DblClick(Sender: TObject);
    procedure dsSNStateChange(Sender: TObject);
    procedure quSNCalcFields(DataSet: TDataSet);
    procedure dsMainDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    Status : string;
  end;

var
  fmAPTrOtorisasi: TfmAPTrOtorisasi;

implementation

{$R *.dfm}
uses Search,ConMain,UnitGeneral,Konfirmasi, StdLv1, StdLv3, MyUnit;

procedure TfmAPTrOtorisasi.BtlBrgClick(Sender: TObject);
begin
  inherited;
  if Status = 'AP' then
  begin
    with quMain,SQL do
    begin
      Close;clear;
      Add('SELECT A.PurchaseID,B.SuppName,CONVERT(VARCHAR(10),A.TransDate,103) as Tgl,A.JatuhTempo as Term, '
         +'CONVERT(VARCHAR(10),A.TransDate+A.JatuhTempo,103) as JthTempo,A.TTLPb, '
         +'A.UpdUser,A.UpdDate, '
         +'(CASE WHEN A.FgOto=''Y'' THEN ''Approved'' ELSE ''Pending'' END) as StatusOto '
         +'FROM APTrPurchaseHd A Inner Join APMsSupplier B on A.SuppID=B.SuppID ');
      if RadioGroup1.ItemIndex=0 then
        Add('Where A.FgOto=''T'' ')
      else
        Add('Where A.FgOto=''Y'' ');
      if RadioGroup2.ItemIndex=0 then
        Add('Order By A.transDate ')
      else
        Add('Order By A.TransDate+A.jatuhTempo ');
      Open;
    end;
    quMain.Requery();
    quDetil.Requery();
    quSN.Requery();
  end else
  begin
    with quMain,SQL do
    begin
      Close;Clear;
      Add('SELECT A.POID as PurchaseID,B.CustName as SuppName,CONVERT(VARCHAR(10),A.Transdate,103) as Tgl,0 as Term,'
         +'C.SalesName as JthTempo,ISNULL(A.TTLSO,0) as TTLPb,A.UpdUser,A.UpdDate,'
         +'CASE WHEN A.Jenis=''D'' THEN ''Over Due'' ELSE ''Over Limit'' END  as StatusOto '
         +'FROM ARTrPurchaseOrderHd A INNER JOIN ARMsCustomer B ON A.CustID=B.CustID '
         +'INNER JOIN ARMsSales C ON A.SalesID=C.SalesID WHERE A.Jenis<>''Y'' '
         +'ORDER BY CONVERT(VARCHAR(8),A.Transdate,112),A.POID');
      Open;
    end;
    with quDetil,SQL do
    begin
      Close;Clear;
      Add('SELECT A.POID as PurchaseId,A.ItemID,B.ItemName,CAST (A.Qty as Numeric(18,4)) as Qty,'
         +'B.UOMID,A.Price,A.Qty*A.Price as Total '
         +'FROM ARTrPurchaseOrderDt A INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
         +'WHERE A.POID='''+quMainPurchaseID.AsString+''' '
         +'ORDER BY A.ItemID');
      Open;
    end;
  end;
end;

procedure TfmAPTrOtorisasi.bbFindClick(Sender: TObject);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     if Status = 'AP' then
     begin
       Title := 'INVOICE';
       SQLString := 'select A.PurchaseID,B.SuppName as Supplier,CONVERT(VARCHAR(10),A.TransDate,103) as Tgl,A.JatuhTempo as Term, '
                   +'CONVERT(VARCHAR(10),A.TransDate+A.JatuhTempo,103) as JthTempo,A.TTLPb, '
                   +'A.UpdUser,A.UpdDate, '
                   +'(CASE WHEN A.FgOto=''Y'' THEN ''Approved'' ELSE ''Pending'' END) as StatusOto '
                   +'from APTrPurchaseHd A Inner Join APMsSupplier B on A.SuppID=B.SuppID ';
       if RadioGroup1.ItemIndex=0 then
         SQLString := SQLString + 'Where A.FgOto=''T'' '
       else
         SQLString := SQLString + 'Where A.FgOto=''Y'' ';
       if RadioGroup2.ItemIndex=0 then
         SQLString := SQLString + 'Order By A.transDate '
       else
         SQLString := SQLString + 'Order By A.TransDate+A.jatuhTempo ';
     end else
     begin
       Title := 'Sales Order';
       SQLString := 'SELECT A.POID,B.CustName as Pelanggan,CONVERT(VARCHAR(10),A.TransDate,103) as Tgl,ISNULL(A.TTLSO,0) as Jumlah,'
                   +'(CASE WHEN A.Jenis=''D'' THEN ''Over Due'' ELSE ''Over Limit'' END) as Keterangan '
                   +'FROM ARTrPurchaseOrderHd A INNER JOIN ARMsCustomer B on A.CustID=B.CustID '
                   +'WHERE A.Jenis<>''Y'' ORDER BY CONVERT(VARCHAR(8),A.Transdate,112),A.POID ';
     end;
     if ShowModal = MrOK then
     begin
       quMain.Locate('PurchaseID',Res[0],[]);
     end;
  finally
     free;
  end;
end;

procedure TfmAPTrOtorisasi.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmAPTrOtorisasi.FormShow(Sender: TObject);
begin
  inherited;
  quSN.Active := True;
  RadioGroup1.Left := 24; RadioGroup1.Top := 8;
  RadioGroup2.Left := 24; RadioGroup2.Top := 152;
  BtlBrg.Left := 24; BtlBrg.Top := 103;
  BtlBrgClick(BtlBrg);
  if Status = 'AP' then
  begin
    dxDBGrid3.Visible := True;
    Caption := 'Ototisasi Account Payable';
    RadioGroup2.Visible := True; BtlBrg.Visible := True;
  end else
  begin
    dxDBGrid3.Visible := False; ClientHeight := 435;
    Caption := 'Ototisasi Sales Order';
    RadioGroup2.Visible := False; BtlBrg.Visible := False;
    RadioGroup1.Visible := False; dxDBGrid1Column8.Width := 210;
    dxDBGrid1Column5.Visible := False; dxDBGrid1Column10.Visible := False;
    dxDBGrid1Column3.Caption := 'Pelanggan';
    dxDBGrid1Column6.Caption := 'Actor';
    dxDBGrid1Column8.Caption := 'Keterangan';
  end;
end;

procedure TfmAPTrOtorisasi.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid1Column1,TRUE);
  SetReadOnly(dxDBGrid1Column2,TRUE);
  SetReadOnly(dxDBGrid1Column3,TRUE);
  SetReadOnly(dxDBGrid1Column4,TRUE);
  SetReadOnly(dxDBGrid1Column5,TRUE);
  SetReadOnly(dxDBGrid1Column6,TRUE);
  //SetReadOnly(dxDBGrid1Column7,TRUE);
  SetReadOnly(dxDBGrid1Column8,TRUE);
  SetReadOnly(dxDBGrid1Column9,TRUE);
  SetReadOnly(dxDBGrid1Column10,TRUE);
end;

procedure TfmAPTrOtorisasi.dsDetilStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid2Column1,TRUE);
  SetReadOnly(dxDBGrid2Column2,TRUE);
  //SetReadOnly(dxDBGrid2Column3,TRUE);
  //SetReadOnly(dxDBGrid2Column4,TRUE);
  SetReadOnly(dxDBGrid2Column5,TRUE);
  SetReadOnly(dxDBGrid2Column6,TRUE);
  //SetReadOnly(dxDBGrid2Column7,TRUE);
  SetReadOnly(dxDBGrid2Column8,TRUE);
  SetReadOnly(dxDBGrid2Column9,TRUE);
end;

procedure TfmAPTrOtorisasi.dxDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  with TfmKonfirmasi.Create (Application) do
   try
     FgOto := 'Head';
     FgStatus := Status;
     Label2.Caption:=Self.quMainPurchaseID.AsString;
     Label1.Visible:=False;
     dxButton1.Visible := False;
     dxButton2.Visible := False;
     ShowModal;
     quMain.Requery();
   finally
    Free;
   end;
end;

procedure TfmAPTrOtorisasi.dxDBGrid2DblClick(Sender: TObject);
begin
  inherited;
  {with TfmKonfirmasi.Create (Application) do
   try
     FgOto := 'Detil';
     Label2.Caption:=Self.quMainPOID.AsString;
     Label1.Caption:=Self.quDetilPart_Number.AsString;
     dxButton1.Visible := False;
     dxButton2.Visible := TRUE;
     dxButton3.Caption := 'Void';
     dxButton4.Caption := 'OK';
     jumlah := quDetilJumlah.AsCurrency;
     ShowModal;
     quDetil.Requery();
   finally
    Free;
   end;   }
end;

procedure TfmAPTrOtorisasi.dsSNStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dxDBGrid3Column3,TRUE);
  SetReadOnly(dxDBGrid3Column4,TRUE);
  SetReadOnly(dxDBGrid3Column5,TRUE);
end;

procedure TfmAPTrOtorisasi.quSNCalcFields(DataSet: TDataSet);
begin
  inherited;
  if TRIM(quSNSaleID.AsString) <> '-' then
    quSNLKeterangan.AsString := 'Terjual ke ' + quSNCustName.ASString + ' dengan harga ' + FormatRptKurung(quSNPrice.AsString) + ' nota no ' + quSNSaleID.aSString
  else
    quSNLKeterangan.ASString := 'Stock';
end;

procedure TfmAPTrOtorisasi.dsMainDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if Status <> 'AP' then
  begin
    with quDetil,SQL do
    begin
      Close;Clear;
      Add('SELECT A.POID as PurchaseId,A.ItemID,B.ItemName,CAST (A.Qty as Numeric(18,4)) as Qty,'
         +'B.UOMID,A.Price,A.Qty*A.Price as Total '
         +'FROM ARTrPurchaseOrderDt A INNER JOIN INMsItem B ON A.ItemID=B.ItemID '
         +'WHERE A.POID='''+quMainPurchaseID.AsString+''' '
         +'ORDER BY A.ItemID');
      Open;
    end;
  end;
end;

end.
