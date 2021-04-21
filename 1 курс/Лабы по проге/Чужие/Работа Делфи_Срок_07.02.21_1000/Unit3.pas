unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    dbgrd1: TDBGrid;
    con1: TADOConnection;
    qry1: TADOQuery;
    ds1: TDataSource;
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
  Form3: TForm3;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
Form1.Show;
Form3.Hide;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.Show;
Form3.Hide;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  Form3.Left:= (Screen.WorkAreaWidth - Form3.Width) div 2;
  Form3.Top:= (Screen.WorkAreaHeight - Form3.Height) div 2;

end;

procedure TForm3.FormActivate(Sender: TObject);
begin
         qry1.SQL.Clear;
  qry1.SQL.Add('SELECT  экзамен.фамилия_студента, экзамен.история,экзамен.ГРУППА  FROM экзамен WHERE (((экзамен.история)>1))');
  qry1.Open;
end;

end.
