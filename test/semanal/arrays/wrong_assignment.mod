module arrays;

var A: integer[10];             // pass
    B: integer[10][5][10];      // pass
    D: boolean[5];              // pass

procedure p1(A,B: integer[]; C: integer[][][]); // pass
var i: integer;
    c: char;
    b: boolean;
    X,Y: integer[5];
begin
  c := A[0];                      // fail
  b := A[0];                      // fail

  A[0] := A[0];                   // pass
  A := B;                         // pass (pointer-copy)
  A := C;                         // fail (incompatible pointer types)
  X := Y;                         // fail (array assignments not supported)

  A := B[0];                      // fail
  A[0] := B;                      // fail

  A[A] := i;                      // fail

  b := D[0];                      // pass
  i := D[0];                      // fail

  i := 0
end p1;

procedure p2(a: integer[][5][]);  // pass
var b: integer[5][5][5];          // pass
    c: integer[5][7][9];          // pass
    d: integer[][5][];            // fail
begin
  p2(a);                          // pass
  p2(1);                          // fail
  p2(a[0]);                       // fail
  p2(a, a);                       // fail

  p2(B);                          // pass
  p2(b);                          // pass
  p2(c);                          // fail

  a[0][0][0] := 0
end p2;

function strcpy(src, dst: char[]): char[];  // fail
//function strcpy(src, dst: char[]): char[5]; // fail
//function strcpy(src, dst: char[]): integer; // pass
var res10: char[10];
    res5 : char[5];
begin
  return res10;                   // fail
  return res5;                    // fail

  return;                         // fail

  return 1
end strcpy;

begin
end arrays.

