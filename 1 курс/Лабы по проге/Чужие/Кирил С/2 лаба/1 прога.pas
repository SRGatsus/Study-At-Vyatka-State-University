program lab2surov1;
var k,i,n,sum ,j,count:integer;
MasA:array [1..512] of integer;
begin
repeat
Writeln('Enter the number of items (Not exceeding 512).');
read(n);
if (n>512) or (n<0) then Writeln('Error: re-Enter');
until (n<512) and (n>0);
Writeln('Enter the number to which difference of the array elements will be compared');
Readln(k);
for i:=1 to n do
begin
Writeln('Enter ',i,' element array.');
Read(MasA[i]);
end;
i:=0;
count:=0;
for i:=1to n-1 do
begin
for j:=i+1 to n do
begin
if abs(MasA[i]-Masa[j])=k then
begin
Writeln('the absolute difference between the numbers:',MasA[i],' ',Masa[j],' equal ',k);
count:=count+1;
end;
end;
end;
if count=0 then
Writeln('no numbers');
Readln();
end.
