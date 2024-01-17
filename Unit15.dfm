object Form15: TForm15
  Left = 0
  Top = 0
  Caption = 'DOSSIERS MANQUANTS'
  ClientHeight = 762
  ClientWidth = 938
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 938
    Height = 762
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Roboto'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 264
    ExplicitTop = 168
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 16
      Top = 400
      Width = 161
      Height = 19
      Caption = 'Liste des pieces requis'
    end
    object Label2: TLabel
      Left = 248
      Top = 400
      Width = 176
      Height = 19
      Caption = 'Liste des pieces fournies'
    end
    object SpeedButton1: TSpeedButton
      Left = 439
      Top = 312
      Width = 225
      Height = 41
      Cursor = crHandPoint
      Caption = 'Generer pieces manquantes'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CheckListBox1: TCheckListBox
      Left = 16
      Top = 456
      Width = 178
      Height = 209
      ItemHeight = 19
      TabOrder = 0
    end
    object ListBox1: TListBox
      Left = 248
      Top = 456
      Width = 193
      Height = 209
      ItemHeight = 19
      TabOrder = 1
    end
    object ListView1: TListView
      Left = 16
      Top = 32
      Width = 425
      Height = 241
      Columns = <
        item
        end
        item
        end>
      TabOrder = 2
    end
  end
  object DataSource1: TDataSource
    Left = 632
    Top = 208
  end
end
