unit unLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  uniGUIBaseClasses, uniEdit, uniButton, uniLabel, uniImage, dxGDIPlusClasses,
  uniBitBtn,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  DCPsha512, DCPsha1,
  DCPrc4, DCPcrypt2, DCPblockciphers, DCPrijndael, DCPmd5;

type
  TfrmLogin = class(TUniLoginForm)
    fdLogin: TFDQuery;
    dsLogin: TDataSource;
    edtUsuario: TUniEdit;
    edtSenha: TUniEdit;
    btnLogar: TUniButton;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniImage1: TUniImage;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniButton1: TUniButton;
    ActionManager1: TActionManager;
    actSair: TAction;
    procedure btnLogarClick(Sender: TObject);
    procedure UniLabel3Click(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
  private
    dcsnh: string;
    { Private declarations }
  public
    Nvsenha: string;
  end;

function frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, Main, unEsqueciSenha,
  unCadastroInicial, ServerModule;

function frmLogin: TfrmLogin;
begin
  Result := TfrmLogin(UniMainModule.GetFormInstance(TfrmLogin));
end;

procedure TfrmLogin.actSairExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmLogin.btnLogarClick(Sender: TObject);
begin

  if (edtUsuario.Text <> '') and (edtSenha.Text <> '') then
  begin
    btnLogar.Caption := 'Aguarde';
    try
      UniMainModule.Conexao.Connected := False;
      UniMainModule.Conexao.Connected := True;
    except
      on E: Exception do
      begin
        ShowMessage('Erro de conexão com o banco de dados.')
      end;
    end;
    Nvsenha := UniServerModule.encriptar(Trim(edtSenha.Text),'Secnil19xodaionn');
    fdLogin.Close;
    fdLogin.SQL.Text := 'SELECT * FROM usuarios WHERE username = "' +
      edtUsuario.Text + '" and password = "' + Trim(Nvsenha) + '"';
    fdLogin.Open;
    if fdLogin.RecordCount > 0 then
    begin
      Cursor := crDefault;
      btnLogar.Caption := 'Entrar';
      MainForm.Show;
      frmLogin.Visible := False;
    end
    else
    begin
      Cursor := crDefault;
      ShowMessage('Nome de usuário ou senha incorreta!');
      btnLogar.Caption := 'Entrar';
      edtUsuario.SetFocus;
    end;
  end
  else
  begin
    ShowMessage('Preencha os campos corretamente!');
    edtUsuario.SetFocus;
  end;

end;


procedure TfrmLogin.UniButton1Click(Sender: TObject);
begin
  frmCadastroInicial.Show;
end;

procedure TfrmLogin.UniLabel3Click(Sender: TObject);
begin
  frmEsqueciSenha.Show;
end;

initialization

RegisterAppFormClass(TfrmLogin);

end.
