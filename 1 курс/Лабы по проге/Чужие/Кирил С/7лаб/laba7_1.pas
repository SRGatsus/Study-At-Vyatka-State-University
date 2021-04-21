unit Laba7_1;  
    
interface
uses wincrt,graph, math;  
var Gd,Gm:smallint;
procedure graph ;
implementation
    
procedure graph ;
var Readk:char;
X1,A,R,Y1:integer;
K:integer;

procedure levy(x1,y1,x2,y2,k:integer);
var x3,y3:integer;
begin
if k=0 then line(x1,y1,x2,y2)
else
 begin
  x3:=(x1+x2)div 2-(y1-y2) div 2;
  y3:=(y1+y2) div 2+(x1-x2) div 2;
  levy(x1,y1,x3,y3,k-1);
  levy(x3,y3,x2,y2,k-1);
 end
end;

begin
 Gd := Detect;
 InitGraph(Gd, Gm, '');
 X1:=800;
 Y1:=600;
 A:=0;
 R:=200;
 K:=10;//глубина прорисовки
    repeat
   OutTextXY(0, 10, 'to increase/ decrease the depth of field- +/-');
  OutTextXY(0, 20, 'move up/down / left/right-arrows');
  OutTextXY(0, 30, 'zoom in / out - insert/delete');
levy(x1,y1, x1+200, y1+200, k);
    Readk:=wincrt.readkey;
    IF Readk=#0 then Readk:=wincrt.readkey;
    case Readk of
        #43:begin
            k:=K+1;
            if k>15 then k:=15;
            cleardevice;
            end;//Прибать глубину
        #45:begin
            k:=K-1;
            if k<0 then k:=0;
            cleardevice;
            end;//убавить глубину
        #72:begin
            Y1:=max(0, Y1-25);
            cleardevice;
            end;//вверх
        #80:begin
            Y1:=min(Y1+25, GetMaxY);
            cleardevice;
            end;//вниз
        #77:begin
            X1:=min(GetMaxX, X1+25);
            cleardevice;
            end;//вправо
        #75:begin
            X1:=max(X1-25, 0);
            cleardevice;
            end;//влево
        #82:begin
            R:=R+25;
            if R>650 then R:=650;
            cleardevice;
            end;//увеличить масштаб
        #83:begin
            R:=R-25;
            if R<25 then R:=25;
            cleardevice;
            end;//уменьшить масштаб
    end;
    until Readk=#13;
end;
    
end.