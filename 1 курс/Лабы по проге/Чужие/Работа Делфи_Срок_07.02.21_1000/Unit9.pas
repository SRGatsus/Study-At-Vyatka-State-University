unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids, RpRave, RpDefine, RpRender,
  RpRenderPDF, jpeg, QRCtrls, QuickRpt, ExtCtrls;

type
  TForm9 = class(TForm)
    lbl1: TLabel;
    con1: TADOConnection;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    qry1: TADOQuery;
    btn1: TButton;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRImage1: TQRImage;
    qrdbtxt__: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel9: TQRLabel;
    ADOQuery1: TADOQuery;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    Button1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm9.btn1Click(Sender: TObject);
begin
Form1.Show;
Form9.Hide;
end;

procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.Show;
Form9.Hide;
end;

procedure TForm9.FormCreate(Sender: TObject);
begin
  Form9.Left:= (Screen.WorkAreaWidth - Form9.Width) div 2;
  Form9.Top:= (Screen.WorkAreaHeight - Form9.Height) div 2;
end;

procedure TForm9.FormActivate(Sender: TObject);
begin
    qry1.SQL.Clear;
  qry1.SQL.Add('SELECT * FROM экзамен');
  qry1.Open;
     ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM студенты LEFT JOIN экзамен ON студенты.код_студента=экзамен.код_студента WHERE (((экзамен.эк_теория)>0))');
  ADOQuery1.Open;
end;

procedure TForm9.Button1Click(Sender: TObject);
begin
  QuickRep1.Preview;
end;

end.
