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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmCadastroInicial: TfrmCadastroInicial;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmCadastroInicial: TfrmCadastroInicial;
begin
  Result := TfrmCadastroInicial(UniMainModule.GetFormInstance(TfrmCadastroInicial));
end;

procedure TfrmCadastroInicial.UniBitBtn1Click(Sender: TObject);
begin
 Close;
end;

end.