program ReverseListToFile;

var
  inputFile, outputFile: Text;
  numList: array of Integer;
  i: Integer;

begin
  Assign(inputFile, 'input.txt');
  Reset(inputFile);

  // Считываем числа из файла в массив
  SetLength(numList, 0);
  while not Eof(inputFile) do
  begin
    SetLength(numList, Length(numList) + 1);
    Readln(inputFile, numList[High(numList)]);
  end;

  Close(inputFile);

  Assign(outputFile, 'output.txt');
  Rewrite(outputFile);

  // Переписываем числа в обратном порядке в другой файл
  for i := High(numList) downto Low(numList) do
    Writeln(outputFile, numList[i]);

  Close(outputFile);
end.
