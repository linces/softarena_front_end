object frmFrameMenu: TfrmFrameMenu
  Left = 0
  Top = 0
  Width = 1303
  Height = 705
  Layout = 'fit'
  TabOrder = 0
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 1303
    Height = 705
    Hint = ''
    ShowHint = True
    ParentShowHint = False
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    Color = 4276545
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Layout = 'accordion'
    object UniPanel2: TUniPanel
      Left = 1
      Top = 18
      Width = 200
      Height = 143
      Hint = ''
      ShowHint = True
      TabOrder = 1
      Title = '<i class="fa fa-check-square" aria-hidden="true"></i> Cadastros'
      Caption = ''
      Color = 4276545
      object UniButton13: TUniButton
        Left = 1
        Top = 1
        Width = 198
        Height = 25
        Hint = ''
        CreateOrder = 1
        ShowHint = True
        Caption = 'Empresa'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 3
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'     sen' +
            'der.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
      end
      object UniButton3: TUniButton
        Left = 1
        Top = 51
        Width = 198
        Height = 25
        Hint = ''
        CreateOrder = 2
        ShowHint = True
        Caption = 'Tipo Pessoas '
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 2
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'     sen' +
            'der.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
        OnClick = UniButton3Click
        ExplicitTop = 76
      end
      object UniButton14: TUniButton
        Left = 1
        Top = 26
        Width = 198
        Height = 25
        Hint = ''
        CreateOrder = 3
        ShowHint = True
        Caption = ' Pessoas'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 4
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'        ' +
            'sender.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
        OnClick = UniButton14Click
        ExplicitTop = 51
      end
      object UniButton2: TUniButton
        Left = 1
        Top = 76
        Width = 198
        Height = 25
        Hint = ''
        CreateOrder = 4
        ShowHint = True
        Caption = 'Bancos'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 1
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'        ' +
            'sender.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
        ExplicitTop = 101
      end
      object UniButton15: TUniButton
        Left = 1
        Top = 101
        Width = 198
        Height = 25
        Hint = ''
        CreateOrder = 5
        ShowHint = True
        Caption = 'Contas'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 5
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'     sen' +
            'der.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
        ExplicitTop = 126
      end
    end
    object UniPanel3: TUniPanel
      Left = 207
      Top = 19
      Width = 200
      Height = 100
      Hint = ''
      ShowHint = True
      TabOrder = 2
      Title = '<i class="fa fa-usd fa-lg"></i> Financeiro'
      Caption = ''
      Color = 4276545
      object UniButton4: TUniButton
        Left = 1
        Top = 1
        Width = 198
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'Vendas'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 1
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'        ' +
            'sender.addCls("x-botao-menu x-botao-menu-over")'#13#10'}')
      end
      object UniButton5: TUniButton
        Left = 1
        Top = 26
        Width = 198
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'Compras'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 2
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'     sen' +
            'der.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
      end
      object UniButton6: TUniButton
        Left = 1
        Top = 51
        Width = 198
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'Faturas'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 3
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'     sen' +
            'der.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
      end
    end
    object UniPanel4: TUniPanel
      Left = 413
      Top = 21
      Width = 200
      Height = 50
      Hint = ''
      ShowHint = True
      TabOrder = 3
      Title = '<i class="fa fa-bullhorn fa-lg"></i> An'#250'ncios'
      Caption = ''
      Color = 4276545
      object UniButton7: TUniButton
        Left = 1
        Top = 1
        Width = 198
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'An'#250'ncios'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 1
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'     sen' +
            'der.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
      end
    end
    object UniPanel5: TUniPanel
      Left = 619
      Top = 19
      Width = 200
      Height = 77
      Hint = ''
      ShowHint = True
      TabOrder = 4
      Title = '<i class="fa fa-address-book fa-lg"></i> Afiliados'
      Caption = ''
      Color = 4276545
      object UniButton10: TUniButton
        Left = 1
        Top = 1
        Width = 198
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'Afiliados'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 1
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'     sen' +
            'der.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
      end
      object UniButton18: TUniButton
        Left = 1
        Top = 26
        Width = 198
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'Centro de Comunica'#231#227'o'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 2
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'     sen' +
            'der.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
      end
    end
    object UniPanel6: TUniPanel
      Left = 825
      Top = 20
      Width = 200
      Height = 124
      Hint = ''
      ShowHint = True
      TabOrder = 5
      Title = '<i class="fa fa-address-book fa-lg"></i> Gr'#225'ficos / Relat'#243'rios'
      Caption = ''
      Color = 4276545
      object UniButton9: TUniButton
        Left = 1
        Top = 76
        Width = 198
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'Vendas por cliente'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 1
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'     sen' +
            'der.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
        ExplicitTop = 101
      end
      object UniButton12: TUniButton
        Left = 1
        Top = 51
        Width = 198
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'Vendas por Afiliado'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 2
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'     sen' +
            'der.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
      end
      object UniButton16: TUniButton
        Left = 1
        Top = 26
        Width = 198
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'Vendas por Produto'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 3
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'     sen' +
            'der.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
      end
      object UniButton17: TUniButton
        Left = 1
        Top = 1
        Width = 198
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'Vendas por Per'#237'odo'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 4
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'     sen' +
            'der.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
      end
    end
  end
end
