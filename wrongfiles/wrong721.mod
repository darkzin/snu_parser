module test;
var v2 : boolean[7][1][5][4][6];
v1 : integer[9][8][5][9][8];
v0 : integer[10][2][7][7][7];
v3 : char;
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

procedure f0() ;
var v1 : boolean;
v0 : char;
begin
if (false)
then
  return;
  dummyBOOLfunc()
end;
while (false = true)
do
  return;
  while (false)
  do
    
  end;
  return
end;
while (false)
do
  if (false)
  then  
  end;
  v0 := 'a';
  v1 := true;
  return
end
end f0;

function f1(v0 : char[3][8][5][5][4] ; v1 : char[3][7][3][6][1]) : integer ;
var v2 : integer;
begin
dummyCHARfunc();
if (false)
then
  return 52336;
  if (false)
  then  
  end;
  v2 := 2408;
  while (false = true)
  do
    
  end
end;
f0()
end f1;

procedure f2(v0 : integer[10][2][7][7][7] ; v1 : char ; v2 : integer[9][8][5][9][8] ; v3 : boolean[7][1][5][4][6]) ;
begin
return;
dummyBOOLfunc();
return
end f2;

begin
dummyCHARfunc();
dummyBOOLfunc();
f2(v0, dummyCHARfunc(), v1, v2);
v3 := ('d')
end test.

