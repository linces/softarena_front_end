program MenuAbas;

uses
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  UframeTeste in 'UframeTeste.pas' {frameTeste: TUniFrame},
  uframeTeste2 in 'uframeTeste2.pas' {frameTeste2: TUniFrame},
  uframeTeste3 in 'uframeTeste3.pas' {frameTeste3: TUniFrame},
  uframeTeste4 in 'uframeTeste4.pas' {frameTeste4: TUniFrame};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.
