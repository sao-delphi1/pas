unit MyUnit;

interface
Uses ADODB,buttons,dbCtrls,sysutils,Dialogs, DBGrids, StdCtrls, Graphics, Classes, DateUtils;

Procedure SelectQuery(quData : TADOQuery; SQlQuery: string );
Procedure RunQuery(quData : TADOQuery; SQlQuery: string );
Procedure CekButton(bb1,bb2,bb3,bb4,bb5 : TBitBtn; dbaNav : TDBNavigator; status : integer);
Function RunNumber(quData : TADOQuery; table,field, cari, proid: string) : integer;
Function Crypt(Data :string):string;
Function RunNumberGL(quData : TADOQuery; table, field, cari, flag: string) : integer;
Function RunNumberDepan(quData : TADOQuery; table,field, cari, digit: string) : integer;
Function Decrypt(Data :string):string;
Procedure pesan(data : string);
Function DataSelect(quData :Tadoquery; dgrData:TDBGrid; FieldName : string; isnum:boolean):string;
Function DataSelectField(quData :Tadoquery; dgrData:TDBGrid; FieldName1 : string; FieldName2 : string):string;
Function ClearKutip(data : string) : string;
Function ClearGarisMiring(data : string) : string;
Function CarirateNew(quData : TADOQuery;tgl : TDateTime) : real;
Function CekAngka(Tekan : char) : char;
Function DataString(quData : TADOQuery; Field : string) : TStrings;
Function Periode(tgl : TDateTime; Full : boolean) : string;
function RataKanan(lebar : integer; data : string) : string;
function RataKiri(lebar : integer; data : string) : string;
function Carirate(quData : TADOQuery;Valuta : String;tgl : TDateTime) : Real;
Function PeriodeRomawi(tgl : TDateTime) : string;
function angka(bil : char) : string;
function angka2(bil : char) : string;
function convert(bil : String): String;
function convert2(bil : String): String;
function convertlain(bil : String; Valuta : string ):String;
Function FormatRpt(Value : string) : string;
Function Carirate2(quData : TADOQuery;Valuta : String;tgl : TDateTime) : Real;
Function FormatRptkurung(Value : string) : string;var t  : real;
Function FormatRptqtykurung(Value : string) : string;
Function ClearKotak(data : string) : string;
function ClearParent(data : string) : string;
function JumSub(data : string) : integer;
function Pembulatan(Data : String) : Currency;

procedure hasp ( Service, SeedCode, LptNum, Pass1, Pass2 : longint; var p1, p2, p3, p4 : longint); stdcall; external 'haspms32.dll';
//procedure hasp ( Service, SeedCode, LptNum, Pass1, Pass2 : longint; var p1, p2, p3, p4 : longint);
Function HASPIs(var HaspErrorCode :integer) :boolean;
Function GetHaspCode : longint;

Const
  ROTATE = 41;
  SeedCode : integer = 100;    { the seed code - you can enter any integer }
  PortNum  : integer = 0;      { search all ports                          }
  Pass1    : integer = 31324;  { the first HASP password }
  Pass2    : integer = 17971;  { the second HASP password }
  HARDCODE : longint = 1595192052;
  CekHasp  : boolean = FALSE;
  sDisFormat : string = '#,0.00';
//  sEditformat : string= '#,0';
  sDisFormat1 : String= '#,0';
  version : string = '20250526';
  PT : String ='PAS';
var iCekHasp  : integer;
    Param1, Param2, Param3, Param4 : longint;
    sJurKM, sJurKK, sJurBM, sJurBK, sJurUm : string;
    sJurPl, sJurPgb, sJurPgk : string;
    sEditformat : string;
    sJurPj, sJurPnb, sJurPnk : string;
    sAwalBuku, sRLTahan, sRLJalan : string;
    dtStartBook : tdatetime;
    sCompanyName, sCompanyAddress, sExcel,sCompanyBank, sPersediaan, sHPP :string;
    sDGPb, sDGPj, sCustC, sSalesC, sDGK, sDGTr, sDGS, sDGR, sDGPR,sDRPb,sDRPj,sDGRPb,sDGRPj,sDGC,sDPB,sDGRBi,sDGRPLL,sCetak,sDRPc,sDRKas,sDRBank : string;
    sPPN : currency;
