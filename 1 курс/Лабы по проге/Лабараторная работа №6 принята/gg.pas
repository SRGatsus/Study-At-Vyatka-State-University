program qq;
uses crt,Laba_6_KorotaevRoman;
{$CODEPAGE CP866}
{$mode delphi}
type
 int=longint;



Procedure proverka;
Begin
Case s[1] of
 #97: If (s[2]=#100) and (s[3]=#100) then d:=1;
 #104: If (s[2]=#101) and (s[3]=#108) and (s[4]=#112) then d:=2;
 #118: If (s[2]=#105) and (s[3]=#101) and (s[4]=#119) then d:=3;
 #102: If (s[2]=#114) and (s[3]=#101) and (s[4]=#101) then d:=4;
 #108:  If (s[2]=#97) and (s[3]=#100) and (s[4]=#100) then d:=5;
 #114: If (s[2]=#97) and (s[3]=#100) and (s[4]=#100)  then d:=6;
end;
   j:=0;
   i:=0;
   k:=wherex;
end;
procedure choice;
var w,q,n,elem:string;
 begin
   proverka;
   Writeln;
    Case d of
     1: begin n:='';elem:='';input(n,elem);end;
     2: infopanel;
     3: DWriteln(D1);
     4: begin Free(D1);end;
     5: begin w:=''; check(w); PushL(D1, w); end;
     6: begin w:=''; check(w); PushF(D1, w);end;
    end;
   j:=0;
    newcom;
   CLRSCR;
   s:=#0;
   d:=0;
   Write('Enter command: ');
   k:=wherex;
   end;
procedure autoinput;
begin
  Case i of
     1: s:='add';
     2: s:='help';
     3: s:='view';
     4: s:='free';
     5: s:='radd';
     6: s:='ladd';
    end;
    gotoxy(16,wherey);
    Write(s);
end;

begin
    CLRSCR;
Write('Enter command: ');
i:=0;
k:=wherex;
d:=0;
j:=0;
Repeat
begin
Ch:=Readkey;
if Ch<>#0 then
    begin
        case ch  of
            #48..#57,#32, #97..#122,#192..#255,#65..#90:
                begin
                  if j<240 then
                  begin

                    If k<>(j+16) then
                        begin
                            j:=j+1;
                            l:=j;
                            Repeat
                            s[j]:=s[j-1];
                            j:=j-1;
                            Until j=(k-15);
                            j:=l;
                            s[k-15]:=Ch;
                            k:=k+1;
                            CLRSCR;
                            Write('Enter command:');
                            l:=0;
                            While l<=j do
                            begin
                                Write(s[l]);
                                l:=l+1;
                            end;
                            gotoxy(k,wherey);
                        end
                    else
                        begin
                            j:=j+1;
                            s[j]:=Ch;
                            k:=k+1;
                            Write(Ch);
                        end;
                          Case Ch of
                        #97: i:=1;
                        #104: i:=2;
                        #118: i:=3;
                         #102: i:=4;
                        #108: i:=5;
                        #114: i:=6;
                        end
                        end
                        else
                        begin
                          clrscr;
                          writeln('Строка большая для команды');
                        end;
                end;
            #127,#8:
                 If j>0 then
                    begin
                        if k<>(j+16) then
                            begin
                            l:=k;
                            Repeat
                            s[k-16]:=s[k-15];
                            k:=k+1;
                            Until k=16+j;
                            k:=l;
                            end;
                        k:=k-1;
                        s[j]:=#0;
                        j:=j-1;
                        CLRSCR;
                        Write('Enter command:');
                        l:=0;
                        While l<=j do
                            begin
                                Write(s[l]);
                                l:=l+1;
                            end;
                        gotoxy(k,wherey);
                    end;
            #9: autoinput;
            #13: choice;
        end;
    end
else
    begin
     Ch:=Readkey;
     case ch of
            #77 :
                begin
                    gotoxy(wherex+1,wherey);
                    k:=k+1;
                end;
            #75:
                begin
                    gotoxy(wherex-1,wherey);
                    k:=k-1;
                end;
            #81:
                begin
                   If cl^=co^ then cl^:=1
                   else cl^:=cl^+1;
                    mov;
                    CLRSCR;
                    Write('Enter command:');
                    gotoxy(16,wherey);
                    Write(s);
                end;
            #73:
                begin
                    If cl^=1 then cl^:=co^
                   else cl^:=cl^-1;
                    mov;
                    CLRSCR;
                    Write('Enter command:');
                    gotoxy(16,wherey);
                    Write(s);
                end;
        end;
    end;
END;
Until Ch=#27
end.
