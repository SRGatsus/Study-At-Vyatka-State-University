program qq;
var f,f1:text;
count,i,a:longint;
begin
//assign(f,'task1.txt');
//reset(f);
//read(f,a);
count:=0;
for i:=1 to a do
  if a mod i =0 then count:=count+1;
assign(f1,'ans1.txt');
rewrite(f1);
writeln(f1,count);
for i:=1 to a do 
  if a mod i =0 then writeln(f1,i);
close(f);
close(f1);
end.