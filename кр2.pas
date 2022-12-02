begin
  var str, pstr: string;
  readln(str);
  readln(pstr);
  var n := 0;
  var i := 1;
  while i <= length(str) do
    if str[i] = pstr[1] then
    begin
      var j := 1;
      while (j <= length(pstr)) and (str[i + j - 1] = pstr[j]) do j := j + 1;
      if j > length(pstr) then  
        n := n + 1;
      if n mod 2 = 0 then
      begin
        for j := 1 to length(pstr) do
        begin
          for var k := i to length(str) - 1 do str[k] := str[k + 1];
          setlength(str, length(str) - 1);
        end
      end
      else i := i + 1;
    end
    else i := i + 1;
  print(str);
end.