object Form14: TForm14
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'LISTE DES DOSSIERS MANQUANTS REGION'
  ClientHeight = 157
  ClientWidth = 651
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
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
    Width = 651
    Height = 157
    Align = alClient
    BevelOuter = bvNone
    ColumnCollection = <
      item
        Value = 50.000000000000010000
      end
      item
        Value = 49.999999999999990000
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
      end
      item
        Column = 0
        Control = Label2
        Row = 1
      end
      item
        Column = 1
        Control = ComboBox5
        Row = 1
      end
      item
        Column = 0
        Control = Label3
        Row = 2
      end
      item
        Column = 1
        Control = Edit1
        Row = 2
      end
      item
        Column = 0
        ColumnSpan = 2
        Control = SpeedButton1
        Row = 3
      end>
    RowCollection = <
      item
        Value = 25.000000000000010000
      end
      item
        Value = 25.000000000000000000
      end
      item
        Value = 25.000000000000000000
      end
      item
        Value = 25.000000000000000000
      end>
    TabOrder = 0
    DesignSize = (
      651
      157)
    object Label1: TLabel
      Left = 138
      Top = 10
      Width = 49
      Height = 19
      Anchors = []
      Caption = 'Region'
      ExplicitLeft = 168
      ExplicitTop = 9
    end
    object ComboBox1: TComboBox
      AlignWithMargins = True
      Left = 328
      Top = 3
      Width = 320
      Height = 27
      Align = alClient
      TabOrder = 0
      Items.Strings = (
        'MARITIME'
        'PLATEAUX'#11
        'CENTRALE'
        'KARA'
        'SAVANES')
    end
    object Label2: TLabel
      Left = 86
      Top = 49
      Width = 153
      Height = 19
      Anchors = []
      Caption = 'Criteres de selections'
      ExplicitLeft = 115
      ExplicitTop = 48
    end
    object ComboBox5: TComboBox
      AlignWithMargins = True
      Left = 328
      Top = 42
      Width = 320
      Height = 27
      Align = alClient
      TabOrder = 1
      Items.Strings = (
        'Dossiers Complets Region'
        'Dossier avec photo manquant Region'
        'Dossier avec Carte CCIT manquante Region'
        'Dossier avec Carte CFE manquante Region'
        'Dossier avec PI manquantes Region'
        'Dossier avec Quitus Fiscale manquant Region'
        'Dossier avec Quitus CCIT manquant Region'
        'Dossier avec pieces manquantes')
    end
    object Label3: TLabel
      Left = 132
      Top = 88
      Width = 61
      Height = 19
      Anchors = []
      Caption = 'Referent'
      ExplicitLeft = 163
      ExplicitTop = 87
    end
    object Edit1: TEdit
      AlignWithMargins = True
      Left = 328
      Top = 81
      Width = 320
      Height = 33
      Align = alClient
      CharCase = ecUpperCase
      TabOrder = 2
      TextHint = 'NOM REFERENT'
      ExplicitHeight = 27
    end
    object SpeedButton1: TSpeedButton
      Left = 193
      Top = 122
      Width = 265
      Height = 30
      Anchors = []
      Caption = 'PDF / EXCEL'
      OnClick = SpeedButton47Click
      ExplicitLeft = 288
      ExplicitTop = 111
    end
  end
end
