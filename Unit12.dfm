object Form12: TForm12
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'CORRECTIFS SUR REFERANT'
  ClientHeight = 128
  ClientWidth = 555
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Roboto'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 19
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 555
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = Label1
        Row = 0
      end
      item
        Column = 1
        Control = ComboBox1
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    TabOrder = 0
    DesignSize = (
      555
      41)
    object Label1: TLabel
      Left = 108
      Top = 11
      Width = 61
      Height = 19
      Anchors = []
      Caption = 'Referent'
      ExplicitLeft = 106
      ExplicitTop = 10
    end
    object ComboBox1: TComboBox
      AlignWithMargins = True
      Left = 280
      Top = 3
      Width = 272
      Height = 27
      Align = alClient
      TabOrder = 0
      TextHint = 'Nom de referant a corriger'
    end
  end
  object GridPanel2: TGridPanel
    Left = 0
    Top = 41
    Width = 555
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = Label2
        Row = 0
      end
      item
        Column = 1
        Control = Edit1
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    TabOrder = 1
    DesignSize = (
      555
      41)
    object Label2: TLabel
      Left = 76
      Top = 11
      Width = 124
      Height = 19
      Anchors = []
      Caption = 'Nouveau referent'
      ExplicitLeft = 71
      ExplicitTop = 10
    end
    object Edit1: TEdit
      AlignWithMargins = True
      Left = 280
      Top = 3
      Width = 272
      Height = 35
      Align = alClient
      CharCase = ecUpperCase
      TabOrder = 0
      TextHint = 'Nom Correct du referent'
      ExplicitHeight = 27
    end
  end
  object GridPanel3: TGridPanel
    Left = 0
    Top = 82
    Width = 555
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 1
        Control = SpeedButton2
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    TabOrder = 2
    object SpeedButton2: TSpeedButton
      AlignWithMargins = True
      Left = 280
      Top = 3
      Width = 272
      Height = 35
      Align = alClient
      Caption = 'APPLIQUER'
      OnClick = SpeedButton2Click
      ExplicitLeft = 263
      ExplicitTop = 6
      ExplicitWidth = 253
      ExplicitHeight = 33
    end
  end
end
