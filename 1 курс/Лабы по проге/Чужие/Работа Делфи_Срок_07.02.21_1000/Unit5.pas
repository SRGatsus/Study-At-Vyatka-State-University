unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm5 = class(TForm)
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
  Form5: TForm5;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm5.btn1Click(Sender: TObject);
begin
Form1.Show;
Form5.Hide;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.Show;
Form5.Hide;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
  Form5.Left:= (Screen.WorkAreaWidth - Form5.Width) div 2;
  Form5.Top:= (Screen.WorkAreaHeight - Form5.Height) div 2;
end;

procedure TForm5.FormActivate(Sender: TObject);
begin
  qry1.SQL.Clear;
  qry1.SQL.Add('SELECT  экзамен.фамилия_студента, экзамен.философия,экзамен.ГРУППА  FROM экзамен WHERE (((экзамен.философия)>1))');
  qry1.Open;
end;

end.
