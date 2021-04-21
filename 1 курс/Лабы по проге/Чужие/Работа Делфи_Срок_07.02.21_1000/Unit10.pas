unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm10 = class(TForm)
    lbl1: TLabel;
    img1: TImage;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm10.btn1Click(Sender: TObject);
begin
Form1.Show;
Form10.Hide;
end;

procedure TForm10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form10.Hide;
end;

end.
