unit Unit21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm21 = class(TForm)
    Timer1: TTimer;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Timer3: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure FormMouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form21: TForm21;
  i:byte;
implementation

uses Unit9;

{$R *.dfm}


procedure TForm21.FormClick(Sender: TObject);
begin
timer3.Enabled:=false;
form9.Memo2.Font.Color:=clred;
close;
end;

procedure TForm21.FormMouseEnter(Sender: TObject);
begin
form9.Label3.Caption:='Информация';
end;

procedure TForm21.FormShow(Sender: TObject);
begin
form9.Memo2.Font.Color:=clwindow;
form21.Top:=form9.Top+form9.panel1.top+50;
form21.Left:=form9.left+form9.panel1.left+30;

timer3.Enabled:=true;
i:=0;
form21.AlphaBlendValue:=0;
timer1.Enabled:=true;
end;

procedure TForm21.Timer1Timer(Sender: TObject);
begin
i:=i+1;
 form21.AlphaBlendValue:=i;
 if i=225 then begin
  timer1.Enabled:=false;
end;
end;


procedure TForm21.Timer3Timer(Sender: TObject);
begin
form21.Top:=form9.Top+form9.panel1.top+50;
form21.Left:=form9.left+form9.panel1.left+30;
end;

end.
