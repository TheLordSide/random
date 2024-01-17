object Form10: TForm10
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'MISE A JOUR ELECTEUR'
  ClientHeight = 704
  ClientWidth = 1091
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Roboto'
  Font.Style = [fsBold]
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 19
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1091
    Height = 704
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Modification sur les electeurs'
      ExplicitTop = 32
      ExplicitHeight = 668
      object GroupBox26: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1077
        Height = 69
        Align = alTop
        Caption = 'Outils '
        TabOrder = 0
        object GridPanel35: TGridPanel
          AlignWithMargins = True
          Left = 5
          Top = 26
          Width = 1067
          Height = 38
          Align = alClient
          BevelKind = bkFlat
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
              Control = SearchBox4
              Row = 0
            end
            item
              Column = 1
              Control = DBNavigator1
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 0
          object SearchBox4: TSearchBox
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 524
            Height = 26
            Align = alClient
            CharCase = ecUpperCase
            PopupMenu = PopupMenu1
            TabOrder = 0
            TextHint = 'RECHERCHER UN NOM, UN REFERENT '
            OnChange = SearchBox4Change
            ExplicitHeight = 27
          end
          object DBNavigator1: TDBNavigator
            AlignWithMargins = True
            Left = 534
            Top = 4
            Width = 525
            Height = 26
            DataSource = DataSource1
            Align = alClient
            TabOrder = 1
          end
        end
      end
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 78
        Width = 1077
        Height = 589
        Align = alClient
        DataSource = DataSource1
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Roboto'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'NomEtPrenomElecteur'
            Title.Caption = 'NOM ET PRENOMS'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RaisonSocial'
            Title.Caption = 'RAISON SOCIALE'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TypePieceId'
            Title.Caption = 'TYPE DE PIECE'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DateDelivrance'
            Title.Caption = 'DATE DE DELIVRANCE'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DateExpiration'
            Title.Caption = 'DATE D'#39'EXPIRATON'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NumeroCarte'
            Title.Caption = 'NUMERO DE CARTE'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NIF'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NumRCCM'
            Title.Caption = 'NUMERO RCCM'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NumCFE'
            Title.Caption = 'NUMERO CFE'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'datexpirationCFE'
            Title.Caption = 'DATE D'#39'EXPIRATION DU CFE'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NumCCIT'
            Title.Caption = 'NUMERO CCIT'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Anneedbutactivite'
            Title.Caption = 'ANNEE DE DEBUT ACTIVITE'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Representant1'
            Title.Caption = 'REFERENT 1'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tel_rep1'
            Title.Caption = 'TELEPHONE REFERENT 1'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Representant2'
            Title.Caption = 'REFERENT 2'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tel_rep2'
            Title.Caption = 'TELEPHONE DU REFERENT 2'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'type'
            Title.Caption = 'TYPE DE VOTANT'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Adresse'
            Title.Caption = 'ADRESSE'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tel'
            Title.Caption = 'TELEPHONE DE L'#39'ELECTEUR'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NumQuittusFiscal'
            Title.Caption = 'NUMERO DU QUITUS FISCAL'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Email'
            Title.Caption = 'EMAIL'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Region'
            Title.Caption = 'REGION'
            Width = 400
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Modification sur les pieces'
      ImageIndex = 1
      ExplicitTop = 32
      ExplicitHeight = 668
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1077
        Height = 69
        Align = alTop
        Caption = 'Outils '
        TabOrder = 0
        object GridPanel1: TGridPanel
          AlignWithMargins = True
          Left = 5
          Top = 26
          Width = 1067
          Height = 38
          Align = alClient
          BevelKind = bkFlat
          ColumnCollection = <
            item
              Value = 100.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = SearchBox1
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 0
          object SearchBox1: TSearchBox
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 1055
            Height = 26
            Align = alClient
            CharCase = ecUpperCase
            TabOrder = 0
            TextHint = 'RECHERCHER UN NOM'
            OnChange = SearchBox1Change
            ExplicitHeight = 27
          end
        end
      end
      object DBGrid7: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 78
        Width = 1077
        Height = 589
        Align = alClient
        Color = clGradientActiveCaption
        DataSource = DataSource2
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = PopupMenu2
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Roboto'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'NomEtPrenomElecteur'
            Title.Caption = 'NOM ET PRENOMS'
            Width = 500
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nompiece'
            Title.Caption = 'LIBELLE DE LA PIECE'
            Width = 500
            Visible = True
          end>
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = DM.Q_electeur
    Left = 820
    Top = 264
  end
  object PopupMenu1: TPopupMenu
    Left = 684
    Top = 288
    object Supprimer1: TMenuItem
      Caption = 'Supprimer'
      OnClick = Supprimer1Click
    end
  end
  object DataSource2: TDataSource
    DataSet = DM.Q_piece
    Left = 428
    Top = 368
  end
  object PopupMenu2: TPopupMenu
    Left = 852
    Top = 448
    object Completerledossieravec1: TMenuItem
      Caption = 'Completer les dossiers selectionnes avec :'
      object Photo1: TMenuItem
        Caption = 'Photo'
        OnClick = Photo1Click
      end
      object Cartedidentite1: TMenuItem
        Caption = 'Carte d'#39'identite'
        OnClick = Cartedidentite1Click
      end
      object QuitusFiscale1: TMenuItem
        Caption = 'Quitus Fiscale'
        OnClick = QuitusFiscale1Click
      end
      object CarteCFE1: TMenuItem
        Caption = 'Carte CFE'
        OnClick = CarteCFE1Click
      end
      object CarteCCIT1: TMenuItem
        Caption = 'Carte CCIT'
        OnClick = CarteCCIT1Click
      end
      object QuitusCCIT1: TMenuItem
        Caption = 'Quitus CCIT'
        OnClick = QuitusCCIT1Click
      end
    end
  end
end
