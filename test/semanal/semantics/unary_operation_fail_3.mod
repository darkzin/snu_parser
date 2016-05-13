module semantics;

// constant assignments and unary +/-/! operations
procedure Constants;
var a,b: boolean;
    c,d: char;
    i,j: integer;
    s  : char[14];
begin
  // boolean variables
  a := true;                  // pass
  a := false;                 // pass
  a := !true;                 // pass
  a := !!!true;               // pass
  a := !false;                // pass
  a := 'a';                   // fail

  // character variables
  c := 'a';                   // pass
  d := '\n';                  // pass
  c := +'0';                  // fail
  c := true;                  // fail
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
end semantics.
