object Form1: TForm1
  Left = 297
  Top = 121
  Width = 928
  Height = 593
  Caption = 'fCalculadora'
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
  object Panel1: TPanel
    Left = 120
    Top = 16
    Width = 393
    Height = 513
    Color = cl3DDkShadow
    TabOrder = 0
    object Panel2: TPanel
      Left = 8
      Top = 8
      Width = 377
      Height = 81
      TabOrder = 0
      object edtResult: TEdit
        Left = 8
        Top = 8
        Width = 361
        Height = 54
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -40
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '0'
      end
    end
    object Panel3: TPanel
      Left = 8
      Top = 96
      Width = 377
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
        Left = 264
        Top = 336
        Width = 105
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
        Left = 296
        Top = 160
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
        Left = 296
        Top = 88
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
        Left = 296
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
        Left = 296
        Top = 232
        Width = 73
        Height = 89
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
        Caption = 'C'
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
        Caption = 'AC'
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
        Caption = 'M-'
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
  object Panel4: TPanel
    Left = 512
    Top = 24
    Width = 249
    Height = 73
    Color = cl3DDkShadow
    TabOrder = 1
    object Panel5: TPanel
      Left = 8
      Top = 8
      Width = 233
      Height = 57
      TabOrder = 0
      object lblResult: TLabel
        Left = 8
        Top = 16
        Width = 5
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
  end
end
