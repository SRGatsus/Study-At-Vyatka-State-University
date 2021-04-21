program z1;
const H=0.2;
var x,s,y,f:real;
   
begin
X:=-12;
while x<=6 do
 begin
        if x<-10 then
          writeln(' x=( ',x:0:2,') f(x)-значение функции не поределено')
        else
           if( x>=-10) and (x<-2) then
              writeln('x=( ',x:0:2,') f(x)-значение функции не поределено')
            else
              if (x>=-2) and (x<=0) then writeln('x=( ',x:0:2,') f(x)-значение функции не поределено')
              else
              if (x>0) and (x<4) then 
              begin
              y:=0.1*x;
                s:=Power(x,y);
                f:=ln(x)-s;
                Writeln('x=',x:0:1,')  f(x)=',f:5:2);
                end
              else
              if (x>=4) then
              begin
              f:=tan(x);
             Writeln('x=',x:0:1,')  f(x)=',f:5:2);
        end;
  x:=x+h;
 end;
end.

