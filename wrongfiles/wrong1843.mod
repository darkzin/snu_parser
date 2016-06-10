module test;
var v1 : char;
v0 : boolean;
v2 : integer[56][79][50][59][49];
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

procedure f0(v1 : char) ;
begin
WriteStr("hello\n");
dummyCHARfunc();
dummyCHARfunc()
end f0;

function f1(v1 : boolean ; v2 : integer[56][79][50][59][49] ; v3 : char) : boolean ;
begin
return ('a') < ('b');
dummyBOOLfunc();
return (false) && true && true && true && true && false && true && false && true
end f1;

procedure f2(v1 : char[23][9][14][72][97]) ;
var v2 : char;
begin
v1[25033 - 67478 * 24621][29541][95074][27341][50232] := 'a';
if (54928 >= 21418)
then
  dummyBOOLfunc();
  return
end;
return
end f2;

begin
v0 := true && false || false || true || true;
if (false)
then
  return;
  v1 := 'b'
end;
v1 := (('b'));
if (true = false)
then
  f1(22873 <= 70318, v2, 'd');
  while ('d' <= 'b')
  do
    v1 := 'd';
    while (true)
    do
      
    end
  end
end
end test.

