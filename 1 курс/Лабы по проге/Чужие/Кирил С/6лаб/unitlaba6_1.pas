unit unitlaba6_1;
interface
uses crt,SysUtils;
type
  st=string;
  int=longint;
  tlist=^list;
  list=record
  next:tlist;
  data:string;
end;
comm=array[1..20] of integer;
procedure CreateNewElem(var a:tlist;x:st);
Procedure add(var first:tlist;var a:tlist;x:st);
Procedure view(var first:tlist);
Procedure free(var first:tlist);
Procedure select(var first:tlist;var t:st);
procedure item(var first,a:tlist;var x, z:st);
procedure check(var w:string);
procedure infopanel;
procedure input(var n,elem:string);
Procedure newcom(s:integer);
Procedure mov;
var
ch:char;
d,j,k,i,l:int;
s:string;
first,a:tlist;
x,c:st;
m1,co,cl:^integer;
m,k2:tlist;
//n2:int;
up,dn,au:boolean;
com:^comm;
aupn,updn,cm:int;
w,q,n,elem:string;
IMPLEMENTATION
Procedure mov;
Begin
if co^=0 then begin s:='history is empty'; j:=16; k:=32; end else
         Case com^[cl^] of
     1:begin s:='add'; j:=3; k:=19; end;
     2:begin s:='help';j:=4; k:=20; end;
     3:begin s:='view';j:=4; k:=20; end;
     4:begin s:='free';j:=4; k:=20; end;
     5:begin s:='check';j:=4; k:=20; end;
     6:begin s:='item';j:=4; k:=20; end;
         
end;
end;
procedure input(var n,elem:string);
var  x,c:int;

begin
  writeln('enter the number of eliminations');
  check(n);
  x:=1;
  c:=strtoint(n);
  if c<>0 then
  begin

    while x<=c do
      begin
         clrscr;
         write('enter element');
         delay(200);
         clrscr;
         check(elem);
         add(m,k2,elem);
         delline;
         gotoxy(1,wherey-1);
         delline;
         x:=x+1;
       end;
  end;
  clrscr;
end;
Procedure newcom(s:integer);
Begin
If co^<20 then begin
        co^:=co^+1;
        com^[co^]:=s;
        cl^:=co^;
        end
else begin
        co^:=1;
        Repeat
        com^[co^]:=com^[co^+1];
        co^:=co^+1;
        Until co^=20;
        com^[co^]:=s;
        end;
end;
procedure infopanel;
begin
       writeln('list of commands');
       writeln('1) add (select the number of items,then enter them)');
       writeln('2) view (shows list items)');
       writeln('3) free(frees up memory)');
       writeln('4) check (show an item in memory)');
       writeln('5) item (position\insert an element)');
       writeln('6) history (to open the story click PageDown \scroll up click PageUp)');
       writeln('7) Exit');
       writeln;
       writeln('ATTENTION!');
       writeln('you can move using the side arrows');
       writeln('you can erase written with the BACKSPACE button');
       writeln('not forget to press enter to read the command');
       readln;
end;

procedure check(var w:string);
 var
 flag:boolean;
 k,x:integer;z:string;
begin
flag:=false;
while flag<>true do
begin
z:='';
while z='' do
begin
readln(z);
if z='' then begin writeln('Error');delay(300); clrscr; end;
end;
k:=0;
for x:=1 to length(z) do
    begin
      if(ord(z[x])>47) and (ord(z[x])<58) then
      k:=k+1;
    end;
if k=length(z) then
 flag:=true
else begin
 gotoxy(1,2);
 write('Error! Enter a number!');
 delay(350);
 clrscr;
 delline;
end;
end;
w:=z;
end;



Procedure CreateNewElem(var a:tlist;x:st);
begin
  new(a);
  a^.data:=x;
  a^.next:=nil;
end;

Procedure add(var first:tlist;var a:tlist;x:st);
var b:tlist;
begin
  if first=nil then
  begin
    CreateNewElem(first,x);
    exit;
  end;
 CreateNewElem(a,x);
 b:=first;
  while b^.next<> nil  do
  begin
    b:=b^.next;
  end;
  b^.next:=a;
  a^.next:=nil;
end;

Procedure view(var first:tlist);
var b:tlist;
begin
  if first=nil then
  begin
    writeln('the list is empty');
    exit;
  end;
  b:=first;
  while b <> nil do
  begin 
    write(b^.data,' ');
    b:=b^.next;
  end;
  readln;
end;

Procedure select(var first:tlist;var t:st);
var b:tlist;flag:boolean;
begin
  if first=nil then
  begin
    writeln('the list is empty');
    exit;
  end
  else
    begin
    b:=first;
    flag:=false;
    while (b <> nil) and(flag<>true)  do
    begin
      if t=b^.data then
      begin
      flag:=true;
      gotoxy(1,2);
      clrscr;
    
      write('Exist');
      readln;
      exit;
      end else
      b:=b^.next;
    end;
    gotoxy(1,2);
    clrscr;
    writeln('does not exist');
    end;
    readln;
end;

Procedure free(var first:tlist);
var b,temp:tlist;
begin
  if first<>nil then
  begin
  b:=first;
  while b<>nil do
  begin
    temp:=b;
    b:=b^.next;
    dispose(temp);
  end;
  first:=nil;dispose(first);
  writeln('cleaning completed')
  end
  else writeln('the list is empty');
end;


function quantity(first:tlist):integer;
Var  k : integer;   
cur :tlist;
begin
  if first = Nil then
  	k:=0
  Else
  	begin
          k:=1;
           cur:=first;
         while cur^.next <> nil do
  		begin
  		k:=k+1;
  		cur:=cur^.next;
  		end;
  	end;
  quantity:=k;
end;

procedure item(var first,a:tlist;var x, z:st);
var
temp,cur:tlist;
k,n,c:integer;
begin
n:=quantity(first);
c:=strtoint(x);
if (c<1)or(c>n)then
begin
 writeln ('invalid x');
 readln;
 exit;
end
else
    begin
    CreateNewElem(a,z);
    if c=1 then
    begin
      cur:=first;
      first:=a;
      a^.next:=cur;
    end
    else
    if c=n then
    begin
    cur:=first;
    while cur^.next <> nil do
    begin
       cur:=cur^.next;
    end;
    cur^.next:=a;
    a^.next:=nil;
    end
        else
          begin
             cur := first;
             for  k:=2 to c do
             begin
                cur := cur^.next;
             end;
    temp := cur^.next;
    cur^.next := a;
    a^.next := temp;
          end;
    end;
end;
Initialization
Begin
New(com);
New(co);
co^:=0;
New(cl);
end;

Finalization
Begin
Dispose(com);
Dispose(co);
Dispose(cl);
end;
END.
