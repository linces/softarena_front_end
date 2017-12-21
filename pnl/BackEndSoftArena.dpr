{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  BackEndSoftArena;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  unLogin in 'unLogin.pas' {frmLogin: TUniLoginForm},
  unEsqueciSenha in 'unEsqueciSenha.pas' {frmEsqueciSenha: TUniForm},
  unFrameMenu in 'unFrameMenu.pas' {frmFrameMenu: TUniFrame},
  unCadPadrao in 'unCadPadrao.pas' {frmCadPadrao: TUniFrame},
  unListaPadrao in 'unListaPadrao.pas' {frmListaPadrao: TUniFrame},
  unCadEmpresa in 'unCadEmpresa.pas' {frmCadEmpresa: TUniFrame},
  unListaEmpresa in 'unListaEmpresa.pas' {frmListaEmpresa: TUniFrame};

{$R *.res}

{$ifndef UNIGUI_VCL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$endif}

begin
{$ifdef UNIGUI_VCL}
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
{$endif}
end.
