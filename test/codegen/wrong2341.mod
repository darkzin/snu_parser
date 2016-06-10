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

procedure f0(v1 : integer) ;
var v2 : boolean;
v3 : char;
begin
v2 := true;
if (false || false)
then
  dummyBOOLfunc();
  v2 := false
end;
v3 := dummyCHARfunc()
end f0;

function f1(v1 : boolean ; v2 : char) : integer ;
begin
v1 := true;
while (dummyCHARfunc() > 'a')
do
  
end;
return 74928 + 68430 + 2680 - 9179 + 68527
end f1;

function f2(v1 : integer[39][38][98][64][25]) : integer ;
begin
while (dummyCHARfunc() >= 'b')
do
  dummyINTfunc();
  while ('d' # 'b')
  do
    
  end;
  return 96927
end;
if (false)
then
  if (false # true)
  then  
  end;
  if (true = false)
  then
    while (false)
    do
      
    end
  end
end;
while (true && (27694 <= 65933))
do
  
end
end f2;

begin
while (false)
do
  WriteChar('d');
  v0 := false && false && true && false
end;
return;
v0 := false && false && false && false;
v0 := 37006 <= 74743 + 45
end test.

