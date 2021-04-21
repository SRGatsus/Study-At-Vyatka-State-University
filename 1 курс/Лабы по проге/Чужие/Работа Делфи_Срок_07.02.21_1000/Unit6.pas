unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm6 = class(TForm)
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
  Form6: TForm6;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm6.btn1Click(Sender: TObject);
begin
Form1.Show;
Form6.Hide;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.Show;
Form6.Hide;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
  Form6.Left:= (Screen.WorkAreaWidth - Form6.Width) div 2;
  Form6.Top:= (Screen.WorkAreaHeight - Form6.Height) div 2;
end;

procedure TForm6.FormActivate(Sender: TObject);
begin
  qry1.SQL.Clear;
  qry1.SQL.Add('SELECT  экзамен.фамилия_студента, экзамен.эк_теория,экзамен.ГРУППА  FROM экзамен WHERE (((экзамен.эк_теория)>1))');
  qry1.Open;
end;

end.
