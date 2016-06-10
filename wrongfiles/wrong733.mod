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

function f0(v0 : char ; v1 : char) : char ;
begin
dummyINTfunc();
return (dummyCHARfunc());
dummyINTfunc()
end f0;

function f1() : char ;
var v0 : char;
begin
return dummyCHARfunc();
v0 := (f0('d', 'c'));
return (('d'))
end f1;

procedure f2(v0 : integer[10][6][8][10][3] ; v1 : boolean[3][4][8][1][5] ; v2 : boolean[2][1][7][10][8] ; v3 : integer[5][9][1][3][2]) ;
begin
dummyBOOLfunc();
return;
dummyBOOLfunc()
end f2;

begin
return;
return;
v0 := (true) = true;
return;
return
end test.

