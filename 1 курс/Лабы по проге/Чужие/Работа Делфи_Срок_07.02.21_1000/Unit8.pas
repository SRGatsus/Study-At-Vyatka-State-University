unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm8 = class(TForm)
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
  Form8: TForm8;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm8.btn1Click(Sender: TObject);
begin
Form1.Show;
Form8.Hide;
end;

procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.Show;
Form8.Hide;
end;

procedure TForm8.FormCreate(Sender: TObject);
begin
  Form8.Left:= (Screen.WorkAreaWidth - Form8.Width) div 2;
  Form8.Top:= (Screen.WorkAreaHeight - Form8.Height) div 2;
end;

procedure TForm8.FormActivate(Sender: TObject);
begin
   qry1.SQL.Clear;
  qry1.SQL.Add('SELECT * FROM экзамен WHERE информатика > 3 and математика > 3 and история > 3 and эк_теория > 3 and философия > 3');
  qry1.Open;
end;

end.
