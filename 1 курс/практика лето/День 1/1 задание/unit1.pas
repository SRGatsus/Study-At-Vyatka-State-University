unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ExtDlgs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure Image1Click(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;
   count:integer;


implementation

{$R *.lfm}

{ TForm1 }






procedure TForm1.Button1Click(Sender: TObject);
var x,y:integer; t,nom:Real;
begin
count:=0;
for x:=0 to 3000 do
for y:=0 to 3000 do
begin
if Image1.Canvas.Pixels[x,y]=clblack then
count:=count+1;
end;

nom:=count/400+(count*9)/(400*100);
count:=Trunc(nom);
Close;

end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
  var f:textfile;
begin
  assignfile(f,'result3.txt');
  rewrite(f);
  write(f,count);
  closefile(f);
end;

procedure TForm1.Image1Click(Sender: TObject);
begin

end;

end.

