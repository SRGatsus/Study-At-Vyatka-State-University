program lab2surov2;
var
i, f, h, j: integer;
p, n: string;
y: array [1..250] of string;
x: array [1..250] of integer;

procedure additem;
var
h: integer;
begin
if n <> '' then
for h:= 1 to f do
if y[h] = n then begin
x[h]:= x[h] + 1;
if x[j] < x[h] then j:=h;
n:= '';
break;
end;
if n <> '' then begin
f:= f+1;
x[f]:= 1;
y[f]:= n;
n:= '';
end;
end;

begin
i:= 0;
f:= 0;
j:= 1;
n:= '';
write ('Введите строку, в которой хотите найти слово, встречающееся чаще всего (цифра)');
readln(p);
writeln();
for i:= 1 to length (p) do if p[i] <> ' '
then n:= n + p[i]
else additem;
additem;
for i:= 1 to f do
begin
if x[i] = x[j] then write (y[i]);
end;
readln();

end.
