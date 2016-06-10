module test;
var v1 : integer[6][3][3][2][8];
v0 : integer;
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
var v0 : char;
begin
v0 := ('c');
if (dummyCHARfunc() < 'b')
then
  v0 := 'd';
  return 'a'
end;
return (dummyCHARfunc())
end f0;

function f1(v0 : char[7][3][4][9][3] ; v1 : char ; v2 : integer[7][4][8][6][4]) : char ;
begin
dummyCHARfunc();
return (dummyCHARfunc());
return (('b'))
end f1;

function f2(v0 : integer ; v1 : integer[6][3][3][2][8] ; v2 : boolean ; v3 : integer) : boolean ;
begin
return dummyBOOLfunc() && false && true && false;
if (true)
then
  return false;
  return 67332 # 20519;
  if (true)
  then
    if (true)
    then  
    end;
    if (true)
    then  
    end
  end
end;
if (f0() > ('a'))
then  
end
end f2;

begin
while (73271 < 46985)
do
  if (61269 >= 37462)
  then  
  end;
  dummyBOOLfunc()
end;
v0 := 46995;
if ('d' <= 'c')
then
  while (false)
  do
    
  end;
  return;
  while (true)
  do
    
  end;
  while (89795 > 39077)
  do
    
  end;
  f2(86398 - 31292, v1, false, 17235)
end;
if (false = true)
then
  while (true)
  do
    
  end;
  return
end
end test.

