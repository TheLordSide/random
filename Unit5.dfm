object Form5: TForm5
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'CORRECTION DES NOMS DES PIECES'
  ClientHeight = 126
  ClientWidth = 519
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 21
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 519
    Height = 126
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -24
    ExplicitTop = -8
    ExplicitHeight = 260
    object GridPanel1: TGridPanel
      Left = 0
      Top = 0
      Width = 519
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
      ExplicitTop = 8
      DesignSize = (
        519
        41)
      object Label1: TLabel
        Left = 109
        Top = 10
        Width = 41
        Height = 21
        Anchors = []
        Caption = 'Piece'
        ExplicitLeft = 113
      end
      object ComboBox1: TComboBox
        Left = 259
        Top = 0
        Width = 260
        Height = 29
        Align = alClient
        TabOrder = 0
        TextHint = 'Nom de referant a corriger'
        ExplicitLeft = 280
        ExplicitTop = 3
        ExplicitWidth = 272
      end
    end
    object GridPanel2: TGridPanel
      Left = 0
      Top = 41
      Width = 519
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
          Control = ComboBox2
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 1
      ExplicitWidth = 555
      DesignSize = (
        519
        41)
      object Label2: TLabel
        Left = 72
        Top = 10
        Width = 115
        Height = 21
        Anchors = []
        Caption = 'Nouveau Piece'
        ExplicitLeft = 76
      end
      object ComboBox2: TComboBox
        Left = 259
        Top = 0
        Width = 260
        Height = 29
        Align = alClient
        TabOrder = 0
        Items.Strings = (
          'Carte CFE'
          'Carte CCIT'
          'Quitus Fiscale'
          'Piece Identite'
          'Photo')
        ExplicitLeft = 272
        ExplicitTop = 16
        ExplicitWidth = 145
      end
    end
    object GridPanel3: TGridPanel
      Left = 0
      Top = 82
      Width = 519
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
      ExplicitWidth = 555
      object SpeedButton2: TSpeedButton
        AlignWithMargins = True
        Left = 262
        Top = 3
        Width = 254
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
  object DataSource1: TDataSource
    DataSet = DM.UniQuery2
    Left = 728
    Top = 232
  end
end
