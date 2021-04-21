unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    con1: TADOConnection;
    qry1: TADOQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
begin
Form1.Show;
Form2.Hide;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.Show;
Form2.Hide;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Form2.Left:= (Screen.WorkAreaWidth - Form2.Width) div 2;
  Form2.Top:= (Screen.WorkAreaHeight - Form2.Height) div 2;
    qry1.SQL.Clear;
  qry1.SQL.Add('SELECT  экзамен.фамилия_студента, экзамен.информатика,экзамен.ГРУППА  FROM экзамен WHERE (((экзамен.информатика)>1))');
  qry1.Open;
end;


procedure TForm2.FormActivate(Sender: TObject);
begin
qry1.SQL.Clear;
  qry1.SQL.Add('SELECT  экзамен.фамилия_студента, экзамен.информатика,экзамен.ГРУППА  FROM экзамен WHERE (((экзамен.информатика)>1))');
  qry1.Open;
end;

end.
