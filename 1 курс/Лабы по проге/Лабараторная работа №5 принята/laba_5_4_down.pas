program qq;
type Mass=array [1..1000111] of longint;
var f:text;
    MassA,mas:Mass;
    n,B,i1:longint;
procedure Sort(var MassA: Mass; p,q:Longint);
var mid, start, mid1, j: Longint;
XZ:boolean;
function Bubble(a, c: Longint): boolean;
begin
  Bubble:=a<c;
end;
begin
mid:=(p+q) div 2; 
start:=p; 
mid1:=mid+1; 
for j:=p to q do
if (start<=mid) and ((mid1>q) or Bubble(MassA[start],MassA[mid1])) then
begin
mas[j]:=MassA[start];
inc(start);
end
else
begin
mas[j]:=MassA[mid1];
inc(mid1);
end;
for j:=p to q do MassA[j]:=mas[j];
end;
procedure OSort(var MassA:mass; first, last:Longint);
begin
if first<last then
begin
OSort(MassA, first, (first+last) div 2);
OSort(MassA, (first+last) div 2+1, last); 
Sort(MassA, first, last);
end;
end;

begin
assign(f,'input.txt');
reset(f);
readln(f,n);
for i1:=1 to n do
read(f,MassA[i1]);
close(f);
Osort(MassA,1,N);
assign(f,'output.txt');
rewrite(f);
for i1:=n downto 1 do
write(f,MassA[i1],' ');
close(f);
end.