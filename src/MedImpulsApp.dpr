program MedImpulsApp;

uses
  Vcl.Forms,
  MedImpuls in 'MedImpuls.pas' {MedImpulsForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMedImpulsForm, MedImpulsForm);
  Application.Run;
end.
