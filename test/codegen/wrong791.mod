module test;
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

procedure f0(v0 : integer[3][8][4][4][3] ; v1 : boolean ; v2 : integer[9][9][1][7][4] ; v3 : integer) ;
var v4 : char;
begin
v4 := 'a';
v1 := ('c' >= 'a');
v4 := 'b'
end f0;

procedure f1(v0 : boolean[1][8][10][3][4] ; v1 : integer[3][9][9][3][10] ; v2 : integer ; v3 : char) ;
var v4 : boolean;
begin
v3 := 'd';
if (false || false || false || false)
then
  v3 := 'd'
end;
v4 := 45228 > 54437
end f1;

function f2(v0 : boolean ; v1 : char ; v2 : char[5][1][4][4][5]) : integer ;
var v3 : integer;
begin
return dummyINTfunc();
while (true || true)
do
  dummyINTfunc();
  v2[32964][40505][67189][27146][62352] := 'd';
  v0 := true;
  v1 := 'c'
end;
v3 := 71461
end f2;

begin
return;
WriteChar((dummyCHARfunc()));
while (false)
do
  return
end;
return;
while (dummyBOOLfunc())
do
  
end
end test.

