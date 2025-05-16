{
  10 - Setup Acc
  11 - General Ledger
  12 - Account Payable
  13 - Account Receiveable
  14 - Service
  15 - Inventory
  16 - Cash Flow
  17 - Setting
}

unit Utama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ExtCtrls, dxsbar, Menus, jpeg, dxExEdtr, dxCntner,
  dxTL, dxDBCtrl, dxDBTL, DB, ADODB, dxCore, dxContainer, dxButton, dxBar, StrUtils,
  Buttons, ActnList, StdCtrls, ComCtrls;

type
  TfmUtama = class(TForm)
    SBMenu: TdxSideBar;
    MenuList: TImageList;
    quMenu: TADOQuery;
    dsMenu: TDataSource;
    quMenuKdMenu: TIntegerField;
    quMenuNmMenu: TStringField;
    quMenuParent: TIntegerField;
    imMenu: TImageList;
    paMenu: TdxContainer;
    TLMenu: TdxDBTreeList;
    TLMenuNmMenu: TdxDBTreeListColumn;
    btnExpand: TdxButton;
    TLMenuKdMenu: TdxDBTreeListColumn;
    paToolbar: TdxContainer;
    dxContainer1: TdxContainer;
    quMenuFormName: TStringField;
    mmMenu: TMainMenu;
    miApplication: TMenuItem;
    miLogout: TMenuItem;
    miExit: TMenuItem;
    miModule: TMenuItem;
    miSetupAcc: TMenuItem;
    miGL: TMenuItem;
    miAP: TMenuItem;
    miInv: TMenuItem;
    bbExit: TdxButton;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    bbJual: TdxButton;                                                                                                                                 
    bbBackUp: TdxButton;
    Action8: TAction;
    Action9: TAction;
    quAct: TADOQuery;
    StBar: TStatusBar;
    bbUtility: TdxButton;
    Action10: TAction;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    procedure SBMenuItemClick(Sender: TObject; Item: TdxSideBarItem);
    procedure FormShow(Sender: TObject);
    procedure TLMenuGetStateIndex(Sender: TObject; Node: TdxTreeListNode;
      var Index: Integer);
    procedure btnExpandClick(Sender: TObject);
    procedure TLMenuCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure sbExitClick(Sender: TObject);
    procedure TLMenuDblClick(Sender: TObject);
    procedure miExitClick(Sender: TObject);
    procedure miLogoutClick(Sender: TObject);
    procedure bbExitClick(Sender: TObject);
    procedure SBMenuChangeActiveGroup(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
    procedure TLMenuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbBackUpClick(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
    procedure Action9Execute(Sender: TObject);
    procedure bbUtilityClick(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure Action10Execute(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
  private
    { Private declarations }
    Expanded : Boolean;

    Procedure CallModule10;
    Procedure CallModule11;
    Procedure CallModule12;
    Procedure CallModule13;
    Procedure CallModule14;
    Procedure CallModule15;
    Procedure CallModule16;
    Procedure CallModule17;


    Procedure MakeFormDlg(var ref; FormClass:TFormClass);
    function CompareFormName(Str1, Str2 : String) : boolean;
  public
    { Public declarations }

  end;

var
  fmUtama: TfmUtama;

implementation

uses StdLv3, StdLv31,  SetSecurityAccess,ConMain,StdLv1,RptLv0,PeriodDlg, MyUnit,
  APMsSupplier, ARMsPelanggan, ARMsSales, INMsUOM, INMsProduct, INMsGroup,
  INMsItem, SATrRate, INMsWareHouse, INTrAdjustment, INTransfer,
  ARTrPenjualanIDR, ARTrPiutangIDR, ARTrReturPenjualan, APPembayaranHutangIDR,
  APRetur, APPenggantiRetur, SAMsCompany, SetWareHouse, ARTrPengReturPenj,
  RptINStokDlg, INRptHistoryStokDlg, SAMsValuta, PassChange, INRpMsItemDlg, INRpPriceListDlg, INRptAdjusmentDlg,
  INRptTransferBarangDlg, APRptRtrBlmGntDlg, ARRptRtrBlmGntDlg,
  APRptReturDlg, ARRptReturDlg, APRptPembPerTglDlg,
  APRptPembPerBrgDlg, APRptPembPerSuppDlg, ARRptPenjPerTglDlg,
  ARRptPenjPerBrgDlg, ARRptPenjPerCustDlg, RptAPKartuHutangDlg,
  RptAPKartuHutangDetilDlg, ARRptKartuPiutangDlg, ARRptKartuPiutangDetilDlg,
  ARRptKartuTunggakPiutangDlg,
  CFMsGroupRek, CFMsRekening, CFMsBank, CFTrKKBB, CFRptKeuanganDlg,
  CFRptKeuanganDetDlg, CFRptKeuanganBankDlg,
  CFRptKeuanganDetBankDlg, ARRptPenjPerProductDlg,
  APPurchaseOrder, APRptKartuTunggakanHutangDlg,
  BackUp, inifiles, aprptrekaphutang, APRptPenjPerTanggalNew,
  CFRptBiayaDlg, AuditData, ARRptSNReport,
  CFTrTransferBalance, INRptHPPDlg, ARMsKodeSeriPajak, ARTrPenawaran,
  APKonsinyasi, ARTrKonTransBrg, ARTRSales, TrUpload, ARTrPerforma,
  RptPenjualan, APTrOtorisasi, CheckSN, ARUploadFK, ARRptRekapSO,
  APRptSisaTerimaBarangDlg, APChangeSN, CFRptNetCash, ARRptPPH,
  ARRptBuktiPotong, ARRptSisaTransferBarangDlg, ARRptInvBlmSN,
  ARUploadCoreTax;

{$R *.dfm}

function TfmUtama.CompareFormName(Str1, Str2: String): boolean;
begin
   Result := UpperCase(Str1)=UpperCase(Str2);
end;

procedure TfmUtama.MakeFormDlg(var ref; FormClass:TFormClass);
begin
  Application.CreateForm(FormClass,ref);
  TForm(ref).Tag := quMenuKdMenu.Value;
  TForm(ref).ShowModal;
  TForm(ref).Free;
end;

procedure TfmUtama.SBMenuItemClick(Sender: TObject; Item: TdxSideBarItem);
begin
  TLMenu.Bands[0].Caption := 'MENU '+Item.Caption;
  with quMenu,SQL do
  begin
     Close; Clear;
     Add(' SELECT A.*'
        +' FROM SysMenu A'
        +' INNER JOIN SysMsMenuGroupTrustee B ON A.KdMenu = B.KdMenu'
        +' INNER JOIN SysMsUser C ON B.KdGroup = C.KdGroup'
        +' WHERE A.Parent <> 0 AND A.FgActive=''Y'''
        +' AND C.UserId='+QuotedStr(dmMain.UserId)
        +' AND LEFT(CONVERT(VARCHAR(10), A.KdMenu),2)=:Module'
        +' ORDER BY A.KdMenu');
     Parameters.ParamByName('Module').Value := Item.Tag;
     Open;
  end;
  TLMenu.FullExpand;
  Expanded := True;
end;

procedure TfmUtama.FormShow(Sender: TObject);
Var MyIniFile : TIniFile;
    Client,Server : String;
begin
  Caption := 'Nama Perusahaan versi : '+version;
  MyIniFile  := TIniFile.Create(ExtractFilePath(Application.ExeName)+'Setting.ini');
  Client := Decrypt(MyIniFile.ReadString('Server','07',''));
  Server := ServerPath;
//  Server := Decrypt(MyIniFile.ReadString('Server','02',''));
  quMenu.Active := TRUE;
  SBMenu.SelectedItem := SBMenu.ActiveGroup.Items[0];
  SBMenuItemClick(SBMenu,SBMenu.SelectedItem);
  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT UserID,KdGroup,ISNULL(FgGantiBagasi,''T'') as ganti FROM SysMsUser WHERE UserID='''+dmMain.UserId+''' ');
    Open;
  end;
  GroupUser := quAct.FieldByName('KdGroup').AsString;
  GantiBagasi := quAct.FieldByName('ganti').AsString;
  with StBar.Panels do
  begin
    Items[0].Text := 'User : '+ dmMain.UserId;
    Items[1].Text := 'Group User : '+ GroupUser;
    Items[2].Text := 'SERVER : '+ Server;
    Items[3].Text := 'Database : '+ dbName;
    Items[4].Text := 'Copyright Software by Anugrah Solusindo © 2006';
  end;
  if Client = 'CLIENT' then bbBackUp.Enabled := False;

  with quAct,SQL do
  begin
    Close;Clear;
    Add('SELECT FgButton From SaMsSet ');
    Open;
  end;
  if quAct.FieldByName('FgButton').AsString='P' then
  dxButton1.Visible := False
  else
  dxButton1.Visible := True;
end;

procedure TfmUtama.TLMenuGetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
  if Node.Selected then
  begin
     Index := 1;
  end
  else
  begin
     Index := 0;
  end;
end;

procedure TfmUtama.btnExpandClick(Sender: TObject);
begin
   if Expanded then
   begin
      TLMenu.FullCollapse;
      Expanded := False;
   end
   else
   begin
      TLMenu.FullExpand;
      Expanded := True;
   end;
end;

procedure TfmUtama.TLMenuCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
var Temp : String;
begin
  Temp := ANode.Values[TLMenuKdMenu.Index];
  if NOT AFocused then
  begin
     if (Temp[3] = '1')OR(Temp[3] = '3') then
        AFont.Color := clBlack
     else
        AFont.Color := clBlue;
  end else
  begin
     AColor      := clYellow;
     AFont.Color := clRed;
  end;
end;

procedure TfmUtama.sbExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfmUtama.TLMenuDblClick(Sender: TObject);
var Module : String;
begin
   paMenu.Visible := FALSE;
   SBMenu.Visible := FALSE;
   Module := LeftStr(quMenuKdMenu.AsString,2);
   if Module = '10' then
      CallModule10
   else
   if Module = '11' then
      CallModule11
   else
   if Module = '12' then
      CallModule12
   else
   if Module = '13' then
      CallModule13
   else
   if Module = '14' then
      CallModule14
   else
   if Module = '15' then
      CallModule15
   else
   if Module = '16' then
      CallModule16
   else
   if Module = '17' then
      CallModule17
  ;
   paMenu.Visible := TRUE;
   SBMenu.Visible := TRUE;
end;

procedure TfmUtama.CallModule11;
begin

End;

procedure TfmUtama.CallModule13;
begin

   if CompareFormName(quMenuFormName.Value,'ARMSPelanggan') then
      MakeFormDlg(fmARMsPelanggan,TfmARMsPelanggan)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptPPH') then
       MakeFormDlg(fmARRptPPH,TfmARRptPPH)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptBuktiPotong') then
       MakeFormDlg(fmARRptBuktiPotong,TfmARRptBuktiPotong)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptSONonInvoiceDlg') then
    begin
      with TfmARRptSisaTransferBarangDlg.Create (Application) do
      try
        lStatus := 'SO';
        ShowModal;
      finally
        Free;
      end;
    end else
    if CompareFormName(quMenuFormName.Value,'ARRptInvBlmSN') then
      MakeFormDlg(fmARRptInvBlmSN,TfmARRptInvBlmSN)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptSNReport') then
       MakeFormDlg(fmARRptSNReport,TfmARRptSNReport)
   else
   if CompareFormName(quMenuFormName.Value,'ARMSSales') then
      MakeFormDlg(fmARMsSales,TfmARMsSales)
   else
    if CompareFormName(quMenuFormName.Value,'ARTrPenawaran') then
    begin
      with TfmARTrPenawaran.Create (Application) do
      try
        Flag := 'A';
        ShowModal;
      finally
        Free;
      end;
    end
    else
    if CompareFormName(quMenuFormName.Value,'ARRptRekapSO') then
       MakeFormDlg(fmARRptRekapSODlg,TfmARRptRekapSODlg)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptPenjPerTglDlgN') then
    Begin
     with TfmAPRptPenjPerTanggalNew.Create (Application) do
      try
        FgForm := 'AR';
        ShowModal;
      finally
       Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'ARRptKartuPiutangDlgN') then
    Begin
     with TfmAPRptRekapHutang.Create (Application) do
      try
        FgForm := 'AR';
        ShowModal;
      finally
       Free;
      end;
    End else
   if CompareFormName(quMenuFormName.Value,'ARMsKodeSeriPajak') then
      MakeFormDlg(fmARMsKdSeriPajak,TfmARMsKdSeriPajak)
   else
   if CompareFormName(quMenuFormName.Value,'ARTrSales') then
      MakeFormDlg(fmARTrSales,TfmARTrSales)
   else
   if CompareFormName(quMenuFormName.Value,'ARTrInvDPIDR') then
    begin
      with TfmARTrPenjualanIDR.Create (Application) do
      try
        StatusForm := 'DP';
        ShowModal;
      finally
        Free;
      end;
    end
    else
   if CompareFormName(quMenuFormName.Value,'ARTrPenIDR') then
    begin
      with TfmARTrPenjualanIDR.Create (Application) do
      try
        StatusForm := 'AR';
        ShowModal;
      finally
        Free;
      end;
    end
    else
    if CompareFormName(quMenuFormName.Value,'ARTrPenIDRK') then
    begin
      with TfmARTrPenjualanIDR.Create (Application) do
      try
        StatusForm := 'KY';
        ShowModal;
      finally
        Free;
      end;
    end
    else
    if CompareFormName(quMenuFormName.Value,'ARTrPiutangKas') then
    begin
      with TfmCFTrKKBB.Create (Application) do
      try
        StatusKKBB := 'ARK';
        ShowModal;
      finally
        Free;
      end;
    end
    else
    if CompareFormName(quMenuFormName.Value,'ARTrPiutangBank') then
    begin
      with TfmCFTrKKBB.Create (Application) do
      try
        StatusKKBB := 'ARB';
        ShowModal;
      finally
        Free;
      end;
    end
    else
    if CompareFormName(quMenuFormName.Value,'ARTrPiutangCek') then
    begin
      with TfmCFTrKKBB.Create (Application) do
      try
        StatusKKBB := 'ARC';
        ShowModal;
      finally
        Free;
      end;
    end
    else
   if CompareFormName(quMenuFormName.Value,'ARTrReturPenjualanR') then
   begin
     with TfmARTrReturPenjualan.Create (Application) do
      try
        StatusRetur := 'R';
        ShowModal;
      finally
       Free;
      end;
   end
   else
   if CompareFormName(quMenuFormName.Value,'ARTrReturPenjualanB') then
   begin
     with TfmARTrReturPenjualan.Create (Application) do
      try
        StatusRetur := 'B';
        ShowModal;
      finally
       Free;
      end;
   end
   else
  if CompareFormName(quMenuFormName.Value,'Otorisasi') then
   begin
     with TfmAPTrotorisasi.Create (Application) do
      try
        Status := 'SO';
        ShowModal;
      finally
       Free;
      end;
   end
  else
   if CompareFormName(quMenuFormName.Value,'ARTrPenggantiReturPenj') then
       MakeFormDlg(fmARTrPengReturPenj,TfmARTrPengReturPenj)
   else
   if CompareFormName(quMenuFormName.Value,'ARUploadFK') then
       MakeFormDlg(fmARUploadFK,TfmARUploadFK)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptPenjPerCustDlg') then
   begin
     with TfmARRptPenjPerCustDlg.Create (Application) do
      try
        Status := 'Penjualan';
        ShowModal;
      finally
       Free;
      end;
   end
   else
   if CompareFormName(quMenuFormName.Value,'ARRptPenjPerBrgDlg') then
       MakeFormDlg(fmARRptPenjPerBrgDlg,TfmARRptPenjPerBrgDlg)
   else
   if CompareFormName(quMenuFormName.Value,'RptPenjualan') then
       MakeFormDlg(fmRptPenjualan,TfmRptPenjualan)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptPenjPerProdukDlg') then
       MakeFormDlg(fmARRptPenjPerBrgDlg,TfmARRptPenjPerProductDlg)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptPenjPerTglDlg') then
       MakeFormDlg(fmARRptPenjPerTglDlg,TfmARRptPenjPerTglDlg)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptKartuTunggakPiutangDlg') then
       MakeFormDlg(fmARRptKartuTunggakPiutangDlg,TfmARRptKartuTunggakPiutangDlg)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptKartuPiutangDlg') then
       MakeFormDlg(fmARRptKartuPiutangDlg,TfmARRptKartuPiutangDlg)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptRekapKartuPiutangDlg') then
   begin
     with TfmARRptPenjPerCustDlg.Create (Application) do
      try
        Status := 'Piutang';
        ShowModal;
      finally
       Free;
      end;
   end
   else
   if CompareFormName(quMenuFormName.Value,'ARRptReturDlg') then
       MakeFormDlg(fmARRptReturPjDlg,TfmARRptReturpjDlg)
   else
   if CompareFormName(quMenuFormName.Value,'ARKonsinyasi') then
       MakeFormDlg(fmARTrKonTransBrg,TfmARTrKonTransBrg)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptRtrBlmGntDlg') then
       MakeFormDlg(fmARRptRtrBlmGntDlg,TfmARRptRtrBlmGntDlg)
   else
   if CompareFormName(quMenuFormName.Value,'ARTrPerforma') then
       MakeFormDlg(fmARTrPerforma,TfmARTrPerforma)
   else
   if CompareFormName(quMenuFormName.Value,'ARRptPenjPerProductDlg') then
       MakeFormDlg(fmARRptPenjPerProductDlg,TfmARRptPenjPerProductDlg);
end;

procedure TfmUtama.CallModule12;
begin
    if CompareFormName(quMenuFormName.Value,'APMSSupplier') then
       MakeFormDlg(fmAPMsSupplier,TfmAPMsSupplier)
    else
    if CompareFormName(quMenuFormName.Value,'Tester') then
       MakeFormDlg(fmAPChangeSN,TfmAPChangeSN)
    else
    if CompareFormName(quMenuFormName.Value,'APKonsinyasi') then
       MakeFormDlg(fmApKonsinyasi,TfmApKonsinyasi)
    else
    if CompareFormName(quMenuFormName.Value,'APotorisasi') then
    begin
      with TfmAPTrotorisasi.Create (Application) do
      try
        Status := 'AP';
        ShowModal;
      finally
        Free;
      end;
    end
    else
    if CompareFormName(quMenuFormName.Value,'APTrPurchase') then
    begin
      with TfmARTrPenawaran.Create (Application) do
      try
        Flag := 'B';
        ShowModal;
      finally
        Free;
      end;
    end
    else
    if CompareFormName(quMenuFormName.Value,'APPurchaseOrder') then
    begin
      with TfmAPPurchaseOrder.Create (Application) do
      try
        StatusForm := 'AP';
        ShowModal;
      finally
        Free;
      end;
    end
    else
    if CompareFormName(quMenuFormName.Value,'TerimaDulu') then
    begin
      with TfmAPPurchaseOrder.Create (Application) do
      try
        StatusForm := 'AZ';
        ShowModal;
      finally
        Free;
      end;
    end
    else
    if CompareFormName(quMenuFormName.Value,'APPurchaseOrderK') then
    begin
      with TfmAPPurchaseOrder.Create (Application) do
      try
        StatusForm := 'KY';
        ShowModal;
      finally
        Free;
      end;
    end
    else
   { if CompareFormName(quMenuFormName.Value,'APPurchaseOrder') then
       MakeFormDlg(fmAPPurchaseOrder,TfmAPPurchaseOrder)
    else    }
    if CompareFormName(quMenuFormName.Value,'APBayarKas') then
    begin
      with TfmCFTrKKBB.Create (Application) do
      try
        StatusKKBB := 'APK';
        ShowModal;
      finally
        Free;
      end;
    end
    else
    if CompareFormName(quMenuFormName.Value,'APBayarBank') then
    begin
      with TfmCFTrKKBB.Create (Application) do
      try
        StatusKKBB := 'APB';
        ShowModal;
      finally
        Free;
      end;
    end
    else
    if CompareFormName(quMenuFormName.Value,'APBayarCek') then
    begin
      with TfmCFTrKKBB.Create (Application) do
      try
        StatusKKBB := 'APC';
        ShowModal;
      finally
        Free;
      end;
    end
    else
    if CompareFormName(quMenuFormName.Value,'APReturR') then
    Begin
     with TfmAPRetur.Create (Application) do
      try
        StatusRetur := 'R';
        ShowModal;
      finally
       Free;
      end;
    End
    else
    if CompareFormName(quMenuFormName.Value,'APReturB') then
    Begin
     with TfmAPRetur.Create (Application) do
      try
        StatusRetur := 'B';
        ShowModal;
      finally
       Free;
      end;
    End
    else
    if CompareFormName(quMenuFormName.Value,'APPenggantiRetur') then
       MakeFormDlg(fmAPPenggantiRetur,TfmAPPenggantiRetur)
    else
    if CompareFormName(quMenuFormName.Value,'APRptPembPerSuppDlg') then
       MakeFormDlg(fmAPRptPembPerSuppDlg,TfmAPRptPembPerSuppDlg)
    else
    if CompareFormName(quMenuFormName.Value,'APRptSisaTerimaBarangDlg') then
       MakeFormDlg(fmAPRptSisaTerimaBarangDlg,TfmAPRptSisaTerimaBarangDlg)
    else
    if CompareFormName(quMenuFormName.Value,'APRptPembPerBrgDlg') then
       MakeFormDlg(fmAPRptPembPerBrgDlg,TfmAPRptPembPerBrgDlg)
    else
    if CompareFormName(quMenuFormName.Value,'APRptPembPerTglDlg') then
       MakeFormDlg(fmAPRptPembPerTglDlg,TfmAPRptPembPerTglDlg)
    else
    if CompareFormName(quMenuFormName.Value,'APRptKartuHutangDlg') then
       MakeFormDlg(fmAPRptKartuHutangDlg,TfmAPRptKartuHutangDlg)
    else
    if CompareFormName(quMenuFormName.Value,'APRptRekapKartuHutangDlg') then
       MakeFormDlg(fmAPRptKartuHutangDetilDlg,TfmAPRptKartuHutangDetilDlg)
    else
    if CompareFormName(quMenuFormName.Value,'APRptKartuTunggakanHutangDlg') then
       MakeFormDlg(fmAPRptKartuTunggakHutangDlg,TfmAPRptKartuTunggakHutangDlg)
    else
    if CompareFormName(quMenuFormName.Value,'APRptReturDlg') then
       MakeFormDlg(fmAPRptReturPbDlg,TfmAPRptReturPbDlg)
    else
    if CompareFormName(quMenuFormName.Value,'APRptPenjPerTglDlgN') then
    Begin
     with TfmAPRptPenjPerTanggalNew.Create (Application) do
      try
        FgForm := 'AP';
        ShowModal;
      finally
       Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'APRptKartuHutangDlgN') then
    Begin
     with TfmAPRptRekapHutang.Create (Application) do
      try
        FgForm := 'AP';
        ShowModal;
      finally
       Free;
      end;
    End else
    if CompareFormName(quMenuFormName.Value,'APRptRtrBlmGntDlg') then
       MakeFormDlg(fmAPRptRtrBlmGntDlg,TfmAPRptRtrBlmGntDlg);
end;

procedure TfmUtama.CallModule17;
begin
    if CompareFormName(quMenuFormName.Value,'SetSecurityAccess') then
       MakeFormDlg(fmSetSecurityAccess,TfmSetSecurityAccess)
    else
    if CompareFormName(quMenuFormName.Value,'SetPass') then
      with TfmPassChange.Create(Self) do
      try
        CallerFromAnotherForm := TRUE;
        FUserId := dmMain.UserId;
        ShowModal;
      finally
        free;
      end
    Else
    if CompareFormName(quMenuFormName.Value,'SetPeriode') then
    Begin
      with TfmPeriodDlg.Create(Self) do
      try
         PrdStart := dmMain.FSysPrd1;
         PrdUntil := dmMain.FSysPrd2;
         if ShowModal = MrOK then
         begin
             dmMain.FSysPrd1 := PrdStart;
             dmMain.FSysPrd2 := PrdUntil;
         end;
      finally
       free;
      end;
    End;
end;

procedure TfmUtama.CallModule10;
begin
   if CompareFormName(quMenuFormName.Value,'SATrRate') then
       MakeFormDlg(fmSATrRate,TfmSATrRate)
    else
    if CompareFormName(quMenuFormName.Value,'SAMsSet') then
       MakeFormDlg(fmSettingGudang,TfmSettingGudang)
    else
    if CompareFormName(quMenuFormName.Value,'SAMsValuta') then
       MakeFormDlg(fmSAMsValuta,TfmSAMsValuta)
    else
    if CompareFormName(quMenuFormName.Value,'SAMsCompany') then
       MakeFormDlg(fmSAMsCompany,TfmSAMsCompany);
end;

procedure TfmUtama.miExitClick(Sender: TObject);
begin
    Application.Terminate;
end;

procedure TfmUtama.miLogoutClick(Sender: TObject);
begin
    Self.Close;
end;
//Buat Module Serive
procedure TfmUtama.CallModule14;
begin

end;

procedure TfmUtama.CallModule15;
begin
    if CompareFormName(quMenuFormName.Value,'INMsUOM') then
       MakeFormDlg(fmINMsUOM,TfmINMsUOM)
    else
    if CompareFormName(quMenuFormName.Value,'INMSProduct') then
       MakeFormDlg(fmINMsProduct,TfmINMsProduct)
    else
    if CompareFormName(quMenuFormName.Value,'INMSGroup') then
       MakeFormDlg(fmINMsGroup,TfmINMsGroup)
    else
    if CompareFormName(quMenuFormName.Value,'INMsItem') then
       MakeFormDlg(fmINMsItem,TfmINMsItem)
    else
    if CompareFormName(quMenuFormName.Value,'INMsWarehouse') then
       MakeFormDlg(fmINMsWarehouse,TfmINMsWarehouse)
    else
    if CompareFormName(quMenuFormName.Value,'INTrAdjustment') then
       MakeFormDlg(fmINTrAdjustment,TfmINTrAdjustment)
    else
    if CompareFormName(quMenuFormName.Value,'INTransfer') then
       MakeFormDlg(fmINTransfer,TfmINTransfer)
    else
    if CompareFormName(quMenuFormName.Value,'INRptStokDlg') then
       MakeFormDlg(fmINRptStokDlg,TfmINRptStokDlg)
    else
    if CompareFormName(quMenuFormName.Value,'INRptAdjusmentDlg') then
       MakeFormDlg(fmINRptAdjustmentDlg,TfmINRptAdjustmentDlg)
    else
    if CompareFormName(quMenuFormName.Value,'INRptTransferDlg') then
       MakeFormDlg(fmINRptTransferbarangDlg,TfmINRptTransferbarangDlg)
    else
    if CompareFormName(quMenuFormName.Value,'INRptPriceListDlg') then
       MakeFormDlg(fmINRptPriceListDlg,TfmINRptPriceListDlg)
    else
    if CompareFormName(quMenuFormName.Value,'INRptMsItemDlg') then
       MakeFormDlg(fmINRptMsItemDlg,TfmINRptMsItemDlg)
    else
    if CompareFormName(quMenuFormName.Value,'INRptHistoryStokDlg') then
       MakeFormDlg(fmINRptHistoryBarangDlg,TfmINRptHistoryBarangDlg);
end;

procedure TfmUtama.CallModule16;
begin
   if CompareFormName(quMenuFormName.Value,'CFMsGroupRek') then
      MakeFormDlg(fmCFMsGroupRek,TfmCFMsGroupRek)
   else
   if CompareFormName(quMenuFormName.Value,'CFMsRekening') then
      MakeFormDlg(fmCFMsRekening,TfmCFMsRekening)
   else
   if CompareFormName(quMenuFormName.Value,'CFMsBank') then
      MakeFormDlg(fmCFMsBank,TfmCFMsBank)
   else
   if CompareFormName(quMenuFormName.Value,'CFTrTransferBalance') then
      MakeFormDlg(fmCFTrTransferBalance,TfmCFTrTransferBalance)
   else
   if CompareFormName(quMenuFormName.Value,'CFTrKM') then
   Begin
    with TfmCFTrKKBB.Create (Application) do
     try
       StatusKKBB := 'KM';
       FgPayment := 'T';
       ShowModal;
     finally
      Free;
     end;
   End
   else
   if CompareFormName(quMenuFormName.Value,'CFTrKK') then
   Begin
    with TfmCFTrKKBB.Create (Application) do
     try
       StatusKKBB := 'KK';
       FgPayment := 'T';
       ShowModal;
     finally
      Free;
     end;
   End
   else
   if CompareFormName(quMenuFormName.Value,'CFTrBM') then
   Begin
    with TfmCFTrKKBB.Create (Application) do
     try
       StatusKKBB := 'BM';
       FgPayment := 'T';
       ShowModal;
     finally
      Free;
     end;
   End
   else
   if CompareFormName(quMenuFormName.Value,'CFTrBK') then
   Begin
    with TfmCFTrKKBB.Create (Application) do
     try
       StatusKKBB := 'BK';
       FgPayment := 'T';
       ShowModal;
     finally
      Free;
     end;
   End
   else
   if CompareFormName(quMenuFormName.Value,'CFTrJU') then
   Begin
    with TfmCFTrKKBB.Create (Application) do
     try
       StatusKKBB := 'JU';
       FgPayment := 'T';
       ShowModal;
     finally
      Free;
     end;
   End
   else
   if CompareFormName(quMenuFormName.Value,'CFTrPIK') then
   Begin
    with TfmCFTrKKBB.Create (Application) do
     try
       StatusKKBB := 'PIK';
       ShowModal;
     finally
      Free;
     end;
   End
   else
   if CompareFormName(quMenuFormName.Value,'CFTrPIB') then
   Begin
    with TfmCFTrKKBB.Create (Application) do
     try
       StatusKKBB := 'PIB';
       ShowModal;
     finally
      Free;
     end;
   end
   else
   if CompareFormName(quMenuFormName.Value,'CFRptKeuanganDlg') then
      MakeFormDlg(fmCFRptKeuanganDlg,TfmCFRptKeuanganDlg)
   else
   if CompareFormName(quMenuFormName.Value,'CFRptTrialBalanceDlg') then
      MakeFormDlg(fmCFRptKeuanganDetDlg,TfmCFRptKeuanganDetDlg)
   else
   if CompareFormName(quMenuFormName.Value,'CFRptKeuanganBankDlg') then
      MakeFormDlg(fmCFRptKeuanganBankDlg,TfmCFRptKeuanganBankDlg)
   else
   if CompareFormName(quMenuFormName.Value,'CFRptNetCash') then
      MakeFormDlg(fmCFRptNetCash,TfmCFRptNetCash)
   else
   if CompareFormName(quMenuFormName.Value,'CFRptNeracaBalanceDlg') then
   Begin
    with TfmINRptHppDlg.Create (Application) do
     try
       Status := 'Neraca';
       ShowModal;
     finally
      Free;
     end;
   End
   else
   if CompareFormName(quMenuFormName.Value,'CFRptRugiLabaDlg') then
   Begin
    with TfmAPRptPembPerTglDlg.Create (Application) do
     try
       Status := 'RugiLaba';
       ShowModal;
     finally
      Free;
     end;
   End
   else
   if CompareFormName(quMenuFormName.Value,'CFRptKeuanganDetBankDlg') then
   Begin
    with TfmCFRptKeuanganDetBankDlg.Create (Application) do
     try
       Status := 'BukuBesar';
       ShowModal;
     finally
      Free;
     end;
   End
   else
   if CompareFormName(quMenuFormName.Value,'CFRptBiayaDlg') then
      MakeFormDlg(fmCFRptBiayaDlg,TfmCFRptBiayaDlg);
End;

procedure TfmUtama.bbExitClick(Sender: TObject);
begin
    Self.Close;
end;

procedure TfmUtama.SBMenuChangeActiveGroup(Sender: TObject);
begin
  SBMenu.SelectedItem := SBMenu.ActiveGroup.Items[0];
  SBMenuItemClick(SBMenu,SBMenu.SelectedItem);
end;

procedure TfmUtama.Action1Execute(Sender: TObject);
begin
  SBMenu.ActiveGroupIndex := 0;
end;

procedure TfmUtama.Action2Execute(Sender: TObject);
begin
  SBMenu.ActiveGroupIndex := 1;
end;

procedure TfmUtama.Action3Execute(Sender: TObject);
begin
  SBMenu.ActiveGroupIndex := 2;
end;

//ctrl+1
procedure TfmUtama.Action4Execute(Sender: TObject);
begin
  if SBMenu.ActiveGroup.ItemCount > 0 then
  begin
    SBMenu.SelectedItem := SBMenu.ActiveGroup.Items[0];
    SBMenuItemClick(SBMenu,SBMenu.SelectedItem);
  end;
end;

//ctrl+2
procedure TfmUtama.Action5Execute(Sender: TObject);
begin
  if SBMenu.ActiveGroup.ItemCount > 1 then
  begin
    SBMenu.SelectedItem := SBMenu.ActiveGroup.Items[1];
    SBMenuItemClick(SBMenu,SBMenu.SelectedItem);
  end;
end;

//ctrl+3
procedure TfmUtama.Action6Execute(Sender: TObject);
begin
  if SBMenu.ActiveGroup.ItemCount > 2 then
  begin
    SBMenu.SelectedItem := SBMenu.ActiveGroup.Items[2];
    SBMenuItemClick(SBMenu,SBMenu.SelectedItem);
  end;
end;

//ctrl+4
procedure TfmUtama.Action7Execute(Sender: TObject);
begin
  if SBMenu.ActiveGroup.ItemCount > 3 then
  begin
    SBMenu.SelectedItem := SBMenu.ActiveGroup.Items[3];
    SBMenuItemClick(SBMenu,SBMenu.SelectedItem);
  end;
end;

//ctrl+5
procedure TfmUtama.Action8Execute(Sender: TObject);
begin
  if SBMenu.ActiveGroup.ItemCount > 4 then
  begin
    SBMenu.SelectedItem := SBMenu.ActiveGroup.Items[4];
    SBMenuItemClick(SBMenu,SBMenu.SelectedItem);
  end;

end;

//ctrl+6
procedure TfmUtama.Action9Execute(Sender: TObject);
begin
  if SBMenu.ActiveGroup.ItemCount > 5 then
  begin
    SBMenu.SelectedItem := SBMenu.ActiveGroup.Items[5];
    SBMenuItemClick(SBMenu,SBMenu.SelectedItem);
  end;

end;

procedure TfmUtama.TLMenuKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var Module : string;
begin
  if Key=vk_return then
  begin
     paMenu.Visible := FALSE;
     SBMenu.Visible := FALSE;
     Module := LeftStr(quMenuKdMenu.AsString,2);
     if Module = '10' then
        CallModule10
     else
     if Module = '11' then
        CallModule11
     else
     if Module = '12' then
        CallModule12
     else
     if Module = '13' then
        CallModule13
     else
     if Module = '14' then
        CallModule14
     else
     if Module = '15' then
        CallModule15
     else
     if Module = '16' then
        CallModule16
     else
     if Module = '17' then
        CallModule17;
     paMenu.Visible := TRUE;
     SBMenu.Visible := TRUE;
   End;
End;

procedure TfmUtama.bbBackUpClick(Sender: TObject);
begin
  paMenu.Visible := FALSE;
  SBMenu.Visible := FALSE;
  MakeFormDlg(fmBackUp,TfmBackUp);
  paMenu.Visible := TRUE;
  SBMenu.Visible := TRUE;
end;

procedure TfmUtama.bbUtilityClick(Sender: TObject);
begin
  paMenu.Visible := FALSE;
  SBMenu.Visible := FALSE;
  MakeFormDlg(fmTrAuditData,TfmTrAuditData);
  paMenu.Visible := TRUE;
  SBMenu.Visible := TRUE;
end;

procedure TfmUtama.dxButton1Click(Sender: TObject);
begin
  paMenu.Visible := FALSE;
  SBMenu.Visible := FALSE;
  MakeFormDlg(fmTrUpload,TfmTrUpload);
  paMenu.Visible := TRUE;
  SBMenu.Visible := TRUE;
end;

procedure TfmUtama.Action10Execute(Sender: TObject);
begin
  paMenu.Visible := FALSE;
  SBMenu.Visible := FALSE;
  MakeFormDlg(fmCheckSN,TfmCheckSN);
  paMenu.Visible := TRUE;
  SBMenu.Visible := TRUE;
end;

procedure TfmUtama.dxButton2Click(Sender: TObject);
begin
  paMenu.Visible := FALSE;
  SBMenu.Visible := FALSE;
  MakeFormDlg(fmARUploadCoreTax,TfmARUploadCoreTax);
  paMenu.Visible := TRUE;
  SBMenu.Visible := TRUE;
end;

end.
