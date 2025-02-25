object Form4: TForm4
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'NOUVEAU DOSSIER'
  ClientHeight = 785
  ClientWidth = 975
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 21
  object Dossier: TPanel
    Left = 0
    Top = 0
    Width = 975
    Height = 785
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 973
      Height = 783
      ActivePage = TabSheet4
      Align = alClient
      MultiLine = True
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Pi'#232'ces fournies'
        object Label4: TLabel
          Left = 45
          Top = 88
          Width = 209
          Height = 21
          Caption = 'Liste des pieces demandees'
        end
        object Label7: TLabel
          Left = 614
          Top = 88
          Width = 182
          Height = 21
          Caption = 'Liste des pieces choisies'
        end
        object SpeedButton3: TSpeedButton
          Left = 409
          Top = 128
          Width = 150
          Height = 40
          Cursor = crHandPoint
          Caption = 'Selectionner'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton3Click
        end
        object SpeedButton4: TSpeedButton
          Left = 409
          Top = 201
          Width = 150
          Height = 40
          Cursor = crHandPoint
          Caption = 'Effacer la selection'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton4Click
        end
        object Label10: TLabel
          Left = 45
          Top = 257
          Width = 216
          Height = 21
          Caption = 'Liste des pieces manquantes'
        end
        object GridPanel2: TGridPanel
          Left = 0
          Top = 706
          Width = 965
          Height = 41
          Align = alBottom
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
              Control = SpeedButton1
              Row = 0
            end
            item
              Column = 1
              Control = SpeedButton2
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 0
          DesignSize = (
            965
            41)
          object SpeedButton1: TSpeedButton
            Left = 159
            Top = 2
            Width = 163
            Height = 37
            Cursor = crHandPoint
            Anchors = []
            Caption = 'Retourner au menu'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = SpeedButton1Click
            ExplicitLeft = 240
            ExplicitTop = 4
          end
          object SpeedButton2: TSpeedButton
            Left = 614
            Top = 4
            Width = 219
            Height = 33
            Cursor = crHandPoint
            Anchors = []
            Caption = 'Suivant'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = SpeedButton2Click
            ExplicitLeft = 830
            ExplicitTop = 2
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 965
          Height = 60
          Align = alTop
          TabOrder = 1
          DesignSize = (
            965
            60)
          object Label3: TLabel
            Left = 69
            Top = 24
            Width = 286
            Height = 28
            Anchors = [akLeft, akTop, akRight]
            Caption = 'CHOIX DES PIECES A FOURNIR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clHotLight
            Font.Height = -20
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object ListBox2: TListBox
          Left = 614
          Top = 128
          Width = 320
          Height = 113
          ItemHeight = 21
          TabOrder = 2
        end
        object CheckListBox1: TCheckListBox
          Left = 45
          Top = 128
          Width = 320
          Height = 113
          ItemHeight = 21
          Items.Strings = (
            'Carte CFE'
            'Photo'
            'Quitus Fiscale'
            'Piece Identite'
            'Carte CCIT')
          TabOrder = 3
        end
        object ListBox1: TListBox
          Left = 45
          Top = 297
          Width = 320
          Height = 113
          ItemHeight = 21
          TabOrder = 4
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Identit'#233' de l'#39#233'lecteur'
        ImageIndex = 1
        DesignSize = (
          965
          747)
        object Label1: TLabel
          Left = 69
          Top = 88
          Width = 253
          Height = 21
          Caption = 'NOM ET PRENOM DE L'#39'ELECTEUR'
        end
        object Label5: TLabel
          Left = 69
          Top = 177
          Width = 166
          Height = 21
          Caption = 'NUMERO DE LA PIECE'
        end
        object Label2: TLabel
          Left = 69
          Top = 133
          Width = 275
          Height = 21
          Caption = 'TYPE DE PIECE D'#39'IDENTITE FOURNIE'
        end
        object Label9: TLabel
          Left = 68
          Top = 222
          Width = 273
          Height = 21
          Caption = 'DATE DE D'#39'EMMISSION DE LA PIECE'
        end
        object Label15: TLabel
          Left = 68
          Top = 264
          Width = 274
          Height = 21
          Caption = 'DATE DE D'#39'EXPIRATION DE LA PIECE'
        end
        object Label14: TLabel
          Left = 69
          Top = 306
          Width = 210
          Height = 21
          Caption = 'LOCALISATION ELECTORALE'
        end
        object Label16: TLabel
          Left = 68
          Top = 349
          Width = 92
          Height = 21
          Caption = 'REFERANT 1'
        end
        object Label17: TLabel
          Left = 69
          Top = 390
          Width = 92
          Height = 21
          Caption = 'REFERANT 2'
        end
        object Label18: TLabel
          Left = 68
          Top = 434
          Width = 187
          Height = 21
          Caption = 'ADRESSE DE L'#39'ELECTEUR'
        end
        object Label19: TLabel
          Left = 68
          Top = 484
          Width = 135
          Height = 21
          Caption = 'TYPE D'#39'ELECTEUR'
        end
        object Label20: TLabel
          Left = 68
          Top = 534
          Width = 128
          Height = 21
          Anchors = []
          Caption = 'RAISON SOCIALE'
        end
        object Label25: TLabel
          Left = 840
          Top = 632
          Width = 4
          Height = 21
        end
        object Label28: TLabel
          Left = 840
          Top = 679
          Width = 4
          Height = 21
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 965
          Height = 60
          Align = alTop
          TabOrder = 0
          object Label21: TLabel
            Left = 69
            Top = 24
            Width = 312
            Height = 28
            Caption = 'INFORMATIONS SUR L'#39'ELECTEUR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clHotLight
            Font.Height = -20
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object Edit1: TEdit
          Left = 360
          Top = 85
          Width = 290
          Height = 29
          Anchors = [akTop]
          CharCase = ecUpperCase
          TabOrder = 1
          TextHint = 'NOM ET PRENOM DE L'#39'ELECTEUR'
        end
        object ComboBox2: TComboBox
          Left = 360
          Top = 130
          Width = 290
          Height = 29
          Anchors = [akTop]
          TabOrder = 2
          TextHint = 'SELECTIONNER LE TYPE DE PIECE'
          Items.Strings = (
            ''
            'CNI'
            'CARTE CONSULAIRE'
            'PASSEPORT'
            'AUTRE')
        end
        object Edit5: TEdit
          Left = 360
          Top = 174
          Width = 290
          Height = 29
          Anchors = [akTop]
          Enabled = False
          TabOrder = 3
          TextHint = 'NUMERO DE LA PIECE'
        end
        object ToggleSwitch13: TToggleSwitch
          Left = 751
          Top = 179
          Width = 130
          Height = 23
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          TabOrder = 4
          OnClick = ToggleSwitch13Click
        end
        object DateTimePicker5: TDateTimePicker
          Left = 360
          Top = 219
          Width = 290
          Height = 29
          Anchors = [akTop]
          Date = 44104.000000000000000000
          Time = 0.574048680558917100
          Enabled = False
          TabOrder = 5
          OnChange = DateTimePicker5Change
        end
        object ToggleSwitch1: TToggleSwitch
          Left = 751
          Top = 222
          Width = 130
          Height = 23
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          TabOrder = 6
          OnClick = ToggleSwitch1Click
        end
        object DateTimePicker1: TDateTimePicker
          Left = 360
          Top = 260
          Width = 290
          Height = 29
          Anchors = [akTop]
          Date = 44104.000000000000000000
          Time = 0.574048680558917100
          Enabled = False
          TabOrder = 7
          OnChange = DateTimePicker1Change
        end
        object ComboBox1: TComboBox
          Left = 360
          Top = 303
          Width = 290
          Height = 29
          Anchors = [akTop]
          TabOrder = 8
          TextHint = 'SELECTIONNER LA LOCALISATION'
          OnChange = ComboBox1Change
          Items.Strings = (
            'LC'
            'MARITIME'
            'PLATEUX'
            'CENTRALE'
            'KARA'
            'SAVANES')
        end
        object ToggleSwitch3: TToggleSwitch
          Left = 751
          Top = 260
          Width = 130
          Height = 23
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          TabOrder = 9
          OnClick = ToggleSwitch3Click
        end
        object Edit2: TEdit
          Left = 360
          Top = 346
          Width = 290
          Height = 29
          Anchors = [akTop]
          CharCase = ecUpperCase
          TabOrder = 10
          TextHint = 'NOM ET PRENOM REFERANT 1'
        end
        object Edit3: TEdit
          Left = 671
          Top = 346
          Width = 259
          Height = 29
          Anchors = [akTop, akRight]
          CharCase = ecUpperCase
          MaxLength = 8
          NumbersOnly = True
          TabOrder = 11
          TextHint = 'TELEPHONE REFERANT 1'
        end
        object Edit9: TEdit
          Left = 360
          Top = 387
          Width = 290
          Height = 29
          Anchors = [akTop]
          CharCase = ecUpperCase
          TabOrder = 12
          TextHint = 'NOM ET PRENOM REFERANT 2'
        end
        object Edit10: TEdit
          Left = 671
          Top = 387
          Width = 259
          Height = 29
          Anchors = [akTop, akRight]
          CharCase = ecUpperCase
          MaxLength = 8
          NumbersOnly = True
          TabOrder = 13
          TextHint = 'TELEPHONE REFERANT 2'
        end
        object Edit13: TEdit
          Left = 360
          Top = 431
          Width = 290
          Height = 29
          Anchors = [akTop]
          CharCase = ecUpperCase
          TabOrder = 14
          TextHint = 'ADRESSE DE L'#39'ELECTEUR'
        end
        object Edit14: TEdit
          Left = 671
          Top = 431
          Width = 259
          Height = 29
          Anchors = [akTop, akRight]
          CharCase = ecUpperCase
          MaxLength = 8
          NumbersOnly = True
          TabOrder = 15
          TextHint = 'TELEPHONE DE L'#39'ELECTEUR'
        end
        object GridPanel16: TGridPanel
          Left = 360
          Top = 481
          Width = 290
          Height = 29
          Anchors = [akTop]
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
              Column = 1
              Control = RadioButton7
              Row = 0
            end
            item
              Column = 0
              Control = RadioButton6
              Row = 0
            end>
          Enabled = False
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 16
          DesignSize = (
            290
            29)
          object RadioButton7: TRadioButton
            Left = 161
            Top = 4
            Width = 112
            Height = 21
            Anchors = []
            Caption = 'Procuration'
            TabOrder = 0
            OnClick = RadioButton7Click
          end
          object RadioButton6: TRadioButton
            Left = 16
            Top = 4
            Width = 112
            Height = 21
            Anchors = []
            Caption = 'Votant'
            TabOrder = 1
            OnClick = RadioButton6Click
          end
        end
        object ToggleSwitch4: TToggleSwitch
          Left = 751
          Top = 487
          Width = 130
          Height = 23
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          TabOrder = 17
          OnClick = ToggleSwitch4Click
        end
        object Edit15: TEdit
          Left = 360
          Top = 531
          Width = 290
          Height = 29
          Anchors = [akTop]
          CharCase = ecUpperCase
          TabOrder = 18
          TextHint = 'RAISON SOCIALE DE LA SOCIETE'
        end
        object GridPanel3: TGridPanel
          Left = 0
          Top = 706
          Width = 965
          Height = 41
          Align = alBottom
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
              Control = SpeedButton5
              Row = 0
            end
            item
              Column = 1
              Control = SpeedButton6
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 19
          DesignSize = (
            965
            41)
          object SpeedButton5: TSpeedButton
            Left = 159
            Top = 2
            Width = 163
            Height = 37
            Cursor = crHandPoint
            Anchors = []
            Caption = 'Precedent'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 178
          end
          object SpeedButton6: TSpeedButton
            Left = 642
            Top = 2
            Width = 163
            Height = 37
            Cursor = crHandPoint
            Anchors = []
            Caption = 'suivant'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = SpeedButton6Click
            ExplicitLeft = 737
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Identit'#233' de la soci'#233't'#233
        ImageIndex = 2
        ExplicitLeft = 8
        ExplicitTop = 36
        DesignSize = (
          965
          747)
        object Label6: TLabel
          Left = 69
          Top = 86
          Width = 26
          Height = 21
          Caption = 'NIF'
        end
        object Label11: TLabel
          Left = 69
          Top = 134
          Width = 112
          Height = 21
          Caption = 'Num'#233'ro RCCM'
        end
        object Label12: TLabel
          Left = 69
          Top = 182
          Width = 94
          Height = 21
          Caption = 'Num'#233'ro CFE'
        end
        object Label13: TLabel
          Left = 69
          Top = 284
          Width = 76
          Height = 21
          Caption = 'Num CCIT'
        end
        object Label8: TLabel
          Left = 69
          Top = 334
          Width = 197
          Height = 21
          Caption = 'Annee de debut d'#39'activite'
        end
        object Label26: TLabel
          Left = 69
          Top = 381
          Width = 193
          Height = 21
          Caption = 'Numero du Quittus Fiscal'
        end
        object Label27: TLabel
          Left = 69
          Top = 232
          Width = 248
          Height = 21
          Caption = 'Date d'#39'expiration de la carte CFE'
        end
        object Label29: TLabel
          Left = 806
          Top = 536
          Width = 4
          Height = 21
          Visible = False
        end
        object GridPanel6: TGridPanel
          Left = 0
          Top = 706
          Width = 965
          Height = 41
          Align = alBottom
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
              Control = SpeedButton7
              Row = 0
            end
            item
              Column = 0
              Control = SpeedButton8
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 0
          DesignSize = (
            965
            41)
          object SpeedButton7: TSpeedButton
            Left = 642
            Top = 2
            Width = 163
            Height = 37
            Cursor = crHandPoint
            Anchors = []
            Caption = 'suivant'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = SpeedButton7Click
            ExplicitLeft = 737
          end
          object SpeedButton8: TSpeedButton
            Left = 159
            Top = 2
            Width = 163
            Height = 37
            Cursor = crHandPoint
            Anchors = []
            Caption = 'precedent'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 238
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 965
          Height = 60
          Align = alTop
          TabOrder = 1
          object Label22: TLabel
            Left = 69
            Top = 24
            Width = 310
            Height = 28
            Caption = 'INFORMATIONS SUR LA SOCIETE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clHotLight
            Font.Height = -20
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object Edit6: TEdit
          Left = 345
          Top = 83
          Width = 300
          Height = 29
          Anchors = [akTop]
          Enabled = False
          NumbersOnly = True
          TabOrder = 2
          TextHint = 'ENTRER LE NIF'
        end
        object ToggleSwitch5: TToggleSwitch
          Left = 735
          Top = 84
          Width = 130
          Height = 23
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          TabOrder = 3
          OnClick = ToggleSwitch5Click
        end
        object Edit8: TEdit
          Left = 345
          Top = 130
          Width = 300
          Height = 29
          Anchors = [akTop]
          Enabled = False
          TabOrder = 4
          TextHint = 'ENTRER LE NUM RCCM'
        end
        object ToggleSwitch6: TToggleSwitch
          Left = 735
          Top = 133
          Width = 130
          Height = 23
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          TabOrder = 5
          OnClick = ToggleSwitch6Click
        end
        object Edit11: TEdit
          Left = 345
          Top = 178
          Width = 300
          Height = 29
          Anchors = [akTop]
          Enabled = False
          TabOrder = 6
          TextHint = 'ENTRER LE NUM CFE'
        end
        object ToggleSwitch7: TToggleSwitch
          Left = 735
          Top = 180
          Width = 130
          Height = 23
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          TabOrder = 7
          OnClick = ToggleSwitch7Click
        end
        object Edit12: TEdit
          Left = 345
          Top = 278
          Width = 300
          Height = 29
          Anchors = [akTop]
          Enabled = False
          TabOrder = 8
          TextHint = 'ENTRER LE NUM CCIT'
        end
        object ToggleSwitch8: TToggleSwitch
          Left = 735
          Top = 284
          Width = 130
          Height = 23
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          TabOrder = 9
          OnClick = ToggleSwitch8Click
        end
        object Edit4: TEdit
          Left = 345
          Top = 330
          Width = 300
          Height = 29
          Anchors = [akTop]
          MaxLength = 4
          NumbersOnly = True
          TabOrder = 10
          TextHint = 'ENTRER L'#39'ANNEE DE DEBUT D'#39'ACTIVITE'
        end
        object Edit19: TEdit
          Left = 345
          Top = 378
          Width = 300
          Height = 29
          Anchors = [akTop]
          Enabled = False
          TabOrder = 11
          TextHint = 'Numero du Quittus Fiscal'
        end
        object ToggleSwitch10: TToggleSwitch
          Left = 735
          Top = 383
          Width = 130
          Height = 23
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          TabOrder = 12
          OnClick = ToggleSwitch10Click
        end
        object DateTimePicker3: TDateTimePicker
          Left = 345
          Top = 225
          Width = 300
          Height = 29
          Anchors = [akTop]
          Date = 44104.000000000000000000
          Time = 0.710299930557084700
          Enabled = False
          TabOrder = 13
          OnChange = DateTimePicker3Change
        end
        object ToggleSwitch11: TToggleSwitch
          Left = 735
          Top = 231
          Width = 130
          Height = 23
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          TabOrder = 14
          OnClick = ToggleSwitch11Click
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Cat'#233'gorie de l'#39#233'lecteur'
        ImageIndex = 3
        ExplicitLeft = 8
        ExplicitTop = 36
        DesignSize = (
          965
          747)
        object SpeedButton9: TSpeedButton
          Left = 410
          Top = 115
          Width = 150
          Height = 30
          Cursor = crHandPoint
          Caption = 'Effacer la selection'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton9Click
        end
        object SpeedButton10: TSpeedButton
          Left = 410
          Top = 75
          Width = 150
          Height = 30
          Cursor = crHandPoint
          Caption = 'Selectionner'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton10Click
        end
        object GridPanel7: TGridPanel
          Left = 0
          Top = 706
          Width = 965
          Height = 41
          Align = alBottom
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
              Control = SpeedButton13
              Row = 0
            end
            item
              Column = 1
              Control = SpeedButton14
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 0
          DesignSize = (
            965
            41)
          object SpeedButton13: TSpeedButton
            Left = 159
            Top = 2
            Width = 163
            Height = 37
            Anchors = []
            Caption = 'Precedent'
            Flat = True
            ExplicitLeft = 166
          end
          object SpeedButton14: TSpeedButton
            Left = 642
            Top = 2
            Width = 163
            Height = 37
            Anchors = []
            Caption = 'Terminer'
            Flat = True
            OnClick = SpeedButton14Click
            ExplicitLeft = 665
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 172
          Width = 999
          Height = 60
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
          object Label23: TLabel
            Left = 69
            Top = 24
            Width = 460
            Height = 28
            Caption = 'CHOIX PORTANT SUR LA CATEGORIE D'#39'ACTIVITE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clHotLight
            Font.Height = -20
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object CheckListBox2: TCheckListBox
          Left = 125
          Top = 75
          Width = 244
          Height = 70
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 21
          Items.Strings = (
            'Commerce'
            'Industrie'
            'Service')
          TabOrder = 2
        end
        object ListBox3: TListBox
          Left = 600
          Top = 75
          Width = 244
          Height = 70
          Anchors = [akLeft, akTop, akRight]
          ItemHeight = 21
          TabOrder = 3
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 965
          Height = 60
          Align = alTop
          TabOrder = 4
          object Label24: TLabel
            Left = 69
            Top = 24
            Width = 434
            Height = 28
            Caption = 'CHOIX PORTANT SUR LE SECTEUR D'#39'ACTIVITE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clHotLight
            Font.Height = -20
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object Panel6: TPanel
          Left = 69
          Top = 263
          Width = 860
          Height = 138
          BevelOuter = bvNone
          ShowCaption = False
          TabOrder = 5
          object SpeedButton11: TSpeedButton
            Left = 341
            Top = 11
            Width = 150
            Height = 30
            Cursor = crHandPoint
            Caption = 'Selectionner'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -16
            Font.Name = 'Roboto'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = SpeedButton11Click
          end
          object SpeedButton12: TSpeedButton
            Left = 341
            Top = 67
            Width = 150
            Height = 30
            Cursor = crHandPoint
            Caption = 'Effacer la selection'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'Roboto'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = SpeedButton12Click
          end
          object CheckListBox3: TCheckListBox
            Left = 56
            Top = 8
            Width = 244
            Height = 97
            ItemHeight = 21
            Items.Strings = (
              'Com A'
              'Com B'
              'Com C'
              'Com D'
              'Com XYZ'
              'Ind A'
              'Ind B'
              'Ind C'
              'Ind D'
              'Ind E'
              'Ser A'
              'Ser B1'
              'Ser B2'
              'Ser B3'
              'Ser B4'
              'Ser B5'
              'Ser B6'
              'Ser C'
              'Ser D1G1'
              'Ser D1G2'
              'Ser D1G3'
              'Ser D1G4'
              'Ser D1G5'
              'Ser D2')
            TabOrder = 0
          end
          object ListBox4: TListBox
            Left = 531
            Top = 0
            Width = 244
            Height = 97
            ItemHeight = 21
            TabOrder = 1
          end
        end
      end
    end
  end
end
