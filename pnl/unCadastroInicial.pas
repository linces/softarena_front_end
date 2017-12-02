unit unCadastroInicial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniButton, uniBitBtn;

type
  TfrmCadastroInicial = class(TUniForm)
    UniBitBtn1: TUniBitBtn;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmCadastroInicial: TfrmCadastroInicial;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Main;

function frmCadastroInicial: TfrmCadastroInicial;
begin
  Result := TfrmCadastroInicial(UniMainModule.GetFormInstance(TfrmCadastroInicial));
end;

procedure TfrmCadastroInicial.UniBitBtn1Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmCadastroInicial.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MainForm.ControlConteudo.ActivePage.Caption = 'Cadastro Inicial' then begin
   MainForm.ControlConteudo.ActivePage.Destroy;
   MainForm.ControlConteudo.ActivePageIndex := 0;
   MainForm.UniTab := Nil;
 end;
end;

end.
