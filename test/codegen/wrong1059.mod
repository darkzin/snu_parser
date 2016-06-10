module test;
var v0 : char;
v2 : integer[20][7][67][23][95];
v3 : boolean[15][88][73][86][68];
v4 : boolean[22][39][74][29][8];
v1 : char[75][60][52][33][13];
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
var v1 : boolean;
begin
if (true && false = true)
then
  dummyCHARfunc()
end;
v1 := 41531 - 67884 - 6586 / 62746 * 97304 / 65124 / 21000 <= 59043;
v1 := true || true
end f0;

function f1(v1 : char ; v2 : boolean[15][88][73][86][68] ; v3 : boolean[22][39][74][29][8]) : char ;
begin
dummyCHARfunc();
return dummyCHARfunc();
WriteInt(15742)
end f1;

function f2(v1 : char[75][60][52][33][13] ; v2 : boolean ; v3 : boolean ; v4 : integer[20][7][67][23][95]) : char ;
var v5 : boolean[15][88][73][86][68];
v6 : boolean[22][39][74][29][8];
begin
return (f1(dummyCHARfunc(), v5, v6));
return (('d'));
dummyBOOLfunc()
end f2;

begin
v0 := 'c';
if (false)
then
  dummyCHARfunc()
end;
WriteChar(f2(v1, 6239 = 93112 - 63194 + 55155 + 34745 + 91791, true, v2));
WriteChar(f1('d', v3, v4))
end test.

