program pyzir_down;
var n,i,k,j:longint;
f1, f2:text;
a:array[1..1000001] of longint;

function comp(a,b:longint):boolean;
begin
  if (a<b) then comp:=true
  else comp:=false;
end;

begin

assign(f1,'input.txt');
reset(f1);
read(f1,n);
for i:=1 to n do read(f1, a[i]);
close(f1);

for i:= 1 to n-1 do begin
for j:= i+1 to n do begin
 if comp(a[i],a[j])=true then begin
   k:=a[i];
   a[i]:=a[j];
   a[j]:=k;
 end;
end;
end;

assign(f2,'output.txt');
rewrite(f2);
for i:= 1 to n do
write(f2,a[i],' ');
close(f2);

end.
