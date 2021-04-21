program laba3;
{$mode delphi}
uses crt;
const
m= 3;
Menu:array[1..m]
     of string = (' 1.The input boundaries and step',
		                 ' 2.Area and error',
		               ' 3. Exit');
var Lev, Prav,en, h, sum, pog,x,f,h1:real;
                                  z, i,h2,count:longint;
                                                           n:real;
                                                       cha:char;
function Funct(x: real): real;
begin
  Funct:= 2*x*x*x+(-1)*x*x+4*x+17
end;
function Pervo(x: real): real;
begin
  Pervo:= (x*x*x*x)/2+((-1)*x*x*x)/3+2*x*x+17*x
end;
procedure prst;
   begin 
      repeat 
      en:=1;
       clrscr;
       Textcolor (15);
        z:= 0;
        writeln ('Enter the left border');
        readln (Lev);
        writeln ('Enter the right border');
        readln (Prav);
        if Lev>Prav then 
          begin 
           writeln ('Entered is not correct');
           readln;
          end
        else
         z:= 1;
         if (Lev<-1.5) and (Prav<=-1.5) then
          begin
          en:=0;
          end
         else
          if (Lev<-1.6) and (Prav>-1.6)then
           lev:=-1.6;
      until z = 1;
  end;


 procedure prsd;
 begin 
  repeat 
   z:= 0;
   Textcolor (15);
   writeln ('Enter a step');
   readln (n);
   h1:=(Prav - Lev);
   if (n < 0)  or (n>h1) then
    begin 
     writeln ('Incorrect input . Press enter and try again');
     readln;
    end;
  until (n > 0)   and (n<=h1);
 writeln ('Press enter to exit the menu.');
 readln;
end;


procedure prthd;
var ip:integer;
sr1:real;
begin
Textcolor (15);
   if count =1 then
   begin
     if en=0 then 
       begin
         clrscr;
         Writeln('The square error is equal to zero');
       end
    else
      begin
       h:= (Prav - Lev) / n;
       h2:=Round(h);
      Textcolor (15);
      clrscr;
      f:=0;
      sum:=0;
      for ip:= 0 to h2-1 do
        begin
          x:=Lev+ip*n;
          sr1:=Funct(x);
          sum:=sum+sr1;
       end;
          sum:=sum*n;
           writeln ('Area is ', sum: 0:6);
          begin
          pog:=Pervo(Prav)-Pervo(Lev);
          en:=1;
         end;
          Writeln ('Absolute error= ', Abs(pog-Sum): 5:6);
          Writeln ('Relative error= ', ((Abs(pog-Sum))/sum)*100: 3:6,'%');
          writeln ('Press enter to exit the menu');
      end
  end
 else
 begin
  clrscr;
  Writeln('You have not entered data.press enter.');
  end;
  readln;
end;




begin 
 count:=0;
 en:=1;
  repeat
   Clrscr;
   textbackground(0);
   Textcolor (15);
   Gotoxy (50, 1);
   Writeln ('Laboratory work number 3');
   Textcolor (15);
   Gotoxy (44, 2);
   Writeln ('F= 2*x^3 + (-1)*x^2 + (4)*x + (17)');
   Gotoxy (44, 2);
   Textcolor (15);
    for i:= 1 to m do
     begin 
      GotoXY (1, 4 + i);
      Write (Menu[i]);
     end;
   i:= 1;
   TextColor (5);
   Gotoxy (1, 4 + i);
   Write (Menu[i]);
    repeat 
     cha:=readkey;
     if cha = #0 then
      cha:=readkey;
     case cha of
       #72:
              begin 
               TextColor (15);
               Gotoxy (1, 4 + i);
               Write (Menu[i]);
               i:= i - 1;
                if i  <1 then i:= 3;
               Textcolor (14);
               Gotoxy (1, 4 + i);
               Write (Menu[i]);
              end;
       #80:
              begin 
               Textcolor (15);
               Gotoxy (1, 4 + i);
               Write (Menu[i]);
               i:= i + 1;
                if i  >m then i:= 1;
               Textcolor (5);
               gotoxy (1, 4 + i);
               Write (Menu[i]);
              end;
     end;
    until cha =#13;
     case i of 
       1:
          begin
           count:=1;
           prst;
           prsd;
          end;
2: prthd;
3:
  begin 
  clrscr;
  Textcolor (15);
  writeln ('End of the program...');
  i:= 0;
  end;
  end;
     until i = 0;
  end.