program laba3;


uses crt, graph, winmouse;


const
  m = 5;
  xi = -1.92287567539349;
  
  
  Menu: array[1..m]
  of string = (' 1. Borders',

		  ' 2. Step is',

		  ' 3. Area and error',

                  ' 4. Graph',

		  ' 5. Exit');


var
  s, en, sum, x1, x2, Nu, pog, pog1, t, sr, f, h1: real;
  h: real;
  
  z, i, n1, x, count: integer;
  zx, zy, gx, gy, x0, y0, x3, x4, y1, y2: integer;
  
  
  n: real;
  cha: char;
  
  st1: string;
  
  xm, ym: byte;


function Y(x: integer): longint;
begin
  Y := (-1 * (2 * x * x * x + (-2) * x * x + (-5) * x + (12)))
end;


procedure prst;


begin
  repeat
    clrscr;
    
    
    Textcolor(15);
    
    
    z := 0;
    
    
    writeln('Enter the first integration limit min=-3 max=4');
    
    
    readln(s);
    
    
    writeln('Enter the second integration limit max=4');
    
    
    readln(en);
    
    
    if s > en then begin
      writeln('Incorrect data');
      
      readln;
      
      
    end
    else
    
    
      z := 1;
    
    
  until z = 1;
  
  
  writeln('Press enter to exit the menu');
  
  readln;
  
  
end;


procedure prsd;


var
  st: string;

begin
  repeat
    clrscr;
    
    
    z := 0;
    
    
    Textcolor(15);
    
    
    writeln('Enter the step');
    readln(h);
    
    if (h <= 0) then
    begin
      writeln('Incorrect number entry. Press enter and try again');
      
      readln;
      
      
    end;
    
    
  until (h > 0) and (h <= (en - s));
  
  
  writeln('Press enter to exit the menu.');
  
  
  readln;
  
  
end;






procedure prthd;

var
  
  ip: integer;
  
  sr1, sr2: real;

begin
  
  Textcolor(15);
  
  clrscr;
  
  sum := 0;
  
  x1 := s;
  
  x2 := x1 + h;
  
  for ip := 1 to n1 do
  begin
    
    if (x1 < xi) and (x2 < xi) then begin
      
      x1 := x1 + h / 2;
      
      sum := sum + h * abs(2 * (x1 * x1 * x1) + (-2) * (x1 * x1) + (-5) * x1 + (12));
      
      x1 := x1 + h / 2;
      
      x2 := x1 + h;
      
    end;
    
    if (x1 > xi) and (x2 > xi) then begin
      
      x1 := x1 + h / 2;
      
      sum := sum + h * abs(2 * (x1 * x1 * x1) + (-2) * (x1 * x1) + (-5) * x1 + (12));
      
      x1 := x1 + h / 2;
      
      x2 := x1 + h;
      
    end;
    
    if (x1 < xi) and (x2 > xi) then begin
      
      sr := (xi + x1) / 2;
      
      sum := sum + (xi - x1) * abs(2 * (sr * sr * sr) + (-2) * (sr * sr) + (-5) * sr + (12));
      
      sr := (x2 + xi) / 2;
      
      sum := sum + (x2 - xi) * abs(2 * (sr * sr * sr) + (-2) * (sr * sr) + (-5) * sr + (12));
      
      x1 := x1 + h;
      
      x2 := x1 + h;
      
    end;
    
  end;
  
  
  
  
  writeln('Area is ', sum:0:13);
  
  
  begin
    Nu := 0;
    n := (en - s) / h;
    n1 := round(n);
    while s <= en do
    begin
      t := s;
      f := abs(12 * t - 4);
      s := s + h;
      if f > Nu then Nu := f
      
    end;
    
    nu := f * ((h1 * h1 * h1) / (12 * n1 * n1));
    pog := nu;
    pog1 := (nu / sum) * 100;
  end;
  
  
  Writeln('Error is ', pog:0:13);
  Writeln('Error2 is ', pog:3:5, '%');
  
  writeln('Press enter to exit the menu');
  
  
  readln;
  
end;

procedure Button(x, y: integer; n: byte);
const
  x1 = 80;
  x2 = 0;
  y1 = 0;
  y2 = 20;
var
  st: string;
