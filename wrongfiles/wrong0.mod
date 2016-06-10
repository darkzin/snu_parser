module test;
var v0 : boolean;
function dummyINTfunc() : integer ;
begin

end dummyINTfunc;

function dummyCHARfunc() : char ;
begin

end dummyCHARfunc;

function dummyBOOLfunc() : boolean ;
begin

end dummyBOOLfunc;

procedure dummyProcedure() ;
begin

end dummyProcedure;

function f0() : boolean ;
begin
dummyProcedure();
return true && false || false || false;
while (('a' # 'c'))
do
  dummyCHARfunc()
end
end f0;

function f1(v1 : char ; v2 : char ; v3 : char[3][4][4][9][5] ; v4 : boolean[10][8][10][6][5]) : integer ;
begin
dummyCHARfunc();
return 68711 + 92969 * 54363 * 11347;
return (72806) + 34754
end f1;

function f2(v1 : boolean[2][8][6][7][2]) : char ;
var v4 : boolean[10][8][10][6][5];
v5 : char;
v2 : integer;
v3 : char[3][4][4][9][5];
begin
v2 := 58313;
f1((('a')), 'c', v3, v4);
v3[27099][2230][72654][27276][66227] := dummyCHARfunc()
end f2;

begin
v0 := 'b' = 'c';
return;
v0 := false && true # true;
return;
v0 := ReadInt() = 90580
end test.

