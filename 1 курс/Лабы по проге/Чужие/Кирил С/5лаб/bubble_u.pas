Program boobleU;
Type cm=function(o,t:longint):boolean;
Var a:array of longint;
    n,i:longint;
    inp,outp:text;

Function comp(o,t:longint):boolean;
begin
If o<t then comp:=true
else comp:=false;
end;

Procedure sort(c:cm);
Var count,i,l:longint;
Begin
count:=0;
While count<n do begin
i:=0;
For i:=0 to (n-2) do begin
If c(a[i],a[i+1])=true then begin
l:=a[i];
a[i]:=a[i+1];
a[i+1]:=l;
end;
end;
count:=count+1;
end;
end;

Begin
assign(inp,'input.txt');
Reset(inp);
Readln(inp,n);
SetLength(a,n);
i:=0;
For i:=0 to (n-1) do
Read(inp,a[i]);
Close(inp);
sort(@comp);
assign(outp,'output.txt');
rewrite(outp);
i:=0;
For i:=0 to (n-1) do
write(outp,a[i],' ');
Close(outp);
end.
