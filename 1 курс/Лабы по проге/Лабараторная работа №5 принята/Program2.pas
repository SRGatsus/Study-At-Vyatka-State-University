Program selection;
type   mass=array [0..1000000] of longint;
var f: text;
a: mass;
n,i1:integer;
 
 
procedure sort;
  var
 i, j, nmax,buf:longint;
 pr:boolean;
 function Bubble(a, c: integer): boolean;
begin
  Bubble:=a>c;
end;
 begin
  for i := 1 to n - 1 do begin      { просмотр массива n-1 раз }
      nmax := i;
      for j := i + 1 to n do  
      begin{ поиск максимума }
      pr:=bubble(a[j] , a[nmax] );
         if pr then nmax := j;
      buf := a[i];                  { перестановка }
      a[i]:= a[nmax];             { двух }
      a[nmax]:= buf;
      end;{ элементов массива }
  end;
  end;
 
begin
assign(f,'input.txt');
reset(f);
read(f,n);
for i1:=1 to n do
read(f,a[i1]);
close(f);
sort;
assign(f,'output.txt');
rewrite(f);
for i1:=1 to n do
write(f,a[i1],' ');
close(f);
end.