program qq;
type Mass=array [0..1000000] of longint;
       Mass2=array [-1000000..1000000] of longint;
var f:text;
    MassA:Mass;
    n,B,i1:longint;
begin
assign(f,'input.txt');
rewrite(f);
n:=Random(1000000);
writeln(f,n);
for i1:=1 to n do
begin
MassA[i1]:=Random(2000000)-1000000;
write(f,MassA[i1],' ');
end;
close(f);
end.