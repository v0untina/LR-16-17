type
  TNode = record
    Data: Integer;
    Next: ^TNode;
  end;

var
  Head, Current: ^TNode;
  i,a: Integer;

begin
  // Создание списка
  New(Head);
  Head^.Data := 1;
  Current := Head;
  
  for i := 2 to 10 do
  begin
    New(Current^.Next);
    a:=Random(100);
    Current := Current^.Next;
    Current^.Data := a;
  end;
  Current^.Next := nil;
  
  // Вывод списка
  Current := Head;
  while Current <> nil do
  begin
    writeln('Элемент списка: ', Current^.Data);
    Current := Current^.Next;
  end;
  
  // Вывод четных элементов
  writeln('Четные элементы списка:');
  Current := Head;
  while Current <> nil do
  begin
    if Current^.Data mod 2 = 0 then
      writeln(Current^.Data);
    Current := Current^.Next;
  end;
end.
