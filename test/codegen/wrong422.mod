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

function f0() : boolean ;
begin
return 'c' >= (dummyCHARfunc());
WriteChar(dummyCHARfunc());
while (false || dummyBOOLfunc())
do
  
end
end f0;

function f1(v0 : boolean[6][8][3][5][1] ; v1 : integer ; v2 : integer) : char ;
var v3 : char;
begin
return (('a'));
v3 := 'd';
v3 := dummyCHARfunc()
end f1;

function f2(v0 : char) : integer ;
begin
while (true)
do
  return dummyINTfunc()
end;
if ('b' > ('b'))
then
  return 48620
end;
f0()
end f2;

begin
dummyCHARfunc();
while (true || false || true || false || true)
do
  
end;
return;
while (false && true && false || true || true)
do
  
end;
return;
return
end test.

