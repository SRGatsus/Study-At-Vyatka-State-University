program qq;
var k,i,n,sum :integer;
     MasA:array [1..512] of integer;
begin
  repeat
   Writeln('Enter the number of items (Not exceeding 512).');
   read(n);
   if (n>512) or (n<0) then Writeln('Error: re-Enter');
  until (n<512) and (n>0);
 Writeln('Enter the number to which the sum of the array elements will be compared');
 Readln(k);
 for i:=1 to n do
  begin
   Writeln('Enter ',i,' element array.');
   Read(MasA[i]);
  end;
  i:=0;
 repeat
 i:=i+1;
 j:=i+1;
  while j<n do
  begin
  if abs(MasA[i]-Masa[j])=k then 
  begin
  Writeln('the absolute difference between the numbers:',MasA[i],' ',Masa[j],' равна',k);
  exit;
  end;
  inc(j);
  end;
 until i<=(n-1);
end.
