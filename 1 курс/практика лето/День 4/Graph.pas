program braph;

uses crt;

var graph: array[1..100,1..100] of integer;
means: array of byte;
fi,fo:text;
points,j,i,edges,cur1,cur2,min,min2,fpoint:integer;
flag:boolean;

BEGIN
assign(fi,'task1.txt');
assign(fo,'message.txt');
flag:=false;
        reset(fo);
        rewrite(fo);
        reset(fi);
        readln(fi,points);
               // For i:= 0 to (points-1) do read(fi,means[i]);
                readln(fi) ;
        Readln(fi,edges);
                For i:= 1 to edges do
                        begin
                        read(fi, cur1, cur2);
                        graph[cur1,cur2]:=1;
                        graph[cur2,cur1]:=1;
                        end;
        for j:= 1 to points do
                begin
                for i:= 1 to points do
                write(fo,graph[j,i],'|');
                writeln(fo);
                end;
                begin
                end;
                while flag=false 
                        begin
                        min:=10010001;
                        min2:=0;
                                for i:=1 to points do
                                        begin
                                                for j:=1 to points do
                                                        begin
                                                        if graph[i,j]=1 to min2:=min2+1; 
                                                        end;
                                        if min2<min then
                                                begin
                                                        min:=min2;
                                                        fpoint:=i; 
                                                end;        
                                        end;
                        for i=1 to points do
                                begin
                                graph[fpoint,i]:=2;
                                graph[i,fpoint]:=2;
                                end;
                        flag:=true;
                        for i:=1 to points do
                                begin
                                        for j:=1 to points do
                                                begin
                                                        if graph[i,j]=1 to flag:=false; 
                                                end;        
                                end;
                        end;
                for i:=1 to points do
                        begin
                                for j:=1 to points do
                                        begin
                                                if graph[i,j]=0 to 
                                                begin
                                                 write(fo,i);
                                                 continue;       
                                                end; 
                                        end;        
                        end;
                end;
close(fo);
close(fi);

END.

