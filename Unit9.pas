unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls, jpeg, ImgList, ComCtrls, ToolWin, Mask,
  ActnList, Buttons,Clipbrd;

type
  TForm9 = class(TForm)
    Memo1: TMemo;
    Label8: TLabel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ImageList1: TImageList;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    Label3: TLabel;
    Memo3: TMemo;
    Panel1: TPanel;
    Memo2: TMemo;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    TabSheet2: TTabSheet;
    RadioButton9: TRadioButton;
    RadioButton8: TRadioButton;
    Edit2: TEdit;
    Edit4: TEdit;
    RadioButton3: TRadioButton;
    Edit1: TEdit;
    RadioButton4: TRadioButton;
    Edit3: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    PopupMenu1: TPopupMenu;
    Char1: TMenuItem;
    Hex1: TMenuItem;
    RadioButton5: TRadioButton;
    RadioButton10: TRadioButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    bufer1: TMenuItem;
    DeChar1: TMenuItem;
    procedure RadioButton3Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure ToolButton1MouseEnter(Sender: TObject);
    procedure ToolButton3MouseEnter(Sender: TObject);
    procedure ToolButton4MouseEnter(Sender: TObject);
    procedure ToolButton5MouseEnter(Sender: TObject);
    procedure ToolButton7MouseEnter(Sender: TObject);
    procedure FormMouseEnter(Sender: TObject);
    procedure Memo1MouseEnter(Sender: TObject);
    procedure Memo2MouseEnter(Sender: TObject);
    procedure Label1MouseEnter(Sender: TObject);
    procedure Memo3MouseEnter(Sender: TObject);
    procedure Button2MouseEnter(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure RadioButton9Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure Memo2DblClick(Sender: TObject);
    procedure PageControl1MouseEnter(Sender: TObject);
    procedure TabSheet1MouseEnter(Sender: TObject);
    procedure TabSheet2MouseEnter(Sender: TObject);
    procedure Panel2MouseEnter(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure Char1Click(Sender: TObject);
    procedure Hex1Click(Sender: TObject);
    procedure RadioButton10Click(Sender: TObject);
    procedure bufer1Click(Sender: TObject);
    procedure DeChar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  g:byte;
  flag:boolean;
implementation

uses Unit21;

{$R *.dfm}

{замена символа на выбранный}
procedure samsimbyl;
var
s:string;
i:integer;
begin
s:=form9.Memo1.Text;
for i:= 1 to length(s) do
  if s[i]=form9.Edit2.Text[1] then s[i]:=form9.Edit4.Text[1];

form9.memo1.text:=s;
end;

{hex}
procedure hex;
var
s,r:string;
i:integer;
begin
s:=form9.Memo1.Text;
for i:=1 to length(s) do
  r:=r+inttohex(ord(s[i]),1)+#32;
form9.memo1.text:=r;
end;

{acsii}
procedure acsii;
var
s,r:string;
i:integer;
begin
s:=form9.Memo1.Text;
for i:=1 to length(s) do
  r:=r+#32+inttostr(ord(s[i]));

form9.memo1.text:=r;
end;


{Добавление символа, после определенного}
procedure peredsim;
var
i,y:integer;
  se:string;
     fe:array[1..100] of char;
 begin
//обнуляем массив
y:=0;
i:=1;
se:=#0;
se:=form9.Memo1.Text;    //s=текст
for i:=1 to length(se) do begin
  y:=y+1;
  fe[y]:=se[i];//присваеваем символ новому массиву из стараго

  if se[i]=form9.Edit6.Text[1] then begin //если нашли символ то
  y:=y+1; //
  fe[y]:=form9.Edit5.Text[1]; //f[2]=3
end;

end;
se:=#0;
i:=1;
for I:=1 to length(fe) do

se[i]:=fe[i];
form9.Memo1.Text:=se;
end;

{Удаление любого символа}
procedure deletesimbyl;
var
s:string;
i:integer;
begin
s:=form9.Memo1.Text;
for i:= 1 to length(s) do
  if s[i]=form9.Edit3.Text then delete(s,i,1);

form9.memo1.text:=s;
end;

procedure dels;
var
s:string;
i:integer;
begin
s:=form9.Memo1.Text;
for i:= 1 to length(s) do
  if s[i]=form9.Edit3.Text then begin
  delete(s,i,1);
  form9.memo1.text:=s;
  exit;
end;
end;

{Сверху вниз - наоборот}
procedure PerstNO;
var
s,f:string;
i,m:integer;

begin
s:=#0;

for I:=0 to form9.Memo1.Lines.Count-1 do begin
  s:=form9.Memo1.Lines.Strings[i];//просмотр строк идет
  //сверху вниз

 for m:=0 to length(s)-1 do  begin
   f:=f+s[length(s)-m];//строку наооборот
 end;

 form9.Memo1.lines.strings[i]:=f;
 f:='';
end;

end;


{По - два символа наоборот}
procedure PerstSN2;
var
s,f:string;
i,c,m:integer;
begin

for I:=form9.Memo1.Lines.Count-1 downto 0 do begin

  s:=form9.Memo1.Lines.Strings[i];
  c:=0;

 for m:=0 to trunc((length(s)-1)/2) do  begin

   f:=f+s[length(s)-(c+1)]+s[length(s)-(c)];
   c:=c+strtoint(form9.edit1.text);//просто меняем шаг цикла
   //этого достаточно
 end;

form9.Memo1.Lines.Strings[i]:=f;
f:='';
end;
end;

{Распределение в память с помощью push по 4 байта}
Procedure RapsrRedel;

var
s,f:string;
i,m,z:integer;
begin
f:='';z:=0;

for I:=0 to form9.Memo1.Lines.Count-1 do begin
 s:=form9.Memo1.Lines.Strings[i];//первая строка в памяти

 for m:=1 to length(s) do begin
   f:=f+s[m];//заполняем первыми 4 байтами(или 8 символами)

   if m=z+8 then begin  form9.Memo2.Lines.Add('push 0'+f+'h');
     z:=m;f:='';//как только заполнили сохраняем в мемо и очишаем
   end;
 end;
m:=0;z:=0;f:='';
end;
end;

procedure acsiitosim;
label a,b;
var
index:char;
i,f:integer;
s:string;
begin
i:=0;

f:=length(form9.memo1.Text);
s:=form9.memo1.Text;
form9.memo1.Clear;
index:=chr(strtoint(s[1]+s[2]));

for i:=1  to f do
  if (s[i]=#32) or (s[i]=',') then begin
  if s[i+1]=#0 then exit;
   if (s[i+3]=#32) or (s[i+3]=',') then goto b;

  index:=(chr(strtoint(s[i+1]+s[i+2]+s[i+3])));
  goto a;
  b:
  index:=(chr(strtoint(s[i+1]+s[i+2])));
  a:
  form9.Memo1.Text:=form9.Memo1.Text+(index);
end;
end;

{Hex коды в символы}
procedure hextosim;
var
index:char;
i,f:integer;
s:string;
begin
i:=0;

f:=length(form9.memo1.Text);
s:=form9.memo1.Text;
form9.memo1.Clear;
index:=chr(StrToInt('$'+(s[1]+s[2])));
form9.Memo1.Text:=form9.Memo1.Text+(index);

for i:=1  to f do
  if (s[i]=#32) or (s[i]=',') then begin
  if s[i+1]=#0 then exit;
  index:=chr(StrToInt('$'+(s[i+1]+s[i+2])));
  form9.Memo1.Text:=form9.Memo1.Text+(index);
end;
end;

{Hex коды в ascii}
procedure hextoacsii;
var
index:Int64;
i,f:integer;
s:string;
begin
i:=0;

f:=length(form9.memo1.Text);
s:=form9.memo1.Text;
form9.memo1.Clear;
index:=StrToInt('$'+(s[1]+s[2]));
form9.Memo1.Text:=form9.Memo1.Text+IntToStr(index);

for i:=1  to f do
  if (s[i]=#32) or (s[i]=',') then begin
  if s[i+1]=#0 then exit;
  index:=StrToInt('$'+(s[i+1]+s[i+2]));
  form9.Memo1.Text:=form9.Memo1.Text+#32+IntToStr(index);
end;
end;

{acsii коды в hex}
procedure acsiitohex;
var
index:string;
i,f:integer;
s:string;
begin
i:=0;

f:=length(form9.memo1.Text);
s:=form9.memo1.Text;
form9.memo1.Clear;
index:=index+#32+inttohex(strtoint(s[1]+s[2]),1);

for i:=1  to f do
  if (s[i]=#32) or (s[i]=',') then begin
  if s[i+1]=#0 then exit;
  index:=index+#32+inttohex(strtoint(s[i+1]+s[i+2]),1);
end;
  form9.Memo1.Text:=index;
end;

{Скриптовой инитерпретатор, сделан плохо, сам знаю, если буду развивать прогу, то все исправлю}
procedure interpretation;
var
s,f:string;
i,m,v:integer;

begin
s:=#0;

for I:=0 to form9.Memo2.Lines.Count-1 do begin
  s:=form9.Memo2.Lines.Strings[i];//просмотр строк идет
  //сверху вниз

  if s='hex' then hex;
  if s='acsii' then acsii;

  if (s[1]='a') and (s[2]='d') and (s[3]='d') then begin
  form9.Edit6.Text:=s[5];
  form9.Edit5.Text:=s[7];
  peredsim;
  end;

  if (s[1]='s') and (s[2]='a') and (s[3]='m') then begin
  form9.Edit2.Text:=s[5];
  form9.Edit4.Text:=s[7];
  samsimbyl;
  end;

  if (s[1]='d') and (s[2]='e') and (s[3]='l') then begin
  form9.Edit3.Text:=s[5];
  for v:=1 to length(s) do
  deletesimbyl;
  end;

  if (s[1]='d') and (s[2]='e') and (s[3]='l') and (s[4]='s') then begin
  form9.Edit3.Text:=s[6];
  dels;
  end;

  if (s[1]='i') and (s[2]='n') and (s[3]='f') then begin
  form9.Memo1.Text:=s[5]+form9.Memo1.Text;
  end;

  if (s[1]='f') and (s[2]='n') and (s[3]='i') then begin
  form9.Memo1.Text:=form9.Memo1.Text+s[5];
  end;

  if (s[1]='p') and (s[2]='h') and (s[3]='e') then RapsrRedel;


  if (s[1]='n') and (s[2]='a') and (s[3]='b') then PerstNO;


  if (s[1]='a') and (s[2]='t') and (s[3]='s') then acsiitosim;
  if (s[1]='h') and (s[2]='t') and (s[3]='s') then hextosim;
  if (s[1]='h') and (s[2]='t') and (s[3]='a') then hextoacsii;
  if (s[1]='a') and (s[2]='t') and (s[3]='h') then acsiitohex;
end;
end;

function fscript(fname:string):boolean;
var
f: TextFile;
buf: String[10];
begin
form9.memo2.Clear;
AssignFile(f, fName);
{$I-}
Reset(f);
{$I+}

if IOResult <> 0 then begin
exit;
end;

while not EOF(f) do begin
  readln(f, buf);
  form9.Memo2.Lines.Add(buf);
end;

CloseFile(f);
end;


{Процедуры отвечающие за визуальную часть программы
не так и важны}

procedure TForm9.bufer1Click(Sender: TObject);
begin
memo2.Clear;
Memo2.SelText:=Memo2.SelText+Clipboard.AsText;
end;

procedure TForm9.Button2Click(Sender: TObject);
var
i:integer;
begin
g:=g+1;
if g/2=Round(g/2) then  begin

for i:=947 downto 699 do begin
 form9.Width:=i;
Application.ProcessMessages;
end;
end

else

for i:=699 to 947 do  begin
form9.Width:=i;
Application.ProcessMessages;
end;
end;

procedure TForm9.Button2MouseEnter(Sender: TObject);
begin
label3.Caption:='Развернуть';
end;

procedure TForm9.Char1Click(Sender: TObject);
begin
fscript('script/Char.ch');
end;

procedure TForm9.DeChar1Click(Sender: TObject);
begin
fscript('script/DeChar.ch');
end;

procedure TForm9.FormCreate(Sender: TObject);
begin
g:=0;
flag:=false;
end;

procedure TForm9.FormMouseEnter(Sender: TObject);
begin
label3.Caption:='Выполните действие';
end;

procedure TForm9.Hex1Click(Sender: TObject);
begin
fscript('script/Hex.ch');
end;

procedure TForm9.Label1MouseEnter(Sender: TObject);
begin
label3.Caption:='Разработчик';
end;

procedure TForm9.Memo1MouseEnter(Sender: TObject);
begin
label3.Caption:='Введите текст';
end;


procedure TForm9.Memo2DblClick(Sender: TObject);
begin
g:=g+1;
if g/2=Round(g/2) then  begin
toolbutton4.ImageIndex:=2;
panel1.Color:=clwindow;
tabsheet1.Enabled:=true;
tabsheet2.Enabled:=true;
flag:=false;
memo3.Text:='Вы в обычном режиме,'
 +' кликните два раза по полю ввода, что-бы перейти в режим исполнения скриптов.'
end

else  begin
memo3.Text:='Вы в режиме исполнения скриптов,'
 +' кликните два раза по полю ввода, что-бы перейти в обычный режим.';
toolbutton4.ImageIndex:=6;
panel1.Color:=clred;
tabsheet1.Enabled:=false;
tabsheet2.Enabled:=true;
flag:=true;
end;
end;

procedure TForm9.Memo2MouseEnter(Sender: TObject);
begin
 label3.Caption:='Введите скрипт';
 if g/2=Round(g/2) then
 memo3.Text:='Вы в обычном режиме,'
 +' кликните два раза по полю ввода, что-бы перейти в режим исполнения скриптов.'
 else
 memo3.Text:='Вы в режиме исполнения скриптов,'
 +' кликните два раза по полю ввода, что-бы перейти в обычный режим.';
end;


procedure TForm9.Memo3MouseEnter(Sender: TObject);
begin
label3.Caption:='Описание';
end;

procedure TForm9.N11Click(Sender: TObject);
begin
form9.Close;
end;


procedure TForm9.N15Click(Sender: TObject);
begin
 deletesimbyl;
end;

procedure TForm9.N21Click(Sender: TObject);
begin
RapsrRedel;
end;

procedure TForm9.N2Click(Sender: TObject);
begin
PerstNO;
end;

procedure TForm9.N5Click(Sender: TObject);
begin
memo1.Text:='';
memo2.Text:='';
Edit3.Text:='';
end;

procedure TForm9.N7Click(Sender: TObject);
begin
ToolButton1.Click;
end;


procedure TForm9.N9Click(Sender: TObject);
begin
ToolButton3.Click;
end;


procedure TForm9.PageControl1MouseEnter(Sender: TObject);
begin
if tabsheet1.Enabled=false then
label3.Caption:='Не доступно в режиме исполнения скриптов';
end;

procedure TForm9.Panel2MouseEnter(Sender: TObject);
begin
if tabsheet1.Enabled=false then
label3.Caption:='Не доступно в режиме исполнения скриптов'
end;

procedure TForm9.RadioButton10Click(Sender: TObject);
begin
memo3.text:='acsii-коды в hex';
end;

procedure TForm9.RadioButton1Click(Sender: TObject);
begin
memo3.Text:='hex-коды в символы';
end;

procedure TForm9.RadioButton2Click(Sender: TObject);
begin
memo3.Text:='acsii-коды в символы';
end;

procedure TForm9.RadioButton3Click(Sender: TObject);
begin
memo3.Text:= 'Слова наоборот, в обратном порядке строки '+
'символы группируются, по кол-ву переносов,'+
' важно, что бы перенос, был кратен количеству символов в строке.'
end;

procedure TForm9.RadioButton4Click(Sender: TObject);
begin
memo3.Text:='Удаляет из текста выбранный символ, в пример удален символ 0';
end;


procedure TForm9.RadioButton6Click(Sender: TObject);
begin
memo3.Text:='Переводим символы в acsii-коды'
end;

procedure TForm9.RadioButton7Click(Sender: TObject);
begin
memo3.Text:='hex-коды в acsii'
end;

procedure TForm9.RadioButton8Click(Sender: TObject);
begin
memo3.Text:='Заменяет выбранный символ, на выбранный символ, в пример заменен символ 5 на  символ 0';
end;

procedure TForm9.RadioButton9Click(Sender: TObject);
begin
memo3.Text:='Добавляет символ после указанного символа'
end;


{Вызов главных процедур}
procedure TForm9.TabSheet1MouseEnter(Sender: TObject);
begin
if tabsheet1.Enabled=false then
label3.Caption:='Не доступно в режиме исполнения скриптов'
else
label3.Caption:='Выбирете опцию';
end;

procedure TForm9.TabSheet1Show(Sender: TObject);
begin
RadioButton9.Checked:=false;
RadioButton8.Checked:=false;
RadioButton3.Checked:=false;
RadioButton4.Checked:=false;
end;


procedure TForm9.TabSheet2MouseEnter(Sender: TObject);
begin
if tabsheet1.Enabled=false then
label3.Caption:='Не доступно в режиме исполнения скриптов'
else
label3.Caption:='Выбирете опцию';
end;

procedure TForm9.TabSheet2Show(Sender: TObject);
begin
RadioButton6.Checked:=false;
RadioButton7.Checked:=false;
end;

procedure TForm9.TabSheet3Show(Sender: TObject);
begin
RadioButton6.Checked:=false;
RadioButton7.Checked:=false;
RadioButton9.Checked:=false;
RadioButton8.Checked:=false;
RadioButton3.Checked:=false;
RadioButton4.Checked:=false;
end;

procedure TForm9.ToolButton1Click(Sender: TObject);
var
f: TextFile;
buf: String[255];
fName: String;

begin
opendialog1.Execute;
fName:=opendialog1.FileName;
if fName='' then  exit;
form9.Memo1.Clear;
AssignFile(f, fName);
{$I-}
Reset(f);
{$I+}

if IOResult <> 0 then  exit;

while not EOF(f) do begin
  readln(f, buf);
  form9.Memo1.Lines.Add(buf);
end;

CloseFile(f);
end;

procedure TForm9.ToolButton1MouseEnter(Sender: TObject);
begin
label3.Caption:='Открыть';
end;

procedure TForm9.ToolButton3Click(Sender: TObject);

var
f: TextFile;
fName: String;
i:integer;

begin
savedialog1.Execute;
fName:= savedialog1.FileName;
if fName='' then  exit;
AssignFile(f, fName);
Rewrite(f);

for i:=0 to Memo1.Lines.Count do
    writeln(f, Memo1.Lines[i]);

CloseFile(f);
end;


procedure TForm9.ToolButton3MouseEnter(Sender: TObject);
begin
label3.Caption:='Сохранить';
end;

procedure TForm9.ToolButton4Click(Sender: TObject);
begin
if flag=true then begin
 interpretation;
 exit;
end

else


case RadioButton1.Checked of
true:hextosim;
end;

case RadioButton2.Checked of
true:acsiitosim;
end;

case RadioButton10.Checked of
true:acsiitohex;
end;

case RadioButton5.Checked of
true:hextoacsii;
end;

case RadioButton9.Checked of
true:peredsim;
end;

case RadioButton8.Checked of
true:samsimbyl;
end;

case RadioButton7.Checked of
true:hex;
end;

case RadioButton6.Checked of
true:acsii;
end;

case RadioButton4.Checked of
true:deletesimbyl;
end;

begin

case RadioButton3.Checked of
true:begin PerstSN2;
end;

False: begin
edit1.Enabled:=false;
end;
end;
end;
end;

procedure TForm9.ToolButton4MouseEnter(Sender: TObject);
begin
label3.Caption:='Выполнить';
end;

procedure TForm9.ToolButton5Click(Sender: TObject);
begin
memo1.Text:='';
memo2.Text:='';
Edit3.Text:='';
end;

procedure TForm9.ToolButton5MouseEnter(Sender: TObject);
begin
label3.Caption:='Очистить';
end;

procedure TForm9.ToolButton7Click(Sender: TObject);
begin
form21.show;
end;

procedure TForm9.ToolButton7MouseEnter(Sender: TObject);
begin
label3.Caption:='Информация';
end;

end.
