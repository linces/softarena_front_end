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
  unCadastroPadrao in 'unCadastroPadrao.pas' {frmCadastroPadrao: TUniForm},
  unLogin in 'unLogin.pas' {frmLogin: TUniLoginForm},
  unEsqueciSenha in 'unEsqueciSenha.pas' {frmEsqueciSenha: TUniForm},
  unCadastroInicial in 'unCadastroInicial.pas' {frmCadastroInicial: TUniForm},
  unFrameMenu in 'unFrameMenu.pas' {frmFrameMenu: TUniFrame},
  unTipoPessoas in 'unTipoPessoas.pas' {frmTipoPessoas: TUniForm};

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
  Application.CreateForm(TfrmTipoPessoas, frmTipoPessoas);
  Application.Run;
{$endif}
end.
