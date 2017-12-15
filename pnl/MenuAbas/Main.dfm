object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 485
  ClientWidth = 780
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object pagePrincipal: TUniPageControl
    Left = 129
    Top = 59
    Width = 651
    Height = 426
    Hint = ''
    ActivePage = tabHome
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    ExplicitLeft = 104
    ExplicitTop = 64
    ExplicitWidth = 585
    ExplicitHeight = 443
    object tabHome: TUniTabSheet
      Hint = ''
      Caption = 'Home'
      ExplicitWidth = 681
      ExplicitHeight = 415
      object UniLabel2: TUniLabel
        Left = 49
        Top = 70
        Width = 427
        Height = 45
        Hint = ''
        Caption = 'Menu Abrindo em Abas'
        ParentFont = False
        Font.Color = clRed
        Font.Height = -37
        Font.Style = [fsBold]
        TabOrder = 0
      end
      object UniLabel1: TUniLabel
        Left = 49
        Top = 19
        Width = 413
        Height = 45
        Hint = ''
        Caption = 'Unigui - Dica R'#225'pida 9'
        ParentFont = False
        Font.Color = clBlue
        Font.Height = -37
        Font.Style = [fsBold]
        TabOrder = 1
      end
    end
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 59
    Width = 129
    Height = 426
    Hint = ''
    Align = alLeft
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 1
    Caption = ''
    object UniButton2: TUniButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 121
      Height = 45
      Hint = ''
      Caption = 'Tela 1'
      Anchors = [akLeft, akTop, akRight]
      Align = alTop
      TabOrder = 1
      OnClick = UniButton2Click
    end
    object UniButton3: TUniButton
      AlignWithMargins = True
      Left = 4
      Top = 55
      Width = 121
      Height = 45
      Hint = ''
      Caption = 'Tela 2'
      Anchors = [akLeft, akTop, akRight]
      Align = alTop
      TabOrder = 2
      OnClick = UniButton3Click
    end
    object UniButton4: TUniButton
      AlignWithMargins = True
      Left = 4
      Top = 106
      Width = 121
      Height = 45
      Hint = ''
      Caption = 'Tela 3'
      Anchors = [akLeft, akTop, akRight]
      Align = alTop
      TabOrder = 3
      OnClick = UniButton4Click
    end
    object UniButton1: TUniButton
      AlignWithMargins = True
      Left = 4
      Top = 157
      Width = 121
      Height = 45
      Hint = ''
      Caption = 'Tela 4'
      Anchors = [akLeft, akTop, akRight]
      Align = alTop
      TabOrder = 4
      OnClick = UniButton1Click
      ExplicitLeft = 6
      ExplicitTop = 208
    end
  end
  object UniPanel2: TUniPanel
    Left = 0
    Top = 0
    Width = 780
    Height = 59
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    Caption = ''
    ExplicitWidth = 736
    object UniLabel3: TUniLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 458
      Height = 45
      Hint = ''
      Caption = 'Dicas e tutoriais UNIGUI'
      Align = alLeft
      Anchors = [akLeft, akTop, akBottom]
      ParentFont = False
      Font.Color = clBlue
      Font.Height = -37
      Font.Style = [fsBold]
      TabOrder = 1
      ExplicitLeft = 1
      ExplicitTop = 1
    end
  end
end
