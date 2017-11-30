object frmCadastroPadrao: TfrmCadastroPadrao
  Left = 0
  Top = 0
  ClientHeight = 373
  ClientWidth = 961
  Caption = 'frmCadastroPadrao'
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 304
    Width = 961
    Height = 69
    Hint = ''
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    object btnIncluir: TUniButton
      Left = 3
      Top = 3
      Width = 94
      Height = 63
      Hint = ''
      Caption = '&Incluir'
      TabOrder = 1
      Images = UniMainModule.ImgListCadastros
      ImageIndex = 12
      OnClick = btnIncluirClick
    end
    object btnAlterar: TUniButton
      Left = 103
      Top = 16
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'btnAlterar'
      TabOrder = 2
      OnClick = btnAlterarClick
    end
    object btnSalvar: TUniButton
      Left = 246
      Top = 16
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'btnSalvar'
      TabOrder = 3
      OnClick = btnSalvarClick
    end
    object btnCancelar: TUniButton
      Left = 165
      Top = 16
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'btnCancelar'
      TabOrder = 4
      OnClick = btnCancelarClick
    end
    object btnExcluir: TUniButton
      Left = 327
      Top = 16
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'btnExcluir'
      TabOrder = 5
      OnClick = btnExcluirClick
    end
    object btnConsultar: TUniButton
      Left = 486
      Top = 15
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'btnConsultar'
      TabOrder = 6
      OnClick = btnConsultarClick
    end
    object btnSair: TUniButton
      Left = 883
      Top = 10
      Width = 75
      Height = 38
      Hint = ''
      Caption = 'btnSair'
      TabOrder = 8
      OnClick = btnSairClick
    end
    object btnFiltrar: TUniButton
      Left = 405
      Top = 17
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'btnFiltrar'
      TabOrder = 7
      OnClick = btnFiltrarClick
    end
    object UniBitBtn1: TUniBitBtn
      Left = 616
      Top = 40
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'UniBitBtn1'
      TabOrder = 9
    end
  end
  object UniPanel2: TUniPanel
    Left = 0
    Top = 0
    Width = 961
    Height = 73
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    BorderStyle = ubsNone
    Caption = ''
    object UniLabel1: TUniLabel
      Left = 48
      Top = 24
      Width = 111
      Height = 29
      Hint = ''
      Caption = 'UniLabel1'
      ParentFont = False
      Font.Height = -24
      Font.Name = 'Lato Black'
      TabOrder = 1
    end
  end
  object dsCadastro: TDataSource
    OnStateChange = dsCadastroStateChange
    Left = 904
    Top = 16
  end
end
