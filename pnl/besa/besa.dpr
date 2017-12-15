library besa;

uses
  uniGUIISAPI,
  Main in '..\Main.pas' {MainForm: TUniForm};

{$R *.res}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

end.
