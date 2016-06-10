module test;
var v1 : boolean;
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

function f0() : char ;
begin
WriteLn();
dummyCHARfunc();
return (('b'))
end f0;

procedure f1() ;
begin
dummyProcedure();
if (false || true)
then
  dummyBOOLfunc()
end;
if ('b' = f0())
then
  WriteChar(f0())
end
end f1;

function f2(v0 : boolean[3][3][6][7][9] ; v1 : integer[1][1][8][6][9] ; v2 : integer) : integer ;
var v3 : char;
begin
if (23961 < 74185)
then
  f1()
end;
v3 := dummyCHARfunc();
WriteStr("hello\n")
end f2;

begin
dummyCHARfunc();
while (false && false)
do
  dummyBOOLfunc();
  while (false)
  do
    
  end
end;
if ((true = true) && true)
then  
end;
v0 := f0();
WriteLn();
if ('d' = 'c')
then
  while ('b' < 'd')
  do
    
  end;
  v1 := false;
  return;
  while (true)
  do
    
  end;
  dummyBOOLfunc();
  if (true = false)
  then  
  end
end
end test.

