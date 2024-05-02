var
  i: Integer;
  i_ptr: ^Integer;
  
begin
  i := 2;
  i_ptr := @i;
  writeln(i_ptr^);
end.