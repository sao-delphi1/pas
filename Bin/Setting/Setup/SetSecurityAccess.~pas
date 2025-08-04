unit SetSecurityAccess;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdLv1, DB, dxExEdtr, dxCntner, ADODB, Buttons, dxCore,
  dxContainer, dxPageControl, dxTL, dxDBCtrl, dxDBGrid, dxButton, dxDBTL,
  ImgList, Menus, dxDBTLCl, dxGrClms, StdCtrls, ExtCtrls;

type
  TfmSetSecurityAccess = class(TfmStdLv1)
    pcMain: TdxPageControl;
    quDSGroup: TADOQuery;
    quDSGroupKdGroup: TStringField;
    quDSGroupUpdDate: TDateTimeField;
    quDSGroupUpdUser: TStringField;
    quDSGroupKdMenu: TIntegerField;
    dsMenuGroupTrustee: TDataSource;
    quMenuGrpTrustee: TADOQuery;
    quMenuGrpTrusteeKdMenu: TIntegerField;
    quMenuGrpTrusteeParent: TIntegerField;
    quMenuGrpTrusteeMyState: TIntegerField;
    dsGrpTrustee: TDataSource;
    quGrpTrustee: TADOQuery;
    quGrpTrusteeKdGroup: TStringField;
    quGrpTrusteeUpdDate: TDateTimeField;
    quGrpTrusteeUpdUser: TStringField;
    quUser: TADOQuery;
    quUserUserId: TStringField;
    quUserPassWd: TStringField;
    quUserKdGroup: TStringField;
    quUserUpdDate: TDateTimeField;
    quUserUpdUser: TStringField;
    dsUser: TDataSource;
    poGroup: TPopupMenu;
    mi01: TMenuItem;
    mi02: TMenuItem;
    mi03: TMenuItem;
    mi04: TMenuItem;
    mi05: TMenuItem;
    imState: TImageList;
    dxPageControl1: TdxPageControl;
    ts01: TdxTabSheet;
    dxContainer2: TdxContainer;
    Panel1: TPanel;
    Label1: TLabel;
    dxContainer3: TdxContainer;
    dbgGroup: TdxDBGrid;
    dbgGroupColumn1: TdxDBGridColumn;
    dxContainer4: TdxContainer;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    Panel2: TPanel;
    ts02: TdxTabSheet;
    dbgUser: TdxDBGrid;
    dbgUserUserId: TdxDBGridColumn;
    dbgUserKdGroup: TdxDBGridButtonColumn;
    dbgUserUpdDate: TdxDBGridColumn;
    dbgUserUpdUser: TdxDBGridColumn;
    Panel3: TPanel;
    dxButton3: TdxButton;
    dxButton4: TdxButton;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    TVMenuGroup: TdxDBTreeList;
    TVMenuGroupNmMenu: TdxDBTreeListColumn;
    quMenuGrpTrusteeNmMenu: TStringField;
    Label3: TLabel;
    Label2: TLabel;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    quUserSalesID: TStringField;
    dbgUserColumn5: TdxDBGridButtonColumn;
    quUserFgGantiBagasi: TStringField;
    quUserFgOtoSO: TStringField;
    quUserOtoMargin: TBCDField;
    quUserLSalesName: TStringField;
    dbgUserColumn6: TdxDBGridColumn;
    dbgUserColumn7: TdxDBGridImageColumn;
    quUserFgOtoBagasi: TStringField;
    dbgUserColumn8: TdxDBGridImageColumn;
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dsGrpTrusteeStateChange(Sender: TObject);
    procedure dsMenuGroupTrusteeStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgGroupCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: String; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    procedure quUserBeforePost(DataSet: TDataSet);
    procedure quUserNewRecord(DataSet: TDataSet);
    procedure dbgUserKdGroupButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure poGroupPopup(Sender: TObject);
    procedure mi01Click(Sender: TObject);
    procedure mi02Click(Sender: TObject);
    procedure mi03Click(Sender: TObject);
    procedure mi04Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure quGrpTrusteeBeforeDelete(DataSet: TDataSet);
    procedure dsUserStateChange(Sender: TObject);
    procedure dbgUserColumn5ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure quUserCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    Procedure BeriHakAkses;
    Procedure CabutHakAkses;
  public
    { Public declarations }
  end;

var
  fmSetSecurityAccess: TfmSetSecurityAccess;

implementation

uses UnitGeneral, PassChange, ConMain, Search, StdLv0;

