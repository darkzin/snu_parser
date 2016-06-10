module test;
var v3 : char[8][6][8][4][6];
v0 : boolean;
v1 : integer;
v2 : char[3][6][5][6][5];
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

function f0(v1 : boolean ; v2 : char[4][9][10][2][5] ; v3 : integer) : integer ;
begin
dummyCHARfunc();
v3 := 31824;
return ReadInt()
end f0;

function f1(v1 : char[3][6][5][6][5] ; v2 : boolean ; v3 : char ; v4 : char[8][6][8][4][6]) : char ;
var v5 : integer;
begin
v5 := 82392;
v2 := false || true || true;
return (dummyCHARfunc())
end f1;

function f2(v1 : integer ; v2 : boolean ; v3 : char[5][5][6][3][7] ; v4 : integer[3][4][4][8][5]) : char ;
var v7 : char;
v5 : char[3][6][5][6][5];
v6 : char[8][6][8][4][6];
begin
return (f1(v5, 'b' <= 'c', 'b', v6));
v6[32143][39235][30557][74010][30199] := dummyCHARfunc();
WriteChar('b')
end f2;

begin
return;
if ('a' >= 'c')
then
  dummyBOOLfunc();
  v0 := 'd' > 'c'
end;
if ('a' = 'd')
then
  v0 := 'b' <= 'a';
  dummyCHARfunc();
  return;
  dummyBOOLfunc();
  dummyBOOLfunc()
end;
v1 := 73243 + 80414 - 24731 - 10376;
if (false)
then
  f1(v2, 'a' > 'd', (('c')), v3)
end;
while (true)
do
  while ('d' <= ('a'))
  do
    
  end
end
end test.

