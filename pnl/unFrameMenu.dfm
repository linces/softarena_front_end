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
    ExplicitTop = -16
    object UniPanel2: TUniPanel
      Left = 1
      Top = 18
      Width = 200
      Height = 207
      Hint = ''
      ShowHint = True
      TabOrder = 1
      Title = '<i class="fa fa-check-square" aria-hidden="true"></i> Cadastros'
      Caption = ''
      Color = 4276545
      object UniButton1: TUniButton
        Left = 1
        Top = 26
        Width = 198
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'Perfil'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 1
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'        ' +
            'sender.addCls("x-botao-menu x-botao-menu-over")'#13#10'}')
        ExplicitWidth = 251
      end
      object UniButton2: TUniButton
        Left = 1
        Top = 101
        Width = 198
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'Bancos'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 2
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'        ' +
            'sender.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
        ExplicitWidth = 251
      end
      object UniButton3: TUniButton
        Left = 1
        Top = 76
        Width = 198
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'Tipo Pessoas '
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 3
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'     sen' +
            'der.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
        ExplicitWidth = 251
      end
      object UniButton13: TUniButton
        Left = 1
        Top = 1
        Width = 198
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'Empresa'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 4
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'     sen' +
            'der.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
        ExplicitWidth = 251
      end
      object UniButton14: TUniButton
        Left = 1
        Top = 51
        Width = 198
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = ' Pessoas'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 5
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'        ' +
            'sender.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
        ExplicitWidth = 251
      end
      object UniButton15: TUniButton
        Left = 1
        Top = 126
        Width = 198
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'Contas'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 6
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'     sen' +
            'der.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
        ExplicitWidth = 251
      end
    end
    object UniPanel3: TUniPanel
      Left = 221
      Top = 17
      Width = 200
      Height = 168
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
        Caption = 'X-Botao'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 1
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'        ' +
            'sender.addCls("x-botao-menu x-botao-menu-over")'#13#10'}')
        ExplicitWidth = 251
      end
      object UniButton5: TUniButton
        Left = 1
        Top = 26
        Width = 198
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'Botao Base Cinza'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 2
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'     sen' +
            'der.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
        ExplicitWidth = 251
      end
      object UniButton6: TUniButton
        Left = 1
        Top = 51
        Width = 198
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'Opcao Menu Cinza'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 3
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'     sen' +
            'der.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
        ExplicitWidth = 251
      end
    end
    object UniPanel4: TUniPanel
      Left = 455
      Top = 17
      Width = 200
      Height = 168
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
        Caption = '<i class="fa fa-address-book" aria-hidden="true"></i> Perfil'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 1
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'     sen' +
            'der.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
        ExplicitWidth = 251
      end
      object UniButton8: TUniButton
        Left = 1
        Top = 26
        Width = 198
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'xbotao'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 2
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'        ' +
            'sender.addCls("x-botao-menu x-botao-menu-over")'#13#10'}')
        ExplicitWidth = 251
      end
      object UniButton9: TUniButton
        Left = 1
        Top = 51
        Width = 198
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'Pessoas '
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 3
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'       s' +
            'ender.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
        ExplicitWidth = 251
      end
    end
    object UniPanel5: TUniPanel
      Left = 679
      Top = 17
      Width = 200
      Height = 168
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
        Caption = '<i class="fa fa-address-book" aria-hidden="true"></i> Perfil'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 1
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'     sen' +
            'der.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
      end
      object UniButton11: TUniButton
        Left = 1
        Top = 26
        Width = 198
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'xbotao'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 2
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'        ' +
            'sender.addCls("x-botao-menu x-botao-menu-over")'#13#10'}')
      end
      object UniButton12: TUniButton
        Left = 1
        Top = 51
        Width = 198
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'Pessoas '
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 3
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'       s' +
            'ender.addCls("x-botao-menu x-botao-menu-over");'#13#10'}')
      end
    end
  end
end
