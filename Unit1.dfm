object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = 'RANDOM'
  ClientHeight = 327
  ClientWidth = 317
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 21
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 317
    Height = 327
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    ColumnCollection = <
      item
        Value = 100.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = Edit1
        Row = 0
      end
      item
        Column = 0
        Control = Edit2
        Row = 1
      end
      item
        Column = 0
        Control = SpeedButton1
        Row = 2
      end
      item
        Column = 0
        Control = SpeedButton2
        Row = 3
      end>
    RowCollection = <
      item
        Value = 25.000000000000000000
      end
      item
        Value = 25.000000000000000000
      end
      item
        Value = 25.000000000000000000
      end
      item
        Value = 25.000000000000000000
      end
      item
        SizeStyle = ssAuto
      end>
    TabOrder = 0
    DesignSize = (
      313
      323)
    object Edit1: TEdit
      Left = 4
      Top = 25
      Width = 304
      Height = 29
      Anchors = []
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      TextHint = 'USERNAME'
    end
    object Edit2: TEdit
      Left = 4
      Top = 105
      Width = 304
      Height = 29
      Anchors = []
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
      TextHint = 'PASSWORD'
    end
    object SpeedButton1: TSpeedButton
      Left = 77
      Top = 177
      Width = 158
      Height = 45
      Cursor = crHandPoint
      Anchors = []
      Caption = 'Connexion'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
      ExplicitLeft = 99
      ExplicitTop = 124
    end
    object SpeedButton2: TSpeedButton
      Left = 77
      Top = 257
      Width = 158
      Height = 45
      Cursor = crHandPoint
      Anchors = []
      Caption = 'Quitter'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton2Click
      ExplicitLeft = 99
      ExplicitTop = 186
    end
  end
end