{$R *.dfm}

procedure TfmSetSecurityAccess.BeriHakAkses;
var KdMenu : Integer;
Begin
  quDSGroup.Append;
  quDSGroupKdGroup.Value   := quGrpTrusteeKdGroup.Value;
  quDSGroupKdMenu.Value    := quMenuGrpTrusteeKdMenu.Value;
  quDSGroupUpdDate.Value   := Now;
  quDSGroupUpdUser.Value   := dmMain.UserId;
  quDSGroup.Post;
  KdMenu := quMenuGrpTrusteeKdMenu.Value;
  quMenuGrpTrustee.Requery([]);
  quMenuGrpTrustee.Locate('KdMenu',KdMenu,[])
End;

procedure TfmSetSecurityAccess.CabutHakAkses;
var KdMenu : Integer;
Begin
  with quAct,sql do
  Begin
    Close;Clear;
    add(' DELETE FROM SysMsMenuGroupTrustee WHERE KdMenu='''+quMenuGrpTrusteeKdMenu.AsString+''''
       +' AND KdGroup='''+quGrpTrusteeKdGroup.Value+'''');
    ExecSQL;
  End;
  kdMenu := quMenuGrpTrusteeKdMenu.Value;
  quMenuGrpTrustee.Requery([]);
  quMenuGrpTrustee.Locate('KdMenu',kdMenu,[])
End;

procedure TfmSetSecurityAccess.dxButton3Click(Sender: TObject);
begin
  inherited;
  quUser.Append;
  quUserUserId.FocusControl;
end;

procedure TfmSetSecurityAccess.dxButton4Click(Sender: TObject);
begin
  inherited;
  if NOT quUser.IsEmpty then begin
      if MessageDlg('Yakin mau remove user '+quUserUserId.Value+' !',mtConfirmation,mbOKCancel,0) = MrOK then
      begin
         if UpperCase(quUserUserId.Value)='ADMIN' then
            MsgInfo('User ADMIN tidak dapat diremove !')
         else
            quUser.Delete;
      end;
  end;
end;

procedure TfmSetSecurityAccess.dxButton1Click(Sender: TObject);
begin
  inherited;
  quGrpTrustee.Append;
  quGrpTrusteeKdGroup.FocusControl;
end;

procedure TfmSetSecurityAccess.dxButton2Click(Sender: TObject);
begin
  inherited;
  if NOT quGrpTrustee.IsEmpty then quGrpTrustee.Delete;
end;

procedure TfmSetSecurityAccess.dsGrpTrusteeStateChange(Sender: TObject);
begin
  inherited;
  if quGrpTrustee.State = dsInsert then
     dbgGroup.OptionsBehavior := dbgGroup.OptionsBehavior + [edgoEditing]
  else if quGrpTrustee.State = dsBrowse then
     dbgGroup.OptionsBehavior := dbgGroup.OptionsBehavior - [edgoEditing];

end;

procedure TfmSetSecurityAccess.dsMenuGroupTrusteeStateChange(
  Sender: TObject);
begin
  inherited;
  if quGrpTrustee.State = dsInsert then
     dbgGroup.OptionsBehavior := dbgGroup.OptionsBehavior + [edgoEditing]
  else if quGrpTrustee.State = dsBrowse then
     dbgGroup.OptionsBehavior := dbgGroup.OptionsBehavior - [edgoEditing];

end;

procedure TfmSetSecurityAccess.FormShow(Sender: TObject);
begin
  inherited;
  quGrpTrustee.Active := TRUE;
  quMenuGrpTrustee.Active := TRUE;
  quUser.Active := TRUE;
  quDSGroup.Active := TRUE;
  TVMenuGroup.FullExpand;
end;

procedure TfmSetSecurityAccess.dbgGroupCustomDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxDBTreeListColumn; const AText: String; AFont: TFont;
  var AColor: TColor; ASelected, AFocused: Boolean; var ADone: Boolean);
begin
  inherited;
  if (ANode.Index mod 2=0) then
  AColor := $00FDAB00;
end;

procedure TfmSetSecurityAccess.quUserBeforePost(DataSet: TDataSet);
begin
  inherited;
  quUserUpdDate.Value := GetServerDateTime;
  quUserUpdUser.Value := dmmain.UserId;
end;

procedure TfmSetSecurityAccess.quUserNewRecord(DataSet: TDataSet);
begin
  inherited;
  quUserKdGroup.Value := quGrpTrusteeKdGroup.Value;
  quUserFgGantiBagasi.AsString := 'T';
  quUserFgOtoSO.AsString := '0';
  quUserOtoMargin.AsCurrency := 0;
end;

procedure TfmSetSecurityAccess.dbgUserKdGroupButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
    try
       Title := 'Cari Group Trustee';
       SQLString := 'SELECT KdGroup as Group_Trustee FROM sysMsGroupTrustee'
                   +' ORDER BY KdGroup';
       if ShowModal = Mrok Then
       begin
          if quUser.State = dsBrowse then quUser.Edit;
          quUserKdGroup.Value := Res[0];
       end;
    finally
       free;
    end;
end;

procedure TfmSetSecurityAccess.poGroupPopup(Sender: TObject);
begin
  inherited;
  mi01.Visible := quMenuGrpTrusteeMyState.Value = 1;
  mi02.Visible := quMenuGrpTrusteeMyState.Value = 2;
end;

procedure TfmSetSecurityAccess.mi01Click(Sender: TObject);
begin
  inherited;
  if quMenuGrpTrusteeMyState.Value = 2 then Abort;
  BeriHakAkses;
end;

procedure TfmSetSecurityAccess.mi02Click(Sender: TObject);
begin
  inherited;
  if quMenuGrpTrusteeMyState.Value = 1 then Abort;
  CabutHakAkses;
end;

procedure TfmSetSecurityAccess.mi03Click(Sender: TObject);
var KdMenu : Integer;
begin
  inherited;
  with quAct,SQL do
  begin
      Close; Clear;
      Add('INSERT INTO sysMsMenuGroupTrustee(KdGroup,KdMenu,UpdDate,UpdUser)'
         +' SELECT '+QuotedStr(quGrpTrusteeKdGroup.Value)
         +' ,KdMenu, GetDate(), '''+dmmain.UserId+''''
         +' FROM SysMenu'
         +' WHERE KdMenu NOT IN (SELECT KdMenu FROM sysMsMenuGroupTrustee WHERE KdGroup='+QuotedStr(quGrpTrusteeKdGroup.Value)+')');
      ExecSQL;
  end;
  kdMenu := quMenuGrpTrusteeKdMenu.Value;
  quMenuGrpTrustee.Requery([]);
  quMenuGrpTrustee.Locate('KdMenu',kdMenu,[]);
end;

procedure TfmSetSecurityAccess.mi04Click(Sender: TObject);
var KdMenu : Integer;
begin
  inherited;
  with quAct,SQL do
  begin
      Close; Clear;
      Add('DELETE FROM sysMsMenuGroupTrustee WHERE KdGroup='+QuotedStr(quGrpTrusteeKdGroup.Value));
      ExecSQL;
  end;
  KdMenu := quMenuGrpTrusteeKdMenu.Value;
  quMenuGrpTrustee.Requery([]);
  quMenuGrpTrustee.Locate('KdMenu',KdMenu,[]);
end;

procedure TfmSetSecurityAccess.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  TVMenuGroup.FullExpand;
end;

procedure TfmSetSecurityAccess.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  TVMenuGroup.FullCollapse;
end;

procedure TfmSetSecurityAccess.quGrpTrusteeBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if quGrpTrusteeKdGroup.AsString = 'admin' then
  begin
    ShowMessage('Group Admin tidak bisa dihapus');
    Abort;
  end;
end;

procedure TfmSetSecurityAccess.dsUserStateChange(Sender: TObject);
begin
  inherited;
  SetReadOnly(dbgUserUserId,quUser.State <> dsInsert);
end;

procedure TfmSetSecurityAccess.dbgUserColumn5ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  with TfmSearch.Create(Self) do
  try
     Title := 'Cari Karyawan';
     SQLString := ' SELECT SalesName as Nama_Karyawan,SalesID as Kode_Sales FROM ARMsSales ORDER BY SalesName';
     if ShowModal = MrOK then
     begin
        if quUser.State = dsBrowse then quUser.Edit;
        quUserSalesID.Value := Res[1];
     end;
  finally
     free;
  end;
end;

procedure TfmSetSecurityAccess.quUserCalcFields(DataSet: TDataSet);
begin
  inherited;
  with quAct,SQL do
  begin
    Close;Clear;
    Add('select salesname from armssales where salesid='''+quUserSalesID.AsString+''' ');
    Open;
  end;
  quUserLSalesName.AsString := quAct.FieldByName('salesname').AsString;
end;

end.
