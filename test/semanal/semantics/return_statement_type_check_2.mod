module semantics;

function NoReturn(): integer;
begin
  return                    // fail
end NoReturn;

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
