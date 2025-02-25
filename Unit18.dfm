object Form18: TForm18
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Modifier les Dossiers'
  ClientHeight = 814
  ClientWidth = 1331
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 19
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1331
    Height = 814
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Completer les dossiers manquants'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1323
        Height = 780
        Align = alClient
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          1323
          780)
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 1321
          Height = 104
          Align = alTop
          TabOrder = 0
          ExplicitLeft = 0
          ExplicitTop = -2
          object Label1: TLabel
            Left = 56
            Top = 23
            Width = 188
            Height = 23
            Caption = 'LISTE DES DOSSIERS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -19
            Font.Name = 'Roboto'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 416
            Top = 75
            Width = 4
            Height = 19
          end
          object SearchBox1: TSearchBox
            Left = 56
            Top = 74
            Width = 321
            Height = 27
            TabOrder = 0
            TextHint = 'Raison Sociale ou Nom ou Referent'
            OnChange = SearchBox1Change
          end
        end
        object DBGrid1: TDBGrid
          AlignWithMargins = True
          Left = 4
          Top = 108
          Width = 766
          Height = 668
          Align = alLeft
          Color = clGradientActiveCaption
          DataSource = DataSource1
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'Roboto'
          TitleFont.Style = []
          OnCellClick = DBGrid1CellClick
          Columns = <
            item
              Expanded = False
              FieldName = 'NomEtPrenomElecteur'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RaisonSocial'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Representant1'
              Width = 300
              Visible = True
            end>
        end
        object Panel4: TPanel
          Left = 777
          Top = 488
          Width = 553
          Height = 322
          TabOrder = 2
          object Label5: TLabel
            Left = 0
            Top = 3
            Width = 136
            Height = 23
            Caption = 'Pieces requises'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -19
            Font.Name = 'Roboto'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ListBox1: TListBox
            Left = 0
            Top = 32
            Width = 220
            Height = 249
            ItemHeight = 19
            Items.Strings = (
              'Carte CFE'
              'Carte CCIT'
              'Photo'
              'Piece Identite'
              'Quitus Fiscale')
            TabOrder = 0
          end
        end
        object Panel3: TPanel
          Left = 776
          Top = 127
          Width = 554
          Height = 338
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 3
          DesignSize = (
            554
            338)
          object Label2: TLabel
            Left = 312
            Top = 0
            Width = 134
            Height = 23
            Anchors = [akTop, akRight]
            Caption = 'Pieces fournies'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -19
            Font.Name = 'Roboto'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 0
            Top = 0
            Width = 255
            Height = 23
            Caption = 'Pieces manquantes a generer'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -19
            Font.Name = 'Roboto'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ListBox2: TListBox
            Left = 312
            Top = 29
            Width = 220
            Height = 297
            Anchors = [akTop, akRight]
            ItemHeight = 19
            TabOrder = 0
          end
          object Button1: TButton
            Left = 230
            Top = 157
            Width = 75
            Height = 25
            Cursor = crHandPoint
            Anchors = [akTop]
            Caption = 'generer'
            TabOrder = 1
            OnClick = Button1Click
          end
          object ListBox3: TListBox
            Left = 1
            Top = 29
            Width = 220
            Height = 297
            ItemHeight = 19
            TabOrder = 2
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Modifier un dossier'
      ImageIndex = 1
      ExplicitLeft = 172
      ExplicitTop = 78
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1323
        Height = 104
        Align = alTop
        TabOrder = 0
        ExplicitLeft = 88
        ExplicitTop = 32
        object Label7: TLabel
          Left = 416
          Top = 75
          Width = 4
          Height = 19
        end
        object Label8: TLabel
          Left = 64
          Top = 31
          Width = 299
          Height = 23
          Caption = 'LISTE DES DOSSIERS A MODIFIER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -19
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SearchBox2: TSearchBox
          Left = 56
          Top = 72
          Width = 321
          Height = 27
          TabOrder = 0
          TextHint = 'Raison Sociale ou Nom ou Referent'
          OnChange = SearchBox2Change
        end
      end
      object DBGrid2: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 107
        Width = 766
        Height = 670
        Align = alLeft
        Color = clGradientActiveCaption
        DataSource = DataSource1
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Roboto'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NomEtPrenomElecteur'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RaisonSocial'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Representant1'
            Width = 300
            Visible = True
          end>
      end
      object Panel6: TPanel
        Left = 772
        Top = 104
        Width = 551
        Height = 676
        Align = alClient
        TabOrder = 2
        ExplicitLeft = 775
        ExplicitTop = 110
        DesignSize = (
          551
          676)
        object Label6: TLabel
          Left = 3
          Top = 15
          Width = 257
          Height = 23
          Caption = 'LISTE DES PIECES FOURNIES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -19
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 3
          Top = 303
          Width = 210
          Height = 23
          Caption = 'LISTE DES CATEGORIES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -19
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid3: TDBGrid
          Left = 3
          Top = 56
          Width = 542
          Height = 225
          Anchors = [akLeft, akTop, akRight]
          DataSource = DataSource3
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'Roboto'
          TitleFont.Style = []
        end
        object DBGrid4: TDBGrid
          Left = 3
          Top = 344
          Width = 542
          Height = 329
          Anchors = [akLeft, akTop, akRight]
          DataSource = DataSource4
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'Roboto'
          TitleFont.Style = []
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = DM.UniQuery4
    Left = 744
    Top = 65528
  end
  object PopupMenu1: TPopupMenu
    Left = 649
    Top = 47
    object Misejour1: TMenuItem
      Caption = 'Mise '#224' jour'
      object Categorie1: TMenuItem
        Caption = 'Categorie'
        object Commerce1: TMenuItem
          Caption = 'Commerce'
        end
        object Industrie1: TMenuItem
          Caption = 'Industrie'
        end
        object Service1: TMenuItem
          Caption = 'Service'
        end
      end
      object Secteur1: TMenuItem
        Caption = 'Secteur'
        object ComA1: TMenuItem
          Caption = 'Com A'
        end
        object ComB1: TMenuItem
          Caption = 'Com B'
        end
        object ComC1: TMenuItem
          Caption = 'Com C'
        end
        object ComD1: TMenuItem
          Caption = 'Com D'
        end
        object SerA1: TMenuItem
          Caption = 'Ser A'
        end
        object SerB1: TMenuItem
          Caption = 'Ser B1'
        end
        object SerB21: TMenuItem
          Caption = 'Ser B2'
        end
        object SerB31: TMenuItem
          Caption = 'Ser B3'
        end
        object SerB41: TMenuItem
          Caption = 'Ser B4'
        end
        object SerB51: TMenuItem
          Caption = 'Ser B5'
        end
        object SerB61: TMenuItem
          Caption = 'Ser B6'
        end
        object SerC1: TMenuItem
          Caption = 'Ser C'
        end
        object SerD1G11: TMenuItem
          Caption = 'Ser D1G1'
        end
        object SerD1G21: TMenuItem
          Caption = 'Ser D1G2'
        end
        object SerD1G31: TMenuItem
          Caption = 'Ser D1G3'
        end
        object SerD1G41: TMenuItem
          Caption = 'Ser D1G4'
        end
        object SerD1G51: TMenuItem
          Caption = 'Ser D1G5'
        end
        object SerD21: TMenuItem
          Caption = 'Ser D2'
        end
        object IndA1: TMenuItem
          Caption = 'Ind A'
        end
        object IndB1: TMenuItem
          Caption = 'Ind B'
        end
        object IndC1: TMenuItem
          Caption = 'Ind C'
        end
        object IndD1: TMenuItem
          Caption = 'Ind D'
        end
        object IndE1: TMenuItem
          Caption = 'Ind E'
        end
      end
    end
  end
  object DataSource2: TDataSource
    DataSet = UniQuery1
    Left = 1121
    Top = 25
  end
  object UniQuery1: TUniQuery
    Connection = DM.UniConnection1
    Left = 1009
    Top = 41
  end
  object PopupMenu2: TPopupMenu
    Left = 696
    Top = 55
  end
  object DataSource3: TDataSource
    DataSet = DM.Q_piece
    Left = 1172
    Top = 102
  end
  object DataSource4: TDataSource
    Left = 1160
    Top = 422
  end
end
