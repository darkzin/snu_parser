module semantics;

// type checks involving arraysk
procedure Arrays();
var a: boolean;
    i: integer;
    A: integer[10];
    B: integer[10][20];
    D: char[5];
    E: boolean[20];
begin
  a[0] := true;               // fail
  A[0] := i;                  // pass
  A[-1] := B[0][0];           // pass
  A[0][0] := i;               // fail
  B[0][0] := i;               // pass
  D[1] := A[0];               // fail
  E[0] := B[A[0]][A[1]] > 0   // pass
end Arrays;

begin
end semantics.
