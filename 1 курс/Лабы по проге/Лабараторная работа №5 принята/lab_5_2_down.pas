program qq;
type Mass=array [0..1000000] of longint;
Mass2=array [-1000000..1000000] of longint;
var f:text;
    MassA:Mass;
    n,B,i1:longint;
procedure sort;
 var MassB:mass2;
 i, j:longint;
  k:integer;
begin
for i := -1000000 to 1000000 do
    MassB[i] := 0;
  for i := 1 to n do
    MassB[MassA[i]] := MassB[MassA[i]] + 1;
  j := 0;
  for i := -1000000 to 1000000 do
    for  k := 1 to MassB[i] do
    begin
        MassA[j] := i;
        Inc(j);
    end;
end;
begin
assign(f,'input.txt');
reset(f);
read(f,n);
for i1:=1 to n do
read(f,MassA[i1]);
close(f);
sort;
assign(f,'output.txt');
rewrite(f);
for i1:=n-1 downto 0 do
write(f,MassA[i1],' ');
close(f);
end.
