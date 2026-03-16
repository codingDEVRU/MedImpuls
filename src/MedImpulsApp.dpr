program MedImpulsApp;

uses
  Vcl.Forms,
  MedImpuls in 'MedImpuls.pas' {MedImpulsForm},
  UApplication in 'Core\UApplication.pas',
  USettings in 'Core\USettings.pas',
  UUtils in 'Core\UUtils.pas',
  UCryptoUtils in 'Core\UCryptoUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMedImpulsForm, MedImpulsForm);
  Application.Run;
end.
