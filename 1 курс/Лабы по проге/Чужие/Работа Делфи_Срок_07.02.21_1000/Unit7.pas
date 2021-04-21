unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm7 = class(TForm)
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
  Form7: TForm7;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm7.btn1Click(Sender: TObject);
begin
Form1.Show;
Form7.Hide;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.Show;
Form7.Hide;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
  Form7.Left:= (Screen.WorkAreaWidth - Form7.Width) div 2;
  Form7.Top:= (Screen.WorkAreaHeight - Form7.Height) div 2;
end;

procedure TForm7.FormActivate(Sender: TObject);
begin
         qry1.SQL.Clear;
  qry1.SQL.Add('SELECT * FROM студенты');
  qry1.Open;
end;

end.
