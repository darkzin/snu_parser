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
v2 : integer;
begin
if ('a' # 'b')
then
  dummyBOOLfunc();
  dummyINTfunc();
  v1 := 'b' <= 'a';
  dummyCHARfunc()
end;
v0 := dummyCHARfunc();
while (false && true && true)
do
  v2 := 56235
end
end f0;

function f1(v0 : char ; v1 : boolean) : boolean ;
var v2 : integer;
begin
while (dummyBOOLfunc() || true)
do
  
end;
WriteLn();
v2 := 81078
end f1;

function f2(v0 : char[38][67][76][28][63] ; v1 : integer) : char ;
var v2 : boolean;
begin
return (dummyCHARfunc());
return (dummyCHARfunc());
v2 := true
end f2;

begin
return;
ReadInt();
if (false)
then
  WriteInt(84404);
  return;
  WriteLn()
end;
dummyCHARfunc();
WriteChar(dummyCHARfunc());
return
end test.

