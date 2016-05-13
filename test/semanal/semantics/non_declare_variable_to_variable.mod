module semantics;

// variable definitions
procedure UseBeforeDef(k: integer);
var i,j: integer;
begin
  i := j;                     // pass
  i := k;                     // pass
  i := x;                     // pass
  i := z;                     // fail

  i := 0
end UseBeforeDef;

begin
end semantics.
