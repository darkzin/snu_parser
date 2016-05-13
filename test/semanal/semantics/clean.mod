//
// semantics.mod
//
// semantic anaysis
// - constants assignments (range, type, unary operators)
// - variable definitions (use before def, multiple definitions)
// - function parameters (number, type)
// - type checking
//   - expressions: compatible operations/operands
//   - assignments: type of LHS = type of RHS
//   - return statements: correct type
//   - boolean types for conditions
//
// - does not test arrays and strings

module semantics;


var u,v: boolean;             // pass
    d,e: char;                // pass
    x,y: integer;             // pass
    a  : integer[10];         // pass
    b  : integer[5][10];      // pass
    str: char[256];           // pass


// empty procedure
procedure ProcedureCall();
begin
end ProcedureCall;

// empty function. This is considered correct code
// even though there is no return statement.
function FunctionCall(): integer;
begin
end FunctionCall;


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

  // character variables
  c := 'a';                   // pass
  d := '\n';                  // pass

  i := -0;                    // pass
  i := +0;                    // pass
  i := -2147483648;           // pass (min int)
  j :=  2147483647;           // pass (max int)

  a := true
end Constants;


// variable definitions
procedure UseBeforeDef(k: integer);
var i,j: integer;
begin
  i := j;                     // pass
  i := k;                     // pass
  i := x;                     // pass

  i := 0
end UseBeforeDef;


// parameters: too many/few/wrong type of parameters
procedure Parameters(p1, p2: integer);
begin
  Parameters(p2,p1);        // pass
  Parameters(1,2)           // pass
end Parameters;


// type checks
procedure Expressions(p1, p2, p3, p4: integer);
var a,b,c: boolean;
    i,j,k: integer;
    A    : integer[10];
begin
  a := !!!b;                // pass
  a := a && (!b);           // pass

  i := j + (-k);            // pass

  a := a && !b && (i < j)   // pass
         && (j < k)
         || (i = k)
end Expressions;


// type checks involving arraysk
procedure Arrays();
var a: boolean;
    i: integer;
    A: integer[10];
    B: integer[10][20];
    D: char[5];
    E: boolean[20];
begin
  A[0] := i;                  // pass
  A[-1] := B[0][0];           // pass
  B[0][0] := i;               // pass
  E[0] := B[A[0]][A[1]] > 0   // pass
end Arrays;

begin
  u := v;                   // pass
  x := y+1                  // pass
end semantics.
