module arrays;

var A: integer[10];             // pass
    B: integer[10][5][10];      // pass
    D: boolean[5];              // pass

procedure p2(a: integer[][5][]);  // pass
var b: integer[5][5][5];          // pass
    c: integer[5][7][9];          // pass
begin
  p2(c);                          // fail

  a[0][0][0] := 0
end p2;

begin
end arrays.

