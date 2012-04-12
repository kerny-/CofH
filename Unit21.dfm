object Form21: TForm21
  Left = 100
  Top = 100
  AlphaBlend = True
  AlphaBlendValue = 0
  BorderStyle = bsNone
  Caption = 'Form21'
  ClientHeight = 119
  ClientWidth = 130
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClick = FormClick
  OnMouseEnter = FormMouseEnter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 57
    Width = 41
    Height = 13
    Caption = '(c)Kerny'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 63
    Top = 93
    Width = 56
    Height = 13
    Caption = '03.06.2009'
  end
  object Label3: TLabel
    Left = 8
    Top = 8
    Width = 114
    Height = 16
    Caption = 'Converter of Hacker'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 38
    Width = 54
    Height = 13
    Caption = 'version 1.1'
  end
  object Panel1: TPanel
    Left = 0
    Top = 112
    Width = 128
    Height = 2
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 128
    Height = 1
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 128
    Top = 0
    Width = 1
    Height = 114
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 2
  end
  object Panel4: TPanel
    Left = 0
    Top = -3
    Width = 1
    Height = 115
    BevelOuter = bvNone
    Color = clBackground
    ParentBackground = False
    TabOrder = 3
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 280
    Top = 144
  end
  object Timer3: TTimer
    Interval = 2
    OnTimer = Timer3Timer
    Left = 24
    Top = 72
  end
end
