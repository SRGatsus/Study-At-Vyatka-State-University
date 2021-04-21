unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    img1: TImage;
    lbl3: TLabel;
    shp1: TShape;
    lbl4: TLabel;
    shp2: TShape;
    lbl5: TLabel;
    shp3: TShape;
    lbl6: TLabel;
    btn1: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btn10: TButton;
    btn11: TButton;
    btn2: TButton;
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10;

{$R *.dfm}

procedure TForm1.btn4Click(Sender: TObject);
begin
Form2.Show;
Form1.Hide;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
Form3.Show;
Form1.Hide;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
Form4.Show;
Form1.Hide;
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
Form5.Show;
Form1.Hide;
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
   Form6.Show;
   Form1.Hide;
end;

procedure TForm1.btn10Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.btn11Click(Sender: TObject);
begin
Form7.Show;
Form1.Hide;
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
Form8.Show;
Form1.Hide;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Form1.Left:= (Screen.WorkAreaWidth - Form1.Width) div 2;
  Form1.Top:= (Screen.WorkAreaHeight - Form1.Height) div 2;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
Form9.Show;
Form1.Hide;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
Form10.Show;
Form1.Hide;
end;

end.
