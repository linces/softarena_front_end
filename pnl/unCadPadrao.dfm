object frmCadPadrao: TfrmCadPadrao
  AlignWithMargins = True
  Left = 0
  Top = 0
  Width = 1305
  Height = 725
  Margins.Left = 0
  Margins.Top = 0
  Margins.Right = 0
  Margins.Bottom = 0
  OnCreate = UniFrameCreate
  Layout = 'fit'
  ParentAlignmentControl = False
  AlignmentControl = uniAlignmentClient
  Align = alClient
  Anchors = [akLeft, akTop, akRight, akBottom]
  TabOrder = 0
  ExplicitWidth = 451
  ExplicitHeight = 305
  object pnlCadastro: TUniPanel
    Left = 0
    Top = 0
    Width = 1305
    Height = 725
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    ExplicitTop = -3
    object UniPanel3: TUniPanel
      Left = 0
      Top = 658
      Width = 1305
      Height = 67
      Hint = ''
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      TabOrder = 1
      BorderStyle = ubsNone
      Caption = ''
      ExplicitTop = 661
      object btnSalvar: TUniSFBitBtn
        Left = 97
        Top = 3
        Width = 70
        Height = 54
        Hint = 'Salvar no banco de dados'
        Enabled = False
        ShowHint = True
        ParentShowHint = False
        Caption = 'Gravar'
        TabOrder = 1
        IconAlign = iaTop
        OnClick = btnSalvarClick
        IconFont = fa_check_square
        IconFontColor = fc_white
        IconFontSize = fs_24
        ButtonStyles = bs_none
      end
      object btnCancelar: TUniSFBitBtn
        Left = 173
        Top = 3
        Width = 70
        Height = 54
        Hint = ''
        Enabled = False
        ShowHint = True
        ParentShowHint = False
        Caption = 'Cancelar'
        TabOrder = 2
        IconAlign = iaTop
        OnClick = btnCancelarClick
        IconFont = fa_ban
        IconFontColor = fc_white
        IconFontSize = fs_24
        ButtonStyles = bs_none
      end
      object btnExcluir: TUniSFBitBtn
        Left = 249
        Top = 3
        Width = 70
        Height = 54
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Caption = 'Excluir'
        TabOrder = 3
        IconAlign = iaTop
        OnClick = btnExcluirClick
        IconFont = fa_minus_square
        IconFontColor = fc_white
        IconFontSize = fs_24
        ButtonStyles = bs_none
      end
      object btnFiltrar: TUniSFBitBtn
        Left = 325
        Top = 3
        Width = 70
        Height = 54
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Caption = 'Filtrar'
        TabOrder = 4
        IconAlign = iaTop
        OnClick = btnFiltrarClick
        IconFont = fa_filter
        IconFontColor = fc_white
        IconFontSize = fs_24
        ButtonStyles = bs_none
      end
      object btnConsultar: TUniSFBitBtn
        Left = 401
        Top = 3
        Width = 70
        Height = 54
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Caption = 'Consultar'
        TabOrder = 5
        IconAlign = iaTop
        OnClick = btnConsultarClick
        IconFont = fa_search
        IconFontColor = fc_white
        IconFontSize = fs_24
        ButtonStyles = bs_none
      end
      object btnIncluir: TUniSFBitBtn
        Left = 21
        Top = 3
        Width = 70
        Height = 54
        Hint = 'Incluir um registro'
        ShowHint = True
        ParentShowHint = False
        Caption = 'Incluir'
        TabOrder = 6
        IconAlign = iaTop
        OnClick = btnIncluirClick
        IconFont = fa_plus_square
        IconFontColor = fc_white
        IconFontSize = fs_24
        ButtonStyles = bs_none
      end
    end
  end
  object dsCadastro: TDataSource
    DataSet = FDQuery1
    OnStateChange = dsCadastroStateChange
    Left = 938
    Top = 24
  end
  object FDQuery1: TFDQuery
    Connection = UniMainModule.Conexao
    Left = 864
    Top = 24
  end
end
