module semantics;

function IntReturn(): integer;
begin
  return 1 > 2              // fail
end IntReturn;

function BoolReturn(): boolean;
begin
  return 1 + 2              // fail
end BoolReturn;


begin
end semantics.
