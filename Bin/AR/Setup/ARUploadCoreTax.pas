unit ARUploadCoreTax;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv2, ActnList, DB, dxExEdtr, dxCntner, ADODB, StdCtrls,
  ExtCtrls, dxCore, dxContainer, Buttons, dxEditor, dxEdLib, dxTL,
  dxDBCtrl, dxDBGrid, MSXML, dxButton;

type
  TfmARUploadCoreTax = class(TfmStdLv2)
    quMaintransdate: TDateTimeField;
    quMainsaleid: TStringField;
    quMaincustname: TStringField;
    quMaintotal: TBCDField;
    quMainnpwp: TStringField;
    grbKartu: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    bbRefresh: TBitBtn;
    dt1: TdxDateEdit;
    dt2: TdxDateEdit;
    RadioGroup1: TRadioGroup;
    quMainStatusU: TStringField;
    dgrReport: TdxDBGrid;
    dgrReportColumn1: TdxDBGridColumn;
    dgrReportColumn2: TdxDBGridColumn;
    dgrReportColumn3: TdxDBGridColumn;
    dgrReportColumn4: TdxDBGridColumn;
    dgrReportColumn5: TdxDBGridColumn;
    dgrReportColumn6: TdxDBGridColumn;
    Panel1: TPanel;
    rbselect2: TRadioButton;
    rbAll2: TRadioButton;
    dxButton1: TdxButton;
    saveDlg: TSaveDialog;
    quHead: TADOQuery;
    quTail: TADOQuery;
    quMainFgUpload: TStringField;
    quUpdate: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbRefreshClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure rbAll2Click(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dgrReportDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshData;
  public
    { Public declarations }
  end;

var
  fmARUploadCoreTax: TfmARUploadCoreTax;

implementation

{$R *.dfm}

Uses MyUnit,UnitGeneral, StdLv0;

procedure TfmARUploadCoreTax.FormCreate(Sender: TObject);
begin
  inherited;
  UsePeriod := False;
end;

procedure TfmARUploadCoreTax.FormShow(Sender: TObject);
begin
  inherited;
  dt1.Date := Date;
  dt2.Date := Date;
  quMain.Active := TRUE;

  RefreshData;
end;

procedure TfmARUploadCoreTax.RefreshData;
begin
  inherited;
  with quMain,SQL do
  begin
    Close;Clear;
    Add('SELECT a.transdate,a.saleid,b.custname,a.ttlpj as total,isnull(b.email,'''') as npwp, '
       +'case when isnull(a.fgupload,''Y'')=''Y'' then ''Sudah Upload'' else ''Belum Upload'' end as StatusU,a.FGUpload '
       +'from ARTrPenjualanHd a inner join ARMsCustomer b on a.custid=b.custid '
       +'WHERE convert(varchar(10),a.transdate,112) between '''+FormatDateTime('yyyymmdd',dt1.date)+''' '
       +'and '''+FormatDateTime('yyyymmdd',dt2.date)+''' ');
    if RadioGroup1.ItemIndex=1 then
    Add('AND ISNULL(A.FgUpload,''Y'')=''Y'' ');
    if RadioGroup1.ItemIndex=2 then
    Add('AND ISNULL(A.FgUpload,''Y'')=''T'' ');
    Add('Order by a.transdate ');
    Open;
  end;
end;

procedure TfmARUploadCoreTax.bbRefreshClick(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfmARUploadCoreTax.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfmARUploadCoreTax.rbAll2Click(Sender: TObject);
begin
  inherited;
  if Sender=rbAll2 then
  begin
     dgrReport.OptionsBehavior := dgrReport.OptionsBehavior - [edgoMultiSelect];
  end else
  if Sender=rbSelect2 then
  begin
     dgrReport.OptionsBehavior := dgrReport.OptionsBehavior + [edgoMultiSelect];
     if dgrReport.FocusedNode <> nil then
       dgrReport.FocusedNode.Selected := TRUE;
  end;
end;

procedure TfmARUploadCoreTax.dsMainStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly2(dgrReportColumn1,TRUE);
  SetReadOnly2(dgrReportColumn2,TRUE);
  SetReadOnly2(dgrReportColumn3,TRUE);
  SetReadOnly2(dgrReportColumn4,TRUE);
  SetReadOnly2(dgrReportColumn5,TRUE);
  SetReadOnly2(dgrReportColumn6,TRUE);
end;

procedure TfmARUploadCoreTax.dxButton1Click(Sender: TObject);
var
  XMLDoc: IXMLDOMDocument;
  RootNode, TaxInvoiceBulkNode, ListOfTaxInvoiceNode, TaxInvoiceNode, GoodServiceNode: IXMLDOMElement;
  ListOfGoodServiceNode: IXMLDOMElement;
  NPWPPenjual,KodeNITKU : string;
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('select NPWP,KodeNITKU FROM SAMsCompany');
    Open;
  end;
  NPWPPenjual := quAct.FieldByName('NPWP').AsString;
  KodeNITKU := quAct.FieldByName('KodeNITKU').AsString;

  if saveDlg.Execute then
  begin
    // Buat dokumen XML baru
    XMLDoc := CoDOMDocument.Create;
    XMLDoc.async := False;
    XMLDoc.validateOnParse := True;
    XMLDoc.appendChild(XMLDoc.createProcessingInstruction('xml', 'version="1.0" encoding="utf-8"'));

    // Tambahkan root element
    RootNode := XMLDoc.createElement('TaxInvoiceBulk');
    RootNode.setAttribute('xmlns:xsi', 'http://www.w3.org/2001/XMLSchema-instance');
    RootNode.setAttribute('xsi:noNamespaceSchemaLocation', 'TaxInvoice.xsd');
    XMLDoc.appendChild(RootNode);

    // Tambahkan elemen <TIN>
    TaxInvoiceBulkNode := XMLDoc.createElement('TIN');
    TaxInvoiceBulkNode.text := NPWPPenjual;
    RootNode.appendChild(TaxInvoiceBulkNode);

    // Tambahkan elemen <ListOfTaxInvoice>
    ListOfTaxInvoiceNode := XMLDoc.createElement('ListOfTaxInvoice');
    RootNode.appendChild(ListOfTaxInvoiceNode);

    with quHead,SQL do
    begin
      Close;Clear;
      Add(' select convert(varchar(10),a.transdate,120) as tanggal,b.KodeFP,a.saleid,b.Email as NPWP, '
         +' b.custname,b.Address as alamatcust,b.email+a.KodeNITKU as KodeNITKU '
         +' from ARTrPenjualanHd a '
         +' inner join ARMsCustomer b on a.custid=b.custid '
         +' WHERE convert(varchar(10),a.transdate,112) between '''+FormatDateTime('yyyymmdd',dt1.date)+''' '
         +' and '''+FormatDateTime('yyyymmdd',dt2.date)+''' '
         +' AND ISNULL(A.FgUpload,''Y'')=''T'' ');
      if rbselect2.Checked then
      Add(' AND A.SaleID IN '+SelGrid(quMain,dgrReport,'SaleID'));
      Open;
    end;

    while not quHead.Eof do
    begin

      // Tambahkan elemen <TaxInvoice>
      TaxInvoiceNode := XMLDoc.createElement('TaxInvoice');
      ListOfTaxInvoiceNode.appendChild(TaxInvoiceNode);

      // Tambahkan elemen-elemen di dalam <TaxInvoice>
      with TaxInvoiceNode do
      begin
        appendChild(XMLDoc.createElement('TaxInvoiceDate')).text := quHead.FieldByName('tanggal').AsString;
        appendChild(XMLDoc.createElement('TaxInvoiceOpt')).text := 'Normal';
        appendChild(XMLDoc.createElement('TrxCode')).text := quHead.FieldByName('KodeFP').AsString;
        appendChild(XMLDoc.createElement('AddInfo'));
        appendChild(XMLDoc.createElement('CustomDoc'));
        appendChild(XMLDoc.createElement('CustomDocMonthYear'));
        appendChild(XMLDoc.createElement('RefDesc')).text := quHead.FieldByName('SaleID').AsString;
        appendChild(XMLDoc.createElement('FacilityStamp'));
        appendChild(XMLDoc.createElement('SellerIDTKU')).text := NPWPPenjual+KodeNITKU;
        appendChild(XMLDoc.createElement('BuyerTin')).text := quHead.FieldByName('NPWP').AsString;
        appendChild(XMLDoc.createElement('BuyerDocument')).text := 'TIN';
        appendChild(XMLDoc.createElement('BuyerCountry')).text := 'IDN';
        appendChild(XMLDoc.createElement('BuyerDocumentNumber')).text := '0';
        appendChild(XMLDoc.createElement('BuyerName')).text := quHead.FieldByName('custname').AsString;
        appendChild(XMLDoc.createElement('BuyerAdress')).text := quHead.FieldByName('alamatcust').AsString;
        appendChild(XMLDoc.createElement('BuyerEmail'));
        appendChild(XMLDoc.createElement('BuyerIDTKU')).text := quHead.FieldByName('kodenitku').AsString;
      end;

      // Tambahkan <ListOfGoodService>
      ListOfGoodServiceNode := XMLDoc.createElement('ListOfGoodService');
      TaxInvoiceNode.appendChild(ListOfGoodServiceNode);

      with quTail,SQL do
      begin
        Close;Clear;
        Add(' select b.FgBarang,b.KodeJenisBarang,a.Note as ItemName,b.KodeSatuan, '
           +' isnull(ROUND(a.price+a.komisi,2),0) as price,'
           +' isnull(ROUND(a.qty,2),0) as qty, '
           +' isnull(ROUND(ROUND(a.price+a.komisi,2)*ROUND(a.qty,2),2),0) as total,'
           +' isnull(ROUND(ROUND(ROUND(a.price+a.komisi,2)*ROUND(a.qty,2),2)/12*C.PPNFee,2),0) as dpp, '
           +' isnull(ROUND(ROUND(ROUND(a.price+a.komisi,2)*ROUND(a.qty,2),2)*C.PPNFee*0.01,2),0) as totaltax '
           +' from ARTrPenjualanDt a '
           +' inner join inmsitem b on a.itemid=b.itemid '
           +' inner join ARTrPenjualanHd c on a.saleid=c.saleid '
           +' where a.saleid='''+quHead.FieldByName('SaleID').AsString+''' ');
        Open;
      end;

      while not quTail.Eof do
      begin
        // Tambahkan <GoodService>
        GoodServiceNode := XMLDoc.createElement('GoodService');
        with GoodServiceNode do
        begin
          appendChild(XMLDoc.createElement('Opt')).text := quTail.FieldByName('FgBarang').AsString;
          appendChild(XMLDoc.createElement('Code')).text := quTail.FieldByName('KodeJenisBarang').AsString;
          appendChild(XMLDoc.createElement('Name')).text := quTail.FieldByName('ItemName').AsString;
          appendChild(XMLDoc.createElement('Unit')).text := quTail.FieldByName('KodeSatuan').AsString;
          appendChild(XMLDoc.createElement('Price')).text := quTail.FieldByName('Price').AsString;
          appendChild(XMLDoc.createElement('Qty')).text := quTail.FieldByName('Qty').AsString;
          appendChild(XMLDoc.createElement('TotalDiscount')).text := '0';
          appendChild(XMLDoc.createElement('TaxBase')).text := quTail.FieldByName('total').AsString;
          appendChild(XMLDoc.createElement('OtherTaxBase')).text := quTail.FieldByName('dpp').AsString;
          appendChild(XMLDoc.createElement('VATRate')).text := '12';
          appendChild(XMLDoc.createElement('VAT')).text := quTail.FieldByName('totaltax').AsString;
          appendChild(XMLDoc.createElement('STLGRate')).text := '0';
          appendChild(XMLDoc.createElement('STLG')).text := '0';
        end;

        ListOfGoodServiceNode.appendChild(GoodServiceNode);

        quTail.Next;
      end;

      with quUpdate,SQL do
      begin
        Close;Clear;
        Add(' Update ARTrPenjualanHD Set FgUpload=''Y'' ');
        Add(' Where SaleID='''+quHead.FieldByName('SaleID').AsString+''' ');
        ExecSQL;
      end;

      quHead.Next;
    end;
    XMLDoc.save(saveDlg.FileName);

    ShowMessage('File XML berhasil disimpan: ' + saveDlg.FileName);
  end else
  begin
    ShowMessage('Penyimpanan file dibatalkan.');
  end;
end;

procedure TfmARUploadCoreTax.dgrReportDblClick(Sender: TObject);
var Nota : string;
begin
  inherited;
  Nota := quMainsaleid.AsString;

  if quMainFgUpload.AsString='Y' then
  begin
    if MessageDlg('Ubah Menjadi Belum Upload ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add(' Update ARTrPenjualanHD Set FgUpload=''T'' Where SaleID='''+Nota+''' ');
        ExecSQL;
      end;
    end;
  end else
  begin
    if MessageDlg('Ubah Menjadi Sudah Upload ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      with quAct,SQL do
      begin
        Close;Clear;
        Add(' Update ARTrPenjualanHD Set FgUpload=''Y'' Where SaleID='''+Nota+''' ');
        ExecSQL;
      end;
    end;
  end;

  RefreshData;
end;

end.
