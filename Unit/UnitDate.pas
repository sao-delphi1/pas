unit UnitDate;

interface

Uses SysUtils;

function GetYear(Tgl:TDateTime):Word;
function GetMonth(Tgl:TDateTime):Word;

implementation

function GetMonth(Tgl:TDateTime):Word;
var d, m, y : word;
begin
   DecodeDate(Tgl,y,m,d);
   Result := m;
end;

function GetYear(Tgl:TDateTime):Word;
var d, m, y : word;
begin
   DecodeDate(Tgl,y,m,d);
   Result := y;
end;

end.
