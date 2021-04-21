unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm4 = class(TForm)
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
  Form4: TForm4;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm4.btn1Click(Sender: TObject);
begin
Form1.Show;
Form4.Hide;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.Show;
Form4.Hide;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  Form4.Left:= (Screen.WorkAreaWidth - Form4.Width) div 2;
  Form4.Top:= (Screen.WorkAreaHeight - Form4.Height) div 2;
        qry1.SQL.Clear;
  qry1.SQL.Add('SELECT студенты.фамилия_студента, экзамен.математика, студенты.индекс_группы FROM студенты LEFT JOIN экзамен ON студенты.код_студента = экзамен.код_студента WHERE (((экзамен.математика)>1))');
  qry1.Open;
end;

procedure TForm4.FormActivate(Sender: TObject);
begin
  qry1.SQL.Clear;
  qry1.SQL.Add('SELECT  экзамен.фамилия_студента, экзамен.математика,экзамен.ГРУППА  FROM экзамен WHERE (((экзамен.математика)>1))');
  qry1.Open;
end;

end.
