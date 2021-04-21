unit Laba7_1;

interface
uses wincrt,graph;
var Gd,Gm:smallint;
procedure graph ;
implementation

procedure graph ;
var Readk:char;
X1,A,R,Y1,X,X2,Y,Y2:real;
K:integer;

 procedure Draw(x, y, l, u : Real; t : Integer);
procedure Draw2(Var x, y: Real; l, u : Real; t : Integer);
begin
Draw(x, y, l, u, t);
x := x + l*cos(u);
y := y - l*sin(u);
end;
begin
if t > 0 then
begin
l := l/3;
Draw2(x, y, l, u, t-1);
Draw2(x, y, l, u+pi/3, t-1);
Draw2(x, y, l, u-pi/3, t-1);
Draw2(x, y, l, u, t-1);
end
else
Line(Round(x), Round(y), Round(x+cos(u)*l), Round(y-sin(u)*l))
end;

begin
 Gd := Detect;
 InitGraph(Gd, Gm, '');
 X:=600;
 Y:=546;
 X1:=1000;
 Y1:=546;
 X2:=800;
 Y2:=200;
 A:=0;
 R:=400;
 K:=5;//глубина прорисовки
    repeat
   OutTextXY(0, 10, 'to increase/ decrease the depth of field- +/-');
  OutTextXY(0, 20, 'move up/down / left/right-arrows');
  OutTextXY(0, 30, 'zoom in / out - insert/delete');
Draw(X, Y, R, pi/3, K);
Draw(X1, Y1, R, pi, k);
Draw(X2, Y2, R, -pi/3, k);
    Readk:=wincrt.readkey;
    IF Readk=#0 then Readk:=wincrt.readkey;
    case Readk of
        #43:begin
            k:=K+1;
            if k>15 then k:=10;
            end;//Прибать глубину
        #45:begin
            k:=K-1;
            if k<0 then k:=0;
            end;//убавить глубину
        #72:begin
            Y1:=Y1-25;
            Y:=Y-25;
            Y2:=Y2-25;
            end;//вверх
        #80:begin
            Y1:=Y1+25;
            Y2:=Y2+25;
            Y:=Y+25;
            end;//вниз
        #77:begin
            X1:=X1+25;
             X:=X+25;
              X2:=X2+25;
            end;//вправо
        #75:begin
            X1:=X1-25;
            X:=X-25;
            X2:=X2-25;
            end;//влево
        #82:begin
            R:=R+25;
            if R>650 then R:=650;
            x1:=x+R;
            x2:=x+cos(pi/3)*R;
            Y2:=y-sin(pi/3)*R;
            end;//увеличить масштаб
        #83:begin
            R:=R-25;
            if R<25 then R:=25;
            x1:=x+R;
            x2:=x+cos(pi/3)*R;
            Y2:=y-sin(pi/3)*R;
            end;//уменьшить масштаб
    end;
    cleardevice;
    until Readk=#13;
end;

end.
