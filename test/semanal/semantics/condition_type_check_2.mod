module semantics;

// empty procedure
procedure ProcedureCall();
begin
end ProcedureCall;

// empty function. This is considered correct code
// even though there is no return statement.
function FunctionCall(): integer;
begin
end FunctionCall;

// condition type checking
procedure If(p1, p2: integer);
begin
  if (ProcedureCall()) then // fail
  //if (FunctionCall() > 0) then // fail
    return
  else
    return
  end
end If;

begin
end semantics.
