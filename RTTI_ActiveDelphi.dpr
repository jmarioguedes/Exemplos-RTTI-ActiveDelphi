program RTTI_ActiveDelphi;

uses
  Vcl.Forms,
  Unt_Principal in 'Unt_Principal.pas' {Form1},
  Unt_ClasseLinhaBase in 'Unt_ClasseLinhaBase.pas',
  Unt_ClasseLista in 'Unt_ClasseLista.pas',
  Unt_ClassesAtributos in 'Unt_ClassesAtributos.pas',
  Unt_ClassesLinhas in 'Unt_ClassesLinhas.pas',
  Unt_ClasseException in 'Unt_ClasseException.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
