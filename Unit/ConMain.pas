unit ConMain;

interface

uses

  SysUtils, Classes, DB, ADODB, Forms, inifiles,Controls;

type
  TdmMain = class(TDataModule)
    dbConn: TADOConnection;
    quUnit: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FUserId : String;
  protected
    Procedure Inisialisasi;
    function ConnectDB(showError: boolean = true):boolean;
  public
    { Public declarations }
    CompName,sQuery : String;
    FSysPrd1, FSysPrd2 : TDateTime;
    Property UserId : String Read FUserId Write FUserId;
  end;

var
  dmMain: TdmMain;
  dbName,GroupUser,GantiBagasi,ServerPath: String;
implementation

uses UnitGeneral, UnitDate, PickDatabase, MyUnit;

{$R *.dfm}

Procedure TdmMain.Inisialisasi;
Begin
  //Nama Perusahaan dan Alamatnya
    sQuery          := 'SELECT CompanyName,CompanyAdd1,CompanyAdd2 FROM SAMsCompany';
    SelectQuery(quUnit,sQuery);
    sCompanyName    :=quUnit.FieldByName('CompanyName').AsString;
    sCompanyAddress :=quUnit.FieldByName('Companyadd1').AsString;
    sCompanyBank :=quUnit.FieldByName('Companyadd2').AsString;
  //Default gudang
    sQuery   := 'SELECT DGPj,DGPb,CustId,SalesId,DGK,DGTr,DGS,DGR,DGPR,DRPb,DRPj,DGRPb,DGRPj,DGC,DGRBi,DGRPLL,sDPB,Cetak,DRPc,DRKas,sPersediaan,sHPP,PPN FROM SAMsSet';
    SelectQuery(quUnit,sQuery);
    sDGPb    := quUnit.FieldByName('DGPb').AsString;
    sDGPj    := quUnit.FieldByName('DGPj').AsString;
    sCustC   := quUnit.FieldByName('CustId').AsString;
    sSalesC  := quUnit.FieldByName('SalesId').AsString;
    sDGK     := quUnit.FieldByName('DGK').AsString;
    sDGTr    := quUnit.FieldByName('DGTr').AsString;
    sDGS     := quUnit.FieldByName('DGS').AsString;
    sDGR     := quUnit.FieldByName('DGR').AsString;
    sDGPR    := quUnit.FieldByName('DGPR').AsString;
    sDRPb    := quUnit.FieldByName('DRPb').AsString;
    sDRPj    := quUnit.FieldByName('DRPj').AsString;
    sDGRPb   := quUnit.FieldByName('DGRPb').AsString;
    sDGRPj   := quUnit.FieldByName('DGRPj').AsString;
    sDGC     :=  quUnit.FieldByName('DGC').AsString;
    sDGRBi   := quUnit.FieldByName('DGRBi').AsString;
    sDGRPLL  := quUnit.FieldByName('DGRPLL').AsString;
    sDPB     := quUnit.FieldByName('sDPB').AsString;
    sCetak   := quUnit.FieldByName('Cetak').AsString;
    sDRPc    := quUnit.FieldByName('DRPc').AsString;
    sDRKas   := quUnit.FieldByName('DRKas').AsString;
    sPPN   := quUnit.FieldByName('PPN').AsCurrency;
    sPersediaan   := quUnit.FieldByName('sPersediaan').AsString;
    sHPP   := quUnit.FieldByName('sHPP').AsString;
    FSysPrd1 := Date;//EncodeDate(GetYear(Date),GetMonth(Date),1);;
    FSysPrd2 := Date;
End;

function TDmMain.ConnectDB(showError: boolean = true):boolean;
var SPath, Pass, sQuery,database: String;
    MyIniFile : TIniFile;
begin
  SPath := ExtractFilePath(Application.ExeName) + 'setting.ini';
  if not FileExists(SPath) then
  begin
      pesan('Proses Registrasi ada yang Kurang '+#13+ 'Hubungi Vendor Anda');
      Application.Terminate;
  end else
  begin
    with TfmPickDatabase.Create (Self) do
     try
     if ShowModal = MrOK then
     begin
       ServerPath := Server;// Decrypt (MyIniFile.ReadString('Server','02','(Local)'));
       Pass       := Password;// Decrypt (MyIniFile.ReadString('Server','03','upi'));
       dbName     := database;// Decrypt (MyIniFile.ReadString('Server','01','upi'));
     end;
     finally
      Free;
     end;

    sQuery := 'Provider=SQLOLEDB.1; Password='+Pass+'; User ID=sa; Persist Security Info=False;'
                            +'Initial Catalog='+dbName+';Data Source='+serverPath;
    dbConn.ConnectionString := sQuery;

    if dbConn.Connected then
      dbConn.Close;
    try
      dbConn.Open;
    except
      dbConn.Close;
    end; //end try
  end; //end if

  if dbConn.Connected then
    Inisialisasi;
end;

procedure TdmMain.DataModuleCreate(Sender: TObject);
begin
  ConnectDB;
end;

end.