begin
  setcolor(15);
  SetlineStyle(0, 3, 0);
  Rectangle(x - x1, y + y1, x, y + y2);
  if n = 1 then st := 'x+  y+'
  else if n = 2 then st := 'x-  y-'
  else if n = 3 then st := 'x+'
  else if n = 4 then st := 'x-'
  else if n = 5 then st := 'y+'
  else if n = 6 then st := 'y-';
  settextjustify(centertext, centertext);
  settextstyle(3, 7, 1);
  setcolor(12);
  outtextxy(x - (x1 div 2), y + (y2 div 2), st)
end;


procedure prfr;
var
  stiv: char;
  
  a1, b1, b2, b3, b4, b5, b6: set of byte;
  
  xmo1, ymo1, center: longint;
  
  flag: boolean;
  
  k: real;
  
  xmo2, ymo2: integer;

begin
  
  a1 := [0..80];
  
  b1 := [0..20];
  
  b2 := [40..60];
  
  b3 := [80..100];
  
  b4 := [120..140];
  
  b5 := [160..180];
  
  b6 := [200..220];
  
  xm := 10;
  
  ym := 40;
  
  gx := detect;
  
  initgraph(gx,
  gy, ' ');
  
  x0 := 300;
  
  y0 := 300;
  
  repeat
    
    Bar(0, 0, getmaxx, getmaxy);
    
    setcolor(14);
    
    settextstyle(1, 0, 1);
    
    line(x0 * 2 + 10, 0, x0 * 2 + 10, y0 * 2);
    
    line(0, y0 * 2, x0 * 2 + 10, y0 * 2);
    
    line(0, y0, 2 * x0, y0);
    
    line(x0, 0, x0, 2 * y0);
    
    line(x0 - 5, 11, x0, 0);
    
    line(x0 + 5, 11, x0, 0);
    
    line(2 * x0 - 11, y0 - 5, 2 * x0, y0);
    
    line(2 * x0 - 11, y0 + 5, 2 * x0, y0);
    
    settextjustify(centertext, centertext);
    
    st1 := 'X';
    
    outtextxy(2 * x0 + 5, y0 - 5, st1);
    
    st1 := 'Y';
    
    outtextxy(x0 - 10, 5, st1);
    
    st1 := '0';
    
    outtextxy(x0 - 5, y0 + 8, st1);
    
    for x := (-35) to (20) do
    
    
    begin
      
      x3 := x0 + (x - 1) * xm;
      
      y1 := y0 + (Y(x - 1) div ym);
      
      x4 := x0 + x * xm;
      
      y2 := y0 + (Y(x) div ym);
      
      line(x3, y1, x4, y2);
      
    end;
    
    i := 0;
    
    while i < 2 * x0 do
    
    begin
      
      if (i mod 50) = 0 then
        
        line(i, y0 - 4, i, y0 + 4)
      
      else line(i, y0 - 2, i, y0 + 2);
      
      if ((i mod 50) = 0) and (i <> x0) then
      
      begin
        
        str(((i - x0) / xm):0:1, st1);
        
        settextjustify(centertext, toptext);
        
        outtextxy(i, y0 + 8, st1);
        
      end;
      
      i := i + 25;
      
    end;
    
    i := 0;
    
    while i < 2 * y0 do
    
    begin
      
      if ((i mod 50) = 0) and (i <> 0) then
        
        line(x0 - 4, i, x0 + 4, i)
      
      else if i <> 0 then line(x0 - 2, i, x0 + 2, i);
      
      if ((i mod 50) = 0) and (i <> y0) then
      
      begin
        
        str(((y0 - i) * ym), st1);
        
        settextjustify(righttext, centertext);
        
        outtextxy(x0 - 5, i, st1);
        
      end;
      
      i := i + 25;
      
    end;
    
    k := s;
    
    while k <= en do
    
    begin
      
      xmo1 := (x0 + round(k) * xm);
      
      ymo1 := (y0);
      
      setcolor(green);
      
      ymo2 := (y0 + Y(round(k)) Div ym);
      
      line(xmo1, ymo1, xmo1, ymo2);
      
      k := k + 1;
      
    end;
    
    bar(x0 * 2 + 11, 0, getmaxx, 400);
    
    bar(0, y0 * 2 + 1, getmaxx, getmaxy);
    
    Button(GetMaxX - 1200, 200, 1);
    
    Button(GetMaxX - 1200, 240, 2);
    
    Button(GetMaxX - 1200, 280, 3);
    
    Button(GetMaxX - 1200, 320, 4);
    
    Button(GetMaxX - 1200, 360, 5);
    
    Button(GetMaxX - 1200, 400, 6);
    
    repeat
      
      setcolor(7);
      
      SetTextStyle(1, 0, 2);
      
      Outtextxy(1100, 200, 'y= 2*x^3 + (-2)*x^2 + (-5)*x + (12)');
      
      Outtextxy(1012, 220, 'Method of of trapezes');
      
      Outtextxy(949, 240, 'x1=-1.92287567539349');
      
      setcolor(10);
      
      Outtextxy(1500, getmaxy - 140, 'Click right button mouse(RBM) to exit in menu');
      
      flag := false;
      
      repeat
        
        getmousestate(xmo1, ymo1, center);
        
        if center = 1 then begin
          
          xmo1 := xmo1 - getmaxx + 1280;
          
          ymo1 := ymo1 - 200;
          
        end;
        
      until (center = 2) or (center = 1);
      
      if center = 1 then begin
        
        if (xmo1 in a1) and (ymo1 in b1) then begin
          
          flag := true;
          
          xm := xm + 1; ym := ym - 1;
          
        end
        
        else
        
        if (xmo1 in a1) and (ymo1 in b2) then begin
          
          flag := true;
          
          xm := xm - 1; ym := ym + 1;
          
        end
        
        else
        
        if (xmo1 in a1) and (ymo1 in b3) then begin
          
          flag := true;
          
          xm := xm + 1;
          
        end
        
        else
        
        if (xmo1 in a1) and (ymo1 in b4) then begin
          
          flag := true;
          
          xm := xm - 1;
          
        end
        
        else
        
        if (xmo1 in a1) and (ymo1 in b5) then begin
          
          flag := true;
          
          ym := ym - 1;
          
        end
        
        else
        
        if (xmo1 in a1) and (ymo1 in b6) then begin
          
          flag := true;
          
          ym := ym + 1;
          
        end;
        
        if xm > 30 then xm := xm - 1;
        
        if xm < 2 then xm := xm + 1;
        
        if ym > 50 then ym := ym - 1;
        
        if ym < 15 then ym := ym + 1;
        
      end;
      
      if center = 2 then break;
      
    until flag = true;
    
  until center = 2;
  
  delay(200);
  
  closegraph;
  
