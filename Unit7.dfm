object Form7: TForm7
  Left = 0
  Top = 0
  Align = alClient
  BorderIcons = [biSystemMenu]
  Caption = 'SIMULATION LOME COMMUNE'
  ClientHeight = 817
  ClientWidth = 1221
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 21
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1221
    Height = 817
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = 'Demarrer simulation'
      ImageIndex = 1
      object GridPanel2: TGridPanel
        AlignWithMargins = True
        Left = 3
        Top = 50
        Width = 1207
        Height = 728
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
            Column = 1
            Control = GridPanel3
            Row = 1
          end
          item
            Column = 0
            ColumnSpan = 2
            Control = DBGrid1
            Row = 0
            RowSpan = 2
          end>
        RowCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 0
        ExplicitTop = 64
        ExplicitHeight = 714
        object GridPanel3: TGridPanel
          Left = 601
          Top = 362
          Width = 601
          Height = 361
          Align = alClient
          ColumnCollection = <
            item
              Value = 100.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = DBNavigator1
              Row = 1
            end>
          RowCollection = <
            item
              Value = 90.000000000000000000
            end
            item
              Value = 10.000000000000000000
            end>
          TabOrder = 0
          object DBNavigator1: TDBNavigator
            AlignWithMargins = True
            Left = 4
            Top = 327
            Width = 593
            Height = 30
            Align = alClient
            TabOrder = 0
          end
        end
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 1201
          Height = 722
          Align = alClient
          DataSource = DataSource1
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = PopupMenu2
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = [fsBold]
          OnCellClick = DBGrid1CellClick
          OnDrawColumnCell = DBGrid1DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'NomEtPrenomElecteur'
              Width = 450
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Raison_Social'
              Width = 450
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Adresse'
              Width = 450
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tel'
              Width = 450
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Email'
              Width = 450
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Categorie'
              Width = 450
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Secteur'
              Width = 450
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Referant'
              Width = 450
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Region'
              Width = 450
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nom_sim'
              Width = 450
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'list_secteur'
              Width = 450
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'list_categories'
              Width = 450
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'selected'
              Visible = False
            end>
        end
      end
      object GridPanel8: TGridPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1207
        Height = 41
        Align = alTop
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
            Control = ComboBox1
            Row = 0
          end
          item
            Column = 1
            Control = GridPanel9
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 1
        object ComboBox1: TComboBox
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 596
          Height = 29
          Align = alTop
          ItemIndex = 0
          TabOrder = 0
          TextHint = 'FILTRER PAR SECTEUR'
          Items.Strings = (
            'TOUS SECTEURS'
            'COMMERCE ET SERVICE'
            'COMMERCE ET INDUSTRIE'
            'INDUSTRIE ET SERVICE')
          ExplicitTop = 12
        end
        object GridPanel9: TGridPanel
          AlignWithMargins = True
          Left = 606
          Top = 4
          Width = 597
          Height = 33
          Align = alClient
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
              Control = SpeedButton1
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 1
          ExplicitTop = 8
          object SpeedButton1: TSpeedButton
            AlignWithMargins = True
            Left = 301
            Top = 4
            Width = 292
            Height = 25
            Align = alClient
            AllowAllUp = True
            Caption = 'Filtrer'
            OnClick = SpeedButton1Click
            ExplicitLeft = 368
            ExplicitTop = 6
            ExplicitWidth = 158
            ExplicitHeight = 31
          end
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = DM.Q_simulation_C_S_I
    Left = 904
    Top = 89
  end
  object PopupMenu2: TPopupMenu
    Left = 839
    Top = 278
    object Commerce1: TMenuItem
      Caption = 'Definir en  tant que '
      object Commerce2: TMenuItem
        Caption = 'Commerce'
        object CommerceA1: TMenuItem
          Caption = 'Commerce A'
          OnClick = CommerceA1Click
        end
        object CommerceB1: TMenuItem
          Caption = 'Commerce B'
        end
        object CommerceC1: TMenuItem
          Caption = 'Commerce C'
        end
        object CommerceD1: TMenuItem
          Caption = 'Commerce D'
        end
        object CommerceD2: TMenuItem
          Caption = 'Commerce E'
        end
      end
      object Industrie1: TMenuItem
        Caption = 'Industrie'
        object IndustrieA1: TMenuItem
          Caption = 'Industrie A'
        end
        object IndustrieB1: TMenuItem
          Caption = 'Industrie B'
        end
        object IndustrieC1: TMenuItem
          Caption = 'Industrie C'
        end
        object IndustrieD1: TMenuItem
          Caption = 'Industrie D'
        end
        object IndustrieE1: TMenuItem
          Caption = 'Industrie E'
        end
      end
      object Service1: TMenuItem
        Caption = 'Service'
        object ServiceA1: TMenuItem
          Caption = 'Service A'
        end
        object ServiceB1: TMenuItem
          Caption = 'Service B1'
        end
        object ServiceB21: TMenuItem
          Caption = 'Service B2'
        end
        object ServiceB31: TMenuItem
          Caption = 'Service B3'
        end
        object ServiceB41: TMenuItem
          Caption = 'Service B4'
        end
        object ServiceB51: TMenuItem
          Caption = 'Service B5'
        end
        object ServiceB61: TMenuItem
          Caption = 'Service B6'
        end
        object ServiceC1: TMenuItem
          Caption = 'Service C'
        end
        object ServiceD11: TMenuItem
          Caption = 'Service D1G1'
        end
        object ServiceD1G21: TMenuItem
          Caption = 'Service D1G2'
        end
        object ServiceD1G31: TMenuItem
          Caption = 'Service D1G3'
        end
        object ServiceD1G41: TMenuItem
          Caption = 'Service D1G4'
        end
        object ServiceD1G51: TMenuItem
          Caption = 'Service D1G5'
        end
        object ServiceD21: TMenuItem
          Caption = 'Service D2'
        end
      end
    end
    object Obtenirletat1: TMenuItem
      Caption = 'Obtenir l'#39'etat'
      object CommerceAuniquement1: TMenuItem
        Caption = 'Commerce'
        object CommerceA2: TMenuItem
          Caption = 'Commerce A'
        end
        object CommerceB2: TMenuItem
          Caption = 'Commerce B'
        end
        object CommerceC2: TMenuItem
          Caption = 'Commerce C'
        end
        object CommerceD3: TMenuItem
          Caption = 'Commerce D'
        end
        object CommerceE1: TMenuItem
          Caption = 'Commerce E'
        end
      end
      object Industrie2: TMenuItem
        Caption = 'Industrie'
        object IndustrieA2: TMenuItem
          Caption = 'Industrie A'
        end
        object IndustrieB2: TMenuItem
          Caption = 'Industrie B'
        end
        object IndustrieC2: TMenuItem
          Caption = 'Industrie C'
        end
        object IndustrieD2: TMenuItem
          Caption = 'Industrie D'
        end
        object IndustrieE2: TMenuItem
          Caption = 'Industrie E'
        end
      end
      object Service2: TMenuItem
        Caption = 'Service'
        object ServiceA2: TMenuItem
          Caption = 'Service A'
        end
        object ServiceB2: TMenuItem
          Caption = 'Service B1'
        end
        object ServiceC2: TMenuItem
          Caption = 'Service B2'
        end
        object ServiceD1: TMenuItem
          Caption = 'Service B3'
        end
        object ServiceB42: TMenuItem
          Caption = 'Service B4'
        end
        object ServiceB52: TMenuItem
          Caption = 'Service B5'
        end
        object ServiceB62: TMenuItem
          Caption = 'Service B6'
        end
        object ServiceC3: TMenuItem
          Caption = 'Service C'
        end
        object ServiceD1G11: TMenuItem
          Caption = 'Service D1G1'
        end
        object ServiceD1G22: TMenuItem
          Caption = 'Service D1G2'
        end
        object ServiceD1G32: TMenuItem
          Caption = 'Service D1G3'
        end
        object ServiceD22: TMenuItem
          Caption = 'Service D2'
        end
      end
    end
  end
  object DataSource2: TDataSource
    DataSet = DM.Q_historique_sim
    Left = 564
    Top = 408
  end
end
