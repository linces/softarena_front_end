unit unEsqueciSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniGUIBaseClasses, uniEdit,
  uniLabel, uniPanel,
  IdMailBox, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  IdMessageCoder,
  IdMessageCoderMIME, IdMessage, DCPcrypt2, DCPsha512, DCPblockciphers,
  DCPrijndael,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, IdAntiFreezeBase, Vcl.IdAntiFreeze,
  IdServerIOHandler,
  IdSSL, IdSSLOpenSSL, IdCustomTCPServer, IdTCPServer, IdCmdTCPServer,
  IdSMTPServer,
  IdIOHandlerSocket, IdIOHandlerStack, IdIOHandler, IdIOHandlerStream,
  IdSMTPRelay, DCPrc4, DCPsha1,
  DCPmd5, uniImage;

type
  TfrmEsqueciSenha = class(TUniForm)
    UniPanel1: TUniPanel;
    edtEmail: TUniEdit;
    btnRecupera: TUniBitBtn;
    btnSair: TUniBitBtn;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniPanel2: TUniPanel;
    btnSair2: TUniBitBtn;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    Smtp: TIdSMTP;
    dsBusca: TDataSource;
    fdEmail: TFDQuery;
    IdSMTPServer1: TIdSMTPServer;
    IdMessage1: TIdMessage;
    IdSSLIOHandlerSocketOpenSSL2: TIdSSLIOHandlerSocketOpenSSL;
    fdEmailid: TFDAutoIncField;
    fdEmailusername: TStringField;
    fdEmailemail: TStringField;
    fdEmailpassword: TStringField;
    UniLabel5: TUniLabel;
    procedure btnSairClick(Sender: TObject);
    procedure btnRecuperaClick(Sender: TObject);
  private
    dcsnh: string;
    procedure enviamail(EmailDestino: string);
    function gerasenha(Size: Integer; Tipo: Integer = 1): String;
  public
    Nvsenha: string;
  end;

function frmEsqueciSenha: TfrmEsqueciSenha;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule;

function frmEsqueciSenha: TfrmEsqueciSenha;
begin
  Result := TfrmEsqueciSenha(UniMainModule.GetFormInstance(TfrmEsqueciSenha));
end;

procedure TfrmEsqueciSenha.btnRecuperaClick(Sender: TObject);
begin
  UniLabel5.Visible := true;
  if edtEmail.Text <> '' then
  begin
    btnRecupera.Caption := 'Aguarde';
    try
      btnRecupera.Caption := 'Aguarde';
      Cursor := crHourGlass;
      UniMainModule.Conexao.Connected := False;
      UniMainModule.Conexao.Connected := true;
      // end;
    except
      on E: Exception do
      begin
        Cursor := crDefault;
        ShowMessage('Erro de conex�o com o banco de dados. Tente novamente.');
        exit;
      end;
    end;
    fdEmail.Close;
    fdEmail.SQL.Text :=
      'select id, username, email, password FROM usuarios WHERE email = "' +
      Trim(edtEmail.Text) + '"';
    Nvsenha := gerasenha(10, 8);
    fdEmail.Open;
    if fdEmail.RecordCount > 0 then
    begin
      fdEmail.Edit;
      fdEmailpassword.Text := UniServerModule.encriptar(Nvsenha, 'Secnil19xodaionn');
      fdEmail.ApplyUpdates(-1);
      fdEmail.CommitUpdates;
      enviamail(edtEmail.Text);
      Cursor := crDefault;
      btnRecupera.Caption := 'Recuperar';
      UniLabel5.Visible := False;
      UniPanel2.Visible := true;
      UniPanel1.Visible := False;
    end
    else
    begin
      Cursor := crDefault;
      ShowMessage('E-mail n�o encontrado!');
      btnRecupera.Caption := 'Recuperar';
      UniLabel5.Visible := False;
      edtEmail.SetFocus;
    end;
  end
  else
  begin
    ShowMessage('Preencha os campos corretamente!' + Trim(edtEmail.Text));
    edtEmail.SetFocus;
  end;

end;

procedure TfrmEsqueciSenha.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEsqueciSenha.enviamail(EmailDestino: string);
begin
  with IdMessage1 do
  begin
    ContentType := 'text/html';
    Body.Add('<!DOCTYPE html>');
    Body.Add('<html>           ');
    Body.Add('	<head>           ');
    Body.Add('		<meta charset="ISO-9958-1">');
    Body.Add
      ('		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">');
    Body.Add('<meta name="description" content="Demo project">              ');
    Body.Add('<meta name="viewport" content="width=device-width, initial-scale=1">');
    Body.Add(
      '	</head>                                                                ');
    Body.Add(
      '	<body>                                                                 ');
    Body.Add(' 	<p>Ol&aacute;,</p>                                                                          ');
    Body.Add('     Conforme solicitado, segue a nova senha de acesso:                                    ');

    Body.Add(Nvsenha + '<br><br>');
    Body.Add('     Se voc&ecirc; n&atilde;o solicitou nova senha, entre em contato com o suporte no mail: softarena@softarena.com.br.<br><br>');
    Body.Add('Atenciosamente,<br><br>');
    Body.Add('SoftArena<br>');
    Body.Add('https://www.softarena.com.br<br>');
    Body.Add('Facebook: https://www.facebook.com/SoftArenasoft/<br>');
    Body.Add('WahtsApp: (34) 99158-7421');
    Body.Add(
      '	</body>                                                                                     ');
    Body.Add('</html>                                                                               ');

    From.Text := 'softarena@softarena.com.br';
    ReplyTo.EMailAddresses := 'softarena@softarena.com.br';
    Recipients.EMailAddresses := EmailDestino; { To: header }
    Subject := 'Redefini��o de senha.'; { Subject: header }
    Priority := TIdMessagePriority(2); { Message Priority }
    // CCList.EMailAddresses := EmailDestino; { CC }
    BCCList.EMailAddresses := 'softarena@softarena.com.br'; { BCC }
  end;

  Smtp.AuthType := satDefault; { Simple Login }
  Smtp.Username := 'softarena@softarena.com.br';
  Smtp.Password := 'Secnil12345';

  { General setup }
  Smtp.Host := 'smtp.umbler.com';
  Smtp.Port := 587;

  { now we send the message }
  Smtp.Connect;
  try
    Smtp.Send(IdMessage1);
  finally
    Smtp.Disconnect;
  end;
end;

function TfrmEsqueciSenha.gerasenha(Size: Integer; Tipo: Integer = 1): String;
var
  i: Integer;
  Chave: String;
const
  str1 = '1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
  str2 = '1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  str3 = '1234567890abcdefghijklmnopqrstuvwxyz';
  str4 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
  str5 = '1234567890';
  str6 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  str7 = 'abcdefghijklmnopqrstuvwxyz';
  str8 = '1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!@#$%&*();\';
begin
  Chave := '';

  for i := 1 to Size do
  begin
    case Tipo of
      1:
        Chave := Chave + str1[Random(Length(str1)) + 1];
      2:
        Chave := Chave + str2[Random(Length(str2)) + 1];
      3:
        Chave := Chave + str3[Random(Length(str3)) + 1];
      4:
        Chave := Chave + str4[Random(Length(str4)) + 1];
      5:
        Chave := Chave + str5[Random(Length(str5)) + 1];
      6:
        Chave := Chave + str6[Random(Length(str6)) + 1];
      7:
        Chave := Chave + str7[Random(Length(str7)) + 1];
      8:
        Chave := Chave + str8[Random(Length(str8)) + 1];
    end;
  end;
  Result := Chave;
end;

end.