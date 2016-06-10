module test;
var v1 : char;
v0 : boolean;
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
var v1 : char;
v2 : boolean;
begin
return (dummyCHARfunc());
v1 := dummyCHARfunc();
v2 := ('a') > 'c'
end f0;

function f1(v1 : integer ; v2 : boolean[49][93][6][6][35]) : char ;
var v3 : char;
begin
if (true)
then
  return dummyCHARfunc()
end;
v3 := dummyCHARfunc();
v1 := 33479
end f1;

procedure f2() ;
var v1 : integer;
v2 : boolean;
begin
v1 := 34443;
v2 := false && true;
dummyINTfunc()
end f2;

begin
v0 := false || true;
dummyCHARfunc();
while (true)
do
  dummyINTfunc()
end;
v1 := (('a'));
v1 := ('d');
f2()
end test.

