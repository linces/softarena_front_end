unit unTipoPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unCadastroPadrao, Data.DB, uniLabel, uniBitBtn, uniButton,
  uniGUIBaseClasses, uniGUIClasses, uniPanel;

type
  TfrmTipoPessoas = class(TfrmCadastroPadrao)
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoPessoas: TfrmTipoPessoas;

implementation

uses
  Main;

{$R *.dfm}

procedure TfrmTipoPessoas.btnSairClick(Sender: TObject);
begin
  inherited;
 Close;
 if MainForm.ControlConteudo.ActivePage.Caption = 'Tipo Pessoas' then begin
   MainForm.ControlConteudo.ActivePage.Destroy;
   MainForm.ControlConteudo.ActivePage := Nil;
   MainForm.UniTab := Nil;
 end;
end;

end.
