object frmEsqueciSenha: TfrmEsqueciSenha
  Left = 0
  Top = 0
  ClientHeight = 222
  ClientWidth = 618
  Caption = 'frmEsqueciSenha'
  BorderStyle = bsNone
  OldCreateOrder = False
  BorderIcons = []
  MonitoredKeys.Keys = <>
  ActiveControl = edtEmail
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel2: TUniPanel
    Left = 24
    Top = 14
    Width = 570
    Height = 161
    Hint = ''
    Visible = False
    ParentFont = False
    Font.Name = 'Lato Black'
    TabOrder = 1
    BorderStyle = ubsNone
    Caption = ''
    object btnSair2: TUniBitBtn
      Left = 247
      Top = 124
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Sair'
      TabOrder = 1
      OnClick = btnSairClick
    end
    object UniLabel3: TUniLabel
      Left = 83
      Top = 32
      Width = 403
      Height = 33
      Hint = ''
      Caption = 'Nova senha gerada com sucesso!'
      ParentFont = False
      Font.Height = -27
      Font.Name = 'Lato Black'
      TabOrder = 2
    end
    object UniLabel4: TUniLabel
      Left = 74
      Top = 69
      Width = 422
      Height = 33
      Hint = ''
      Caption = 'Verifique seu e-mail para ativa-la!'
      ParentFont = False
      Font.Height = -27
      Font.Name = 'Lato Black'
      TabOrder = 3
    end
  end
  object UniPanel1: TUniPanel
    Left = 20
    Top = 11
    Width = 570
    Height = 161
    Hint = ''
    ParentFont = False
    Font.Name = 'Lato Black'
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    object edtEmail: TUniEdit
      Left = 113
      Top = 88
      Width = 377
      Hint = ''
      Text = ''
      TabOrder = 1
    end
    object btnRecupera: TUniBitBtn
      Left = 112
      Top = 116
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Recuperar'
      TabOrder = 2
      OnClick = btnRecuperaClick
    end
    object btnSair: TUniBitBtn
      Left = 216
      Top = 116
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Sair'
      TabOrder = 3
      OnClick = btnSairClick
    end
    object UniLabel1: TUniLabel
      Left = 112
      Top = 24
      Width = 287
      Height = 33
      Hint = ''
      Caption = 'Recupera'#231#227'o de acesso'
      ParentFont = False
      Font.Height = -27
      Font.Name = 'Lato Black'
      TabOrder = 4
    end
    object UniLabel2: TUniLabel
      Left = 112
      Top = 69
      Width = 85
      Height = 13
      Hint = ''
      Caption = 'Digite seu e-mail:'
      TabOrder = 5
    end
  end
  object UniLabel5: TUniLabel
    Left = 265
    Top = 181
    Width = 154
    Height = 13
    Hint = ''
    Visible = False
    Caption = 'Em processamento. Aguarde....'
    TabOrder = 2
  end
  object Smtp: TIdSMTP
    IOHandler = IdSSLIOHandlerSocketOpenSSL2
    MailAgent = 'SoftArena Mail Agent'
    HeloName = 'asdfad'
    PipeLine = True
    Host = 'stmp.umbler.com'
    Password = 'Secnil12345'
    Port = 587
    SASLMechanisms = <>
    Username = 'softarena@softarena.com.br'
    Left = 424
    Top = 178
  end
  object dsBusca: TDataSource
    Left = 532
    Top = 27
  end
  object fdEmail: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Conexao
    SQL.Strings = (
      'select id, username, email, password from usuarios')
    Left = 476
    Top = 27
    object fdEmailid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdEmailusername: TStringField
      FieldName = 'username'
      Origin = 'username'
      Required = True
      Size = 32
    end
    object fdEmailemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 255
    end
    object fdEmailpassword: TStringField
      FieldName = 'password'
      Origin = '`password`'
      Required = True
      Size = 32
    end
  end
  object IdSMTPServer1: TIdSMTPServer
    Bindings = <>
    DefaultPort = 587
    CommandHandlers = <>
    ExceptionReply.Code = '500'
    ExceptionReply.Text.Strings = (
      'Unknown Internal Error')
    Greeting.Code = '220'
    Greeting.Text.Strings = (
      'Welcome to the INDY SMTP Server')
    MaxConnectionReply.Code = '300'
    MaxConnectionReply.Text.Strings = (
      'Too many connections. Try again later.')
    ReplyTexts = <>
    ReplyUnknownCommand.Code = '500'
    ReplyUnknownCommand.Text.Strings = (
      'Syntax Error')
    ReplyUnknownCommand.EnhancedCode.StatusClass = 5
    ReplyUnknownCommand.EnhancedCode.Subject = 5
    ReplyUnknownCommand.EnhancedCode.Details = 2
    ReplyUnknownCommand.EnhancedCode.Available = True
    ReplyUnknownCommand.EnhancedCode.ReplyAsStr = '5.5.2'
    ServerName = 'Indy SMTP Server'
    Left = 528
    Top = 184
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 184
    Top = 168
  end
  object IdSSLIOHandlerSocketOpenSSL2: TIdSSLIOHandlerSocketOpenSSL
    Destination = 'stmp.umbler.com'
    Host = 'stmp.umbler.com'
    MaxLineAction = maException
    Port = 587
    DefaultPort = 587
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 424
    Top = 152
  end
end