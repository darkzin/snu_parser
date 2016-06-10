module test;
var v2 : char[7][3][6][7][3];
v4 : boolean[1][6][7][10][7];
v3 : integer[5][10][4][9][9];
v1 : integer[9][4][5][8][8];
v0 : char;
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

function f0(v1 : integer[9][4][5][8][8] ; v2 : integer ; v3 : char[7][3][6][7][3]) : integer ;
begin
dummyCHARfunc();
if (false)
then
  if (false)
  then  
  end;
  while (true)
  do
    
  end
end;
return ReadInt() + 42025
end f0;

procedure f1(v1 : integer ; v2 : boolean[7][8][8][5][2] ; v3 : boolean[6][9][10][3][1] ; v4 : integer[2][10][3][10][3]) ;
var v5 : char;
begin
WriteStr("bye\n");
if (false || false || false || false)
then
  v5 := 'b'
end;
dummyCHARfunc()
end f1;

function f2(v1 : integer ; v2 : integer[5][10][4][9][9] ; v3 : boolean[1][6][7][10][7]) : char ;
var v4 : char;
begin
dummyCHARfunc();
if (true)
then
  if (true || true || true)
  then  
  end
end;
v4 := 'a'
end f2;

begin
v0 := (dummyCHARfunc());
v0 := (('a'));
dummyBOOLfunc();
while (('b' >= 'a'))
do
  v0 := 'b'
end;
v0 := f2(f0(v1, 16064, v2), v3, v4);
v0 := 'c'
end test.

