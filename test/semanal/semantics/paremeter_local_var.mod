module semantics;

// multiple definitions
procedure MultipleDef(i: integer);
var i: integer;               // fail (parameter - local var)
    m,m: integer;             // fail (local var - local var)
begin
  i := 1
end MultipleDef;

begin
end semantics.
