program prjCalculadora;

uses
  Forms,
  Calculadora in 'Calculadora.pas' {Form1},
  Unit2 in 'Unit2.pas' {FormOpcoes};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
