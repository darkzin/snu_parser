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

function f0() : integer ;
var v0 : boolean;
begin
dummyProcedure();
dummyINTfunc();
v0 := dummyBOOLfunc() || true
end f0;

function f1(v0 : char[9][8][10][5][1] ; v1 : integer) : integer ;
var v2 : char;
begin
if (75947 >= 48504)
then
  return 15095 + 17368 - 1013
end;
if (true || true || true || false || true || false)
then
  v2 := 'b'
end;
ReadInt()
end f1;

function f2(v0 : integer ; v1 : char) : integer ;
begin
v0 := 6242 + 18658 / 4744;
v1 := (dummyCHARfunc());
dummyCHARfunc()
end f2;

begin
return;
v0 := (false) && true && true && true;
ReadInt()
end test.

