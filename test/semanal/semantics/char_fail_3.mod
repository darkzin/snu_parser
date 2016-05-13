module semantics;

// constant assignments and unary +/-/! operations
procedure Constants;
var a,b: boolean;
    c,d: char;
    i,j: integer;
    s  : char[14];
begin
  // character variables
  d := 0;                     // fail

  i := -0;                    // pass
  i := +0;                    // pass
  i := --0;                   // fail
  i := +-0;                   // fail
  i := -2147483648;           // pass (min int)
  j :=  2147483647;           // pass (max int)
  i := -2147483649;           // fail (<min int)
  j :=  2147483648;           // fail (>max int)
  i := true;                  // fail
  i := 'a';                   // fail

  a := true
end Constants;

begin
  u := v;                   // pass
  x := y+1                  // pass
end semantics.
