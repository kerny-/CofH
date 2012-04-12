program Project12;

uses
  Forms,
  Unit9 in 'Unit9.pas' {Form9},
  Unit21 in 'Unit21.pas' {Form21};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm21, Form21);
  Application.Run;
end.
