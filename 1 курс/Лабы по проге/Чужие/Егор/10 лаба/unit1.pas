unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image2: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Label1: TLabel;
    Memo1: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure Image19Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image20Click(Sender: TObject);
    procedure Image21Click(Sender: TObject);
    procedure Image22Click(Sender: TObject);
    procedure Image23Click(Sender: TObject);
    procedure Image24Click(Sender: TObject);
    procedure Image25Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure ImgClick(Sender: TObject; i, j : Integer);
    procedure StartGame(Sender: TObject);
    procedure isFinish(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  player : integer;
  a : array[1..25,1..25] of Integer;
  isf : Boolean;
  CountClick,n : Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.StartGame(Sender: TObject);
var
  i, j : Integer;
begin
  player := 1;
  Label1.Caption:= inttostr(player);
  isf := false;
  CountClick :=0;
   n:=9 ;
   if radioButton2.Checked then n:=25;
  for i := 1 to n do begin
    TImage( FindComponent('Image'+inttostr(i))).Picture.LoadFromFile('img\i.png');
    TImage( FindComponent('Image'+inttostr(i))).Enabled:= true;
  end;

  for i := 1 to sqr(n) do
    for  j:= 1 to sqr(n) do
      a[i,j] := 0;

end;


procedure TForm1.isFinish(Sender: TObject);
var
  i : Integer;
begin
   if radiobutton1.Checked then
   begin
  for i:=1 to 3 do
    if ((a[i,1]=a[i,2])and(a[i,2]=a[i,3])and(player=a[i,1])) then
       begin isf := true; end else
    if ((a[1,i]=a[2,i])and(a[2,i]=a[3,i])and(player=a[1,i])) then
       begin isf := true; end;
     end
   else
   begin
       for i:=1 to 5 do
    if ((a[i,1]=a[i,2])and(a[i,2]=a[i,3]) and (a[i,3]=a[i,4])and(a[i,4]=a[i,5]) and(player=a[i,1])) then
       begin isf := true; end else
    if ((a[1,i]=a[2,i])and(a[2,i]=a[3,i]) and (a[3,i]=a[4,i])and(a[4,i]=a[5,i]) and(player=a[1,i])) then
       begin isf := true; end;
   end;
  if radiobutton1.Checked then
     begin
  if ((a[1,1]=a[2,2])and(a[2,2]=a[3,3])and(player=a[1,1])) then
   begin isf := true; end;
  if ((a[1,3]=a[2,2])and(a[2,2]=a[3,1])and(player=a[1,3])) then
   begin isf := true; end;
     end
  else
  begin
      if ((a[1,1]=a[2,2])and(a[2,2]=a[3,3])and(a[3,3]=a[4,4])and(a[4,4]=a[5,5])and(player=a[1,1])) then
   begin isf := true; end;
  if ((a[1,5]=a[2,4])and(a[2,4]=a[3,3])and(a[3,3]=a[4,2])and(a[4,2]=a[5,1])and(player=a[1,5])) then
   begin isf := true; end;
    end;
 if (isf) then begin
  for i:=1 to n do
    TImage( FindComponent('Image'+inttostr(i))).Enabled:= false;
  Label1.Caption:='Победил игрок:' + inttostr(player);
 end else
Label1.Caption:='Ход игрока:' + inttostr(player);

 if (((CountClick = 9)or(CountClick = 25))  and not(isf)) then
  Label1.Caption:='Ничья';


end;

procedure TForm1.ImgClick(Sender: TObject; i, j : Integer);
begin

  if (player = 1) then begin
    (Sender as TImage).Picture.LoadFromFile('img\i_x.png');
    (Sender as TImage).Enabled:=false;
    a[i,j] := player;
    CountClick := CountClick +1;
    isFinish ( Sender );
    player:= 2;
  end else

  if (player = 2) then begin
    (Sender as TImage).Picture.LoadFromFile('img\i_o.png');
    (Sender as TImage).Enabled:=false;
    a[i,j] := player;
    CountClick := CountClick +1;
    isFinish ( Sender );
    player:= 1;
  end;

  if radiobutton1.Checked then
   begin
  Memo1.Clear;
  Memo1.Lines.Add(inttostr(a[1,1])+' '+inttostr(a[1,2])+' '+inttostr(a[1,3]));
  Memo1.Lines.Add(inttostr(a[2,1])+' '+inttostr(a[2,2])+' '+inttostr(a[2,3]));
  Memo1.Lines.Add(inttostr(a[3,1])+' '+inttostr(a[3,2])+' '+inttostr(a[3,3]));
   end
  else
  begin
  Memo1.Clear;
  Memo1.Lines.Add(inttostr(a[1,1])+' '+inttostr(a[1,2])+' '+inttostr(a[1,3])+' '+inttostr(a[1,4])+' '+inttostr(a[1,5]));
  Memo1.Lines.Add(inttostr(a[2,1])+' '+inttostr(a[2,2])+' '+inttostr(a[2,3])+' '+inttostr(a[2,4])+' '+inttostr(a[2,5]));
  Memo1.Lines.Add(inttostr(a[3,1])+' '+inttostr(a[3,2])+' '+inttostr(a[3,3])+' '+inttostr(a[3,4])+' '+inttostr(a[3,5]));
  Memo1.Lines.Add(inttostr(a[4,1])+' '+inttostr(a[4,2])+' '+inttostr(a[4,3])+' '+inttostr(a[4,4])+' '+inttostr(a[4,5]));
  Memo1.Lines.Add(inttostr(a[5,1])+' '+inttostr(a[5,2])+' '+inttostr(a[5,3])+' '+inttostr(a[5,4])+' '+inttostr(a[5,5]));
   end ;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  StartGame ( Sender );
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  //StartGame (Sender);
end;

procedure TForm1.Image10Click(Sender: TObject);
begin
     if radiobutton2.Checked then
  ImgClick (Sender, 4, 1);
end;

procedure TForm1.Image11Click(Sender: TObject);
begin
  if radiobutton2.Checked then
  ImgClick (Sender, 1, 4);
end;

procedure TForm1.Image12Click(Sender: TObject);
begin
   if radiobutton2.Checked then
  ImgClick (Sender, 2, 4);
end;

procedure TForm1.Image13Click(Sender: TObject);
begin
       if radiobutton2.Checked then
  ImgClick (Sender, 4, 2);
end;

procedure TForm1.Image14Click(Sender: TObject);
begin
       if radiobutton2.Checked then
  ImgClick (Sender, 4, 3);
end;

procedure TForm1.Image15Click(Sender: TObject);
begin
     if radiobutton2.Checked then
  ImgClick (Sender, 3, 4);
end;

procedure TForm1.Image16Click(Sender: TObject);
begin
       if radiobutton2.Checked then
  ImgClick (Sender, 5, 1);
end;

procedure TForm1.Image17Click(Sender: TObject);
begin
         if radiobutton2.Checked then
  ImgClick (Sender, 5, 3);
end;

procedure TForm1.Image18Click(Sender: TObject);
begin
     if radiobutton2.Checked then
  ImgClick (Sender, 4, 4);
end;

procedure TForm1.Image19Click(Sender: TObject);
begin
       if radiobutton2.Checked then
  ImgClick (Sender, 5, 2);
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
  ImgClick (Sender, 1, 1);
end;

procedure TForm1.Image20Click(Sender: TObject);
begin
     if radiobutton2.Checked then
  ImgClick (Sender, 5, 4);
end;

procedure TForm1.Image21Click(Sender: TObject);
begin
     if radiobutton2.Checked then
  ImgClick (Sender, 4, 5);
end;

procedure TForm1.Image22Click(Sender: TObject);
begin
     if radiobutton2.Checked then
  ImgClick (Sender, 3, 5);
end;

procedure TForm1.Image23Click(Sender: TObject);
begin
     if radiobutton2.Checked then
  ImgClick (Sender, 5, 5);
end;

procedure TForm1.Image24Click(Sender: TObject);
begin
      if radiobutton2.Checked then
  ImgClick (Sender, 2, 5);
end;

procedure TForm1.Image25Click(Sender: TObject);
begin
     if radiobutton2.Checked then
  ImgClick (Sender, 1, 5);
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
  ImgClick (Sender, 1, 2);
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
  ImgClick (Sender, 1, 3);
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
  ImgClick (Sender, 2, 1);
end;

procedure TForm1.Image5Click(Sender: TObject);
begin
  ImgClick (Sender, 2, 2);
end;

procedure TForm1.Image6Click(Sender: TObject);
begin
  ImgClick (Sender, 2, 3);
end;

procedure TForm1.Image7Click(Sender: TObject);
begin
  ImgClick (Sender, 3, 1);  ;
end;

procedure TForm1.Image8Click(Sender: TObject);
begin
  ImgClick (Sender, 3, 2);
end;

procedure TForm1.Image9Click(Sender: TObject);
begin
  ImgClick (Sender, 3, 3);
end;



end.

