unit unTipoPessoas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniButton;

type
  TfrmTipoPessoas = class(TUniForm)
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmTipoPessoas: TfrmTipoPessoas;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Main;

function frmTipoPessoas: TfrmTipoPessoas;
begin
  Result := TfrmTipoPessoas(UniMainModule.GetFormInstance(TfrmTipoPessoas));
end;

procedure TfrmTipoPessoas.UniButton1Click(Sender: TObject);
begin
 if MainForm.ControlConteudo.ActivePage.Caption = 'Tipo Pessoas' then begin
   MainForm.ControlConteudo.ActivePage.Destroy;
   MainForm.ControlConteudo.ActivePage := Nil;
   MainForm.UniTab := Nil;
 end;
end;

end.
