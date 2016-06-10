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

function f0(v0 : char) : boolean ;
var v1 : boolean;
begin
v1 := true || true || false || false;
return dummyBOOLfunc() # true || false || true;
dummyBOOLfunc()
end f0;

function f1(v0 : boolean[6][31][99][70][13] ; v1 : boolean ; v2 : integer ; v3 : integer) : boolean ;
var v4 : char;
begin
if (false)
then
  v3 := 65123;
  if (true)
  then  
  end;
  v4 := 'c';
  while (true)
  do
    
  end;
  if ('b' < 'd')
  then  
  end;
  return false = true
end;
dummyProcedure();
while ((true || false || true))
do
  
end
end f1;

procedure f2(v0 : boolean ; v1 : integer) ;
begin
return;
ReadInt();
v1 := ReadInt()
end f2;

begin
if ('d' < 'a')
then
  return
end;
while (ReadInt() >= 23931 + 20683)
do
  
end;
return;
dummyProcedure();
return
end test.

