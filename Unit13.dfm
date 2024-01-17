object Form13: TForm13
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'LISTE DOSSIER MANQUANT LOME COMMUNE'
  ClientHeight = 137
  ClientWidth = 767
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
  object GridPanel32: TGridPanel
    Left = 0
    Top = 0
    Width = 767
    Height = 137
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
        Control = Label32
        Row = 0
      end
      item
        Column = 1
        Control = ComboBox5
        Row = 0
      end
      item
        Column = 0
        Control = Label1
        Row = 1
      end
      item
        Column = 1
        Control = Edit1
        Row = 1
      end
      item
        Column = 0
        ColumnSpan = 2
        Control = SpeedButton47
        Row = 2
      end>
    RowCollection = <
      item
        Value = 33.333333333333340000
      end
      item
        Value = 33.333333333333340000
      end
      item
        Value = 33.333333333333310000
      end>
    TabOrder = 0
    DesignSize = (
      767
      137)
    object Label32: TLabel
      Left = 119
      Top = 13
      Width = 145
      Height = 19
      Anchors = []
      Caption = 'Criteres de selection'
      ExplicitLeft = 114
      ExplicitTop = 12
    end
    object ComboBox5: TComboBox
      AlignWithMargins = True
      Left = 386
      Top = 3
      Width = 378
      Height = 27
      Align = alClient
      TabOrder = 0
      TextHint = 'Selection'
      Items.Strings = (
        'Dossier avec photo manquant'
        'Dossier avec Carte CCIT manquante'
        'Dossier avec Carte CFE manquante'
        'Dossier avec PI manquantes'
        'Dossier avec Quitus Fiscale manquant'
        'Dossier avec Quitus CCIT manquant'
        'Dossiers Complets'
        'Liste des dossiers avec des manquants')
    end
    object Label1: TLabel
      Left = 133
      Top = 58
      Width = 117
      Height = 19
      Anchors = []
      Caption = 'Nom du referent'
      ExplicitLeft = 128
      ExplicitTop = 57
    end
    object Edit1: TEdit
      AlignWithMargins = True
      Left = 386
      Top = 48
      Width = 378
      Height = 39
      Align = alClient
      CharCase = ecUpperCase
      TabOrder = 1
      TextHint = 'ENTRER LE REFERENT'
      ExplicitHeight = 27
    end
    object SpeedButton47: TSpeedButton
      Left = 279
      Top = 98
      Width = 208
      Height = 31
      Anchors = []
      Caption = 'PDF / EXCEL'
      OnClick = SpeedButton47Click
      ExplicitLeft = 274
      ExplicitTop = 90
    end
  end
end
