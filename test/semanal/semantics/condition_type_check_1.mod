module semantics;

// condition type checking
procedure If(p1, p2: integer);
begin
  if (p1 + p2 > 0) then         // fail
    return
  else
    return
  end;

  if (ProcedureCall()) then // fail
  //if (FunctionCall() > 0) then // fail
    return
  else
    return
  end
end If;

begin
end semantics.
