module semantics;

// constant assignments and unary +/-/! operations
procedure Constants;
var a,b: boolean;
    c,d: char;
    i,j: integer;
    s  : char[14];
begin
  i := -2147483648;           // pass (min int)
  j :=  2147483647;           // pass (max int)
  i := true;                  // fail
  i := 'a';                   // fail

  a := true
end Constants;

begin
end semantics.
