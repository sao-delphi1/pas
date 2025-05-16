unit UnitDatabase;

interface

uses ADODB;

procedure OpenQuery(qu:TADOQuery);overload;
procedure OpenQuery(qu:TADOQuery;StrQuery:String);overload;


implementation

uses DB;

procedure OpenQuery(qu:TADOQuery);
begin
   with qu do
   begin
      Close;
      Open;
   end;
end;

procedure OpenQuery(qu:TADOQuery;StrQuery:String);overload;
begin
   with qu,SQL do
   begin
      Close; Clear;
      Add(StrQuery);
      Open;
   end;
end;



end.
