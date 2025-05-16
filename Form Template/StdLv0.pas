{
  nggak ada qumain, ini gunanya untuk form dialog saja
}

unit StdLv0;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, dxExEdtr, dxCntner, dxCore, dxButton, Buttons;

type
  TfmStdLv0 = class(TForm)
    quAct: TADOQuery;
    SCEdit: TdxEditStyleController;
    SCCheckEdit: TdxCheckEditStyleController;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  protected
     FActDS : TDataSource;
     //---Method-method untuk set button operation--/
     Procedure SetBtnOperationEnable(BtnOperation:TdxButton; Ds:TDataSource);
     Procedure SetBtnOperationVisible(BtnOperation:TdxButton; Ds:TDataSource);overload;
     Procedure SetBtnOperationVisible(BtnSave:TdxButton; BtnCancel:TdxButton; Ds:TDataSource);overload;
     Procedure SetBtnNavigation(btnFirst,btnPrev,btnNext,btnLast:TSpeedButton; ds:TDataSource);
  public
    { Public declarations }
  end;

var
  fmStdLv0: TfmStdLv0;

implementation

uses ConMain, UnitGeneral;

{$R *.dfm}

procedure TfmStdLv0.SetBtnNavigation(btnFirst, btnPrev, btnNext,
  btnLast: TSpeedButton; ds: TDataSource);
begin
    btnFirst.Enabled := (ds.State=dsBrowse)AND(ds.DataSet.Active)AND(NOT ds.DataSet.Bof)AND(Ds.DataSet.RecordCount>0);
    btnPrev.Enabled  := (ds.State=dsBrowse)AND(ds.DataSet.Active)AND(NOT ds.DataSet.Bof)AND(Ds.DataSet.RecordCount>0);
    btnNext.Enabled  := (ds.State=dsBrowse)AND(ds.DataSet.Active)AND(NOT ds.DataSet.Eof)AND(Ds.DataSet.RecordCount>0);
    btnLast.Enabled  := (ds.State=dsBrowse)AND(ds.DataSet.Active)AND(NOT ds.DataSet.Eof)AND(Ds.DataSet.RecordCount>0);
end;

procedure TfmStdLv0.SetBtnOperationEnable(BtnOperation: TdxButton; Ds: TDataSource);
begin
    Case BtnOperation.Tag of
       1111 : //--Tambah--/
              BtnOperation.Enabled := (ds.State=dsBrowse)AND(ds.DataSet.Active);
       2222 : //--Hapus--/
              BtnOperation.Enabled := (ds.State=dsBrowse)AND(ds.DataSet.Active)AND(Ds.DataSet.RecordCount>0);
       3333 : //--Simpan--/
              BtnOperation.Enabled := (ds.State in dsEditModes)AND(Ds.DataSet.Active);
       4444 : //--Cancel--/
              BtnOperation.Enabled := (ds.State in dsEditModes)AND(Ds.DataSet.Active);
       5555 : //--Find--/
              BtnOperation.Enabled := (ds.State=dsBrowse)AND(ds.DataSet.Active)AND(Ds.DataSet.RecordCount>0);
    end;
end;

procedure TfmStdLv0.SetBtnOperationVisible(BtnOperation: TdxButton;
  Ds: TDataSource); 
begin
  Case BtnOperation.Tag of
       1111 : //--Tambah--/
              BtnOperation.Visible := (ds.State=dsBrowse)AND(ds.DataSet.Active);
       2222 : //--Hapus--/
              BtnOperation.Visible := (ds.State=dsBrowse)AND(ds.DataSet.Active)AND(Ds.DataSet.RecordCount>0);
       3333 : //--Simpan--/
              BtnOperation.Visible := (ds.State in dsEditModes)AND(Ds.DataSet.Active);
       4444 : //--Cancel--/
              BtnOperation.Visible := (ds.State in dsEditModes)AND(Ds.DataSet.Active);
       5555 : //--Find--/
              BtnOperation.Visible := (ds.State=dsBrowse)AND(ds.DataSet.Active)AND(Ds.DataSet.RecordCount>0);
    end;
end;

procedure TfmStdLv0.FormShow(Sender: TObject);
begin
   //--captionnya diset sesuai dengan namamenu dari table sysmenu--/
  // Self.Caption := GetMenuName(Self.tag);
end;

procedure TfmStdLv0.SetBtnOperationVisible(BtnSave, BtnCancel: TdxButton;
  Ds: TDataSource);
begin
  BtnSave.Visible := (ds.State in dsEditModes)AND(Ds.DataSet.Active);
  BtnCancel.Visible := (ds.State in dsEditModes)AND(Ds.DataSet.Active);
end;

end.
