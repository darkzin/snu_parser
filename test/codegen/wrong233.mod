module test;
var v3 : char[4][7][3][6][7];
v0 : boolean;
v1 : integer[4][4][8][10][9];
v2 : char[1][6][9][9][6];
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

function f0(v0 : integer[4][4][8][10][9] ; v1 : char[1][6][9][9][6] ; v2 : char ; v3 : char[4][7][3][6][7]) : char ;
begin
ReadInt();
if (true)
then
  dummyINTfunc()
end;
dummyCHARfunc()
end f0;

procedure f1(v0 : boolean ; v1 : boolean ; v2 : boolean) ;
var v4 : integer;
v3 : char;
begin
dummyINTfunc();
v3 := ('c');
v4 := (22212)
end f1;

function f2() : integer ;
var v0 : integer;
begin
return ReadInt();
v0 := dummyINTfunc() - 77252;
return ReadInt() + 62559
end f2;

begin
dummyBOOLfunc();
if (false)
then
  return;
  v0 := 'b' >= 'a'
end;
while (('d') <= f0(v1, v2, 'b', v3))
do
  
end
end test.

