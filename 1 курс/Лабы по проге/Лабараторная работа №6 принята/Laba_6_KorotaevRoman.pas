unit Laba_6_KorotaevRoman;
interface
uses crt,SysUtils;
type
  st=string;
  TData = string;
  int=longint;
  TPElem = ^TElem;
  TElem = record
    Data : TData;
    PPrev, PNext : TPElem;
  end;
  comm=array[1..20] of integer;
   {Тип, описывающий дек.}
  TDeq = record
    PFirst, PLast : TPElem; {Указатели на первый и на последний элементы дека.}
  end;

procedure check(var w:string);
procedure PushL(var aDeq : TDeq; const aData : TData);
procedure PushF(var aDeq : TDeq; const aData : TData);
function PopL(var aDeq : TDeq; var aData : TData) : Boolean;
procedure DWriteln(aDeq : TDeq);
procedure Free(var aDeq : TDeq);
procedure Init(var aDeq : TDeq);
procedure infopanel;
procedure input(var n,fgh:string);
procedure whitespace;
Procedure newcom;
Procedure mov;
var
D1 : TDeq;
Data : TData;
co,cl:^integer;
com:^comm;
s:string;
x,k,j,i,l,d:int;
Ch:char;
w,q,n,elem:string;
IMPLEMENTATION
procedure whitespace;
var i:int;
begin
  i:=1;
  while i<=length(s) do
      begin
        if s[i]=' ' then
        begin
          delete(s,i,1);
          i:=i-1;
        end
           else
           i:=i+1;
           if s[i]<>' ' then break;
      end;
end;

procedure input(var n,fgh:string);
var  i,c:int;
flag22:boolean;
begin
  repeat
  writeln('enter the number of eliminations');
  check(n);
  if (length(n)>9) then begin writeln('error n>999999999'); delay(400); clrscr; END;
  until (length(n)<=9);
  i:=1;
  c:=strtoint(n);
  if c<>0 then
  begin

    while i<=c do
      begin
         clrscr;
         write('enter element [',i,']=');
         check(fgh);
         PushL(D1,fgh);
         delline;
         gotoxy(1,wherey-1);
         delline;
         i:=i+1;
         clrscr;
       end;
  end;
  clrscr;
end;

procedure infopanel;
begin
        writeln('list of commands');
       writeln('1)add-Creating an array of elements');
       writeln('2)view-array of elements');
       writeln('3)ladd-add to the beginning');
       writeln('4)radd-add to the end');
       writeln('5)free-Free memory');
        writeln('6)exit');
        readln;

end;

procedure Init(var aDeq : TDeq);
begin
  aDeq.PFirst := nil;
  aDeq.PLast := nil;
end;


procedure check(var w:string);
 var
 flag:boolean;
 k,LLi:int;z:string;
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
for LLi:=1 to length(z) do
    begin
      if(ord(z[LLi])>47) and (ord(z[LLi])<58) then
      k:=k+1;
    end;
if k=length(z) then begin
 flag:=true;
 end
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


{Добавление элемента в начало дека.}
procedure PushF(var aDeq : TDeq; const aData : TData);
var
  PNew : TPElem;
begin
  New(PNew);
  PNew^.Data := aData;
  PNew^.PPrev := nil;
  PNew^.PNext := aDeq.PFirst;
  if aDeq.PFirst = nil then
    aDeq.PLast := PNew
  else
    aDeq.PFirst^.PPrev := PNew;
  aDeq.PFirst := PNew;
end;

{Добавление элемента в конец дека.}
procedure PushL(var aDeq : TDeq; const aData : TData);
var
  PNew : TPElem;
begin
  New(PNew);
  PNew^.Data := aData;
  PNew^.PNext := nil;
  PNew^.PPrev := aDeq.PLast;
  if aDeq.PLast = nil then
    aDeq.PFirst := PNew
  else
    aDeq.PLast^.PNext := PNew;
  aDeq.PLast := PNew;
end;


procedure DWriteln(aDeq : TDeq);
var
  PElem : TPElem;
  LLi : Integer;
begin
  PElem := aDeq.PFirst;
  LLi := 0;
  while PElem <> nil do begin
    Inc(LLi);
    if LLi > 1 then Write(', ');
    Write(PElem^.Data);
    PElem := PElem^.PNext;
  end;
  if LLi = 0 then
    Writeln('No elemnts')
  else
    Writeln;
    Writeln('press enter');
readln();
end;


procedure Free(var aDeq : TDeq);
var
  Data : TData;
begin
  while PopL(aDeq, Data) do;
end;

function PopL(var aDeq : TDeq; var aData : TData) : Boolean;
var
  PDel : TPElem;
begin
  PopL := False;
  if aDeq.PFirst = nil then Exit;

  PDel := aDeq.PLast;
  aData := PDel^.Data;
  aDeq.PLast := PDel^.PPrev;
  if aDeq.PLast = nil then
    aDeq.PFirst := nil
  else
    aDeq.PLast^.PNext := nil;
  Dispose(PDel);
  PopL := True;
end;

Procedure newcom;
Begin
If co^<20 then begin
        co^:=co^+1;

        com^[co^]:=d;
        cl^:=co^;
        end
else begin
        co^:=1;
        Repeat
        com^[co^]:=com^[co^+1];
        co^:=co^+1;
        Until co^=20;
        com^[co^]:=d;
        end;
end;
Procedure mov;
Begin
if co^=0 then begin s:='history is empty' ;j:=16; k:=32;  end
else
         Case com^[cl^] of
         1:begin s:='add'; j:=3; k:=19;end;
     2: begin s:='help';j:=4; k:=20;end;
     3: begin s:='view';j:=4; k:=20;end;
     4: begin s:='free';j:=4; k:=20;end;
     5: begin s:='ladd';j:=4; k:=20;end;
     6: begin s:='radd';j:=4; k:=20;end;
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
