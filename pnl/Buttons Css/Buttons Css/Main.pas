unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniButton,
  uniBitBtn, uniURLFrame, uniEdit, uniGroupBox, uniLabel;

type
  TMainForm = class(TUniForm)
    btnBotao_Verde: TUniBitBtn;
    btnBotao_Azul: TUniBitBtn;
    btnBotao_Vermelho: TUniBitBtn;
    btnBotao_Laranja: TUniBitBtn;
    btnBotao_Preto: TUniBitBtn;
    btnEntrar: TUniBitBtn;
    btnEspera: TUniBitBtn;
    UniGroupBox1: TUniGroupBox;
    edtNomeImagem: TUniEdit;
    UniLabel1: TUniLabel;
    edtCorImagem: TUniEdit;
    UniLabel2: TUniLabel;
    edtTamanhoImagem: TUniEdit;
    UniLabel4: TUniLabel;
    edtMargemImagem: TUniEdit;
    UniLabel5: TUniLabel;
    btnPersonalizado: TUniBitBtn;
    UniLabel3: TUniLabel;
    edtCaption: TUniEdit;
    btnteste: TUniButton;
    btnClick: TUniButton;
    procedure btnPersonalizadoClick(Sender: TObject);
    procedure btnClickClick(Sender: TObject);
  private
    { Private declarations }
    procedure Imagem_Botao( Objeto :TObject; Caption, Nome_Imagem :string; Cor_imagem :string; Tamanho_Imagen, Margem_imagem :integer );

    procedure Ajustar_todos_bot�es;
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.Imagem_Botao( Objeto :TObject; Caption, Nome_Imagem :string; Cor_imagem :string; Tamanho_Imagen, Margem_imagem :integer );
var css : string;

begin
  css := '<i class="' + Nome_Imagem + '"' +
          ' style= "' +
                      ' font-size:'+ Tamanho_Imagen.ToString + 'px;' +
                      ' color:'    + Cor_imagem + '; ' +
                      ' margin: '  + Margem_imagem.ToString + '; ' +
                 '"></i>';

   if ( Objeto.ClassName = 'TUniBitBtn') or (Objeto.ClassName = 'TUniButton') then
      TUniBitBtn( Objeto).Caption := css + Caption;
end;

procedure TMainForm.btnClickClick(Sender: TObject);
begin
   Ajustar_todos_bot�es;
end;

procedure TMainForm.Ajustar_todos_bot�es;
begin
  //========= ajusta os botoes da tela

   Imagem_Botao(btnBotao_Verde
              ,'VERDE'
              , 'fa fa-bath'
              , 'white'
              , 19
              , 5
              );

   Imagem_Botao(btnBotao_Azul
              ,'AZUL'
              , 'fa fa-snowflake-o'
              , 'pink'
              , 13
              , 20
              );

   Imagem_Botao(btnBotao_Vermelho
              ,'VERMELHO'
              , 'fa fa-user-circle'
              , 'green'
              , 30
              , 5
              );

   Imagem_Botao(btnBotao_Laranja
              ,'LARANJA'
              , 'fa fa-briefcase'
              , 'black'
              , 17
              , 5
              );

   Imagem_Botao(btnBotao_Preto
              ,'PRETO'
              , 'fa fa-home fa-fw'
              , 'red'
              , 15
              , 10
              );

   Imagem_Botao(btnEntrar
              ,'ENTRAR'
              , 'fa fa-fire'
              , 'red'
              , 30
              , 5
              );

   Imagem_Botao(btnEspera
              ,'PROCESSANDO'
              , 'fa fa-motorcycle'
              , 'white'
              , 20
              , 5
              );

   Imagem_Botao(btnPersonalizado
              ,'HELLO WORD'
              , 'fa fa-refresh fa-spin fa-3x'
              , 'black'
              , 40
              , 5
              );


   Imagem_Botao(btnteste
              ,'APENAS UM TESTE'
              , 'fa fa-cog fa-spin fa-3x '
              , 'red'
              , 15
              , 5
              );

   Imagem_Botao(btnClick
              ,'CLICK ME'
              , 'fa fa-ban fa-stack-2x text-danger'
              , 'green'
              , 17
              , 10
              );

end;

procedure TMainForm.btnPersonalizadoClick(Sender: TObject);
var
   Caption        : string;
   Nome_Imagem    : string;
   Cor_imagem     : string;
   Tamanho_Imagen : integer;
   Margem_imagem  : integer;
begin
   Caption        := edtCaption.Text;
   Nome_Imagem    := edtNomeImagem.Text;;
   Cor_imagem     := edtCorImagem.Text;
   Tamanho_Imagen := StrToInt(edtTamanhoImagem.Text);
   Margem_imagem  := StrToInt(edtMargemImagem.Text);


   Imagem_Botao( btnPersonalizado
              , Caption
              , Nome_Imagem
              , Cor_imagem
              , Tamanho_Imagen
              , Margem_imagem );

end;

initialization
  RegisterAppFormClass(TMainForm);

end.
