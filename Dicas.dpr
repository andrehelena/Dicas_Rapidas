program Dicas;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form_Principal},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_Principal, Form_Principal);
  Application.Run;
end.
