unit ARQRRptStruck;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RptLv0, QRCtrls, QuickRpt, DB, ADODB, StdCtrls, ExtCtrls;

type
  TfmARRptStruck = class(TfmRptLv0)
    QRLabel22: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText6: TQRDBText;
    bnd001: TQRSubDetail;
    qu002: TADOQuery;
    QRDBText1: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRLabel2: TQRLabel;
    ChildBand3: TQRChildBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRExpr1: TQRExpr;
    QRDBText4: TQRDBText;
    ChildBand5: TQRChildBand;
    QRLabel7: TQRLabel;
    ChildBand6: TQRChildBand;
    ChildBand2: TQRChildBand;
    ChildBand8: TQRChildBand;
    QRLabel14: TQRLabel;
    lbST: TQRLabel;
    ChildBand9: TQRChildBand;
    QRLabel9: TQRLabel;
    lbTotal: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel16: TQRLabel;
    lbdiskon: TQRLabel;
    QRShape2: TQRShape;
    QRLabel21: TQRLabel;
    ChildBand7: TQRChildBand;
    ChildBand10: TQRChildBand;
    ChildBand11: TQRChildBand;
    QRLabel8: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    ChildBand12: TQRChildBand;
    QRLabel28: TQRLabel;
    QRShape1: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape3: TQRShape;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRShape4: TQRShape;
    QRLabel38: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRChildBand1: TQRChildBand;
    QRLabel43: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel5: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure ChildBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand7BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSysData2Print(sender: TObject; var Value: String);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand9BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand10BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand11BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Satuan  : boolean;
    T,C,D,K,Ch   : Currency;
    BnkD,BnkC,NmD,NmC : string;
  end;

var
  fmARRptStruck: TfmARRptStruck;

implementation

uses UnitGeneral, MyUnit;

{$R *.dfm}

procedure TfmARRptStruck.QRDBText3Print(sender: TObject;
  var Value: String);
begin
  inherited;
  Value := FormatCurr('#,0',qu002.Fieldbyname('Price').AsCurrency);
end;

procedure TfmARRptStruck.QRExpr1Print(sender: TObject; var Value: String);
begin
  inherited;
  Value := FormatCurr('#,0',strtocurr(value));
end;

procedure TfmARRptStruck.ChildBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PrintBand := not Satuan ;
end;

procedure TfmARRptStruck.ChildBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   PrintBand := not Satuan ;
end;

procedure TfmARRptStruck.ChildBand7BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PrintBand := D <> 0;
  QRLabel26.Caption := FormatCurr('#,0',D);
  QRLabel34.Caption := BnkD;
  QRLabel35.Caption := NmD;
end;

procedure TfmARRptStruck.QRSysData2Print(sender: TObject;
  var Value: String);
begin
  inherited;
  value := FormatDateTime('dd MMM yyyy',strtodate(value));
end;

procedure TfmARRptStruck.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PrintBand := lbdiskon.Caption <> '0';
end;

procedure TfmARRptStruck.ChildBand9BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PrintBand := T <> 0;
  QRLabel24.Caption := FormatCurr('#,0',T);
end;

procedure TfmARRptStruck.ChildBand10BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   PrintBand := C <> 0;
   QRLabel27.Caption := FormatCurr('#,0',C);
   QRLabel15.Caption := FormatCurr('#,0',Ch);
   QRLabel37.Caption := BnkC;
   QRLabel36.Caption := NmC;
end;

procedure TfmARRptStruck.ChildBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
//  ShowMessage('aa');
end;

procedure TfmARRptStruck.ChildBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
    PrintBand := lbdiskon.Caption <> '0';
end;

procedure TfmARRptStruck.ChildBand11BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PrintBand := K <> 0;
  QRLabel29.Caption := FormatCurr('#,0',K);
end;

end.
