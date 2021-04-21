program qq;
var i,count,z,f :integer;
       k,n:string;
begin
repeat
  Writeln('enter the first line');
  Readln(k);
  Writeln('Enter the second line to be smaller than the first');
  Readln(n);
  if Length(k)<Length(n)  then Writeln('Error:you entered incorrectly(the length of the first line is less than the second). Re-enter.');
  until Length(k)>=Length(n) ;
  z:=0;
  count:=0;
  for i:=1 to Length(n) do
  begin
  z:=f;
   while (z<Length(k))  do
   begin
   z:=z+1;
    if k[z]=n[i] then
     begin
      count:=count+1;
      f:=z;
      z:=Length(k);
     end
    else
      begin
       f:=z;
      end;
   end;
   end;
if  count>= Length(n) then Writeln('the second line is subsequent to the first')
 else Writeln('the second line is not subsequent to the first');
 readln();

end.
