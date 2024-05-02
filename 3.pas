program FindMinMaxInLinkedList;

type
  NodePtr = ^Node;
  Node = record
    data: Integer;
    next: NodePtr;
  end;

function FindMax(node: NodePtr): Integer;
var
  maxVal: Integer;
begin
  maxVal := node^.data;
  while node <> nil do
  begin
    if node^.data > maxVal then
      maxVal := node^.data;
    node := node^.next;
  end;
  FindMax := maxVal;
end;

function FindMin(node: NodePtr): Integer;
var
  minVal: Integer;
begin
  minVal := node^.data;
  while node <> nil do
  begin
    if node^.data < minVal then
      minVal := node^.data;
    node := node^.next;
  end;
  FindMin := minVal;
end;

var
  a,b,c,d:integer;
  head, node1, node2, node3: NodePtr;

begin
  
  New(head);
  writeln('Введите первый элемент: ');
  readln(a);
  head^.data := a;

  New(node1);
  writeln('Введите второй элемент: ');
  readln(b);
  node1^.data := b;
  head^.next := node1;

  New(node2);
  writeln('Введите третий элемент: ');
  readln(c);
  node2^.data := c;
  node1^.next := node2;

  New(node3);
  writeln('Введите четвертый элемент: ');
  readln(d);
  node3^.data := d;
  node2^.next := node3;
  node3^.next := nil;

  writeln('Максимальный элемент: ', FindMax(head));
  writeln('Минимальный элемент: ', FindMin(head));
end.
