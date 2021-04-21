program qq;
type Mass=array [1..1000100] of longint;
var f:text;
    MassA:Mass;
    n1,B,i1:longint;
procedure sort;
 Var Z, Y, i, j: longint;
Begin
For i := 2 to n1 do
For j := 1 to i-1 do
If MassA[j] > MassA[i] then
begin
Z := MassA[i];
For Y := i downto j+1 do MassA[Y] := MassA[Y-1];
MassA[j] := Z
end
End;
begin
assign(f,'input.txt');
reset(f);
readln(f,n1);
for i1:=1 to n1 do
read(f,MassA[i1]);
close(f);
sort;
assign(f,'output.txt');
rewrite(f);
for i1:=1 to n1 do
write(f,MassA[i1],' ');
close(f);
end.