implementation

uses DB;

function Pembulatan(Data : String) : Currency;
var Ctr : integer;
    Temp,pecahan : string;
    Hasil, HasilT : Currency;
begin
  Ctr := pos('.', Data);
  Temp:='';
  if ctr > 0 then
  begin
     pecahan := copy(Data, ctr + 1, length(Data) - ctr);
     Data := copy(Data, 1, ctr - 1);
  end;
  Hasil := Strtocurr(Data);
  pecahan := copy(Data,length(Data) -2,3);
//  ShowMessage(pecahan);
  HasilT:= strtocurr(Pecahan);
  Hasil :=Hasil-HasilT;
  if (HasilT >= 0) AND (HasilT < 250) then
     HasilT := 0;
  if (HasilT = 250 ) then
     HasilT := 250;
  if (HasilT > 250 ) AND (HasilT <= 500)then
     HasilT :=500;
  if (HasilT > 500) AND (HasilT <= 750) then
     HasilT :=750;
  if (HasilT > 750 ) then
     HasilT := 1000;
  Hasil:= Hasil+HasilT;
  Pembulatan := hasil;

end;

function JumSub(data : string) : integer;
var i, jum : integer;
begin
  jum := 0;
  for i:=1 to length(data) do
    if data[i] = '.' then
      inc(jum);
  JumSub := jum;
end;
function ClearParent(data : string) : string;
var i : integer;
begin
  data := '.' + data;
  i := length(data);
  while (i > 1) and (data[i] <> '.') do
    dec(i);
  ClearParent := copy(data, i + 1, length(data) - i);
end;