end;


begin
  repeat
    Clrscr;
    
    
    Textcolor(11);
    
    
    Gotoxy(50, 4);
    
    
    Writeln('Laboratory work #3');
    
    
    Textcolor(10);
    
    
    Gotoxy(41, 5);
    
    
    Writeln('y= 2*x^3 + (-2)*x^2 + (5)*x + (12)');
    
    
    Gotoxy(44, 6);
    
    
    
    
    
    Textcolor(15);
    
    
    for i
    := 1 to m
    do
    
    
    begin
      GotoXY(30, 8 + i);
      
      
      Write(Menu[i]);
      
      
    end;
    
    
    i := 1;
    
    
    TextColor(12);
    
    
    Gotoxy(30, 8 + i);
    
    
    Write(Menu[i]);
    
    
    repeat
      cha := readkey;
      
      
      case cha of
        #72:
          begin
            TextColor(15);
            
            
            Gotoxy(30, 8 + i);
            
            
            Write(Menu[i]);
            
            
            i := i - 1;
            
            
            if i
            < 1 then
              i := 4;
            
            
            Textcolor(12);
            
            
            Gotoxy(30, 8 + i);
            
            
            Write(Menu[i]);
            
            
          end;
        
        
        #80:
          
          begin
            Textcolor(15);
            
            
            Gotoxy(30, 8 + i);
            
            
            Write(Menu[i]);
            
            
            i := i + 1;
            
            
            if i
            > m then
              i := 1;
            
            
            Textcolor(12);
            
            
            gotoxy(30, 8 + i);
            
            
            Write(Menu[i]);
            
            
          end;
      
      
      end;
      
      
    until cha =
    #13;
    case i of 1:
        begin
          count := 1;
          prst;
        end;
      
      
      
      2: prsd;
      
      
      3: prthd;
      
      
      4: prfr;
      5:
        
        begin
          clrscr;
          
          
          Textcolor(15);
          
          
          writeln('End of the program...');
          
          
          i := 0;
          
          
        end;
    
    
    end;
    
    
  until i = 0;
  
end.