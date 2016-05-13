module arrays;

var A: integer[10];             // pass
    B: integer[10][5][10];      // pass
    D: boolean[5];              // pass

function strcpy(src, dst: char[]): integer; // pass
var res10: char[10];
    res5 : char[5];
begin
  return;                         // fail

  return 1
end strcpy;

begin
end arrays.

