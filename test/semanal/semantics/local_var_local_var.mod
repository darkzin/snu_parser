module semantics;

// multiple definitions
procedure MultipleDef(i: integer);
    m,m: integer;             // fail (local var - local var)
begin
  i := 1
end MultipleDef;

begin
end semantics.
