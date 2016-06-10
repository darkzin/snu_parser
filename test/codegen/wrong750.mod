module test;
var v1 : boolean;
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

function f0() : integer ;
var v1 : char;
begin
v1 := (('a'));
WriteChar('d');
dummyProcedure()
end f0;

procedure f1() ;
var v1 : boolean;
begin
v1 := 'd' > 'b';
if (false)
then
  WriteChar('b');
  v1 := true
end;
v1 := 'b' > 'b'
end f1;

procedure f2(v1 : char[9][2][1][5][7] ; v2 : integer) ;
begin
if ('d' # 'b')
then
  ReadInt();
  while (false # true)
  do
    while (true = false)
    do
      
    end;
    v2 := 87251;
    dummyCHARfunc()
  end
end;
if ('c' <= 'b')
then
  if ('c' >= 'c')
  then  
  end;
  if (true)
  then  
  end
end;
while (true && false && false && true && false)
do
  
end
end f2;

begin
v0 := 57546 * 17190 / 41416 - 64828 + 83388 + 23938;
return;
ReadInt();
return;
v1 := 'a' >= 'a';
v1 := 'b' >= dummyCHARfunc()
end test.

