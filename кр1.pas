begin
var t: boolean;
var a: array[1..7] of integer;
  Print('Введите число массива');
  t := false;
  for var i := 1 to 7 do
  read(a[i]);
  for var i := 1 to 7 - 2 do
    if (a[i] + a[i + 1]) <> (a[i + 2]) then
      t := false
    else t := true;
  Print(t)
end.

