object Form1: TForm1
  Left = 451
  Top = 133
  Width = 921
  Height = 654
  Caption = 'fCalculadora'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundoTotal: TPanel
    Left = 0
    Top = 0
    Width = 361
    Height = 561
    Color = cl3DDkShadow
    TabOrder = 0
    object pnlFundoResultado: TPanel
      Left = 8
      Top = 64
      Width = 345
      Height = 73
      TabOrder = 0
      object edtResult: TEdit
        Left = 8
        Top = 8
        Width = 329
        Height = 54
        BiDiMode = bdRightToLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -40
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
        Text = '0'
        OnChange = edtResultChange
        OnKeyPress = edtResultKeyPress
      end
    end
    object pnlFundoDigitos: TPanel
      Left = 8
      Top = 144
      Width = 345
      Height = 409
      Color = cl3DDkShadow
      TabOrder = 1
      object pnl0: TPanel
        Left = 96
        Top = 336
        Width = 73
        Height = 65
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = pnl0Click
      end
      object pnlVirg: TPanel
        Left = 176
        Top = 336
        Width = 73
        Height = 65
        Caption = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = pnlVirgClick
      end
      object pnlResult: TPanel
        Left = 256
        Top = 336
        Width = 73
        Height = 65
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = pnlResultClick
      end
      object pnl3: TPanel
        Left = 176
        Top = 256
        Width = 73
        Height = 65
        Caption = '3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = pnl3Click
      end
      object pnl2: TPanel
        Left = 96
        Top = 256
        Width = 73
        Height = 65
        Caption = '2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = pnl2Click
      end
      object pnl1: TPanel
        Left = 16
        Top = 256
        Width = 73
        Height = 65
        Caption = '1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = pnl1Click
      end
      object pnl4: TPanel
        Left = 16
        Top = 176
        Width = 73
        Height = 65
        Caption = '4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = pnl4Click
      end
      object pnl5: TPanel
        Left = 96
        Top = 176
        Width = 73
        Height = 65
        Caption = '5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = pnl5Click
      end
      object pnl6: TPanel
        Left = 176
        Top = 176
        Width = 73
        Height = 65
        Caption = '6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = pnl6Click
      end
      object pnl7: TPanel
        Left = 16
        Top = 96
        Width = 73
        Height = 65
        Caption = '7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = pnl7Click
      end
      object pnl8: TPanel
        Left = 96
        Top = 96
        Width = 73
        Height = 65
        Caption = '8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnClick = pnl8Click
      end
      object pnl9: TPanel
        Left = 176
        Top = 96
        Width = 73
        Height = 65
        Caption = '9'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnClick = pnl9Click
      end
      object pnlMenos: TPanel
        Left = 256
        Top = 176
        Width = 73
        Height = 65
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnClick = pnlMenosClick
      end
      object pnlMult: TPanel
        Left = 256
        Top = 96
        Width = 73
        Height = 65
        Caption = 'x'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        OnClick = pnlMultClick
      end
      object pnlDiv: TPanel
        Left = 256
        Top = 16
        Width = 73
        Height = 65
        Caption = #247
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        OnClick = pnlDivClick
      end
      object pnlMais: TPanel
        Left = 256
        Top = 256
        Width = 73
        Height = 65
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        OnClick = pnlMaisClick
      end
      object pnlC: TPanel
        Left = 16
        Top = 16
        Width = 73
        Height = 65
        Caption = 'CE'
        Color = clMaroon
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        OnClick = pnlCClick
      end
      object pnlAC: TPanel
        Left = 96
        Top = 16
        Width = 73
        Height = 65
        Caption = 'C'
        Color = clMaroon
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        OnClick = pnlACClick
      end
      object pnlNegativo: TPanel
        Left = 176
        Top = 16
        Width = 73
        Height = 65
        Caption = '+/-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
        OnClick = pnlNegativoClick
      end
      object pnlDelete: TPanel
        Left = 16
        Top = 336
        Width = 73
        Height = 65
        Caption = 'Del'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
        OnClick = pnlDeleteClick
      end
    end
  end
  object pnlFundolblResultado: TPanel
    Left = 104
    Top = 13
    Width = 249
    Height = 44
    Color = cl3DDkShadow
    TabOrder = 1
    object pnl10: TPanel
      Left = 8
      Top = 8
      Width = 233
      Height = 25
      TabOrder = 0
      object lblResult: TLabel
        Left = 228
        Top = 1
        Width = 4
        Height = 23
        Align = alRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object pnlMemo: TPanel
    Left = 360
    Top = 0
    Width = 337
    Height = 561
    Color = cl3DDkShadow
    TabOrder = 2
    Visible = False
    object mmoResultado: TMemo
      Left = 1
      Top = 1
      Width = 335
      Height = 505
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object pnl11: TPanel
      Left = 272
      Top = 512
      Width = 57
      Height = 41
      Caption = 'Delete'
      TabOrder = 1
      OnClick = pnl11Click
    end
    object pnlFecharMemo: TPanel
      Left = 8
      Top = 528
      Width = 49
      Height = 25
      Caption = 'Fechar'
      TabOrder = 2
      OnClick = pnlFecharMemoClick
    end
  end
  object mm1: TMainMenu
    Left = 16
    Top = 16
    object este1: TMenuItem
      Caption = 'Estilos'
      object Estilos1: TMenuItem
        Caption = 'Dark (padr'#227'o)'
        OnClick = Estilos1Click
      end
      object D1: TMenuItem
        Caption = 'Yellow'
        OnClick = D1Click
      end
      object Purple1: TMenuItem
        Caption = 'Purple'
        OnClick = Purple1Click
      end
      object eal1: TMenuItem
        Caption = 'Teal'
        OnClick = eal1Click
      end
    end
    object Histrico1: TMenuItem
      Caption = 'Hist'#243'rico'
      OnClick = Histrico1Click
    end
  end
end