Function CarirateNew(quData : TADOQuery;tgl : TDateTime) : real;
begin
  with quData,sql do
  Begin
     Close;Clear;
     add('  Select Top 1 Isnull(Rate,0) as Rate FROM SATrRate '
         +'  WHERE Convert(varchar(8),Transdate,112) <='''+ Formatdatetime('yyyyMMdd',tgl)+''''
         +'  ORDER BY TransDate desc');
     Open;
  End;
End;
Function Carirate(quData : TADOQuery;Valuta : String;tgl : TDateTime) : real;
begin
  with quData,sql do
  Begin
     Close;Clear;
     add(' Select top 1 Rate FROM SATRRateBI WHERE ValutaID='''+Valuta+''' AND '
         +' Convert(varchar(20),Transdate,112) <='''+Formatdatetime('yyyyMMdd',tgl)+''' ORDER BY TransDate desc');
     Open;
  End;
End;

Function Carirate2(quData : TADOQuery;Valuta : String;tgl : TDateTime) : Real;
begin
  with quData,sql do
  Begin
     Close;Clear;
     add(' Select top 1 Rate FROM SATRRateTax WHERE ValutaID='''+Valuta+''' AND '
         +' Convert(varchar(20),Transdate,112) <='''+Formatdatetime('yyyyMMdd',tgl)+''' ORDER BY TransDate desc');
     Open;
  End;
End;

function RataKanan(lebar : integer; data : string) : string;
var i : integer;
    temp : string;
begin
  temp := '';
  data := trim(data);
  for i:=1 to lebar - length(data) do
    temp := temp + ' ';
  temp := temp + data;
  RataKanan := temp;
  RataKanan := copy(temp, length(temp) - lebar + 1, lebar);
end;

function RataKiri(lebar : integer; data : string) : string;
var i : integer;
    temp : string;
begin
  temp := '';
  data := trim(data);
  for i:=1 to lebar - length(data) do
    temp := temp + ' ';
  RataKiri := data + temp;
  RataKiri := copy(data + temp, 1, lebar);
end;

Function PeriodeRomawi(tgl : TDateTime) : string;
Begin
  case MonthOf(tgl)  of
     1  : PeriodeRomawi := 'I';
     2  : PeriodeRomawi := 'II';
     3  : PeriodeRomawi := 'III';
     4  : PeriodeRomawi := 'IV';
     5  : PeriodeRomawi := 'V';
     6  : PeriodeRomawi := 'VI';
     7  : PeriodeRomawi := 'VII';
     8  : PeriodeRomawi := 'VIII';
     9  : PeriodeRomawi := 'IX';
    10  : PeriodeRomawi := 'X';
    11  : PeriodeRomawi := 'XI';
    12  : PeriodeRomawi := 'XII';
  end;
End;

Function Periode(tgl : TDateTime; Full : boolean) : string;
Begin
  case MonthOf(tgl)  of
    1  : if Full then
           Periode := IntToStr(DayOfTheMonth(tgl)) + ' Januari ' + inttostr(YearOf(tgl))
         else
           Periode := IntToStr(DayOfTheMonth(tgl)) + '/Jan/' + inttostr(YearOf(tgl));
    2  : if Full then
           Periode := IntToStr(DayOfTheMonth(tgl)) + ' Februari ' + inttostr(YearOf(tgl))
         else
           Periode := IntToStr(DayOfTheMonth(tgl)) + '/Feb/' + inttostr(YearOf(tgl));
    3  : if Full then
           Periode := IntToStr(DayOfTheMonth(tgl)) + ' Maret ' + inttostr(YearOf(tgl))
         else
           Periode := IntToStr(DayOfTheMonth(tgl)) + '/Mar/' + inttostr(YearOf(tgl));
    4  : if Full then
           Periode := IntToStr(DayOfTheMonth(tgl)) + ' April ' + inttostr(YearOf(tgl))
         else
           Periode := IntToStr(DayOfTheMonth(tgl)) + '/Apr/' + inttostr(YearOf(tgl));
    5  : if Full then
           Periode := IntToStr(DayOfTheMonth(tgl)) + ' Mei ' + inttostr(YearOf(tgl))
         else
           Periode := IntToStr(DayOfTheMonth(tgl)) + '/Mei/' + inttostr(YearOf(tgl));
    6  : if Full then
           Periode := IntToStr(DayOfTheMonth(tgl)) + ' Jun ' + inttostr(YearOf(tgl))
         else
           Periode := IntToStr(DayOfTheMonth(tgl)) + '/Jun/' + inttostr(YearOf(tgl));
    7  : if Full then
           Periode := IntToStr(DayOfTheMonth(tgl)) + ' Jul ' + inttostr(YearOf(tgl))
         else
           Periode := IntToStr(DayOfTheMonth(tgl)) + '/Jul/' + inttostr(YearOf(tgl));
    8  : if Full then
           Periode := IntToStr(DayOfTheMonth(tgl)) + ' Agustus ' + inttostr(YearOf(tgl))
         else
           Periode := IntToStr(DayOfTheMonth(tgl)) + '/Ags/' + inttostr(YearOf(tgl));
    9  : if Full then
           Periode := IntToStr(DayOfTheMonth(tgl)) + ' September ' + inttostr(YearOf(tgl))
         else
           Periode := IntToStr(DayOfTheMonth(tgl)) + '/Sep/' + inttostr(YearOf(tgl));
    10  : if Full then
           Periode := IntToStr(DayOfTheMonth(tgl)) + ' Oktober ' + inttostr(YearOf(tgl))
         else
           Periode := IntToStr(DayOfTheMonth(tgl)) + '/Okt/' + inttostr(YearOf(tgl));
    11  : if Full then
           Periode := IntToStr(DayOfTheMonth(tgl)) + ' November ' + inttostr(YearOf(tgl))
         else
           Periode := IntToStr(DayOfTheMonth(tgl)) + '/Nov/' + inttostr(YearOf(tgl));
    12  : if Full then
           Periode := IntToStr(DayOfTheMonth(tgl)) + ' Desember ' + inttostr(YearOf(tgl))
         else
           Periode := IntToStr(DayOfTheMonth(tgl)) + '/Des/' + inttostr(YearOf(tgl));
  end;
End;

Function HASPIs(var HaspErrorCode :integer) : boolean;
begin
  if CekHasp then
    begin
      Param3 := 0;
      HaspErrorCode := Param3;
      hasp(1, SeedCode, PortNum, pass1 - 1, pass2 - 1, Param1, Param2, Param3, Param4);
      if (Param1 = 0) then { if port number = 0, HASP not found }
        begin
          HASPIs :=false;
          HaspErrorCode := Param3;
        end
      else
        HASPIs :=true;
    end
  else
    HASPIs := true;
end;

Function GetHaspCode : longint;
var IDHASP : longint;
begin
  if CekHasp then
    begin
      Param1 := 0;
      Param2 := 0;
      hasp (6, SeedCode, PortNum, Pass1 - 1, Pass2 - 1, Param1, Param2, Param3, Param4 );
      if Param3 <> 0   then
         GetHaspCode :=  Param3 // 'HASP tidak valid. Error Code : ' + inttostr(Param3))
      else
        begin
          IDHASP := word(Param2);
          IDHASP := IDHASP shl 16;
          IDHASP := IDHASP + word(Param1);
          GetHaspCode := IDHASP;
        end;
    end
  else
    GetHaspCode := HARDCODE;
end;

Procedure SelectQuery(quData : TADOQuery; SQlQuery: string);
Begin
  with quData do
    begin
      if active then close;
      SQl.Text := SQLQuery;
      Open;
      if quData.RecordCount > 0 then
       First;
    end;
end;

Procedure RunQuery(quData : TADOQuery; SQlQuery: string);
Begin
  with quData do
    begin
      if active then close;
      SQl.Text := SQLQuery;
      Execsql;
    end;
end;

Procedure CekButton(bb1,bb2,bb3,bb4,bb5 : TBitbtn; dbaNav : TDBNavigator; status : integer);
Begin
   bb1.Enabled := status and 16=16;
   bb2.Enabled := status and 8=8;
   bb3.Enabled := status and 4=4;
   bb4.Enabled := status and 2=2;
   bb5.Enabled := status and 1=1;
   dbaNav.Enabled := not bb4.Enabled;
End;

Function RunNumberGL(quData : TADOQuery; table,field, cari, flag : string) : integer;
var query : string;
begin
  query := 'select isnull(max( case when isnumeric(substring(' + Field + ', len(''' + cari + ''') + 1,'+
                  ' len('+ Field + ') - len(''' + Cari + '''))) = 1 then substring(' + Field + ', len(''' + cari + ''') + 1,'+
                  ' len('+ Field + ') - len(''' + Cari + ''')) else 0 end ), 0) as total'+
               ' from ' + table +
               ' where ' + field + ' like ''' + cari + '%'' ';

  with quData do
  begin
      if active then Close;
      SQL.Text  :=  query;
      open;
  end;
  RunNumberGL := quData.fieldbyname('total').AsInteger;
end;




Function RunNumberDepan(quData : TADOQuery; table,field, cari, digit: string) : integer;
var t : string;
begin
  with quData do
    begin
      if active then Close;
      SQl.Text := ' select isnull(max(case when isnumeric(LEFT(' + Field + ',' + digit + ')) = 1 then'+
                  ' LEFT(' + Field + ',' + digit + ') else 0 end), 0) as total'+
                  ' from ' + table +
                  ' where len(' + field + ') >=' + digit + ' and substring(' + field + ', ' + digit + ' + 1, len(' + field + ') - ' + digit + ') like ''%' + cari + '%''';
      t := sql.text;
      open;
    end;
  if quData.FieldByName('total').AsString = '' then
    RunNumberDepan := 1
  else
    RunNumberDepan := quData.fieldbyname('total').AsInteger + 1;
end;

Function RunNumber(quData : TADOQuery; table,field, cari, proid: string) : integer;
begin
  with quData do
    begin
      if active then Close;
      SQl.Text := 'select isnull(max(case when isnumeric(substring(' + Field + ', len(''' + cari + ''') + 1,'+
                  ' len('+ Field + ') - len(''' + Cari + '''))) = 1 then substring(' + Field + ', len(''' + cari + ''') + 1,'+
                  ' len('+ Field + ') - len(''' + Cari + ''')) else 0 end), 0) as total'+
                  ' from ' + table +
                  ' where ' + field + ' like ''%' + copy(cari,3,7) + '%''';
      open;
    end;
  if quData.FieldByName('total').AsString = '' then
    RunNumber := 1
  else
    RunNumber := quData.fieldbyname('total').AsInteger + 1;
end;


function CharToAgus(data : char; acak:integer):string;
var asc : integer;
    hsl : string;
Begin
  asc := ord(data)+acak;
  hsl := 'AA';
  hsl[1] := chr((asc div 16)+65);
  hsl[2] := chr((asc mod 16)+65);
  chartoAgus := hsl;
End;

function AgusToChar(data : string; acak:integer):char;
var asc : integer;
Begin
  asc := (ord(data[1])-65)*16 + ord(data[2])-65;
  asc := asc - acak;
  AgusToChar := chr(asc);
End;

function angka(bil : char):string;
var hsl : string;
begin
  case bil of
    '1' : hsl := 'satu ';
    '2' : hsl := 'dua ';
    '3' : hsl := 'tiga ';
    '4' : hsl := 'empat ';
    '5' : hsl := 'lima ';
    '6' : hsl := 'enam ';
    '7' : hsl := 'tujuh ';
    '8' : hsl := 'delapan ';
    '9' : hsl := 'sembilan ';
  end;
  angka := hsl;
end;

function angka2(bil : char):string;
var hsl : string;
begin
  case bil of
    '1' : hsl := 'Satu ';
    '2' : hsl := 'Dua ';
    '3' : hsl := 'Tiga ';
    '4' : hsl := 'Empat ';
    '5' : hsl := 'Lima ';
    '6' : hsl := 'Enam ';
    '7' : hsl := 'Tujuh ';
    '8' : hsl := 'Delapan ';
    '9' : hsl := 'Sembilan ';
  end;
  angka2 := hsl;
end;

function convert(bil : String):String;
var data,hsl,baca, pecahan : string;
    pan, bagian, sisa, hbs, ctr : integer;
begin
   ctr := pos('.', bil);
   pecahan := '';
   if ctr > 0 then
     begin
       pecahan := copy(bil, ctr + 1, length(bil) - ctr);
       bil := copy(bil, 1, ctr - 1);
     end
   else
     begin
       ctr := pos(',', bil);
       if ctr > 0 then
         begin
           pecahan := copy(bil, ctr + 1, length(bil) - ctr);
           bil := copy(bil, 1, ctr - 1);
         end;
     end;

   if bil <> '0' then
     begin
       data := bil;
       pan := length(data);
       bagian := pan div 3;
       sisa := pan mod 3;
       if sisa=0 then
         begin
           bagian := bagian - 1;
           sisa := 3;
         end;
       hsl := '';
       while length(data)>0 do
        begin
           baca := copy(data,1,sisa);
           if length(data)>3 then
             data := copy(data,sisa+1,length(data)-sisa)
           else
             data := '';
           hbs := StrToInt(baca);
           while length(baca)>0 do
             begin
               if length(baca)=3 then
                 begin
                   if baca[1]='1' then
                     hsl := hsl + 'seratus '
                   else
                     if baca[1]<>'0' then
                       hsl := hsl + angka(baca[1]) +'ratus ';
                 end
               else
                 if length(baca)=2 then
                   begin
                     if baca[1]='1' then  // belasan
                       begin
                         if baca[2]='0' then
                           hsl := hsl + 'sepuluh '
                         else
                           if baca[2]='1' then
                              hsl := hsl + 'sebelas '
                           else
                              hsl := hsl + angka(baca[2]) + 'belas ';
                         baca := '';
                       end
                     else
                       begin
                          if baca[1]<>'0' then
                            hsl := hsl + angka(baca[1]) + 'puluh ';
                       end;
                   end
                 else
                   begin // untuk seribu
                     if (sisa=1) and (bagian=1) and (baca[1]='1')then
                       hsl := hsl + 'se'
                     else
                       hsl := hsl + angka(baca[1]);
                     baca := '';
                   end;
               if length(baca)>1 then // buat jaga jaga agar tidak error string
                 baca := copy(baca,2,length(baca)-1);
             end;
           if hbs<>0 then
             case bagian of
               1 : hsl := hsl + 'ribu ';
               2 : hsl := hsl + 'juta ';
               3 : hsl := hsl + 'miliar ';
               4 : hsl := hsl + 'triliun ';
               5 : hsl := hsl + 'bilion ';
             end;
           sisa := 3;
           bagian := bagian - 1;
        end;
      end
    else
      hsl := 'nol';
//    StrPCopy(bil,hsl);
    if pecahan <> '' then
      begin
        pan := strtoint(pecahan);
        if pan <> 0 then
          begin
            hsl := hsl + 'koma ' + IntToStr(pan) + ' ';
//            hsl := hsl + ' ' + inttostr(pan) + '/1';
            for pan:= 1 to length(pecahan) do
              hsl := hsl ;
//              hsl := hsl + '0 ';
          end;
      end;
    convert := '# ' + hsl;
end;

function convert2(bil : String):String;
var data,hsl,baca, pecahan : string;
    pan, bagian, sisa, hbs, ctr : integer;
begin
   ctr := pos('.', bil);
   pecahan := '';
   if ctr > 0 then
     begin
       pecahan := copy(bil, ctr + 1, length(bil) - ctr);
       bil := copy(bil, 1, ctr - 1);
     end
   else
     begin
       ctr := pos(',', bil);
       if ctr > 0 then
         begin
           pecahan := copy(bil, ctr + 1, length(bil) - ctr);
           bil := copy(bil, 1, ctr - 1);
         end;
     end;

   if bil <> '0' then
     begin
       data := bil;
       pan := length(data);
       bagian := pan div 3;
       sisa := pan mod 3;
       if sisa=0 then
         begin
           bagian := bagian - 1;
           sisa := 3;
         end;
       hsl := '';
       while length(data)>0 do
        begin
           baca := copy(data,1,sisa);
           if length(data)>3 then
             data := copy(data,sisa+1,length(data)-sisa)
           else
             data := '';
           hbs := StrToInt(baca);
           while length(baca)>0 do
             begin
               if length(baca)=3 then
                 begin
                   if baca[1]='1' then
                     hsl := hsl + 'Seratus '
                   else
                     if baca[1]<>'0' then
                       hsl := hsl + angka2(baca[1]) +'Ratus ';
                 end
               else
                 if length(baca)=2 then
                   begin
                     if baca[1]='1' then  // belasan
                       begin
                         if baca[2]='0' then
                           hsl := hsl + 'Sepuluh '
                         else
                           if baca[2]='1' then
                              hsl := hsl + 'Sebelas '
                           else
                              hsl := hsl + angka2(baca[2]) + 'Belas ';
                         baca := '';
                       end
                     else
                       begin
                          if baca[1]<>'0' then
                            hsl := hsl + angka2(baca[1]) + 'Puluh ';
                       end;
                   end
                 else
                   begin // untuk seribu
                     if (sisa=1) and (bagian=1) and (baca[1]='1')then
                       hsl := hsl + 'Se'
                     else
                       hsl := hsl + angka2(baca[1]);
                     baca := '';
                   end;
               if length(baca)>1 then // buat jaga jaga agar tidak error string
                 baca := copy(baca,2,length(baca)-1);
             end;
           if hbs<>0 then
             case bagian of
               1 : hsl := hsl + 'Ribu ';
               2 : hsl := hsl + 'Juta ';
               3 : hsl := hsl + 'Miliar ';
               4 : hsl := hsl + 'Triliun ';
               5 : hsl := hsl + 'Kuadriliun ';
             end;
           sisa := 3;
           bagian := bagian - 1;
        end;
      end
    else
      hsl := 'Nol';
//    StrPCopy(bil,hsl);
    if pecahan <> '' then
      begin
        pan := strtoint(pecahan);
        if pan <> 0 then
          begin
            hsl := hsl + 'Koma ' + IntToStr(pan) + ' ';
//            hsl := hsl + ' ' + inttostr(pan) + '/1';
            for pan:= 1 to length(pecahan) do
              hsl := hsl ;
//              hsl := hsl + '0 ';
          end;
      end;
    convert2 := hsl;
end;

function convertlain(bil : String; Valuta : string ):String;
var data,hsl,baca, pecahan : string;
    pan, bagian, sisa, hbs, ctr : integer;
begin
   ctr := pos('.', bil);
   pecahan := '';
   if ctr > 0 then
     begin
       pecahan := copy(bil, ctr + 1, length(bil) - ctr);
       bil := copy(bil, 1, ctr - 1);
     end
   else
     begin
       ctr := pos(',', bil);
       if ctr > 0 then
         begin
           pecahan := copy(bil, ctr + 1, length(bil) - ctr);
           bil := copy(bil, 1, ctr - 1);
         end;
     end;

   if bil <> '0' then
     begin
       data := bil;
       pan := length(data);
       bagian := pan div 3;
       sisa := pan mod 3;
       if sisa=0 then
         begin
           bagian := bagian - 1;
           sisa := 3;
         end;
       hsl := '';
       while length(data)>0 do
        begin
           baca := copy(data,1,sisa);
           if length(data)>3 then
             data := copy(data,sisa+1,length(data)-sisa)
           else
             data := '';
           hbs := StrToInt(baca);
           while length(baca)>0 do
             begin
               if length(baca)=3 then
                 begin
                   if baca[1]='1' then
                     hsl := hsl + 'seratus '
                   else
                     if baca[1]<>'0' then
                       hsl := hsl + angka(baca[1]) +'ratus ';
                 end
               else
                 if length(baca)=2 then
                   begin
                     if baca[1]='1' then  // belasan
                       begin
                         if baca[2]='0' then
                           hsl := hsl + 'sepuluh '
                         else
                           if baca[2]='1' then
                              hsl := hsl + 'sebelas '
                           else
                              hsl := hsl + angka(baca[2]) + 'belas ';
                         baca := '';
                       end
                     else
                       begin
                          if baca[1]<>'0' then
                            hsl := hsl + angka(baca[1]) + 'puluh ';
                       end;
                   end
                 else
                   begin // untuk seribu
                     if (sisa=1) and (bagian=1) and (baca[1]='1')then
                       hsl := hsl + 'se'
                     else
                       hsl := hsl + angka(baca[1]);
                     baca := '';
                   end;
               if length(baca)>1 then // buat jaga jaga agar tidak error string
                 baca := copy(baca,2,length(baca)-1);
             end;
           if hbs<>0 then
             case bagian of
               1 : hsl := hsl + 'ribu ';
               2 : hsl := hsl + 'juta ';
               3 : hsl := hsl + 'miliar ';
               4 : hsl := hsl + 'triliun ';
               5 : hsl := hsl + 'bilion ';
             end;
           sisa := 3;
           bagian := bagian - 1;
        end;
      end
    else
      hsl := 'nol';
//    StrPCopy(bil,hsl);
    if pecahan <> '' then
      begin
        pan := strtoint(pecahan);
        if pan <> 0 then
          begin
            hsl := hsl + ' ' + inttostr(pan) + '/1';
            for pan:= 1 to length(pecahan) do
              hsl := hsl + '0';
          end;
      end;
    convertlain := '# ' + hsl + valuta ;
end;
Function Crypt(Data :string):string;
var pan,i,ctr : integer;
    hsl : string;
    tamp : char;
begin
  pan := length(data);
  randomize;
  for i:=1 to pan do
    begin
      tamp:= data[i];
      ctr := (i*ROTATE) mod pan;
      if ctr=0 then
        ctr:= pan;
      data[i] := data[ctr];
      data[ctr] := tamp;
    end;
  hsl := '';
  for i:=1 to pan do
    begin
      hsl := hsl + chartoagus(data[i],i*ROTATE);
    end;
  Crypt := hsl;
end;

Function Decrypt(data : string):string;
var pan,i,ctr : integer;
    hsl : string;
    tamp : char;
begin
  pan := length(data) div 2;
  hsl := '';
  for i:=1 to pan do
    begin
      hsl := hsl +  agustochar(copy(data,(i-1)*2+1,2),i*ROTATE);
    end;
  data := hsl;
  for i:=pan downto 1 do
    begin
      tamp := data[i];
      ctr := (i*ROTATE) mod pan;
      if ctr = 0 then
        ctr := pan;
      data[i] := data[ctr];
      data[ctr] := tamp;
    end;
    DeCrypt := data;
end;

Procedure pesan(data : string);
Begin
  messagedlg(data,mtinformation,[mbok],0);
End;

Function DataSelect(quData :Tadoquery; dgrData:TDBGrid; FieldName : string; isnum:boolean):string;
var data : string;
    i : integer;
Begin
  data := '(';
  quData.DisableControls;
  dgrData.SelectedRows.CurrentRowSelected := true;
  for i:=0 to dgrData.SelectedRows.Count -1 do
    Begin
      quData.Bookmark := dgrData.SelectedRows.Items[i];
      if not isnum then
        data := data + #39 + quData.fieldbyname(FieldName).AsString + #39 + ','
      else
        data := data + quData.fieldbyname(FieldName).AsString + ',';
    end;
  quData.EnableControls;
  delete(data,length(data),1);
  data := data + ')';
  if dgrData.SelectedRows.Count > 0 then
    DataSelect := data
  else
    if isnum then
      DataSelect := '(13525)'
    else
      DataSelect := '(''#@#@#@#'')';
end;

Function DataSelectField(quData :Tadoquery; dgrData:TDBGrid; FieldName1 : string; FieldName2 : string):string;
var data : string;
    i : integer;
Begin
  data := '(';
  quData.DisableControls;
  dgrData.SelectedRows.CurrentRowSelected := true;
  for i:=0 to dgrData.SelectedRows.Count -1 do
    Begin
      quData.Bookmark := dgrData.SelectedRows.Items[i];
      data := data + #39 + quData.fieldbyname(FieldName1).AsString + quData.fieldbyname(FieldName2).AsString + #39 + ','
    end;
  quData.EnableControls;
  delete(data,length(data),1);
  data := data + ')';
  if dgrData.SelectedRows.Count > 0 then
    DataSelectField := data
  else
    DataSelectField := '(''#@#@#@#'')';
end;


Function ClearKutip(data : string) : string;
Begin
  ClearKutip := Trim(StringReplace(data, '''', '', [rfReplaceAll]));
End;

Function ClearGarisMiring(data : string) : string;
Begin
  ClearGarisMiring := Trim(StringReplace(data, '/', '', [rfReplaceAll]));
End;

Function ClearKotak(data : string) : string;
Begin
  ClearKotak := Trim(StringReplace(data,#13, ' ', [rfReplaceAll]));
End;

Function CekAngka(Tekan : char) : char;
begin
  if ((Tekan <'0') or (Tekan > '9')) and (Tekan <>#8) then
    Tekan := #0;
  CekAngka := tekan;
End;

Function DataString(quData : TADOQuery; Field : string) : TStrings;
var data : TStrings;
    t : string;
Begin
  data := TStringList.Create;
  quData.First;
  t := '<><><><><>';
  while not quData.Eof do
    begin
      if quData.fieldbyname(field).AsString <> t then
        begin
          data.Add(quData.fieldbyname(field).AsString);
          t := quData.fieldbyname(field).AsString;
        end;
      quData.Next;
    end;
  DataString := Data;
End;

Function FormatRptkurung(Value : string) : string;var t  : real;
begin
  if value = '' then
    t := 0
  else
    t := strtofloat(value);
  if t >= 0 then
    FormatRptkurung := FormatFloat(sDisFormat, t)
  else
    FormatRptkurung := '('+ FormatFloat(sDisFormat, t * -1) + ')';
End;

Function FormatRpt(Value : string) : string;
var t  : real;
begin
  if value = '' then
    t := 0
  else
    t := strtofloat(value);
  FormatRpt := FormatFloat(sDisFormat, t);
End;

Function FormatRptqtykurung(Value : string) : string;
var t  : real;
begin
  if value = '' then
    t := 0
  else
    t := strtofloat(value);
  if t >= 0 then
    FormatRptqtykurung := FormatFloat(sDisFormat1, t)
  else
    FormatRptqtykurung := '('+ FormatFloat(sDisFormat1, t) + ')';
End;

end.

