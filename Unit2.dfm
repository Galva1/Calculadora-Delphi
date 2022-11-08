object FormOpcoes: TFormOpcoes
  Left = 222
  Top = 120
  Width = 886
  Height = 591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundoGeralOpcoes: TPanel
    Left = 248
    Top = 128
    Width = 217
    Height = 217
    Color = cl3DDkShadow
    TabOrder = 0
    object pnl2: TPanel
      Left = 8
      Top = 8
      Width = 201
      Height = 49
      Caption = 'OP'#199#213'ES'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object pnlFundoOpcoes: TPanel
      Left = 8
      Top = 56
      Width = 201
      Height = 153
      Color = cl3DDkShadow
      TabOrder = 1
      object pnl4: TPanel
        Left = 0
        Top = 0
        Width = 201
        Height = 41
        Caption = 'Estilos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = pnl4Click
      end
      object pnlFontesOpcao: TPanel
        Left = 0
        Top = 40
        Width = 201
        Height = 41
        Caption = 'Fonte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = pnlFontesOpcaoClick
      end
    end
  end
  object pnlEstilos: TPanel
    Left = 464
    Top = 128
    Width = 201
    Height = 217
    Color = cl3DDkShadow
    TabOrder = 1
    Visible = False
    object pnlEstilo1: TPanel
      Left = 8
      Top = 8
      Width = 185
      Height = 41
      Caption = 'Estilo 1 (Padr'#227'o)'
      TabOrder = 0
      OnClick = pnlEstilo1Click
    end
    object pnlEstilo2: TPanel
      Left = 8
      Top = 56
      Width = 185
      Height = 41
      Caption = 'Estilo 2'
      TabOrder = 1
      OnClick = pnlEstilo2Click
    end
    object pnlEstilo3: TPanel
      Left = 8
      Top = 104
      Width = 185
      Height = 41
      Caption = 'Estilo 3'
      TabOrder = 2
      OnClick = pnlEstilo3Click
    end
    object pnlEstilo4: TPanel
      Left = 8
      Top = 152
      Width = 185
      Height = 41
      Caption = 'Estilo 4'
      TabOrder = 3
      OnClick = pnlEstilo4Click
    end
  end
  object pnlFontes: TPanel
    Left = 48
    Top = 128
    Width = 201
    Height = 217
    Color = cl3DDkShadow
    TabOrder = 2
    Visible = False
    object pnlFonte1: TPanel
      Left = 8
      Top = 8
      Width = 185
      Height = 41
      Caption = 'Fonte 1 (Padr'#227'o)'
      TabOrder = 0
    end
    object pnlFonte2: TPanel
      Left = 8
      Top = 56
      Width = 185
      Height = 41
      Caption = 'Fonte 2'
      TabOrder = 1
      OnClick = pnlEstilo2Click
    end
    object pnlFonte3: TPanel
      Left = 8
      Top = 104
      Width = 185
      Height = 41
      Caption = 'Fonte 3'
      TabOrder = 2
      OnClick = pnlEstilo3Click
    end
    object pnlFonte4: TPanel
      Left = 8
      Top = 152
      Width = 185
      Height = 41
      Caption = 'Fonte 4'
      TabOrder = 3
      OnClick = pnlEstilo4Click
    end
  end
end
