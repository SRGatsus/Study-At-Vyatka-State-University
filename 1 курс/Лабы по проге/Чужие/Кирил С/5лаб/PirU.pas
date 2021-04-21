Program PirU;
Type cm=function(o,t:longint):boolean;
Var i,n,k,l:longint;
    derevo:array of longint;
    inp,outp:text;

Function comp(o,t:longint):boolean;
begin
If o<t then comp:=true
else comp:=false;
end;

Procedure sort(c:cm);
Var i,p,k,max,m,l:longint;
Begin
i:=n-1;
While i>1 do begin
l:=derevo[i];
derevo[i]:=derevo[1];
derevo[1]:=l;
i:=i-1;
m:=1; p:=1;
While (2*p<=i) and (m=1) do begin
  max:=2*p; m:=0;
  If (p*2+1<=i) and (c(derevo[2*p+1],derevo[max])=true) then max:=p*2+1;
  If c(derevo[p],derevo[max])=false then begin
    l:=derevo[max];
    derevo[max]:=derevo[p];
    derevo[p]:=l;
    m:=1;
    p:=max;
  end;
end;
end;
end;

Begin
assign(inp,'input.txt');
assign(outp,'output.txt');
Rewrite(outp);
Reset(inp);
Readln(inp,n);
n:=n+1;
SetLength(derevo,n);
i:=1;
While i<n do begin
Read(inp,derevo[i]);
k:=i;
While (i>1) and (comp(derevo[i],derevo[i div 2])=true) do begin
  l:=derevo[i];
  derevo[i]:=derevo[i div 2];
  derevo[i div 2]:=l;
  i:=i div 2;
end;
i:=k+1;
end;
sort(@comp);
Close(inp);
i:=1;
For i:=1 to (n-1) do
Write(outp,derevo[i],' ');
Close(outp);
end.
