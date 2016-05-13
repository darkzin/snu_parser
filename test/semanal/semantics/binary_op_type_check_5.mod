module semantics;


// type checks
procedure Expressions(p1, p2, p3, p4: integer);
var a,b,c: boolean;
    i,j,k: integer;
    A    : integer[10];
begin
  a := !!!b;                // pass
  a := a && (!b);           // pass

  i := j + b;               // fail
  i := j && k || p1;        // fail
  i := !j;                  // fail
  i := j + -k;              // fail
  i := j + (-k);            // pass

  a := a && !b && (i < j)   // pass
         && (j < k)
         || (i = k)
end Expressions;

begin
end semantics.
