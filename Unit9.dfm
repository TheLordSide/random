object RECHERCHE_DOSSIER_REGION: TRECHERCHE_DOSSIER_REGION
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'RECHERCHE SUR DOSSIER REGION'
  ClientHeight = 678
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Roboto'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 19
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1008
    Height = 678
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'LISTE GENERALE DES ELECTEURS'
      DesignSize = (
        1000
        644)
      object SpeedButton1: TSpeedButton
        AlignWithMargins = True
        Left = 854
        Top = 104
        Width = 110
        Height = 27
        Caption = 'PDF/EXCEL'
        OnClick = SpeedButton1Click
      end
      object SpeedButton3: TSpeedButton
        AlignWithMargins = True
        Left = 854
        Top = 269
        Width = 110
        Height = 27
        Caption = 'PDF/EXCEL'
        OnClick = SpeedButton3Click
      end
      object Label1: TLabel
        Left = 123
        Top = 56
        Width = 157
        Height = 19
        Anchors = []
        Caption = 'Selectionnez la region'
      end
      object Label3: TLabel
        Left = 123
        Top = 232
        Width = 157
        Height = 19
        Anchors = []
        Caption = 'Selectionnez la region'
      end
      object Label4: TLabel
        Left = 123
        Top = 360
        Width = 157
        Height = 19
        Anchors = []
        Caption = 'Selectionnez la region'
      end
      object SpeedButton2: TSpeedButton
        Left = 854
        Top = 405
        Width = 110
        Height = 27
        Caption = 'PDF/EXCEL'
        OnClick = SpeedButton2Click
      end
      object Panel_dossier: TPanel
        Left = 0
        Top = 0
        Width = 1000
        Height = 38
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvNone
        TabOrder = 0
        object Label13: TLabel
          Left = 35
          Top = 7
          Width = 245
          Height = 23
          Caption = 'RECHERCHE PAR REFERENT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel1: TPanel
        Left = 3
        Top = 166
        Width = 1000
        Height = 40
        BevelInner = bvRaised
        BevelOuter = bvNone
        TabOrder = 1
        object Label14: TLabel
          Left = 35
          Top = 7
          Width = 293
          Height = 23
          Caption = 'RECHERCHE PAR NOM ELECTEUR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 302
        Width = 1000
        Height = 40
        BevelInner = bvRaised
        BevelOuter = bvNone
        TabOrder = 2
        object Label15: TLabel
          Left = 35
          Top = 7
          Width = 303
          Height = 23
          Caption = 'RECHERCHE PAR RAISON SOCIALE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Edit2: TEdit
        Left = 306
        Top = 269
        Width = 518
        Height = 27
        TabOrder = 3
        TextHint = 'NOM ET PRENOM DE L'#39'ELECTEUR'
      end
      object ComboBox1: TComboBox
        Left = 306
        Top = 53
        Width = 518
        Height = 27
        TabOrder = 4
        TextHint = 'CHOIX DE REGION'
      end
      object ComboBox3: TComboBox
        Left = 306
        Top = 229
        Width = 518
        Height = 27
        TabOrder = 5
      end
      object ComboBox4: TComboBox
        Left = 306
        Top = 357
        Width = 518
        Height = 27
        TabOrder = 6
      end
      object Edit3: TEdit
        Left = 306
        Top = 405
        Width = 518
        Height = 27
        TabOrder = 7
        TextHint = 'RAISON SOCIALE'
      end
      object ComboBox5: TComboBox
        Left = 306
        Top = 104
        Width = 518
        Height = 27
        TabOrder = 8
        TextHint = 'REFERENT'
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'LISTE DES ELECTEURS'
      ImageIndex = 1
      object GridPanel30: TGridPanel
        Left = 0
        Top = 76
        Width = 1000
        Height = 84
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
            Control = SpeedButton43
            Row = 0
          end
          item
            Column = 1
            Control = SpeedButton44
            Row = 0
          end
          item
            Column = 0
            Control = SpeedButton45
            Row = 1
          end>
        RowCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end>
        TabOrder = 0
        object SpeedButton43: TSpeedButton
          Left = 0
          Top = 0
          Width = 500
          Height = 42
          Align = alClient
          Caption = 'Obtenir la liste des Electeurs  en Commerce'
          OnClick = SpeedButton43Click
          ExplicitLeft = 136
          ExplicitTop = 8
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
        object SpeedButton44: TSpeedButton
          Left = 500
          Top = 0
          Width = 500
          Height = 42
          Align = alClient
          Caption = 'Obtenir la liste des electeurs  en Industrie'
          OnClick = SpeedButton44Click
          ExplicitLeft = 136
          ExplicitTop = 8
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
        object SpeedButton45: TSpeedButton
          Left = 0
          Top = 42
          Width = 500
          Height = 42
          Align = alClient
          Caption = 'Obtenir la liste des Electeurs  en Service'
          OnClick = SpeedButton45Click
          ExplicitLeft = 136
          ExplicitTop = 8
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
      object GridPanel33: TGridPanel
        Left = 0
        Top = 160
        Width = 1000
        Height = 46
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
            Control = SpeedButton48
            Row = 0
          end
          item
            Column = 1
            Control = SpeedButton49
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 1
        object SpeedButton48: TSpeedButton
          Left = 0
          Top = 0
          Width = 500
          Height = 46
          Align = alClient
          Caption = 'Obtenir la liste des Electeurs en Commerce-Industrie'
          OnClick = SpeedButton48Click
          ExplicitLeft = 6
          ExplicitTop = -6
        end
        object SpeedButton49: TSpeedButton
          Left = 500
          Top = 0
          Width = 500
          Height = 46
          Align = alClient
          Caption = 'Obtenir la liste des electeurs  en Commerce-service'
          OnClick = SpeedButton49Click
          ExplicitLeft = 506
          ExplicitTop = -6
        end
      end
      object GridPanel34: TGridPanel
        Left = 0
        Top = 206
        Width = 1000
        Height = 46
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
            Control = SpeedButton50
            Row = 0
          end
          item
            Column = 1
            Control = SpeedButton51
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 2
        object SpeedButton50: TSpeedButton
          Left = 0
          Top = 0
          Width = 500
          Height = 46
          Align = alClient
          Caption = 'Obtenir la liste des Electeurs en Service-Industire'
          OnClick = SpeedButton50Click
          ExplicitLeft = -6
          ExplicitTop = 6
        end
        object SpeedButton51: TSpeedButton
          Left = 500
          Top = 0
          Width = 500
          Height = 46
          Align = alClient
          Caption = 'Obtenir la liste des Electeurs en Commerce-Industrie-Service'
          OnClick = SpeedButton51Click
          ExplicitLeft = 448
          ExplicitTop = 32
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 994
        Height = 70
        Align = alTop
        Caption = 'Filtre sur region'
        TabOrder = 3
        object GridPanel2: TGridPanel
          AlignWithMargins = True
          Left = 5
          Top = 24
          Width = 984
          Height = 41
          Align = alClient
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
          TabOrder = 0
          DesignSize = (
            984
            41)
          object Label2: TLabel
            Left = 167
            Top = 11
            Width = 157
            Height = 19
            Anchors = []
            Caption = 'Selectionnez la region'
            ExplicitLeft = 159
            ExplicitTop = 7
          end
          object ComboBox2: TComboBox
            AlignWithMargins = True
            Left = 495
            Top = 3
            Width = 486
            Height = 27
            Align = alTop
            TabOrder = 0
            TextHint = 'CHOIX DE REGION'
          end
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = DM.Q_liste_generale_Region
    Left = 252
    Top = 592
  end
end
