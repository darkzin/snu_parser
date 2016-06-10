module test;
var v3 : char[77][82][59][90][47];
v0 : integer;
v4 : char[81][87][13][7][37];
v2 : char[85][5][8][9][58];
v1 : char;
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

function f0(v1 : char[89][2][56][61][58]) : integer ;
begin
dummyCHARfunc();
if ('d' = 'c')
then
  dummyINTfunc();
  dummyBOOLfunc();
  WriteStr("hello\n")
end;
return ReadInt()
end f0;

function f1(v1 : char[85][5][8][9][58] ; v2 : char[77][82][59][90][47] ; v3 : boolean ; v4 : char[81][87][13][7][37]) : boolean ;
var v6 : char[89][2][56][61][58];
v5 : char;
begin
dummyCHARfunc();
dummyCHARfunc();
v1[f0(v6)][88463][39628][53948][72428] := ('d')
end f1;

function f2(v1 : integer[10][62][60][72][3]) : char ;
var v4 : char[81][87][13][7][37];
v3 : char[77][82][59][90][47];
v5 : integer;
v2 : char[85][5][8][9][58];
begin
while (false)
do
  f1(v2, v3, false, v4)
end;
while (false || true || true)
do
  return 'b'
end;
v1[14585 - 99530 + 85274][dummyINTfunc()][49193][64154][76426] := 85856
end f2;

begin
while (false || true || true)
do
  
end;
dummyINTfunc();
while (83030 >= 2022)
do
  v0 := 59872;
  if (34276 >= 81958)
  then
    return;
    if (false = false)
    then  
    end
  end
end;
return;
v1 := dummyCHARfunc();
f1(v2, v3, 43835 > 2587, v4)
end test.

