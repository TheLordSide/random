object DM: TDM
  OldCreateOrder = False
  Height = 819
  Width = 1456
  object UniConnection1: TUniConnection
    ProviderName = 'mySQL'
    Port = 3306
    Database = 'randomdb'
    Username = 'root'
    Server = '127.0.0.1'
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object Q_gbalo: TUniQuery
    Connection = UniConnection1
    Left = 120
    Top = 16
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 360
    Top = 16
  end
  object T_historique: TUniTable
    TableName = 'historique_sim'
    Connection = UniConnection1
    Left = 128
    Top = 88
    object T_historiqueid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
    end
    object T_historiqueNom: TStringField
      FieldName = 'Nom'
      Required = True
      Size = 255
    end
    object T_historiqueAuteur: TStringField
      FieldName = 'Auteur'
      Required = True
      Size = 255
    end
    object T_historiquedatesim: TStringField
      FieldName = 'datesim'
      Required = True
      Size = 10
    end
  end
  object Q_historique_sim: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT * FROM `historique_sim`')
    Left = 256
    Top = 24
    object Q_historique_simid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
    end
    object Q_historique_simNom: TStringField
      FieldName = 'Nom'
      Required = True
      Size = 255
    end
    object Q_historique_simAuteur: TStringField
      FieldName = 'Auteur'
      Required = True
      Size = 255
    end
    object Q_historique_simdatesim: TStringField
      FieldName = 'datesim'
      Required = True
      Size = 10
    end
  end
  object T_electeur: TUniTable
    TableName = 'electeur'
    Connection = UniConnection1
    Left = 464
    Top = 16
    object T_electeurIdElecteur: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IdElecteur'
    end
    object T_electeurNomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object T_electeurTypePieceId: TStringField
      FieldName = 'TypePieceId'
    end
    object T_electeurDateDelivrance: TStringField
      FieldName = 'DateDelivrance'
      Size = 10
    end
    object T_electeurDateExpiration: TStringField
      FieldName = 'DateExpiration'
      Size = 10
    end
    object T_electeurNumeroCarte: TStringField
      FieldName = 'NumeroCarte'
      Size = 30
    end
    object T_electeurNIF: TLargeintField
      FieldName = 'NIF'
    end
    object T_electeurRaisonSocial: TStringField
      FieldName = 'RaisonSocial'
      Size = 255
    end
    object T_electeurNumRCCM: TStringField
      FieldName = 'NumRCCM'
    end
    object T_electeurNumCFE: TStringField
      FieldName = 'NumCFE'
      Size = 30
    end
    object T_electeurNumCCIT: TStringField
      FieldName = 'NumCCIT'
      Size = 30
    end
    object T_electeurAnneedbutactivite: TStringField
      FieldName = 'Anneedbutactivite'
      Size = 30
    end
    object T_electeurRepresentant1: TStringField
      FieldName = 'Representant1'
      Size = 255
    end
    object T_electeurRepresentant2: TStringField
      FieldName = 'Representant2'
      Size = 255
    end
    object T_electeurtype: TStringField
      FieldName = 'type'
    end
    object T_electeurAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object T_electeurTel: TStringField
      FieldName = 'Tel'
      Size = 50
    end
    object T_electeurTel_rep1: TStringField
      FieldName = 'Tel_rep1'
      Size = 50
    end
    object T_electeurTel_rep2: TStringField
      FieldName = 'Tel_rep2'
      Size = 50
    end
    object T_electeurNumQuittusFiscal: TStringField
      FieldName = 'NumQuittusFiscal'
      Size = 30
    end
    object T_electeurdatexpirationCFE: TStringField
      FieldName = 'datexpirationCFE'
      Size = 10
    end
    object T_electeurEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object T_electeurRegion: TStringField
      FieldName = 'Region'
      Size = 30
    end
  end
  object Q_simulation_region: TUniQuery
    Connection = UniConnection1
    Left = 32
    Top = 72
    object Q_simulation_regionRaison_Social: TStringField
      FieldName = 'Raison_Social'
      Size = 255
    end
    object Q_simulation_regionNomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_simulation_regionReferant: TStringField
      FieldName = 'Referant'
      Size = 255
    end
    object Q_simulation_regionRegion: TStringField
      FieldName = 'Region'
      Size = 15
    end
    object Q_simulation_regionNom_sim: TStringField
      FieldName = 'Nom_sim'
    end
  end
  object Q_liste_electeur_unique_region_Commerce: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region <> '#39'LC'#39') GROUP by electeur.RaisonSocial HA' +
        'VING Secteur_list ='#39'Commerce'#39' order by electeur.Representant1 AS' +
        'C')
    Left = 120
    Top = 160
    object Q_liste_electeur_unique_region_CommerceIdElecteur: TIntegerField
      FieldName = 'IdElecteur'
    end
    object Q_liste_electeur_unique_region_CommerceNomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_liste_electeur_unique_region_CommerceTypePieceId: TStringField
      FieldName = 'TypePieceId'
    end
    object Q_liste_electeur_unique_region_CommerceDateDelivrance: TStringField
      FieldName = 'DateDelivrance'
      Size = 10
    end
    object Q_liste_electeur_unique_region_CommerceDateExpiration: TStringField
      FieldName = 'DateExpiration'
      Size = 10
    end
    object Q_liste_electeur_unique_region_CommerceNumeroCarte: TStringField
      FieldName = 'NumeroCarte'
      Size = 30
    end
    object Q_liste_electeur_unique_region_CommerceNIF: TLargeintField
      FieldName = 'NIF'
    end
    object Q_liste_electeur_unique_region_CommerceRaisonSocial: TStringField
      FieldName = 'RaisonSocial'
      Size = 255
    end
    object Q_liste_electeur_unique_region_CommerceNumRCCM: TStringField
      FieldName = 'NumRCCM'
    end
    object Q_liste_electeur_unique_region_CommerceNumCFE: TStringField
      FieldName = 'NumCFE'
      Size = 30
    end
    object Q_liste_electeur_unique_region_CommerceNumCCIT: TStringField
      FieldName = 'NumCCIT'
      Size = 30
    end
    object Q_liste_electeur_unique_region_CommerceAnneedbutactivite: TStringField
      FieldName = 'Anneedbutactivite'
      Size = 30
    end
    object Q_liste_electeur_unique_region_CommerceRepresentant1: TStringField
      FieldName = 'Representant1'
      Size = 255
    end
    object Q_liste_electeur_unique_region_CommerceRepresentant2: TStringField
      FieldName = 'Representant2'
      Size = 255
    end
    object Q_liste_electeur_unique_region_Commercetype: TStringField
      FieldName = 'type'
    end
    object Q_liste_electeur_unique_region_CommerceAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_liste_electeur_unique_region_CommerceTel: TStringField
      FieldName = 'Tel'
      Size = 50
    end
    object Q_liste_electeur_unique_region_CommerceTel_rep1: TStringField
      FieldName = 'Tel_rep1'
      Size = 50
    end
    object Q_liste_electeur_unique_region_CommerceTel_rep2: TStringField
      FieldName = 'Tel_rep2'
      Size = 50
    end
    object Q_liste_electeur_unique_region_CommerceNumQuittusFiscal: TStringField
      FieldName = 'NumQuittusFiscal'
      Size = 30
    end
    object Q_liste_electeur_unique_region_CommercedatexpirationCFE: TStringField
      FieldName = 'datexpirationCFE'
      Size = 10
    end
    object Q_liste_electeur_unique_region_CommerceEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object Q_liste_electeur_unique_region_CommerceRegion: TStringField
      FieldName = 'Region'
      Size = 30
    end
    object Q_liste_electeur_unique_region_CommerceId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Q_liste_electeur_unique_region_CommerceCategorie: TStringField
      FieldName = 'Categorie'
      ReadOnly = True
      Size = 10
    end
    object Q_liste_electeur_unique_region_CommerceSecteur: TStringField
      FieldName = 'Secteur'
      ReadOnly = True
      Size = 15
    end
    object Q_liste_electeur_unique_region_CommerceNomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_electeur_unique_region_CommerceNIF_1: TLargeintField
      FieldName = 'NIF_1'
      ReadOnly = True
    end
    object Q_liste_electeur_unique_region_Commerceidpiece: TIntegerField
      FieldName = 'idpiece'
      ReadOnly = True
    end
    object Q_liste_electeur_unique_region_CommerceNompiece: TStringField
      FieldName = 'Nompiece'
      ReadOnly = True
      Size = 25
    end
    object Q_liste_electeur_unique_region_CommerceNomEtPrenomElecteur_2: TStringField
      FieldName = 'NomEtPrenomElecteur_2'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object Q_liste_electeur_unique_region_CommerceCategoriez: TMemoField
      FieldName = 'Categoriez'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_liste_electeur_unique_region_CommerceSecteur_list: TMemoField
      FieldName = 'Secteur_list'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_liste_electeur_unique_region_CommercePiece_fournies: TMemoField
      FieldName = 'Piece_fournies'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object frxreport_electeur_region_unique: TfrxReport
    Version = '6.6.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44107.844935000000000000
    ReportOptions.LastChange = 44107.844935000000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 856
    Top = 152
    Datasets = <
      item
        DataSet = frxDBDataset_electeur_region_unique
        DataSetName = 'frxDBDataset_electeur_region_unique'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 185.196970000000000000
        Top = 147.401670000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset_electeur_region_unique
        DataSetName = 'frxDBDataset_electeur_region_unique'
        RowCount = 0
        object frxDBDataset1NomEtPrenomElecteur: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 185.196970000000000000
          DataField = 'RaisonSocial'
          DataSet = frxDBDataset_electeur_region_unique
          DataSetName = 'frxDBDataset_electeur_region_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_region_unique."RaisonSocial"]')
          ParentFont = False
        end
        object frxDBDataset1TypePieceId: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 185.196970000000000000
          DataField = 'TypePieceId'
          DataSet = frxDBDataset_electeur_region_unique
          DataSetName = 'frxDBDataset_electeur_region_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_region_unique."TypePieceId"]')
          ParentFont = False
        end
        object frxDBDataset1DateDelivrance: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 196.535560000000000000
          Width = 64.252010000000000000
          Height = 185.196970000000000000
          DataField = 'DateDelivrance'
          DataSet = frxDBDataset_electeur_region_unique
          DataSetName = 'frxDBDataset_electeur_region_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_region_unique."DateDelivrance"]')
          ParentFont = False
        end
        object frxDBDataset1DateExpiration: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 260.787570000000000000
          Width = 60.472480000000000000
          Height = 185.196970000000000000
          DataField = 'DateExpiration'
          DataSet = frxDBDataset_electeur_region_unique
          DataSetName = 'frxDBDataset_electeur_region_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_region_unique."DateExpiration"]')
          ParentFont = False
        end
        object frxDBDataset1NumeroCarte: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 321.260050000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'NumeroCarte'
          DataSet = frxDBDataset_electeur_region_unique
          DataSetName = 'frxDBDataset_electeur_region_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_region_unique."NumeroCarte"]')
          ParentFont = False
        end
        object frxDBDataset1NIF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'NIF'
          DataSet = frxDBDataset_electeur_region_unique
          DataSetName = 'frxDBDataset_electeur_region_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_region_unique."NIF"]')
          ParentFont = False
        end
        object frxDBDataset1RaisonSocial: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 75.590600000000000000
          Height = 185.196970000000000000
          DataField = 'NomEtPrenomElecteur'
          DataSet = frxDBDataset_electeur_region_unique
          DataSetName = 'frxDBDataset_electeur_region_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_region_unique."NomEtPrenomElecteur"]')
          ParentFont = False
        end
        object frxDBDataset1Secteur_list: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 434.645950000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'sect2'
          DataSet = frxDBDataset_electeur_region_unique
          DataSetName = 'frxDBDataset_electeur_region_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_region_unique."sect2"]')
          ParentFont = False
        end
        object frxDBDataset1Piece_fournies: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 491.338900000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'pieces_fournies'
          DataSet = frxDBDataset_electeur_region_unique
          DataSetName = 'frxDBDataset_electeur_region_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_region_unique."pieces_fournies"]')
          ParentFont = False
        end
        object frxDBDataset1type: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 548.031850000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'type'
          DataSetName = 'frxDBDataset_electeur_unique_com'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique_com."type"]')
          ParentFont = False
        end
        object frxDBDataset1Representant1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 767.244590000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'Representant1'
          DataSet = frxDBDataset_electeur_region_unique
          DataSetName = 'frxDBDataset_electeur_region_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_region_unique."Representant1"]')
          ParentFont = False
        end
        object frxDBDataset1Representant2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 880.630490000000000000
          Width = 52.913420000000000000
          Height = 185.196970000000000000
          DataField = 'Representant2'
          DataSet = frxDBDataset_electeur_region_unique
          DataSetName = 'frxDBDataset_electeur_region_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_region_unique."Representant2"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 823.937540000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'Tel_rep1'
          DataSet = frxDBDataset_electeur_region_unique
          DataSetName = 'frxDBDataset_electeur_region_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_region_unique."Tel_rep1"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 933.543910000000000000
          Width = 52.913420000000000000
          Height = 185.196970000000000000
          DataField = 'Tel_rep2'
          DataSet = frxDBDataset_electeur_region_unique
          DataSetName = 'frxDBDataset_electeur_region_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_region_unique."Tel_rep2"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 706.772110000000000000
          Width = 60.472480000000000000
          Height = 185.196970000000000000
          DataField = 'Tel'
          DataSet = frxDBDataset_electeur_region_unique
          DataSetName = 'frxDBDataset_electeur_region_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_region_unique."Tel"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 657.638220000000000000
          Width = 49.133890000000000000
          Height = 185.196970000000000000
          DataField = 'Adresse'
          DataSet = frxDBDataset_electeur_region_unique
          DataSetName = 'frxDBDataset_electeur_region_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_region_unique."Adresse"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 604.724800000000000000
          Width = 52.913420000000000000
          Height = 185.196970000000000000
          DataField = 'Email'
          DataSet = frxDBDataset_electeur_region_unique
          DataSetName = 'frxDBDataset_electeur_region_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_region_unique."Email"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 986.457330000000000000
          Width = 52.913420000000000000
          Height = 185.196970000000000000
          DataField = 'Region'
          DataSet = frxDBDataset_electeur_region_unique
          DataSetName = 'frxDBDataset_electeur_region_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_region_unique."Region"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 69.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 60.472480000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Raison social')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 60.472480000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Type de piece')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 196.535560000000000000
          Width = 64.252010000000000000
          Height = 60.472480000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Date de dlivrance')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 260.787570000000000000
          Width = 60.472480000000000000
          Height = 60.472480000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Date d'#39'expiration')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 321.260050000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Num carte')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'NIF')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 75.590600000000000000
          Height = 60.472480000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Nom et Prenom')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 434.645950000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Secteur')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 491.338900000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Pieces fournies')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 548.031850000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Type de votant')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 767.244590000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Referant 1')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 880.630490000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Referant 2')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 823.937540000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Tel Referent 1')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 933.543910000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Tel Referent 2')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 604.724800000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Email')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 657.638220000000000000
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Adresse')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 706.772110000000000000
          Width = 60.472480000000000000
          Height = 60.472480000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Telephone')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 986.457330000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Region')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 355.275820000000000000
        Width = 1046.929810000000000000
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 975.016390000000000000
          Top = 3.000000000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 774.803650000000000000
          Top = 3.779530000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Total :[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset_electeur_region_unique: TfrxDBDataset
    UserName = 'frxDBDataset_electeur_region_unique'
    CloseDataSource = False
    DataSet = Q_liste_electeur_unique_region_Commerce
    BCDToCurrency = False
    Left = 400
    Top = 104
  end
  object Q_delete_jointure: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'DELETE FROM jointure')
    Left = 529
    Top = 136
  end
  object Q_insert_Into_another_table: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'insert into jointure select * from categories')
    Left = 633
    Top = 80
  end
  object Q_liste_electeur_unique_region_Service: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region <> '#39'LC'#39') GROUP by electeur.RaisonSocial HA' +
        'VING Secteur_list ='#39'Service'#39' order by electeur.Representant1 ASC')
    Left = 120
    Top = 224
    object Q_liste_electeur_unique_region_ServiceIdElecteur: TIntegerField
      FieldName = 'IdElecteur'
    end
    object Q_liste_electeur_unique_region_ServiceNomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_liste_electeur_unique_region_ServiceTypePieceId: TStringField
      FieldName = 'TypePieceId'
    end
    object Q_liste_electeur_unique_region_ServiceDateDelivrance: TStringField
      FieldName = 'DateDelivrance'
      Size = 10
    end
    object Q_liste_electeur_unique_region_ServiceDateExpiration: TStringField
      FieldName = 'DateExpiration'
      Size = 10
    end
    object Q_liste_electeur_unique_region_ServiceNumeroCarte: TStringField
      FieldName = 'NumeroCarte'
      Size = 30
    end
    object Q_liste_electeur_unique_region_ServiceNIF: TLargeintField
      FieldName = 'NIF'
    end
    object Q_liste_electeur_unique_region_ServiceRaisonSocial: TStringField
      FieldName = 'RaisonSocial'
      Size = 255
    end
    object Q_liste_electeur_unique_region_ServiceNumRCCM: TStringField
      FieldName = 'NumRCCM'
    end
    object Q_liste_electeur_unique_region_ServiceNumCFE: TStringField
      FieldName = 'NumCFE'
      Size = 30
    end
    object Q_liste_electeur_unique_region_ServiceNumCCIT: TStringField
      FieldName = 'NumCCIT'
      Size = 30
    end
    object Q_liste_electeur_unique_region_ServiceAnneedbutactivite: TStringField
      FieldName = 'Anneedbutactivite'
      Size = 30
    end
    object Q_liste_electeur_unique_region_ServiceRepresentant1: TStringField
      FieldName = 'Representant1'
      Size = 255
    end
    object Q_liste_electeur_unique_region_ServiceRepresentant2: TStringField
      FieldName = 'Representant2'
      Size = 255
    end
    object Q_liste_electeur_unique_region_Servicetype: TStringField
      FieldName = 'type'
    end
    object Q_liste_electeur_unique_region_ServiceAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_liste_electeur_unique_region_ServiceTel: TStringField
      FieldName = 'Tel'
      Size = 50
    end
    object Q_liste_electeur_unique_region_ServiceTel_rep1: TStringField
      FieldName = 'Tel_rep1'
      Size = 50
    end
    object Q_liste_electeur_unique_region_ServiceTel_rep2: TStringField
      FieldName = 'Tel_rep2'
      Size = 50
    end
    object Q_liste_electeur_unique_region_ServiceNumQuittusFiscal: TStringField
      FieldName = 'NumQuittusFiscal'
      Size = 30
    end
    object Q_liste_electeur_unique_region_ServicedatexpirationCFE: TStringField
      FieldName = 'datexpirationCFE'
      Size = 10
    end
    object Q_liste_electeur_unique_region_ServiceEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object Q_liste_electeur_unique_region_ServiceRegion: TStringField
      FieldName = 'Region'
      Size = 30
    end
    object Q_liste_electeur_unique_region_ServiceId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Q_liste_electeur_unique_region_ServiceCategorie: TStringField
      FieldName = 'Categorie'
      ReadOnly = True
      Size = 10
    end
    object Q_liste_electeur_unique_region_ServiceSecteur: TStringField
      FieldName = 'Secteur'
      ReadOnly = True
      Size = 15
    end
    object Q_liste_electeur_unique_region_ServiceNomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_electeur_unique_region_ServiceNIF_1: TLargeintField
      FieldName = 'NIF_1'
      ReadOnly = True
    end
    object Q_liste_electeur_unique_region_Serviceidpiece: TIntegerField
      FieldName = 'idpiece'
      ReadOnly = True
    end
    object Q_liste_electeur_unique_region_ServiceNompiece: TStringField
      FieldName = 'Nompiece'
      ReadOnly = True
      Size = 25
    end
    object Q_liste_electeur_unique_region_ServiceNomEtPrenomElecteur_2: TStringField
      FieldName = 'NomEtPrenomElecteur_2'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object Q_liste_electeur_unique_region_ServiceCategoriez: TMemoField
      FieldName = 'Categoriez'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_liste_electeur_unique_region_ServiceSecteur_list: TMemoField
      FieldName = 'Secteur_list'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_liste_electeur_unique_region_ServicePiece_fournies: TMemoField
      FieldName = 'Piece_fournies'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object Q_liste_electeur_unique_region_Industrie: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region <> '#39'LC'#39') GROUP by electeur.RaisonSocial HA' +
        'VING Secteur_list ='#39'Industrie'#39' order by electeur.Representant1 A' +
        'SC')
    Left = 120
    Top = 280
    object Q_liste_electeur_unique_region_IndustrieIdElecteur: TIntegerField
      FieldName = 'IdElecteur'
    end
    object Q_liste_electeur_unique_region_IndustrieNomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_liste_electeur_unique_region_IndustrieTypePieceId: TStringField
      FieldName = 'TypePieceId'
    end
    object Q_liste_electeur_unique_region_IndustrieDateDelivrance: TStringField
      FieldName = 'DateDelivrance'
      Size = 10
    end
    object Q_liste_electeur_unique_region_IndustrieDateExpiration: TStringField
      FieldName = 'DateExpiration'
      Size = 10
    end
    object Q_liste_electeur_unique_region_IndustrieNumeroCarte: TStringField
      FieldName = 'NumeroCarte'
      Size = 30
    end
    object Q_liste_electeur_unique_region_IndustrieNIF: TLargeintField
      FieldName = 'NIF'
    end
    object Q_liste_electeur_unique_region_IndustrieRaisonSocial: TStringField
      FieldName = 'RaisonSocial'
      Size = 255
    end
    object Q_liste_electeur_unique_region_IndustrieNumRCCM: TStringField
      FieldName = 'NumRCCM'
    end
    object Q_liste_electeur_unique_region_IndustrieNumCFE: TStringField
      FieldName = 'NumCFE'
      Size = 30
    end
    object Q_liste_electeur_unique_region_IndustrieNumCCIT: TStringField
      FieldName = 'NumCCIT'
      Size = 30
    end
    object Q_liste_electeur_unique_region_IndustrieAnneedbutactivite: TStringField
      FieldName = 'Anneedbutactivite'
      Size = 30
    end
    object Q_liste_electeur_unique_region_IndustrieRepresentant1: TStringField
      FieldName = 'Representant1'
      Size = 255
    end
    object Q_liste_electeur_unique_region_IndustrieRepresentant2: TStringField
      FieldName = 'Representant2'
      Size = 255
    end
    object Q_liste_electeur_unique_region_Industrietype: TStringField
      FieldName = 'type'
    end
    object Q_liste_electeur_unique_region_IndustrieAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_liste_electeur_unique_region_IndustrieTel: TStringField
      FieldName = 'Tel'
      Size = 50
    end
    object Q_liste_electeur_unique_region_IndustrieTel_rep1: TStringField
      FieldName = 'Tel_rep1'
      Size = 50
    end
    object Q_liste_electeur_unique_region_IndustrieTel_rep2: TStringField
      FieldName = 'Tel_rep2'
      Size = 50
    end
    object Q_liste_electeur_unique_region_IndustrieNumQuittusFiscal: TStringField
      FieldName = 'NumQuittusFiscal'
      Size = 30
    end
    object Q_liste_electeur_unique_region_IndustriedatexpirationCFE: TStringField
      FieldName = 'datexpirationCFE'
      Size = 10
    end
    object Q_liste_electeur_unique_region_IndustrieEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object Q_liste_electeur_unique_region_IndustrieRegion: TStringField
      FieldName = 'Region'
      Size = 30
    end
    object Q_liste_electeur_unique_region_IndustrieId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Q_liste_electeur_unique_region_IndustrieCategorie: TStringField
      FieldName = 'Categorie'
      ReadOnly = True
      Size = 10
    end
    object Q_liste_electeur_unique_region_IndustrieSecteur: TStringField
      FieldName = 'Secteur'
      ReadOnly = True
      Size = 15
    end
    object Q_liste_electeur_unique_region_IndustrieNomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_electeur_unique_region_IndustrieNIF_1: TLargeintField
      FieldName = 'NIF_1'
      ReadOnly = True
    end
    object Q_liste_electeur_unique_region_Industrieidpiece: TIntegerField
      FieldName = 'idpiece'
      ReadOnly = True
    end
    object Q_liste_electeur_unique_region_IndustrieNompiece: TStringField
      FieldName = 'Nompiece'
      ReadOnly = True
      Size = 25
    end
    object Q_liste_electeur_unique_region_IndustrieNomEtPrenomElecteur_2: TStringField
      FieldName = 'NomEtPrenomElecteur_2'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object Q_liste_electeur_unique_region_IndustrieCategoriez: TMemoField
      FieldName = 'Categoriez'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_liste_electeur_unique_region_IndustrieSecteur_list: TMemoField
      FieldName = 'Secteur_list'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_liste_electeur_unique_region_IndustriePiece_fournies: TMemoField
      FieldName = 'Piece_fournies'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object T_import_cat2: TUniTable
    TableName = 'import_cat'
    Connection = UniConnection1
    Left = 531
    Top = 16
    object T_import_cat2id: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
    end
    object T_import_cat2Categorie: TStringField
      FieldName = 'Categorie'
      Size = 10
    end
    object T_import_cat2Secteur: TStringField
      FieldName = 'Secteur'
    end
    object T_import_cat2NomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object T_import_cat2Nom_sim: TStringField
      FieldName = 'Nom_sim'
    end
  end
  object T_cat: TUniTable
    TableName = 'categories'
    Connection = UniConnection1
    Left = 616
    Top = 16
  end
  object T_importation: TUniTable
    TableName = 'importations'
    Connection = UniConnection1
    Left = 699
    Top = 16
    object T_importationId: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Id'
    end
    object T_importationRaison_Social: TStringField
      FieldName = 'Raison_Social'
      Size = 255
    end
    object T_importationNomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object T_importationAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object T_importationTel: TIntegerField
      FieldName = 'Tel'
    end
    object T_importationEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object T_importationCategorie: TStringField
      FieldName = 'Categorie'
      Size = 10
    end
    object T_importationSecteur: TStringField
      FieldName = 'Secteur'
      Size = 10
    end
    object T_importationReferant: TStringField
      FieldName = 'Referant'
      Size = 255
    end
    object T_importationRegion: TStringField
      FieldName = 'Region'
      Size = 15
    end
    object T_importationNom_sim: TStringField
      FieldName = 'Nom_sim'
    end
    object T_importationselected: TStringField
      FieldName = 'selected'
      Size = 5
    end
  end
  object UniQuery1: TUniQuery
    Connection = UniConnection1
    Left = 720
    Top = 184
  end
  object Q_import_cat: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select distinct(Secteur), NomEtPrenomElecteur from import_cat')
    Left = 784
    Top = 96
    object Q_import_catSecteur: TStringField
      FieldName = 'Secteur'
    end
    object Q_import_catNomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
  end
  object frxReport1: TfrxReport
    Version = '6.6.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Par d'#233'faut'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44066.781223958300000000
    ReportOptions.LastChange = 44066.781223958300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 27
    Top = 640
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 185.196970000000000000
        Top = 147.401670000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1NomEtPrenomElecteur: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 185.196970000000000000
          DataField = 'RaisonSocial'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."RaisonSocial"]')
          ParentFont = False
        end
        object frxDBDataset1TypePieceId: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 185.196970000000000000
          DataField = 'TypePieceId'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."TypePieceId"]')
          ParentFont = False
        end
        object frxDBDataset1DateDelivrance: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 196.535560000000000000
          Width = 64.252010000000000000
          Height = 185.196970000000000000
          DataField = 'DateDelivrance'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."DateDelivrance"]')
          ParentFont = False
        end
        object frxDBDataset1DateExpiration: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 260.787570000000000000
          Width = 60.472480000000000000
          Height = 185.196970000000000000
          DataField = 'DateExpiration'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."DateExpiration"]')
          ParentFont = False
        end
        object frxDBDataset1NumeroCarte: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 321.260050000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'NumeroCarte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."NumeroCarte"]')
          ParentFont = False
        end
        object frxDBDataset1NIF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'NIF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."NIF"]')
          ParentFont = False
        end
        object frxDBDataset1RaisonSocial: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 75.590600000000000000
          Height = 185.196970000000000000
          DataField = 'NomEtPrenomElecteur'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."NomEtPrenomElecteur"]')
          ParentFont = False
        end
        object frxDBDataset1Secteur_list: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 434.630180000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'Secteur_list'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."Secteur_list"]')
          ParentFont = False
        end
        object frxDBDataset1Piece_fournies: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 490.795610000000000000
          Width = 83.149660000000000000
          Height = 185.196970000000000000
          DataField = 'Piece_fournies'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."Piece_fournies"]')
          ParentFont = False
        end
        object frxDBDataset1type: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 574.488560000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."type"]')
          ParentFont = False
        end
        object frxDBDataset1Representant1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 774.803650000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'Representant1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."Representant1"]')
          ParentFont = False
        end
        object frxDBDataset1Representant2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 888.189550000000000000
          Width = 52.913420000000000000
          Height = 185.196970000000000000
          DataField = 'Tel_rep1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."Tel_rep1"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 831.496600000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'Tel_rep1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."Tel_rep1"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 941.102970000000000000
          Width = 52.913420000000000000
          Height = 185.196970000000000000
          DataField = 'Tel_rep2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."Tel_rep2"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 733.228820000000000000
          Width = 41.574830000000000000
          Height = 185.196970000000000000
          DataField = 'Tel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."Tel"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 684.094930000000000000
          Width = 49.133890000000000000
          Height = 185.196970000000000000
          DataField = 'Adresse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."Adresse"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 631.181510000000000000
          Width = 52.913420000000000000
          Height = 185.196970000000000000
          DataField = 'Email'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."Email"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 994.016390000000000000
          Width = 52.913420000000000000
          Height = 185.196970000000000000
          DataField = 'Region'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."Region"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 69.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Raison social')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Type de piece')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 196.535560000000000000
          Width = 64.252010000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Date de dlivrance')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 260.787570000000000000
          Width = 60.472480000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Date d'#39'expiration')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 321.260050000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Num carte')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'NIF')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 75.590600000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Nom et prenom')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 434.630180000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Secteurs')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 490.795610000000000000
          Width = 83.149660000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Pieces fournies')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 574.488560000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Type de votant')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 774.803650000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Referant 1')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 888.189550000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Referant 2')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 831.496600000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Tel Referent 1')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 941.102970000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Tel Referent 2')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 631.181510000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Email')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 684.094930000000000000
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Adresse')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 733.228820000000000000
          Width = 41.574830000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Telephone')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 994.016390000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Region')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 355.275820000000000000
        Width = 1046.929810000000000000
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 975.016390000000000000
          Top = 3.000000000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 774.803650000000000000
          Top = 3.779530000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Total :[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object Q_liste_generale: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'Secteur_list'
        FieldType = ftWideString
        FieldLength = 255
      end
      item
        FieldName = 'Piece_fournies'
        FieldType = ftWideString
        FieldLength = 255
      end
      item
        FieldName = 'Categoriez'
        FieldType = ftWideString
        FieldLength = 255
      end>
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region='#39'LC'#39') GROUP by electeur.RaisonSocial ORDER' +
        ' BY `electeur`.`Representant1` ASC')
    Left = 288
    Top = 80
    object Q_liste_generaleIdElecteur: TIntegerField
      FieldName = 'IdElecteur'
    end
    object Q_liste_generaleNomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_liste_generaleTypePieceId: TStringField
      FieldName = 'TypePieceId'
    end
    object Q_liste_generaleDateDelivrance: TStringField
      FieldName = 'DateDelivrance'
      Size = 10
    end
    object Q_liste_generaleDateExpiration: TStringField
      FieldName = 'DateExpiration'
      Size = 10
    end
    object Q_liste_generaleNumeroCarte: TStringField
      FieldName = 'NumeroCarte'
      Size = 30
    end
    object Q_liste_generaleNIF: TLargeintField
      FieldName = 'NIF'
    end
    object Q_liste_generaleRaisonSocial: TStringField
      FieldName = 'RaisonSocial'
      Size = 255
    end
    object Q_liste_generaleNumRCCM: TStringField
      FieldName = 'NumRCCM'
    end
    object Q_liste_generaleNumCFE: TStringField
      FieldName = 'NumCFE'
      Size = 30
    end
    object Q_liste_generaleNumCCIT: TStringField
      FieldName = 'NumCCIT'
      Size = 30
    end
    object Q_liste_generaleAnneedbutactivite: TStringField
      FieldName = 'Anneedbutactivite'
      Size = 30
    end
    object Q_liste_generaleRepresentant1: TStringField
      FieldName = 'Representant1'
      Size = 255
    end
    object Q_liste_generaleRepresentant2: TStringField
      FieldName = 'Representant2'
      Size = 255
    end
    object Q_liste_generaletype: TStringField
      FieldName = 'type'
    end
    object Q_liste_generaleAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_liste_generaleTel: TStringField
      FieldName = 'Tel'
      Size = 50
    end
    object Q_liste_generaleTel_rep1: TStringField
      FieldName = 'Tel_rep1'
      Size = 50
    end
    object Q_liste_generaleTel_rep2: TStringField
      FieldName = 'Tel_rep2'
      Size = 50
    end
    object Q_liste_generaleNumQuittusFiscal: TStringField
      FieldName = 'NumQuittusFiscal'
      Size = 30
    end
    object Q_liste_generaledatexpirationCFE: TStringField
      FieldName = 'datexpirationCFE'
      Size = 10
    end
    object Q_liste_generaleEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object Q_liste_generaleRegion: TStringField
      FieldName = 'Region'
      Size = 30
    end
    object Q_liste_generaleId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Q_liste_generaleCategorie: TStringField
      FieldName = 'Categorie'
      ReadOnly = True
      Size = 10
    end
    object Q_liste_generaleSecteur: TStringField
      FieldName = 'Secteur'
      ReadOnly = True
      Size = 15
    end
    object Q_liste_generaleNomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_generaleNIF_1: TLargeintField
      FieldName = 'NIF_1'
      ReadOnly = True
    end
    object Q_liste_generaleidpiece: TIntegerField
      FieldName = 'idpiece'
      ReadOnly = True
    end
    object Q_liste_generaleNompiece: TStringField
      FieldName = 'Nompiece'
      ReadOnly = True
      Size = 25
    end
    object Q_liste_generaleNomEtPrenomElecteur_2: TStringField
      FieldName = 'NomEtPrenomElecteur_2'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object Q_liste_generaleCategoriez: TWideStringField
      FieldName = 'Categoriez'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_generaleSecteur_list: TWideStringField
      FieldName = 'Secteur_list'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_generalePiece_fournies: TWideStringField
      FieldName = 'Piece_fournies'
      ReadOnly = True
      Size = 255
    end
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frxDBDataset5'
    CloseDataSource = False
    DataSet = Q_liste_generale
    BCDToCurrency = False
    Left = 803
    Top = 216
  end
  object frxReport3: TfrxReport
    Version = '6.6.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44099.496010706000000000
    ReportOptions.LastChange = 44099.496010706000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 739
    Top = 240
    Datasets = <
      item
        DataSet = frxDBDataset5
        DataSetName = 'frxDBDataset5'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 185.196970000000000000
        Top = 147.401670000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset5
        DataSetName = 'frxDBDataset5'
        RowCount = 0
        object frxDBDataset1NomEtPrenomElecteur: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 48.590600000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'RaisonSocial'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset5."RaisonSocial"]')
          ParentFont = False
        end
        object frxDBDataset1TypePieceId: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 105.181200000000000000
          Width = 45.354360000000000000
          Height = 185.196970000000000000
          DataField = 'TypePieceId'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset5."TypePieceId"]')
          ParentFont = False
        end
        object frxDBDataset1DateDelivrance: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 150.535560000000000000
          Width = 64.252010000000000000
          Height = 185.196970000000000000
          DataField = 'DateDelivrance'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset5."DateDelivrance"]')
          ParentFont = False
        end
        object frxDBDataset1DateExpiration: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 214.787570000000000000
          Width = 60.472480000000000000
          Height = 185.196970000000000000
          DataField = 'DateExpiration'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset5."DateExpiration"]')
          ParentFont = False
        end
        object frxDBDataset1NumeroCarte: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 275.260050000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'NumeroCarte'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset5."NumeroCarte"]')
          ParentFont = False
        end
        object frxDBDataset1NIF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 331.953000000000000000
          Width = 49.133890000000000000
          Height = 185.196970000000000000
          DataField = 'NIF'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset5."NIF"]')
          ParentFont = False
        end
        object frxDBDataset1RaisonSocial: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 49.133890000000000000
          Height = 185.196970000000000000
          DataField = 'NomEtPrenomElecteur'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset5."NomEtPrenomElecteur"]')
          ParentFont = False
        end
        object frxDBDataset1Secteur_list: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 380.645950000000000000
          Width = 49.133890000000000000
          Height = 185.196970000000000000
          DataField = 'Secteur_list'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset5."Secteur_list"]')
          ParentFont = False
        end
        object frxDBDataset1Piece_fournies: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 501.811380000000000000
          Width = 83.149660000000000000
          Height = 185.196970000000000000
          DataField = 'Piece_fournies'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset5."Piece_fournies"]')
          ParentFont = False
        end
        object frxDBDataset1type: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 584.504330000000000000
          Width = 71.811070000000000000
          Height = 185.196970000000000000
          DataField = 'type'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset5."type"]')
          ParentFont = False
        end
        object frxDBDataset1Representant1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 818.717070000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'Representant1'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset5."Representant1"]')
          ParentFont = False
        end
        object frxDBDataset1Representant2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 932.102970000000000000
          Width = 52.913420000000000000
          Height = 185.196970000000000000
          DataField = 'Representant2'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset5."Representant2"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 875.410020000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'Tel_rep1'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset5."Tel_rep1"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 985.016390000000000000
          Width = 60.472480000000000000
          Height = 185.196970000000000000
          DataField = 'Tel_rep2'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset5."Tel_rep2"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 758.244590000000000000
          Width = 60.472480000000000000
          Height = 185.196970000000000000
          DataField = 'Tel'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset5."Tel"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 709.110700000000000000
          Width = 49.133890000000000000
          Height = 185.196970000000000000
          DataField = 'Adresse'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset5."Adresse"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 656.197280000000000000
          Width = 52.913420000000000000
          Height = 185.196970000000000000
          DataField = 'Email'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset5."Email"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 429.897960000000000000
          Width = 71.811070000000000000
          Height = 185.196970000000000000
          DataField = 'Categoriez'
          DataSet = frxDBDataset5
          DataSetName = 'frxDBDataset5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset5."Categoriez"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 69.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 48.590600000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Raison Social')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 105.181200000000000000
          Width = 45.354360000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Type de piece')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 150.535560000000000000
          Width = 64.252010000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Date de dlivrance')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 214.787570000000000000
          Width = 60.472480000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Date d'#39'expiration')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 275.260050000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Num carte')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 331.953000000000000000
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'NIF')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Nom et prenom')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 380.645950000000000000
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Secteurs')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 501.811380000000000000
          Width = 83.149660000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Pieces fournies')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 584.504330000000000000
          Width = 71.811070000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Type de votant')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 818.717070000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Referant 1')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 932.102970000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Referant 2')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 875.410020000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Tel Referent 1')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 985.016390000000000000
          Width = 60.472480000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Tel Referent 2')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 656.197280000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Email')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 709.110700000000000000
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Adresse')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 758.244590000000000000
          Width = 60.472480000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Telephone')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 429.897960000000000000
          Width = 71.811070000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Categories')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 355.275820000000000000
        Width = 1046.929810000000000000
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 975.016390000000000000
          Top = 3.000000000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 774.803650000000000000
          Top = 3.779530000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Total :[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = Q_liste_generale_Region
    BCDToCurrency = False
    Left = 659
    Top = 304
  end
  object Q_liste_generale_Region: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region <> '#39'LC'#39') GROUP by electeur.RaisonSocial OR' +
        'DER BY `electeur`.`Region` ASC')
    Left = 323
    Top = 192
  end
  object Q_electeur_unique_industrie: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region='#39'LC'#39') GROUP by electeur.RaisonSocial HAVIN' +
        'G Secteur_list ='#39'Industrie'#39' order by electeur.Representant1')
    Left = 88
    Top = 480
    object Q_electeur_unique_industrieIdElecteur: TIntegerField
      FieldName = 'IdElecteur'
    end
    object Q_electeur_unique_industrieNomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_electeur_unique_industrieTypePieceId: TStringField
      FieldName = 'TypePieceId'
    end
    object Q_electeur_unique_industrieDateDelivrance: TStringField
      FieldName = 'DateDelivrance'
      Size = 10
    end
    object Q_electeur_unique_industrieDateExpiration: TStringField
      FieldName = 'DateExpiration'
      Size = 10
    end
    object Q_electeur_unique_industrieNumeroCarte: TStringField
      FieldName = 'NumeroCarte'
      Size = 30
    end
    object Q_electeur_unique_industrieNIF: TLargeintField
      FieldName = 'NIF'
    end
    object Q_electeur_unique_industrieRaisonSocial: TStringField
      FieldName = 'RaisonSocial'
      Size = 255
    end
    object Q_electeur_unique_industrieNumRCCM: TStringField
      FieldName = 'NumRCCM'
    end
    object Q_electeur_unique_industrieNumCFE: TStringField
      FieldName = 'NumCFE'
      Size = 30
    end
    object Q_electeur_unique_industrieNumCCIT: TStringField
      FieldName = 'NumCCIT'
      Size = 30
    end
    object Q_electeur_unique_industrieAnneedbutactivite: TStringField
      FieldName = 'Anneedbutactivite'
      Size = 30
    end
    object Q_electeur_unique_industrieRepresentant1: TStringField
      FieldName = 'Representant1'
      Size = 255
    end
    object Q_electeur_unique_industrieRepresentant2: TStringField
      FieldName = 'Representant2'
      Size = 255
    end
    object Q_electeur_unique_industrietype: TStringField
      FieldName = 'type'
    end
    object Q_electeur_unique_industrieAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_electeur_unique_industrieTel: TStringField
      FieldName = 'Tel'
      Size = 50
    end
    object Q_electeur_unique_industrieTel_rep1: TStringField
      FieldName = 'Tel_rep1'
      Size = 50
    end
    object Q_electeur_unique_industrieTel_rep2: TStringField
      FieldName = 'Tel_rep2'
      Size = 50
    end
    object Q_electeur_unique_industrieNumQuittusFiscal: TStringField
      FieldName = 'NumQuittusFiscal'
      Size = 30
    end
    object Q_electeur_unique_industriedatexpirationCFE: TStringField
      FieldName = 'datexpirationCFE'
      Size = 10
    end
    object Q_electeur_unique_industrieEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object Q_electeur_unique_industrieRegion: TStringField
      FieldName = 'Region'
      Size = 30
    end
    object Q_electeur_unique_industrieId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Q_electeur_unique_industrieCategorie: TStringField
      FieldName = 'Categorie'
      ReadOnly = True
      Size = 10
    end
    object Q_electeur_unique_industrieSecteur: TStringField
      FieldName = 'Secteur'
      ReadOnly = True
      Size = 15
    end
    object Q_electeur_unique_industrieNomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_electeur_unique_industrieNIF_1: TLargeintField
      FieldName = 'NIF_1'
      ReadOnly = True
    end
    object Q_electeur_unique_industrieidpiece: TIntegerField
      FieldName = 'idpiece'
      ReadOnly = True
    end
    object Q_electeur_unique_industrieNompiece: TStringField
      FieldName = 'Nompiece'
      ReadOnly = True
      Size = 25
    end
    object Q_electeur_unique_industrieNomEtPrenomElecteur_2: TStringField
      FieldName = 'NomEtPrenomElecteur_2'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object Q_electeur_unique_industrieCategoriez: TMemoField
      FieldName = 'Categoriez'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_electeur_unique_industrieSecteur_list: TMemoField
      FieldName = 'Secteur_list'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_electeur_unique_industriePiece_fournies: TMemoField
      FieldName = 'Piece_fournies'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object Q_electeur_uniques_commerce: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region='#39'LC'#39') GROUP by electeur.RaisonSocial HAVIN' +
        'G Secteur_list ='#39'Commerce'#39' order by electeur.Representant1')
    Left = 80
    Top = 408
    object Q_electeur_uniques_commerceIdElecteur: TIntegerField
      FieldName = 'IdElecteur'
    end
    object Q_electeur_uniques_commerceNomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_electeur_uniques_commerceTypePieceId: TStringField
      FieldName = 'TypePieceId'
    end
    object Q_electeur_uniques_commerceDateDelivrance: TStringField
      FieldName = 'DateDelivrance'
      Size = 10
    end
    object Q_electeur_uniques_commerceDateExpiration: TStringField
      FieldName = 'DateExpiration'
      Size = 10
    end
    object Q_electeur_uniques_commerceNumeroCarte: TStringField
      FieldName = 'NumeroCarte'
      Size = 30
    end
    object Q_electeur_uniques_commerceNIF: TLargeintField
      FieldName = 'NIF'
    end
    object Q_electeur_uniques_commerceRaisonSocial: TStringField
      FieldName = 'RaisonSocial'
      Size = 255
    end
    object Q_electeur_uniques_commerceNumRCCM: TStringField
      FieldName = 'NumRCCM'
    end
    object Q_electeur_uniques_commerceNumCFE: TStringField
      FieldName = 'NumCFE'
      Size = 30
    end
    object Q_electeur_uniques_commerceNumCCIT: TStringField
      FieldName = 'NumCCIT'
      Size = 30
    end
    object Q_electeur_uniques_commerceAnneedbutactivite: TStringField
      FieldName = 'Anneedbutactivite'
      Size = 30
    end
    object Q_electeur_uniques_commerceRepresentant1: TStringField
      FieldName = 'Representant1'
      Size = 255
    end
    object Q_electeur_uniques_commerceRepresentant2: TStringField
      FieldName = 'Representant2'
      Size = 255
    end
    object Q_electeur_uniques_commercetype: TStringField
      FieldName = 'type'
    end
    object Q_electeur_uniques_commerceAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_electeur_uniques_commerceTel: TStringField
      FieldName = 'Tel'
      Size = 50
    end
    object Q_electeur_uniques_commerceTel_rep1: TStringField
      FieldName = 'Tel_rep1'
      Size = 50
    end
    object Q_electeur_uniques_commerceTel_rep2: TStringField
      FieldName = 'Tel_rep2'
      Size = 50
    end
    object Q_electeur_uniques_commerceNumQuittusFiscal: TStringField
      FieldName = 'NumQuittusFiscal'
      Size = 30
    end
    object Q_electeur_uniques_commercedatexpirationCFE: TStringField
      FieldName = 'datexpirationCFE'
      Size = 10
    end
    object Q_electeur_uniques_commerceEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object Q_electeur_uniques_commerceRegion: TStringField
      FieldName = 'Region'
      Size = 30
    end
    object Q_electeur_uniques_commerceId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Q_electeur_uniques_commerceCategorie: TStringField
      FieldName = 'Categorie'
      ReadOnly = True
      Size = 10
    end
    object Q_electeur_uniques_commerceSecteur: TStringField
      FieldName = 'Secteur'
      ReadOnly = True
      Size = 15
    end
    object Q_electeur_uniques_commerceNomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_electeur_uniques_commerceNIF_1: TLargeintField
      FieldName = 'NIF_1'
      ReadOnly = True
    end
    object Q_electeur_uniques_commerceidpiece: TIntegerField
      FieldName = 'idpiece'
      ReadOnly = True
    end
    object Q_electeur_uniques_commerceNompiece: TStringField
      FieldName = 'Nompiece'
      ReadOnly = True
      Size = 25
    end
    object Q_electeur_uniques_commerceNomEtPrenomElecteur_2: TStringField
      FieldName = 'NomEtPrenomElecteur_2'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object Q_electeur_uniques_commerceCategoriez: TMemoField
      FieldName = 'Categoriez'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_electeur_uniques_commerceSecteur_list: TMemoField
      FieldName = 'Secteur_list'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_electeur_uniques_commercePiece_fournies: TMemoField
      FieldName = 'Piece_fournies'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object frxReport_electeurs_unique: TfrxReport
    Version = '6.6.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44111.750233564800000000
    ReportOptions.LastChange = 44111.750233564800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 848
    Top = 248
    Datasets = <
      item
        DataSet = frxDBDataset_electeur_unique
        DataSetName = 'frxDBDataset_electeur_unique'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 185.196970000000000000
        Top = 147.401670000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset_electeur_unique
        DataSetName = 'frxDBDataset_electeur_unique'
        RowCount = 0
        object frxDBDataset1NomEtPrenomElecteur: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 185.196970000000000000
          DataField = 'RaisonSocial'
          DataSet = frxDBDataset_electeur_unique
          DataSetName = 'frxDBDataset_electeur_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique."RaisonSocial"]')
          ParentFont = False
        end
        object frxDBDataset1TypePieceId: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 185.196970000000000000
          DataField = 'TypePieceId'
          DataSet = frxDBDataset_electeur_unique
          DataSetName = 'frxDBDataset_electeur_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique."TypePieceId"]')
          ParentFont = False
        end
        object frxDBDataset1DateDelivrance: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 196.535560000000000000
          Width = 64.252010000000000000
          Height = 185.196970000000000000
          DataField = 'DateDelivrance'
          DataSet = frxDBDataset_electeur_unique
          DataSetName = 'frxDBDataset_electeur_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique."DateDelivrance"]')
          ParentFont = False
        end
        object frxDBDataset1DateExpiration: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 260.787570000000000000
          Width = 60.472480000000000000
          Height = 185.196970000000000000
          DataField = 'DateExpiration'
          DataSet = frxDBDataset_electeur_unique
          DataSetName = 'frxDBDataset_electeur_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique."DateExpiration"]')
          ParentFont = False
        end
        object frxDBDataset1NumeroCarte: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 321.260050000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'NumeroCarte'
          DataSet = frxDBDataset_electeur_unique
          DataSetName = 'frxDBDataset_electeur_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique."NumeroCarte"]')
          ParentFont = False
        end
        object frxDBDataset1NIF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'NIF'
          DataSet = frxDBDataset_electeur_unique
          DataSetName = 'frxDBDataset_electeur_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique."NIF"]')
          ParentFont = False
        end
        object frxDBDataset1RaisonSocial: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 75.590600000000000000
          Height = 185.196970000000000000
          DataField = 'NomEtPrenomElecteur'
          DataSet = frxDBDataset_electeur_unique
          DataSetName = 'frxDBDataset_electeur_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique."NomEtPrenomElecteur"]')
          ParentFont = False
        end
        object frxDBDataset1Categoriez: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 491.338900000000000000
          Width = 60.472480000000000000
          Height = 185.196970000000000000
          DataField = 'Categoriez'
          DataSet = frxDBDataset_electeur_unique
          DataSetName = 'frxDBDataset_electeur_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique."Categoriez"]')
          ParentFont = False
        end
        object frxDBDataset1Secteur_list: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 434.645950000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'Secteur_list'
          DataSet = frxDBDataset_electeur_unique
          DataSetName = 'frxDBDataset_electeur_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique."Secteur_list"]')
          ParentFont = False
        end
        object frxDBDataset1Piece_fournies: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 551.811380000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'Piece_fournies'
          DataSet = frxDBDataset_electeur_unique
          DataSetName = 'frxDBDataset_electeur_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique."Piece_fournies"]')
          ParentFont = False
        end
        object frxDBDataset1type: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 608.504330000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'type'
          DataSet = frxDBDataset_electeur_unique
          DataSetName = 'frxDBDataset_electeur_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique."type"]')
          ParentFont = False
        end
        object frxDBDataset1Representant1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 827.717070000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'Representant1'
          DataSet = frxDBDataset_electeur_unique
          DataSetName = 'frxDBDataset_electeur_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique."Representant1"]')
          ParentFont = False
        end
        object frxDBDataset1Representant2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 941.102970000000000000
          Width = 52.913420000000000000
          Height = 185.196970000000000000
          DataField = 'Representant2'
          DataSet = frxDBDataset_electeur_unique
          DataSetName = 'frxDBDataset_electeur_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique."Representant2"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 884.410020000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'Tel_rep1'
          DataSet = frxDBDataset_electeur_unique
          DataSetName = 'frxDBDataset_electeur_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique."Tel_rep1"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 994.016390000000000000
          Width = 52.913420000000000000
          Height = 185.196970000000000000
          DataField = 'Tel_rep2'
          DataSet = frxDBDataset_electeur_unique
          DataSetName = 'frxDBDataset_electeur_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique."Tel_rep2"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 767.244590000000000000
          Width = 60.472480000000000000
          Height = 185.196970000000000000
          DataField = 'Tel'
          DataSet = frxDBDataset_electeur_unique
          DataSetName = 'frxDBDataset_electeur_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique."Tel"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 718.110700000000000000
          Width = 49.133890000000000000
          Height = 185.196970000000000000
          DataField = 'Adresse'
          DataSet = frxDBDataset_electeur_unique
          DataSetName = 'frxDBDataset_electeur_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique."Adresse"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 665.197280000000000000
          Width = 52.913420000000000000
          Height = 185.196970000000000000
          DataField = 'Email'
          DataSet = frxDBDataset_electeur_unique
          DataSetName = 'frxDBDataset_electeur_unique'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique."Email"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 69.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 60.472480000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Raison Sociale')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 60.472480000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Type de piece')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 196.535560000000000000
          Width = 64.252010000000000000
          Height = 60.472480000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Date de dlivrance')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 260.787570000000000000
          Width = 60.472480000000000000
          Height = 60.472480000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Date d'#39'expiration')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 321.260050000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Num carte')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'NIF')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 75.590600000000000000
          Height = 60.472480000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Nom et Prenom')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 491.338900000000000000
          Width = 60.472480000000000000
          Height = 60.472480000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Categorie')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 434.645950000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Secteur')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 551.811380000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Pieces fournies')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 608.504330000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Type de votant')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 827.717070000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Referant 1')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 941.102970000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Referant 2')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 884.410020000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Tel Referent 1')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 994.016390000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Tel Referent 2')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 665.197280000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Email')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 718.110700000000000000
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Adresse')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 767.244590000000000000
          Width = 60.472480000000000000
          Height = 60.472480000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Telephone')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 355.275820000000000000
        Width = 1046.929810000000000000
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 975.016390000000000000
          Top = 3.000000000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 774.803650000000000000
          Top = 3.779530000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Total :[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = Q_liste_electeur_unique_region_Commerce
    BCDToCurrency = False
    Left = 552
    Top = 296
  end
  object Q_electeur_commerce_industrie: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'SELECT *, GROUP_CONCAT(DISTINCT categories.Secteur SEPARATOR '#39','#39 +
        ') as list_secteur, GROUP_CONCAT(DISTINCT categories.categorie SE' +
        'PARATOR '#39','#39') as list_categories, GROUP_CONCAT(DISTINCT pieces.No' +
        'mpiece SEPARATOR '#39','#39') as pieces_fournies from electeur,categorie' +
        's,pieces WHERE categories.NomEtPrenomElecteur=electeur.NomEtPren' +
        'omElecteur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomEl' +
        'ecteur and (electeur.Region='#39'LC'#39') GROUP by electeur.RaisonSocial' +
        ' HAVING (list_secteur like'#39'%Industrie%'#39') and (list_secteur like ' +
        #39'%Commerce%'#39') and (list_secteur not like '#39'%Service%'#39') order by e' +
        'lecteur.Representant1')
    Left = 131
    Top = 664
    object Q_electeur_commerce_industrieIdElecteur: TIntegerField
      FieldName = 'IdElecteur'
    end
    object Q_electeur_commerce_industrieNomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_electeur_commerce_industrieTypePieceId: TStringField
      FieldName = 'TypePieceId'
    end
    object Q_electeur_commerce_industrieDateDelivrance: TStringField
      FieldName = 'DateDelivrance'
      Size = 10
    end
    object Q_electeur_commerce_industrieDateExpiration: TStringField
      FieldName = 'DateExpiration'
      Size = 10
    end
    object Q_electeur_commerce_industrieNumeroCarte: TStringField
      FieldName = 'NumeroCarte'
      Size = 30
    end
    object Q_electeur_commerce_industrieNIF: TLargeintField
      FieldName = 'NIF'
    end
    object Q_electeur_commerce_industrieRaisonSocial: TStringField
      FieldName = 'RaisonSocial'
      Size = 255
    end
    object Q_electeur_commerce_industrieNumRCCM: TStringField
      FieldName = 'NumRCCM'
    end
    object Q_electeur_commerce_industrieNumCFE: TStringField
      FieldName = 'NumCFE'
      Size = 30
    end
    object Q_electeur_commerce_industrieNumCCIT: TStringField
      FieldName = 'NumCCIT'
      Size = 30
    end
    object Q_electeur_commerce_industrieAnneedbutactivite: TStringField
      FieldName = 'Anneedbutactivite'
      Size = 30
    end
    object Q_electeur_commerce_industrieRepresentant1: TStringField
      FieldName = 'Representant1'
      Size = 255
    end
    object Q_electeur_commerce_industrieRepresentant2: TStringField
      FieldName = 'Representant2'
      Size = 255
    end
    object Q_electeur_commerce_industrietype: TStringField
      FieldName = 'type'
    end
    object Q_electeur_commerce_industrieAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_electeur_commerce_industrieTel: TStringField
      FieldName = 'Tel'
      Size = 50
    end
    object Q_electeur_commerce_industrieTel_rep1: TStringField
      FieldName = 'Tel_rep1'
      Size = 50
    end
    object Q_electeur_commerce_industrieTel_rep2: TStringField
      FieldName = 'Tel_rep2'
      Size = 50
    end
    object Q_electeur_commerce_industrieNumQuittusFiscal: TStringField
      FieldName = 'NumQuittusFiscal'
      Size = 30
    end
    object Q_electeur_commerce_industriedatexpirationCFE: TStringField
      FieldName = 'datexpirationCFE'
      Size = 10
    end
    object Q_electeur_commerce_industrieEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object Q_electeur_commerce_industrieRegion: TStringField
      FieldName = 'Region'
      Size = 30
    end
    object Q_electeur_commerce_industrieId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Q_electeur_commerce_industrieCategorie: TStringField
      FieldName = 'Categorie'
      ReadOnly = True
      Size = 10
    end
    object Q_electeur_commerce_industrieSecteur: TStringField
      FieldName = 'Secteur'
      ReadOnly = True
      Size = 15
    end
    object Q_electeur_commerce_industrieNomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_electeur_commerce_industrieNIF_1: TLargeintField
      FieldName = 'NIF_1'
      ReadOnly = True
    end
    object Q_electeur_commerce_industrieidpiece: TIntegerField
      FieldName = 'idpiece'
      ReadOnly = True
    end
    object Q_electeur_commerce_industrieNompiece: TStringField
      FieldName = 'Nompiece'
      ReadOnly = True
      Size = 25
    end
    object Q_electeur_commerce_industrieNomEtPrenomElecteur_2: TStringField
      FieldName = 'NomEtPrenomElecteur_2'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object Q_electeur_commerce_industrielist_secteur: TMemoField
      FieldName = 'list_secteur'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_electeur_commerce_industrielist_categories: TMemoField
      FieldName = 'list_categories'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_electeur_commerce_industriepieces_fournies: TMemoField
      FieldName = 'pieces_fournies'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object Q_electeur_unique_service: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region='#39'LC'#39') GROUP by electeur.RaisonSocial HAVIN' +
        'G Secteur_list ='#39'Service'#39' order by electeur.Representant1')
    Left = 176
    Top = 352
    object Q_electeur_unique_serviceIdElecteur: TIntegerField
      FieldName = 'IdElecteur'
    end
    object Q_electeur_unique_serviceNomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_electeur_unique_serviceTypePieceId: TStringField
      FieldName = 'TypePieceId'
    end
    object Q_electeur_unique_serviceDateDelivrance: TStringField
      FieldName = 'DateDelivrance'
      Size = 10
    end
    object Q_electeur_unique_serviceDateExpiration: TStringField
      FieldName = 'DateExpiration'
      Size = 10
    end
    object Q_electeur_unique_serviceNumeroCarte: TStringField
      FieldName = 'NumeroCarte'
      Size = 30
    end
    object Q_electeur_unique_serviceNIF: TLargeintField
      FieldName = 'NIF'
    end
    object Q_electeur_unique_serviceRaisonSocial: TStringField
      FieldName = 'RaisonSocial'
      Size = 255
    end
    object Q_electeur_unique_serviceNumRCCM: TStringField
      FieldName = 'NumRCCM'
    end
    object Q_electeur_unique_serviceNumCFE: TStringField
      FieldName = 'NumCFE'
      Size = 30
    end
    object Q_electeur_unique_serviceNumCCIT: TStringField
      FieldName = 'NumCCIT'
      Size = 30
    end
    object Q_electeur_unique_serviceAnneedbutactivite: TStringField
      FieldName = 'Anneedbutactivite'
      Size = 30
    end
    object Q_electeur_unique_serviceRepresentant1: TStringField
      FieldName = 'Representant1'
      Size = 255
    end
    object Q_electeur_unique_serviceRepresentant2: TStringField
      FieldName = 'Representant2'
      Size = 255
    end
    object Q_electeur_unique_servicetype: TStringField
      FieldName = 'type'
    end
    object Q_electeur_unique_serviceAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_electeur_unique_serviceTel: TStringField
      FieldName = 'Tel'
      Size = 50
    end
    object Q_electeur_unique_serviceTel_rep1: TStringField
      FieldName = 'Tel_rep1'
      Size = 50
    end
    object Q_electeur_unique_serviceTel_rep2: TStringField
      FieldName = 'Tel_rep2'
      Size = 50
    end
    object Q_electeur_unique_serviceNumQuittusFiscal: TStringField
      FieldName = 'NumQuittusFiscal'
      Size = 30
    end
    object Q_electeur_unique_servicedatexpirationCFE: TStringField
      FieldName = 'datexpirationCFE'
      Size = 10
    end
    object Q_electeur_unique_serviceEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object Q_electeur_unique_serviceRegion: TStringField
      FieldName = 'Region'
      Size = 30
    end
    object Q_electeur_unique_serviceId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Q_electeur_unique_serviceCategorie: TStringField
      FieldName = 'Categorie'
      ReadOnly = True
      Size = 10
    end
    object Q_electeur_unique_serviceSecteur: TStringField
      FieldName = 'Secteur'
      ReadOnly = True
      Size = 15
    end
    object Q_electeur_unique_serviceNomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_electeur_unique_serviceNIF_1: TLargeintField
      FieldName = 'NIF_1'
      ReadOnly = True
    end
    object Q_electeur_unique_serviceidpiece: TIntegerField
      FieldName = 'idpiece'
      ReadOnly = True
    end
    object Q_electeur_unique_serviceNompiece: TStringField
      FieldName = 'Nompiece'
      ReadOnly = True
      Size = 25
    end
    object Q_electeur_unique_serviceNomEtPrenomElecteur_2: TStringField
      FieldName = 'NomEtPrenomElecteur_2'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object Q_electeur_unique_serviceCategoriez: TMemoField
      FieldName = 'Categoriez'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_electeur_unique_serviceSecteur_list: TMemoField
      FieldName = 'Secteur_list'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_electeur_unique_servicePiece_fournies: TMemoField
      FieldName = 'Piece_fournies'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object frxDBDataset_electeur_unique: TfrxDBDataset
    UserName = 'frxDBDataset_electeur_unique'
    CloseDataSource = False
    DataSet = Q_electeur_uniques_commerce
    BCDToCurrency = False
    Left = 357
    Top = 352
  end
  object Q_electeur_Commerce_service: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'SELECT *, GROUP_CONCAT(DISTINCT categories.Secteur SEPARATOR '#39','#39 +
        ') as list_secteur, GROUP_CONCAT(DISTINCT categories.categorie SE' +
        'PARATOR '#39','#39') as list_categories, GROUP_CONCAT(DISTINCT pieces_ma' +
        'nquante.Libelle_piece SEPARATOR '#39','#39') as pieces_manquantes, GROUP' +
        '_CONCAT(DISTINCT pieces.Nompiece SEPARATOR '#39','#39') as pieces_fourni' +
        'es from electeur,categories,pieces_manquante,pieces where electe' +
        'ur.NomEtPrenomElecteur=pieces_manquante.NomEtPrenomElecteur and ' +
        'pieces_manquante.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur ' +
        'and categories.NomEtPrenomElecteur=electeur.NomEtPrenomElecteur ' +
        'group by electeur.RaisonSocial ')
    Left = 360
    Top = 424
    object Q_electeur_Commerce_serviceIdElecteur: TIntegerField
      FieldName = 'IdElecteur'
    end
    object Q_electeur_Commerce_serviceNomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_electeur_Commerce_serviceTypePieceId: TStringField
      FieldName = 'TypePieceId'
    end
    object Q_electeur_Commerce_serviceDateDelivrance: TStringField
      FieldName = 'DateDelivrance'
      Size = 10
    end
    object Q_electeur_Commerce_serviceDateExpiration: TStringField
      FieldName = 'DateExpiration'
      Size = 10
    end
    object Q_electeur_Commerce_serviceNumeroCarte: TStringField
      FieldName = 'NumeroCarte'
      Size = 30
    end
    object Q_electeur_Commerce_serviceNIF: TLargeintField
      FieldName = 'NIF'
    end
    object Q_electeur_Commerce_serviceRaisonSocial: TStringField
      FieldName = 'RaisonSocial'
      Size = 255
    end
    object Q_electeur_Commerce_serviceNumRCCM: TStringField
      FieldName = 'NumRCCM'
    end
    object Q_electeur_Commerce_serviceNumCFE: TStringField
      FieldName = 'NumCFE'
      Size = 30
    end
    object Q_electeur_Commerce_serviceNumCCIT: TStringField
      FieldName = 'NumCCIT'
      Size = 30
    end
    object Q_electeur_Commerce_serviceAnneedbutactivite: TStringField
      FieldName = 'Anneedbutactivite'
      Size = 30
    end
    object Q_electeur_Commerce_serviceRepresentant1: TStringField
      FieldName = 'Representant1'
      Size = 255
    end
    object Q_electeur_Commerce_serviceRepresentant2: TStringField
      FieldName = 'Representant2'
      Size = 255
    end
    object Q_electeur_Commerce_servicetype: TStringField
      FieldName = 'type'
    end
    object Q_electeur_Commerce_serviceAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_electeur_Commerce_serviceTel: TStringField
      FieldName = 'Tel'
      Size = 50
    end
    object Q_electeur_Commerce_serviceTel_rep1: TStringField
      FieldName = 'Tel_rep1'
      Size = 50
    end
    object Q_electeur_Commerce_serviceTel_rep2: TStringField
      FieldName = 'Tel_rep2'
      Size = 50
    end
    object Q_electeur_Commerce_serviceNumQuittusFiscal: TStringField
      FieldName = 'NumQuittusFiscal'
      Size = 30
    end
    object Q_electeur_Commerce_servicedatexpirationCFE: TStringField
      FieldName = 'datexpirationCFE'
      Size = 10
    end
    object Q_electeur_Commerce_serviceEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object Q_electeur_Commerce_serviceRegion: TStringField
      FieldName = 'Region'
      Size = 30
    end
    object Q_electeur_Commerce_serviceId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Q_electeur_Commerce_serviceCategorie: TStringField
      FieldName = 'Categorie'
      ReadOnly = True
      Size = 10
    end
    object Q_electeur_Commerce_serviceSecteur: TStringField
      FieldName = 'Secteur'
      ReadOnly = True
      Size = 15
    end
    object Q_electeur_Commerce_serviceNomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_electeur_Commerce_serviceNIF_1: TLargeintField
      FieldName = 'NIF_1'
      ReadOnly = True
    end
    object Q_electeur_Commerce_serviceidpiece: TIntegerField
      FieldName = 'idpiece'
      ReadOnly = True
    end
    object Q_electeur_Commerce_serviceNompiece: TStringField
      FieldName = 'Nompiece'
      ReadOnly = True
      Size = 25
    end
    object Q_electeur_Commerce_serviceNomEtPrenomElecteur_2: TStringField
      FieldName = 'NomEtPrenomElecteur_2'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object Q_electeur_Commerce_servicelist_secteur: TMemoField
      FieldName = 'list_secteur'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_electeur_Commerce_servicelist_categories: TMemoField
      FieldName = 'list_categories'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_electeur_Commerce_servicepieces_fournies: TMemoField
      FieldName = 'pieces_fournies'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object Q_electeur_Service_industrie: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'SELECT *, GROUP_CONCAT(DISTINCT categories.Secteur SEPARATOR '#39','#39 +
        ') as list_secteur, GROUP_CONCAT(DISTINCT categories.categorie SE' +
        'PARATOR '#39','#39') as list_categories, GROUP_CONCAT(DISTINCT pieces.No' +
        'mpiece SEPARATOR '#39','#39') as pieces_fournies from electeur,categorie' +
        's,pieces WHERE categories.NomEtPrenomElecteur=electeur.NomEtPren' +
        'omElecteur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomEl' +
        'ecteur and (electeur.Region='#39'LC'#39') GROUP by electeur.RaisonSocial' +
        ' HAVING (list_secteur like'#39'%Industrie%'#39') and (list_secteur not l' +
        'ike '#39'%Commerce%'#39') and (list_secteur like '#39'%Service%'#39') order by e' +
        'lecteur.Representant1')
    Left = 469
    Top = 256
    object Q_electeur_Service_industrieIdElecteur: TIntegerField
      FieldName = 'IdElecteur'
    end
    object Q_electeur_Service_industrieNomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_electeur_Service_industrieTypePieceId: TStringField
      FieldName = 'TypePieceId'
    end
    object Q_electeur_Service_industrieDateDelivrance: TStringField
      FieldName = 'DateDelivrance'
      Size = 10
    end
    object Q_electeur_Service_industrieDateExpiration: TStringField
      FieldName = 'DateExpiration'
      Size = 10
    end
    object Q_electeur_Service_industrieNumeroCarte: TStringField
      FieldName = 'NumeroCarte'
      Size = 30
    end
    object Q_electeur_Service_industrieNIF: TLargeintField
      FieldName = 'NIF'
    end
    object Q_electeur_Service_industrieRaisonSocial: TStringField
      FieldName = 'RaisonSocial'
      Size = 255
    end
    object Q_electeur_Service_industrieNumRCCM: TStringField
      FieldName = 'NumRCCM'
    end
    object Q_electeur_Service_industrieNumCFE: TStringField
      FieldName = 'NumCFE'
      Size = 30
    end
    object Q_electeur_Service_industrieNumCCIT: TStringField
      FieldName = 'NumCCIT'
      Size = 30
    end
    object Q_electeur_Service_industrieAnneedbutactivite: TStringField
      FieldName = 'Anneedbutactivite'
      Size = 30
    end
    object Q_electeur_Service_industrieRepresentant1: TStringField
      FieldName = 'Representant1'
      Size = 255
    end
    object Q_electeur_Service_industrieRepresentant2: TStringField
      FieldName = 'Representant2'
      Size = 255
    end
    object Q_electeur_Service_industrietype: TStringField
      FieldName = 'type'
    end
    object Q_electeur_Service_industrieAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_electeur_Service_industrieTel: TStringField
      FieldName = 'Tel'
      Size = 50
    end
    object Q_electeur_Service_industrieTel_rep1: TStringField
      FieldName = 'Tel_rep1'
      Size = 50
    end
    object Q_electeur_Service_industrieTel_rep2: TStringField
      FieldName = 'Tel_rep2'
      Size = 50
    end
    object Q_electeur_Service_industrieNumQuittusFiscal: TStringField
      FieldName = 'NumQuittusFiscal'
      Size = 30
    end
    object Q_electeur_Service_industriedatexpirationCFE: TStringField
      FieldName = 'datexpirationCFE'
      Size = 10
    end
    object Q_electeur_Service_industrieEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object Q_electeur_Service_industrieRegion: TStringField
      FieldName = 'Region'
      Size = 30
    end
    object Q_electeur_Service_industrieId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Q_electeur_Service_industrieCategorie: TStringField
      FieldName = 'Categorie'
      ReadOnly = True
      Size = 10
    end
    object Q_electeur_Service_industrieSecteur: TStringField
      FieldName = 'Secteur'
      ReadOnly = True
      Size = 15
    end
    object Q_electeur_Service_industrieNomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_electeur_Service_industrieNIF_1: TLargeintField
      FieldName = 'NIF_1'
      ReadOnly = True
    end
    object Q_electeur_Service_industrieidpiece: TIntegerField
      FieldName = 'idpiece'
      ReadOnly = True
    end
    object Q_electeur_Service_industrieNompiece: TStringField
      FieldName = 'Nompiece'
      ReadOnly = True
      Size = 25
    end
    object Q_electeur_Service_industrieNomEtPrenomElecteur_2: TStringField
      FieldName = 'NomEtPrenomElecteur_2'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object Q_electeur_Service_industrielist_secteur: TMemoField
      FieldName = 'list_secteur'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_electeur_Service_industrielist_categories: TMemoField
      FieldName = 'list_categories'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_electeur_Service_industriepieces_fournies: TMemoField
      FieldName = 'pieces_fournies'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object Q_electeur_C_I_S: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'SELECT *, GROUP_CONCAT(DISTINCT categories.Secteur SEPARATOR '#39','#39 +
        ') as list_secteur, GROUP_CONCAT(DISTINCT categories.categorie SE' +
        'PARATOR '#39','#39') as list_categories, GROUP_CONCAT(DISTINCT pieces.No' +
        'mpiece SEPARATOR '#39','#39') as pieces_fournies from electeur,categorie' +
        's,pieces WHERE categories.NomEtPrenomElecteur=electeur.NomEtPren' +
        'omElecteur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomEl' +
        'ecteur and (electeur.Region='#39'LC'#39') GROUP by electeur.RaisonSocial' +
        ' HAVING (list_secteur like'#39'%Industrie%'#39') and (list_secteur like ' +
        #39'%Commerce%'#39') and (list_secteur like '#39'%Service%'#39') order by elect' +
        'eur.Representant1')
    Left = 485
    Top = 448
    object Q_electeur_C_I_SIdElecteur: TIntegerField
      FieldName = 'IdElecteur'
    end
    object Q_electeur_C_I_SNomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_electeur_C_I_STypePieceId: TStringField
      FieldName = 'TypePieceId'
    end
    object Q_electeur_C_I_SDateDelivrance: TStringField
      FieldName = 'DateDelivrance'
      Size = 10
    end
    object Q_electeur_C_I_SDateExpiration: TStringField
      FieldName = 'DateExpiration'
      Size = 10
    end
    object Q_electeur_C_I_SNumeroCarte: TStringField
      FieldName = 'NumeroCarte'
      Size = 30
    end
    object Q_electeur_C_I_SNIF: TLargeintField
      FieldName = 'NIF'
    end
    object Q_electeur_C_I_SRaisonSocial: TStringField
      FieldName = 'RaisonSocial'
      Size = 255
    end
    object Q_electeur_C_I_SNumRCCM: TStringField
      FieldName = 'NumRCCM'
    end
    object Q_electeur_C_I_SNumCFE: TStringField
      FieldName = 'NumCFE'
      Size = 30
    end
    object Q_electeur_C_I_SNumCCIT: TStringField
      FieldName = 'NumCCIT'
      Size = 30
    end
    object Q_electeur_C_I_SAnneedbutactivite: TStringField
      FieldName = 'Anneedbutactivite'
      Size = 30
    end
    object Q_electeur_C_I_SRepresentant1: TStringField
      FieldName = 'Representant1'
      Size = 255
    end
    object Q_electeur_C_I_SRepresentant2: TStringField
      FieldName = 'Representant2'
      Size = 255
    end
    object Q_electeur_C_I_Stype: TStringField
      FieldName = 'type'
    end
    object Q_electeur_C_I_SAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_electeur_C_I_STel: TStringField
      FieldName = 'Tel'
      Size = 50
    end
    object Q_electeur_C_I_STel_rep1: TStringField
      FieldName = 'Tel_rep1'
      Size = 50
    end
    object Q_electeur_C_I_STel_rep2: TStringField
      FieldName = 'Tel_rep2'
      Size = 50
    end
    object Q_electeur_C_I_SNumQuittusFiscal: TStringField
      FieldName = 'NumQuittusFiscal'
      Size = 30
    end
    object Q_electeur_C_I_SdatexpirationCFE: TStringField
      FieldName = 'datexpirationCFE'
      Size = 10
    end
    object Q_electeur_C_I_SEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object Q_electeur_C_I_SRegion: TStringField
      FieldName = 'Region'
      Size = 30
    end
    object Q_electeur_C_I_SId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Q_electeur_C_I_SCategorie: TStringField
      FieldName = 'Categorie'
      ReadOnly = True
      Size = 10
    end
    object Q_electeur_C_I_SSecteur: TStringField
      FieldName = 'Secteur'
      ReadOnly = True
      Size = 15
    end
    object Q_electeur_C_I_SNomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_electeur_C_I_SNIF_1: TLargeintField
      FieldName = 'NIF_1'
      ReadOnly = True
    end
    object Q_electeur_C_I_Sidpiece: TIntegerField
      FieldName = 'idpiece'
      ReadOnly = True
    end
    object Q_electeur_C_I_SNompiece: TStringField
      FieldName = 'Nompiece'
      ReadOnly = True
      Size = 25
    end
    object Q_electeur_C_I_SNomEtPrenomElecteur_2: TStringField
      FieldName = 'NomEtPrenomElecteur_2'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object Q_electeur_C_I_Slist_secteur: TMemoField
      FieldName = 'list_secteur'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_electeur_C_I_Slist_categories: TMemoField
      FieldName = 'list_categories'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_electeur_C_I_Spieces_fournies: TMemoField
      FieldName = 'pieces_fournies'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object frxReport2: TfrxReport
    Version = '6.6.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44099.496010706000000000
    ReportOptions.LastChange = 44099.496010706000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 675
    Top = 400
    Datasets = <
      item
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 185.196970000000000000
        Top = 147.401670000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        object frxDBDataset1NomEtPrenomElecteur: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 48.590600000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'RaisonSocial'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."RaisonSocial"]')
          ParentFont = False
        end
        object frxDBDataset1TypePieceId: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 105.181200000000000000
          Width = 45.354360000000000000
          Height = 185.196970000000000000
          DataField = 'TypePieceId'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."TypePieceId"]')
          ParentFont = False
        end
        object frxDBDataset1DateDelivrance: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 150.535560000000000000
          Width = 64.252010000000000000
          Height = 185.196970000000000000
          DataField = 'DateDelivrance'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."DateDelivrance"]')
          ParentFont = False
        end
        object frxDBDataset1DateExpiration: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 214.787570000000000000
          Width = 60.472480000000000000
          Height = 185.196970000000000000
          DataField = 'DateExpiration'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."DateExpiration"]')
          ParentFont = False
        end
        object frxDBDataset1NumeroCarte: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 275.260050000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'NumeroCarte'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."NumeroCarte"]')
          ParentFont = False
        end
        object frxDBDataset1NIF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 331.953000000000000000
          Width = 49.133890000000000000
          Height = 185.196970000000000000
          DataField = 'NIF'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."NIF"]')
          ParentFont = False
        end
        object frxDBDataset1RaisonSocial: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 49.133890000000000000
          Height = 185.196970000000000000
          DataField = 'NomEtPrenomElecteur'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."NomEtPrenomElecteur"]')
          ParentFont = False
        end
        object frxDBDataset1Secteur_list: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 380.645950000000000000
          Width = 49.133890000000000000
          Height = 185.196970000000000000
          DataField = 'list_secteur'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."list_secteur"]')
          ParentFont = False
        end
        object frxDBDataset1Piece_fournies: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 501.811380000000000000
          Width = 83.149660000000000000
          Height = 185.196970000000000000
          DataField = 'pieces_fournies'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."pieces_fournies"]')
          ParentFont = False
        end
        object frxDBDataset1type: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 584.504330000000000000
          Width = 71.811070000000000000
          Height = 185.196970000000000000
          DataField = 'type'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."type"]')
          ParentFont = False
        end
        object frxDBDataset1Representant1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 818.717070000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'Representant1'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."Representant1"]')
          ParentFont = False
        end
        object frxDBDataset1Representant2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 932.102970000000000000
          Width = 52.913420000000000000
          Height = 185.196970000000000000
          DataField = 'Representant2'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."Representant2"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 875.410020000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'Tel_rep1'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."Tel_rep1"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 985.016390000000000000
          Width = 60.472480000000000000
          Height = 185.196970000000000000
          DataField = 'Tel_rep2'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."Tel_rep2"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 758.244590000000000000
          Width = 60.472480000000000000
          Height = 185.196970000000000000
          DataField = 'Tel'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."Tel"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 709.110700000000000000
          Width = 49.133890000000000000
          Height = 185.196970000000000000
          DataField = 'Adresse'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."Adresse"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 656.197280000000000000
          Width = 52.913420000000000000
          Height = 185.196970000000000000
          DataField = 'Email'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."Email"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 429.897960000000000000
          Width = 71.811070000000000000
          Height = 185.196970000000000000
          DataField = 'list_categories'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."list_categories"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 69.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 48.590600000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Raison Social')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 105.181200000000000000
          Width = 45.354360000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Type de piece')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 150.535560000000000000
          Width = 64.252010000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Date de dlivrance')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 214.787570000000000000
          Width = 60.472480000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Date d'#39'expiration')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 275.260050000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Num carte')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 331.953000000000000000
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'NIF')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Nom et prenom')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 380.645950000000000000
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Secteurs')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 501.811380000000000000
          Width = 83.149660000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Pieces fournies')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 584.504330000000000000
          Width = 71.811070000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Type de votant')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 818.717070000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Referant 1')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 932.102970000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Referant 2')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 875.410020000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Tel Referent 1')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 985.016390000000000000
          Width = 60.472480000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Tel Referent 2')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 656.197280000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Email')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 709.110700000000000000
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Adresse')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 758.244590000000000000
          Width = 60.472480000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Telephone')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 429.897960000000000000
          Width = 71.811070000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Categories')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 355.275820000000000000
        Width = 1046.929810000000000000
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 975.016390000000000000
          Top = 3.000000000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 774.803650000000000000
          Top = 3.779530000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Total :[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    DataSet = Q_electeur_commerce_industrie
    BCDToCurrency = False
    Left = 936
    Top = 432
  end
  object frxReport4: TfrxReport
    Version = '6.6.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44112.644232175900000000
    ReportOptions.LastChange = 44112.644232175900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 600
    Top = 488
    Datasets = <
      item
        DataSet = frxDBDataset_electeur_unique_region
        DataSetName = 'frxDBDataset_electeur_unique_region'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 185.196970000000000000
        Top = 147.401670000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset_electeur_unique_region
        DataSetName = 'frxDBDataset_electeur_unique_region'
        RowCount = 0
        object frxDBDataset1NomEtPrenomElecteur: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 185.196970000000000000
          DataField = 'RaisonSocial'
          DataSet = frxDBDataset_electeur_unique_region
          DataSetName = 'frxDBDataset_electeur_unique_region'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique_region."RaisonSocial"]')
          ParentFont = False
        end
        object frxDBDataset1TypePieceId: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 185.196970000000000000
          DataField = 'TypePieceId'
          DataSet = frxDBDataset_electeur_unique_region
          DataSetName = 'frxDBDataset_electeur_unique_region'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique_region."TypePieceId"]')
          ParentFont = False
        end
        object frxDBDataset1DateDelivrance: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 196.535560000000000000
          Width = 64.252010000000000000
          Height = 185.196970000000000000
          DataField = 'DateDelivrance'
          DataSet = frxDBDataset_electeur_unique_region
          DataSetName = 'frxDBDataset_electeur_unique_region'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique_region."DateDelivrance"]')
          ParentFont = False
        end
        object frxDBDataset1DateExpiration: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 260.787570000000000000
          Width = 60.472480000000000000
          Height = 185.196970000000000000
          DataField = 'DateExpiration'
          DataSet = frxDBDataset_electeur_unique_region
          DataSetName = 'frxDBDataset_electeur_unique_region'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique_region."DateExpiration"]')
          ParentFont = False
        end
        object frxDBDataset1NumeroCarte: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 321.260050000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'NumeroCarte'
          DataSet = frxDBDataset_electeur_unique_region
          DataSetName = 'frxDBDataset_electeur_unique_region'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique_region."NumeroCarte"]')
          ParentFont = False
        end
        object frxDBDataset1NIF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'NIF'
          DataSet = frxDBDataset_electeur_unique_region
          DataSetName = 'frxDBDataset_electeur_unique_region'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique_region."NIF"]')
          ParentFont = False
        end
        object frxDBDataset1RaisonSocial: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 75.590600000000000000
          Height = 185.196970000000000000
          DataField = 'NomEtPrenomElecteur'
          DataSet = frxDBDataset_electeur_unique_region
          DataSetName = 'frxDBDataset_electeur_unique_region'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique_region."NomEtPrenomElecteur"]')
          ParentFont = False
        end
        object frxDBDataset1Secteur_list: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 434.630180000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'list_secteur'
          DataSet = frxDBDataset_electeur_unique_region
          DataSetName = 'frxDBDataset_electeur_unique_region'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique_region."list_secteur"]')
          ParentFont = False
        end
        object frxDBDataset1Piece_fournies: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 490.795610000000000000
          Width = 83.149660000000000000
          Height = 185.196970000000000000
          DataField = 'pieces_fournies'
          DataSet = frxDBDataset_electeur_unique_region
          DataSetName = 'frxDBDataset_electeur_unique_region'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique_region."pieces_fournies"]')
          ParentFont = False
        end
        object frxDBDataset1type: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 574.488560000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'type'
          DataSet = frxDBDataset_electeur_unique_region
          DataSetName = 'frxDBDataset_electeur_unique_region'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique_region."type"]')
          ParentFont = False
        end
        object frxDBDataset1Representant1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 774.803650000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'Representant1'
          DataSet = frxDBDataset_electeur_unique_region
          DataSetName = 'frxDBDataset_electeur_unique_region'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique_region."Representant1"]')
          ParentFont = False
        end
        object frxDBDataset1Representant2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 888.189550000000000000
          Width = 52.913420000000000000
          Height = 185.196970000000000000
          DataField = 'Tel_rep1'
          DataSet = frxDBDataset_electeur_unique_region
          DataSetName = 'frxDBDataset_electeur_unique_region'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique_region."Tel_rep1"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 831.496600000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'Tel_rep1'
          DataSet = frxDBDataset_electeur_unique_region
          DataSetName = 'frxDBDataset_electeur_unique_region'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique_region."Tel_rep1"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 941.102970000000000000
          Width = 52.913420000000000000
          Height = 185.196970000000000000
          DataField = 'Tel_rep2'
          DataSet = frxDBDataset_electeur_unique_region
          DataSetName = 'frxDBDataset_electeur_unique_region'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique_region."Tel_rep2"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 733.228820000000000000
          Width = 41.574830000000000000
          Height = 185.196970000000000000
          DataField = 'Tel'
          DataSet = frxDBDataset_electeur_unique_region
          DataSetName = 'frxDBDataset_electeur_unique_region'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique_region."Tel"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 684.094930000000000000
          Width = 49.133890000000000000
          Height = 185.196970000000000000
          DataField = 'Adresse'
          DataSet = frxDBDataset_electeur_unique_region
          DataSetName = 'frxDBDataset_electeur_unique_region'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique_region."Adresse"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 631.181510000000000000
          Width = 52.913420000000000000
          Height = 185.196970000000000000
          DataField = 'Email'
          DataSet = frxDBDataset_electeur_unique_region
          DataSetName = 'frxDBDataset_electeur_unique_region'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique_region."Email"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 994.016390000000000000
          Width = 52.913420000000000000
          Height = 185.196970000000000000
          DataField = 'Region'
          DataSet = frxDBDataset_electeur_unique_region
          DataSetName = 'frxDBDataset_electeur_unique_region'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_electeur_unique_region."Region"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 69.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Raison social')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Type de piece')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 196.535560000000000000
          Width = 64.252010000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Date de dlivrance')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 260.787570000000000000
          Width = 60.472480000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Date d'#39'expiration')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 321.260050000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Num carte')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 377.953000000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'NIF')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 75.590600000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Nom et prenom')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 434.630180000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Secteurs')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 490.795610000000000000
          Width = 83.149660000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Pieces fournies')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 574.488560000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Type de votant')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 774.803650000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Referant 1')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 888.189550000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Referant 2')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 831.496600000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Tel Referent 1')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 941.102970000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Tel Referent 2')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 631.181510000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Email')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 684.094930000000000000
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Adresse')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 733.228820000000000000
          Width = 41.574830000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Telephone')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 994.016390000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Region')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 355.275820000000000000
        Width = 1046.929810000000000000
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 975.016390000000000000
          Top = 3.000000000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 774.803650000000000000
          Top = 3.779530000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Total :[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset_electeur_unique_region: TfrxDBDataset
    UserName = 'frxDBDataset_electeur_unique_region'
    CloseDataSource = False
    DataSet = Q_liste_electeur_unique_region_Commerce
    BCDToCurrency = False
    Left = 600
    Top = 552
  end
  object VirtualQuery1: TVirtualQuery
    SourceDataSets = <>
    Left = 696
    Top = 496
  end
  object Q_simulation_LOME_commune: TUniQuery
    Connection = UniConnection1
    Left = 928
    Top = 352
  end
  object UniTable1: TUniTable
    Connection = UniConnection1
    Left = 912
    Top = 552
  end
  object Q_electeur: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select * from electeur')
    Left = 1000
    Top = 520
  end
  object Q_piece: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select * from pieces')
    Left = 1008
    Top = 584
  end
  object Q_dossier_complet: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region='#39'LC'#39') GROUP by electeur.RaisonSocial havin' +
        'g (Piece_fournies like '#39'%Photo%'#39' or Piece_fournies like '#39'%Carte ' +
        'CCIT%'#39') and Piece_fournies like'#39'%Carte CFE%'#39' and Piece_fournies ' +
        'like'#39'%Piece Identite%'#39' and ( Piece_fournies like'#39'%Quitus Fiscale' +
        '%'#39') ORDER BY `electeur`.`Representant1` ASC')
    Left = 349
    Top = 272
  end
  object Q_dossier_Photo_manquante: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region ='#39'LC'#39') GROUP by electeur.RaisonSocial havi' +
        'ng (Piece_fournies not like '#39'%Photo%'#39') ORDER BY `electeur`.`Repr' +
        'esentant1` ASC')
    Left = 389
    Top = 558
  end
  object Q_dossier_PI_manquants: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region= '#39'LC'#39') GROUP by electeur.RaisonSocial havi' +
        'ng (Piece_fournies not like '#39'%Piece Identite%'#39') ORDER BY `electe' +
        'ur`.`Representant1` ASC')
    Left = 389
    Top = 488
  end
  object Q_dossier_Quitus_CCIT_manquante: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region is null) GROUP by electeur.RaisonSocial ha' +
        'ving (Piece_fournies not like '#39'%Quittus CCIT%'#39') ORDER BY `electe' +
        'ur`.`Representant1` ASC')
    Left = 85
    Top = 566
  end
  object Q_dossier_quitus_fiscale_manquante: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region='#39'LC'#39') GROUP by electeur.RaisonSocial havin' +
        'g (Piece_fournies not like '#39'%Carte CCIT%'#39') ORDER BY `electeur`.`' +
        'NomEtPrenomElecteur` ASC')
    Left = 229
    Top = 544
  end
  object Q_dossier_Carte_CCIT_manquante: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region='#39'LC'#39') GROUP by electeur.RaisonSocial havin' +
        'g (Piece_fournies not like '#39'%Carte CCIT%'#39') ORDER BY `electeur`.`' +
        'NomEtPrenomElecteur` ASC')
    Left = 229
    Top = 621
  end
  object Q_dossier_Carte_CFE_manquante: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region='#39'LC'#39') GROUP by electeur.RaisonSocial havin' +
        'g (Piece_fournies not like '#39'%Carte CFE%'#39') ORDER BY `electeur`.`R' +
        'epresentant1` ASC')
    Left = 229
    Top = 486
  end
  object Q_dossier_0_pieces_R: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region<>'#39'LC'#39') GROUP by electeur.RaisonSocial havi' +
        'ng (Piece_fournies not like '#39'%Photo%'#39' and Piece_fournies not lik' +
        'e'#39'%Carte CFE%'#39' and Piece_fournies not like'#39'%Piece Identite%'#39' and' +
        ' Piece_fournies not like'#39'%Quitus Fiscale%'#39' and Piece_fournies no' +
        't like '#39'%Carte CCIT%'#39' and Piece_fournies not like'#39'%Quittus CCIT%' +
        #39') ORDER BY `electeur`.`Representant1` ASC')
    Left = 757
    Top = 440
  end
  object Q_dossier_carte_CFE_manquante_R: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region<>'#39'LC'#39') GROUP by electeur.RaisonSocial havi' +
        'ng (Piece_fournies not like '#39'%Carte CFE%'#39') ORDER BY `electeur`.`' +
        'Representant1` ASC')
    Left = 589
    Top = 656
  end
  object Q_dossier_Complet_R: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region<>'#39'LC'#39') GROUP by electeur.RaisonSocial havi' +
        'ng ((Piece_fournies like '#39'%Photo%'#39'or piece_fournies like '#39'%Carte' +
        ' CCIT%'#39') and Piece_fournies like'#39'%Carte CFE%'#39' and Piece_fournies' +
        ' like'#39'%Piece Identite%'#39' and Piece_fournies like'#39'%Quitus Fiscale%' +
        #39') ORDER BY `electeur`.`Representant1` ASC')
    Left = 757
    Top = 384
  end
  object Q_dossier_Photo_manquante_R: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region<>'#39'LC'#39') GROUP by electeur.RaisonSocial havi' +
        'ng (Piece_fournies not like '#39'%Photo%'#39') ORDER BY `electeur`.`Repr' +
        'esentant1` ASC')
    Left = 773
    Top = 707
  end
  object Q_dossier_Quitus_CCIT_manquante_R: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region<>'#39#39' or electeur.Region is not null) GROUP ' +
        'by electeur.RaisonSocial having (Piece_fournies not like '#39'%Quitt' +
        'us CCIT%'#39') ORDER BY `electeur`.`Representant1` ASC')
    Left = 757
    Top = 576
  end
  object Q_dossier_quitus_fiscale_manquante_R: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region<>'#39'LC'#39') GROUP by electeur.RaisonSocial havi' +
        'ng (Piece_fournies not like '#39'%Quitus Fiscale%'#39') ORDER BY `electe' +
        'ur`.`NomEtPrenomElecteur` ASC')
    Left = 813
    Top = 504
  end
  object Q_dossier_PI_manquant_R: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region<>'#39'LC'#39') GROUP by electeur.RaisonSocial havi' +
        'ng (Piece_fournies not like '#39'%Piece Identite%'#39') ORDER BY electeu' +
        'r.Representant1 ASC')
    Left = 917
    Top = 648
  end
  object T_piece: TUniTable
    TableName = 'pieces'
    Connection = UniConnection1
    Left = 1032
    Top = 408
  end
  object Q_simulation_C_S_I: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'list_secteur'
        FieldType = ftWideString
      end
      item
        FieldName = 'list_categories'
        FieldType = ftWideString
      end
      item
        FieldName = 'selected'
        FieldType = ftBoolean
      end>
    Connection = UniConnection1
    SQL.Strings = (
      
        'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Secteur SEPARATOR '#39','#39 +
        ') as list_secteur, GROUP_CONCAT(DISTINCT import_cat.categorie SE' +
        'PARATOR '#39','#39') as list_categories from importations,import_cat,imp' +
        'ort_jointure WHERE import_cat.NomEtPrenomElecteur=importations.N' +
        'omEtPrenomElecteur AND import_cat.NomEtPrenomElecteur=import_joi' +
        'nture.NomEtPrenomElecteur3 and (importations.Region is null or i' +
        'mportations.Region='#39#39') GROUP by importations.Raison_Social HAVIN' +
        'G (list_secteur like'#39'%Service%'#39') and (list_secteur like '#39'%Commer' +
        'ce%'#39') and (list_secteur like '#39'%Industrie%'#39') order by importation' +
        's.NomEtPrenomElecteur')
    Left = 1015
    Top = 32
    object Q_simulation_C_S_IId: TIntegerField
      FieldName = 'Id'
    end
    object Q_simulation_C_S_IRaison_Social: TStringField
      FieldName = 'Raison_Social'
      Size = 255
    end
    object Q_simulation_C_S_INomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_simulation_C_S_IAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_simulation_C_S_ITel: TIntegerField
      FieldName = 'Tel'
    end
    object Q_simulation_C_S_IEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object Q_simulation_C_S_ICategorie: TStringField
      FieldName = 'Categorie'
      Size = 10
    end
    object Q_simulation_C_S_ISecteur: TStringField
      FieldName = 'Secteur'
      Size = 10
    end
    object Q_simulation_C_S_IReferant: TStringField
      FieldName = 'Referant'
      Size = 255
    end
    object Q_simulation_C_S_IRegion: TStringField
      FieldName = 'Region'
      Size = 15
    end
    object Q_simulation_C_S_INom_sim: TStringField
      FieldName = 'Nom_sim'
    end
    object Q_simulation_C_S_Iid_1: TIntegerField
      FieldName = 'id_1'
      ReadOnly = True
    end
    object Q_simulation_C_S_ICategorie_1: TStringField
      FieldName = 'Categorie_1'
      ReadOnly = True
      Size = 10
    end
    object Q_simulation_C_S_ISecteur_1: TStringField
      FieldName = 'Secteur_1'
      ReadOnly = True
    end
    object Q_simulation_C_S_INomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_simulation_C_S_INom_sim_1: TStringField
      FieldName = 'Nom_sim_1'
      ReadOnly = True
    end
    object Q_simulation_C_S_Iid_2: TIntegerField
      FieldName = 'id_2'
      ReadOnly = True
      Required = True
    end
    object Q_simulation_C_S_Icat3: TStringField
      FieldName = 'cat3'
      ReadOnly = True
    end
    object Q_simulation_C_S_Isect3: TStringField
      FieldName = 'sect3'
      ReadOnly = True
    end
    object Q_simulation_C_S_INomEtPrenomElecteur3: TStringField
      FieldName = 'NomEtPrenomElecteur3'
      ReadOnly = True
      Size = 255
    end
    object Q_simulation_C_S_INom_sim3: TStringField
      FieldName = 'Nom_sim3'
      ReadOnly = True
      Required = True
    end
    object Q_simulation_C_S_Ilist_secteur: TWideStringField
      FieldName = 'list_secteur'
      ReadOnly = True
    end
    object Q_simulation_C_S_Ilist_categories: TWideStringField
      FieldName = 'list_categories'
      ReadOnly = True
    end
    object Q_simulation_C_S_Iselected: TBooleanField
      FieldName = 'selected'
      Required = True
    end
  end
  object Q_simulation_C_I: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'list_categories'
        FieldType = ftWideString
      end
      item
        FieldName = 'list_secteur'
        FieldType = ftWideString
      end>
    Connection = UniConnection1
    SQL.Strings = (
      
        'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Secteur SEPARATOR '#39','#39 +
        ') as list_secteur, GROUP_CONCAT(DISTINCT import_cat.categorie SE' +
        'PARATOR '#39','#39') as list_categories from importations,import_cat,imp' +
        'ort_jointure WHERE import_cat.NomEtPrenomElecteur=importations.N' +
        'omEtPrenomElecteur AND import_cat.NomEtPrenomElecteur=import_joi' +
        'nture.NomEtPrenomElecteur3 and (importations.Region is null or i' +
        'mportations.Region='#39#39') GROUP by importations.Raison_Social HAVIN' +
        'G (list_secteur not like'#39'%Service%'#39') and (list_secteur like '#39'%Co' +
        'mmerce%'#39') and (list_secteur like '#39'%Industrie%'#39') order by importa' +
        'tions.NomEtPrenomElecteur')
    Left = 1031
    Top = 96
  end
  object Q_simulation_C_S: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'list_secteur'
        FieldType = ftWideString
      end
      item
        FieldName = 'list_categories'
        FieldType = ftWideString
      end>
    Connection = UniConnection1
    SQL.Strings = (
      
        'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Secteur SEPARATOR '#39','#39 +
        ') as list_secteur, GROUP_CONCAT(DISTINCT import_cat.categorie SE' +
        'PARATOR '#39','#39') as list_categories from importations,import_cat,imp' +
        'ort_jointure WHERE import_cat.NomEtPrenomElecteur=importations.N' +
        'omEtPrenomElecteur AND import_cat.NomEtPrenomElecteur=import_joi' +
        'nture.NomEtPrenomElecteur3 and (importations.Region is null or i' +
        'mportations.Region='#39#39') GROUP by importations.Raison_Social HAVIN' +
        'G (list_secteur like'#39'%Service%'#39') and (list_secteur like '#39'%Commer' +
        'ce%'#39') and (list_secteur not like '#39'%Industrie%'#39') order by importa' +
        'tions.NomEtPrenomElecteur')
    Left = 1031
    Top = 176
  end
  object Q_simulation_I_S: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'list_secteur'
        FieldType = ftWideString
      end
      item
        FieldName = 'list_categories'
        FieldType = ftWideString
      end>
    Connection = UniConnection1
    SQL.Strings = (
      
        'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Secteur SEPARATOR '#39','#39 +
        ') as list_secteur, GROUP_CONCAT(DISTINCT import_cat.categorie SE' +
        'PARATOR '#39','#39') as list_categories from importations,import_cat,imp' +
        'ort_jointure WHERE import_cat.NomEtPrenomElecteur=importations.N' +
        'omEtPrenomElecteur AND import_cat.NomEtPrenomElecteur=import_joi' +
        'nture.NomEtPrenomElecteur3 and (importations.Region is null or i' +
        'mportations.Region='#39#39') GROUP by importations.Raison_Social HAVIN' +
        'G (list_secteur like'#39'%Service%'#39') and (list_secteur NOT like '#39'%Co' +
        'mmerce%'#39') and (list_secteur like '#39'%Industrie%'#39') order by importa' +
        'tions.NomEtPrenomElecteur')
    Left = 1047
    Top = 264
  end
  object frxRichObject1: TfrxRichObject
    Left = 1136
    Top = 480
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 1072
    Top = 728
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 1144
    Top = 656
  end
  object Q_liste_COm_catA: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'autres_categories'
        FieldType = ftWideString
        FieldLength = 255
      end>
    Connection = UniConnection1
    SQL.Strings = (
      
        'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '#39 +
        ','#39') as list_secteur from importations,import_cat,import_jointure' +
        ' WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomEl' +
        'ecteur AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtP' +
        'renomElecteur3 GROUP by importations.Raison_Social HAVING (list_' +
        'secteur like'#39'%Com A%'#39') order by importations.NomEtPrenomElecteur')
    Left = 1152
    Top = 40
    object Q_liste_COm_catAId: TIntegerField
      FieldName = 'Id'
    end
    object Q_liste_COm_catARaison_Social: TStringField
      FieldName = 'Raison_Social'
      Size = 255
    end
    object Q_liste_COm_catANomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_liste_COm_catAAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_liste_COm_catATel: TIntegerField
      FieldName = 'Tel'
    end
    object Q_liste_COm_catAEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object Q_liste_COm_catACategorie: TStringField
      FieldName = 'Categorie'
      Size = 10
    end
    object Q_liste_COm_catASecteur: TStringField
      FieldName = 'Secteur'
      Size = 10
    end
    object Q_liste_COm_catAReferant: TStringField
      FieldName = 'Referant'
      Size = 255
    end
    object Q_liste_COm_catARegion: TStringField
      FieldName = 'Region'
      Size = 15
    end
    object Q_liste_COm_catANom_sim: TStringField
      FieldName = 'Nom_sim'
    end
    object Q_liste_COm_catAid_1: TIntegerField
      FieldName = 'id_1'
      ReadOnly = True
    end
    object Q_liste_COm_catACategorie_1: TStringField
      FieldName = 'Categorie_1'
      ReadOnly = True
      Size = 10
    end
    object Q_liste_COm_catASecteur_1: TStringField
      FieldName = 'Secteur_1'
      ReadOnly = True
    end
    object Q_liste_COm_catANomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_COm_catANom_sim_1: TStringField
      FieldName = 'Nom_sim_1'
      ReadOnly = True
    end
    object Q_liste_COm_catAid_2: TIntegerField
      FieldName = 'id_2'
      ReadOnly = True
      Required = True
    end
    object Q_liste_COm_catAcat3: TStringField
      FieldName = 'cat3'
      ReadOnly = True
    end
    object Q_liste_COm_catAsect3: TStringField
      FieldName = 'sect3'
      ReadOnly = True
    end
    object Q_liste_COm_catANomEtPrenomElecteur3: TStringField
      FieldName = 'NomEtPrenomElecteur3'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_COm_catANom_sim3: TStringField
      FieldName = 'Nom_sim3'
      ReadOnly = True
      Required = True
    end
    object Q_liste_COm_catAlist_secteur: TMemoField
      FieldName = 'list_secteur'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object Q_liste_electeur_COM_A_UNIQUE: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'autres_categories'
        FieldType = ftWideString
        FieldLength = 255
      end>
    Connection = UniConnection1
    SQL.Strings = (
      
        'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '#39 +
        ','#39') as list_secteur from importations,import_cat,import_jointure' +
        ' WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomEl' +
        'ecteur AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtP' +
        'renomElecteur3 GROUP by importations.Raison_Social HAVING (list_' +
        'secteur ='#39'Com A'#39') order by importations.NomEtPrenomElecteur')
    Left = 1152
    Top = 128
    object Q_liste_electeur_COM_A_UNIQUEId: TIntegerField
      FieldName = 'Id'
    end
    object Q_liste_electeur_COM_A_UNIQUERaison_Social: TStringField
      FieldName = 'Raison_Social'
      Size = 255
    end
    object Q_liste_electeur_COM_A_UNIQUENomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_liste_electeur_COM_A_UNIQUEAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_liste_electeur_COM_A_UNIQUETel: TIntegerField
      FieldName = 'Tel'
    end
    object Q_liste_electeur_COM_A_UNIQUEEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object Q_liste_electeur_COM_A_UNIQUECategorie: TStringField
      FieldName = 'Categorie'
      Size = 10
    end
    object Q_liste_electeur_COM_A_UNIQUESecteur: TStringField
      FieldName = 'Secteur'
      Size = 10
    end
    object Q_liste_electeur_COM_A_UNIQUEReferant: TStringField
      FieldName = 'Referant'
      Size = 255
    end
    object Q_liste_electeur_COM_A_UNIQUERegion: TStringField
      FieldName = 'Region'
      Size = 15
    end
    object Q_liste_electeur_COM_A_UNIQUENom_sim: TStringField
      FieldName = 'Nom_sim'
    end
    object Q_liste_electeur_COM_A_UNIQUEid_1: TIntegerField
      FieldName = 'id_1'
      ReadOnly = True
    end
    object Q_liste_electeur_COM_A_UNIQUECategorie_1: TStringField
      FieldName = 'Categorie_1'
      ReadOnly = True
      Size = 10
    end
    object Q_liste_electeur_COM_A_UNIQUESecteur_1: TStringField
      FieldName = 'Secteur_1'
      ReadOnly = True
    end
    object Q_liste_electeur_COM_A_UNIQUENomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_electeur_COM_A_UNIQUENom_sim_1: TStringField
      FieldName = 'Nom_sim_1'
      ReadOnly = True
    end
    object Q_liste_electeur_COM_A_UNIQUEid_2: TIntegerField
      FieldName = 'id_2'
      ReadOnly = True
      Required = True
    end
    object Q_liste_electeur_COM_A_UNIQUEcat3: TStringField
      FieldName = 'cat3'
      ReadOnly = True
    end
    object Q_liste_electeur_COM_A_UNIQUEsect3: TStringField
      FieldName = 'sect3'
      ReadOnly = True
    end
    object Q_liste_electeur_COM_A_UNIQUENomEtPrenomElecteur3: TStringField
      FieldName = 'NomEtPrenomElecteur3'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_electeur_COM_A_UNIQUENom_sim3: TStringField
      FieldName = 'Nom_sim3'
      ReadOnly = True
      Required = True
    end
    object Q_liste_electeur_COM_A_UNIQUElist_secteur: TMemoField
      FieldName = 'list_secteur'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object Q_liste_Com_catB: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'autres_categories'
        FieldType = ftWideString
        FieldLength = 255
      end>
    Connection = UniConnection1
    SQL.Strings = (
      
        'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '#39 +
        ','#39') as list_secteur from importations,import_cat,import_jointure' +
        ' WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomEl' +
        'ecteur AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtP' +
        'renomElecteur3 GROUP by importations.Raison_Social HAVING (list_' +
        'secteur like'#39'%Com B%'#39') order by importations.NomEtPrenomElecteur')
    Left = 1320
    Top = 40
    object Q_liste_Com_catBId: TIntegerField
      FieldName = 'Id'
    end
    object Q_liste_Com_catBRaison_Social: TStringField
      FieldName = 'Raison_Social'
      Size = 255
    end
    object Q_liste_Com_catBNomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_liste_Com_catBAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_liste_Com_catBTel: TIntegerField
      FieldName = 'Tel'
    end
    object Q_liste_Com_catBEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object Q_liste_Com_catBCategorie: TStringField
      FieldName = 'Categorie'
      Size = 10
    end
    object Q_liste_Com_catBSecteur: TStringField
      FieldName = 'Secteur'
      Size = 10
    end
    object Q_liste_Com_catBReferant: TStringField
      FieldName = 'Referant'
      Size = 255
    end
    object Q_liste_Com_catBRegion: TStringField
      FieldName = 'Region'
      Size = 15
    end
    object Q_liste_Com_catBNom_sim: TStringField
      FieldName = 'Nom_sim'
    end
    object Q_liste_Com_catBid_1: TIntegerField
      FieldName = 'id_1'
      ReadOnly = True
    end
    object Q_liste_Com_catBCategorie_1: TStringField
      FieldName = 'Categorie_1'
      ReadOnly = True
      Size = 10
    end
    object Q_liste_Com_catBSecteur_1: TStringField
      FieldName = 'Secteur_1'
      ReadOnly = True
    end
    object Q_liste_Com_catBNomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_Com_catBNom_sim_1: TStringField
      FieldName = 'Nom_sim_1'
      ReadOnly = True
    end
    object Q_liste_Com_catBid_2: TIntegerField
      FieldName = 'id_2'
      ReadOnly = True
      Required = True
    end
    object Q_liste_Com_catBcat3: TStringField
      FieldName = 'cat3'
      ReadOnly = True
    end
    object Q_liste_Com_catBsect3: TStringField
      FieldName = 'sect3'
      ReadOnly = True
    end
    object Q_liste_Com_catBNomEtPrenomElecteur3: TStringField
      FieldName = 'NomEtPrenomElecteur3'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_Com_catBNom_sim3: TStringField
      FieldName = 'Nom_sim3'
      ReadOnly = True
      Required = True
    end
    object Q_liste_Com_catBlist_secteur: TMemoField
      FieldName = 'list_secteur'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object Q_liste_electeur_COM_B_UNIQUE: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'autres_categories'
        FieldType = ftWideString
        FieldLength = 255
      end>
    Connection = UniConnection1
    SQL.Strings = (
      
        'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '#39 +
        ','#39') as list_secteur from importations,import_cat,import_jointure' +
        ' WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomEl' +
        'ecteur AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtP' +
        'renomElecteur3 GROUP by importations.Raison_Social HAVING (list_' +
        'secteur ='#39'Com B'#39') order by importations.NomEtPrenomElecteur')
    Left = 1328
    Top = 120
    object Q_liste_electeur_COM_B_UNIQUEId: TIntegerField
      FieldName = 'Id'
    end
    object Q_liste_electeur_COM_B_UNIQUERaison_Social: TStringField
      FieldName = 'Raison_Social'
      Size = 255
    end
    object Q_liste_electeur_COM_B_UNIQUENomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_liste_electeur_COM_B_UNIQUEAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_liste_electeur_COM_B_UNIQUETel: TIntegerField
      FieldName = 'Tel'
    end
    object Q_liste_electeur_COM_B_UNIQUEEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object Q_liste_electeur_COM_B_UNIQUECategorie: TStringField
      FieldName = 'Categorie'
      Size = 10
    end
    object Q_liste_electeur_COM_B_UNIQUESecteur: TStringField
      FieldName = 'Secteur'
      Size = 10
    end
    object Q_liste_electeur_COM_B_UNIQUEReferant: TStringField
      FieldName = 'Referant'
      Size = 255
    end
    object Q_liste_electeur_COM_B_UNIQUERegion: TStringField
      FieldName = 'Region'
      Size = 15
    end
    object Q_liste_electeur_COM_B_UNIQUENom_sim: TStringField
      FieldName = 'Nom_sim'
    end
    object Q_liste_electeur_COM_B_UNIQUEid_1: TIntegerField
      FieldName = 'id_1'
      ReadOnly = True
    end
    object Q_liste_electeur_COM_B_UNIQUECategorie_1: TStringField
      FieldName = 'Categorie_1'
      ReadOnly = True
      Size = 10
    end
    object Q_liste_electeur_COM_B_UNIQUESecteur_1: TStringField
      FieldName = 'Secteur_1'
      ReadOnly = True
    end
    object Q_liste_electeur_COM_B_UNIQUENomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_electeur_COM_B_UNIQUENom_sim_1: TStringField
      FieldName = 'Nom_sim_1'
      ReadOnly = True
    end
    object Q_liste_electeur_COM_B_UNIQUEid_2: TIntegerField
      FieldName = 'id_2'
      ReadOnly = True
      Required = True
    end
    object Q_liste_electeur_COM_B_UNIQUEcat3: TStringField
      FieldName = 'cat3'
      ReadOnly = True
    end
    object Q_liste_electeur_COM_B_UNIQUEsect3: TStringField
      FieldName = 'sect3'
      ReadOnly = True
    end
    object Q_liste_electeur_COM_B_UNIQUENomEtPrenomElecteur3: TStringField
      FieldName = 'NomEtPrenomElecteur3'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_electeur_COM_B_UNIQUENom_sim3: TStringField
      FieldName = 'Nom_sim3'
      ReadOnly = True
      Required = True
    end
    object Q_liste_electeur_COM_B_UNIQUElist_secteur: TMemoField
      FieldName = 'list_secteur'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object Q_liste_com_catC: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'autres_categories'
        FieldType = ftWideString
        FieldLength = 255
      end>
    Connection = UniConnection1
    SQL.Strings = (
      
        'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '#39 +
        ','#39') as list_secteur from importations,import_cat,import_jointure' +
        ' WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomEl' +
        'ecteur AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtP' +
        'renomElecteur3 GROUP by importations.Raison_Social HAVING (list_' +
        'secteur like'#39'%Com C%'#39') order by importations.NomEtPrenomElecteur')
    Left = 1168
    Top = 200
    object Q_liste_com_catCId: TIntegerField
      FieldName = 'Id'
    end
    object Q_liste_com_catCRaison_Social: TStringField
      FieldName = 'Raison_Social'
      Size = 255
    end
    object Q_liste_com_catCNomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_liste_com_catCAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_liste_com_catCTel: TIntegerField
      FieldName = 'Tel'
    end
    object Q_liste_com_catCEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object Q_liste_com_catCCategorie: TStringField
      FieldName = 'Categorie'
      Size = 10
    end
    object Q_liste_com_catCSecteur: TStringField
      FieldName = 'Secteur'
      Size = 10
    end
    object Q_liste_com_catCReferant: TStringField
      FieldName = 'Referant'
      Size = 255
    end
    object Q_liste_com_catCRegion: TStringField
      FieldName = 'Region'
      Size = 15
    end
    object Q_liste_com_catCNom_sim: TStringField
      FieldName = 'Nom_sim'
    end
    object Q_liste_com_catCid_1: TIntegerField
      FieldName = 'id_1'
      ReadOnly = True
    end
    object Q_liste_com_catCCategorie_1: TStringField
      FieldName = 'Categorie_1'
      ReadOnly = True
      Size = 10
    end
    object Q_liste_com_catCSecteur_1: TStringField
      FieldName = 'Secteur_1'
      ReadOnly = True
    end
    object Q_liste_com_catCNomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_com_catCNom_sim_1: TStringField
      FieldName = 'Nom_sim_1'
      ReadOnly = True
    end
    object Q_liste_com_catCid_2: TIntegerField
      FieldName = 'id_2'
      ReadOnly = True
      Required = True
    end
    object Q_liste_com_catCcat3: TStringField
      FieldName = 'cat3'
      ReadOnly = True
    end
    object Q_liste_com_catCsect3: TStringField
      FieldName = 'sect3'
      ReadOnly = True
    end
    object Q_liste_com_catCNomEtPrenomElecteur3: TStringField
      FieldName = 'NomEtPrenomElecteur3'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_com_catCNom_sim3: TStringField
      FieldName = 'Nom_sim3'
      ReadOnly = True
      Required = True
    end
    object Q_liste_com_catClist_secteur: TMemoField
      FieldName = 'list_secteur'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object Q_liste_COM_C_UNIQUE: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'autres_categories'
        FieldType = ftWideString
        FieldLength = 255
      end>
    Connection = UniConnection1
    SQL.Strings = (
      
        'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '#39 +
        ','#39') as list_secteur from importations,import_cat,import_jointure' +
        ' WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomEl' +
        'ecteur AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtP' +
        'renomElecteur3 GROUP by importations.Raison_Social HAVING (list_' +
        'secteur ='#39'Com C'#39') order by importations.NomEtPrenomElecteur')
    Left = 1176
    Top = 280
    object Q_liste_COM_C_UNIQUEId: TIntegerField
      FieldName = 'Id'
    end
    object Q_liste_COM_C_UNIQUERaison_Social: TStringField
      FieldName = 'Raison_Social'
      Size = 255
    end
    object Q_liste_COM_C_UNIQUENomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_liste_COM_C_UNIQUEAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_liste_COM_C_UNIQUETel: TIntegerField
      FieldName = 'Tel'
    end
    object Q_liste_COM_C_UNIQUEEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object Q_liste_COM_C_UNIQUECategorie: TStringField
      FieldName = 'Categorie'
      Size = 10
    end
    object Q_liste_COM_C_UNIQUESecteur: TStringField
      FieldName = 'Secteur'
      Size = 10
    end
    object Q_liste_COM_C_UNIQUEReferant: TStringField
      FieldName = 'Referant'
      Size = 255
    end
    object Q_liste_COM_C_UNIQUERegion: TStringField
      FieldName = 'Region'
      Size = 15
    end
    object Q_liste_COM_C_UNIQUENom_sim: TStringField
      FieldName = 'Nom_sim'
    end
    object Q_liste_COM_C_UNIQUEid_1: TIntegerField
      FieldName = 'id_1'
      ReadOnly = True
    end
    object Q_liste_COM_C_UNIQUECategorie_1: TStringField
      FieldName = 'Categorie_1'
      ReadOnly = True
      Size = 10
    end
    object Q_liste_COM_C_UNIQUESecteur_1: TStringField
      FieldName = 'Secteur_1'
      ReadOnly = True
    end
    object Q_liste_COM_C_UNIQUENomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_COM_C_UNIQUENom_sim_1: TStringField
      FieldName = 'Nom_sim_1'
      ReadOnly = True
    end
    object Q_liste_COM_C_UNIQUEid_2: TIntegerField
      FieldName = 'id_2'
      ReadOnly = True
      Required = True
    end
    object Q_liste_COM_C_UNIQUEcat3: TStringField
      FieldName = 'cat3'
      ReadOnly = True
    end
    object Q_liste_COM_C_UNIQUEsect3: TStringField
      FieldName = 'sect3'
      ReadOnly = True
    end
    object Q_liste_COM_C_UNIQUENomEtPrenomElecteur3: TStringField
      FieldName = 'NomEtPrenomElecteur3'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_COM_C_UNIQUENom_sim3: TStringField
      FieldName = 'Nom_sim3'
      ReadOnly = True
      Required = True
    end
    object Q_liste_COM_C_UNIQUElist_secteur: TMemoField
      FieldName = 'list_secteur'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object Q_liste_COM_catD: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'autres_categories'
        FieldType = ftWideString
        FieldLength = 255
      end>
    Connection = UniConnection1
    SQL.Strings = (
      
        'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '#39 +
        ','#39') as list_secteur from importations,import_cat,import_jointure' +
        ' WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomEl' +
        'ecteur AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtP' +
        'renomElecteur3 GROUP by importations.Raison_Social HAVING (list_' +
        'secteur like'#39'%Com D%'#39') order by importations.NomEtPrenomElecteur')
    Left = 1328
    Top = 208
    object Q_liste_COM_catDId: TIntegerField
      FieldName = 'Id'
    end
    object Q_liste_COM_catDRaison_Social: TStringField
      FieldName = 'Raison_Social'
      Size = 255
    end
    object Q_liste_COM_catDNomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_liste_COM_catDAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_liste_COM_catDTel: TIntegerField
      FieldName = 'Tel'
    end
    object Q_liste_COM_catDEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object Q_liste_COM_catDCategorie: TStringField
      FieldName = 'Categorie'
      Size = 10
    end
    object Q_liste_COM_catDSecteur: TStringField
      FieldName = 'Secteur'
      Size = 10
    end
    object Q_liste_COM_catDReferant: TStringField
      FieldName = 'Referant'
      Size = 255
    end
    object Q_liste_COM_catDRegion: TStringField
      FieldName = 'Region'
      Size = 15
    end
    object Q_liste_COM_catDNom_sim: TStringField
      FieldName = 'Nom_sim'
    end
    object Q_liste_COM_catDid_1: TIntegerField
      FieldName = 'id_1'
      ReadOnly = True
    end
    object Q_liste_COM_catDCategorie_1: TStringField
      FieldName = 'Categorie_1'
      ReadOnly = True
      Size = 10
    end
    object Q_liste_COM_catDSecteur_1: TStringField
      FieldName = 'Secteur_1'
      ReadOnly = True
    end
    object Q_liste_COM_catDNomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_COM_catDNom_sim_1: TStringField
      FieldName = 'Nom_sim_1'
      ReadOnly = True
    end
    object Q_liste_COM_catDid_2: TIntegerField
      FieldName = 'id_2'
      ReadOnly = True
      Required = True
    end
    object Q_liste_COM_catDcat3: TStringField
      FieldName = 'cat3'
      ReadOnly = True
    end
    object Q_liste_COM_catDsect3: TStringField
      FieldName = 'sect3'
      ReadOnly = True
    end
    object Q_liste_COM_catDNomEtPrenomElecteur3: TStringField
      FieldName = 'NomEtPrenomElecteur3'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_COM_catDNom_sim3: TStringField
      FieldName = 'Nom_sim3'
      ReadOnly = True
      Required = True
    end
    object Q_liste_COM_catDlist_secteur: TMemoField
      FieldName = 'list_secteur'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object Q_liste_COM_D_UNIQUE: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'autres_categories'
        FieldType = ftWideString
        FieldLength = 255
      end>
    Connection = UniConnection1
    SQL.Strings = (
      
        'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '#39 +
        ','#39') as list_secteur from importations,import_cat,import_jointure' +
        ' WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomEl' +
        'ecteur AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtP' +
        'renomElecteur3 GROUP by importations.Raison_Social HAVING (list_' +
        'secteur ='#39'Com D'#39') order by importations.NomEtPrenomElecteur')
    Left = 1336
    Top = 288
    object Q_liste_COM_D_UNIQUEId: TIntegerField
      FieldName = 'Id'
    end
    object Q_liste_COM_D_UNIQUERaison_Social: TStringField
      FieldName = 'Raison_Social'
      Size = 255
    end
    object Q_liste_COM_D_UNIQUENomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_liste_COM_D_UNIQUEAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_liste_COM_D_UNIQUETel: TIntegerField
      FieldName = 'Tel'
    end
    object Q_liste_COM_D_UNIQUEEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object Q_liste_COM_D_UNIQUECategorie: TStringField
      FieldName = 'Categorie'
      Size = 10
    end
    object Q_liste_COM_D_UNIQUESecteur: TStringField
      FieldName = 'Secteur'
      Size = 10
    end
    object Q_liste_COM_D_UNIQUEReferant: TStringField
      FieldName = 'Referant'
      Size = 255
    end
    object Q_liste_COM_D_UNIQUERegion: TStringField
      FieldName = 'Region'
      Size = 15
    end
    object Q_liste_COM_D_UNIQUENom_sim: TStringField
      FieldName = 'Nom_sim'
    end
    object Q_liste_COM_D_UNIQUEid_1: TIntegerField
      FieldName = 'id_1'
      ReadOnly = True
    end
    object Q_liste_COM_D_UNIQUECategorie_1: TStringField
      FieldName = 'Categorie_1'
      ReadOnly = True
      Size = 10
    end
    object Q_liste_COM_D_UNIQUESecteur_1: TStringField
      FieldName = 'Secteur_1'
      ReadOnly = True
    end
    object Q_liste_COM_D_UNIQUENomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_COM_D_UNIQUENom_sim_1: TStringField
      FieldName = 'Nom_sim_1'
      ReadOnly = True
    end
    object Q_liste_COM_D_UNIQUEid_2: TIntegerField
      FieldName = 'id_2'
      ReadOnly = True
      Required = True
    end
    object Q_liste_COM_D_UNIQUEcat3: TStringField
      FieldName = 'cat3'
      ReadOnly = True
    end
    object Q_liste_COM_D_UNIQUEsect3: TStringField
      FieldName = 'sect3'
      ReadOnly = True
    end
    object Q_liste_COM_D_UNIQUENomEtPrenomElecteur3: TStringField
      FieldName = 'NomEtPrenomElecteur3'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_COM_D_UNIQUENom_sim3: TStringField
      FieldName = 'Nom_sim3'
      ReadOnly = True
      Required = True
    end
    object Q_liste_COM_D_UNIQUElist_secteur: TMemoField
      FieldName = 'list_secteur'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object Q_liste_COM_XYZ_UNIQUE: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'autres_categories'
        FieldType = ftWideString
        FieldLength = 255
      end>
    Connection = UniConnection1
    SQL.Strings = (
      
        'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '#39 +
        ','#39') as list_secteur from importations,import_cat,import_jointure' +
        ' WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomEl' +
        'ecteur AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtP' +
        'renomElecteur3 GROUP by importations.Raison_Social HAVING (list_' +
        'secteur = '#39'Com XYZ'#39') order by importations.NomEtPrenomElecteur')
    Left = 1176
    Top = 400
    object Q_liste_COM_XYZ_UNIQUEId: TIntegerField
      FieldName = 'Id'
    end
    object Q_liste_COM_XYZ_UNIQUERaison_Social: TStringField
      FieldName = 'Raison_Social'
      Size = 255
    end
    object Q_liste_COM_XYZ_UNIQUENomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_liste_COM_XYZ_UNIQUEAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_liste_COM_XYZ_UNIQUETel: TIntegerField
      FieldName = 'Tel'
    end
    object Q_liste_COM_XYZ_UNIQUEEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object Q_liste_COM_XYZ_UNIQUECategorie: TStringField
      FieldName = 'Categorie'
      Size = 10
    end
    object Q_liste_COM_XYZ_UNIQUESecteur: TStringField
      FieldName = 'Secteur'
      Size = 10
    end
    object Q_liste_COM_XYZ_UNIQUEReferant: TStringField
      FieldName = 'Referant'
      Size = 255
    end
    object Q_liste_COM_XYZ_UNIQUERegion: TStringField
      FieldName = 'Region'
      Size = 15
    end
    object Q_liste_COM_XYZ_UNIQUENom_sim: TStringField
      FieldName = 'Nom_sim'
    end
    object Q_liste_COM_XYZ_UNIQUEid_1: TIntegerField
      FieldName = 'id_1'
      ReadOnly = True
    end
    object Q_liste_COM_XYZ_UNIQUECategorie_1: TStringField
      FieldName = 'Categorie_1'
      ReadOnly = True
      Size = 10
    end
    object Q_liste_COM_XYZ_UNIQUESecteur_1: TStringField
      FieldName = 'Secteur_1'
      ReadOnly = True
    end
    object Q_liste_COM_XYZ_UNIQUENomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_COM_XYZ_UNIQUENom_sim_1: TStringField
      FieldName = 'Nom_sim_1'
      ReadOnly = True
    end
    object Q_liste_COM_XYZ_UNIQUEid_2: TIntegerField
      FieldName = 'id_2'
      ReadOnly = True
      Required = True
    end
    object Q_liste_COM_XYZ_UNIQUEcat3: TStringField
      FieldName = 'cat3'
      ReadOnly = True
    end
    object Q_liste_COM_XYZ_UNIQUEsect3: TStringField
      FieldName = 'sect3'
      ReadOnly = True
    end
    object Q_liste_COM_XYZ_UNIQUENomEtPrenomElecteur3: TStringField
      FieldName = 'NomEtPrenomElecteur3'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_COM_XYZ_UNIQUENom_sim3: TStringField
      FieldName = 'Nom_sim3'
      ReadOnly = True
      Required = True
    end
    object Q_liste_COM_XYZ_UNIQUElist_secteur: TMemoField
      FieldName = 'list_secteur'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object Q_liste_COM_catXYZ: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'autres_categories'
        FieldType = ftWideString
        FieldLength = 255
      end>
    Connection = UniConnection1
    SQL.Strings = (
      
        'SELECT *, GROUP_CONCAT(DISTINCT import_cat.Categorie SEPARATOR '#39 +
        ','#39') as list_secteur from importations,import_cat,import_jointure' +
        ' WHERE import_cat.NomEtPrenomElecteur=importations.NomEtPrenomEl' +
        'ecteur AND import_cat.NomEtPrenomElecteur=import_jointure.NomEtP' +
        'renomElecteur3 GROUP by importations.Raison_Social HAVING (list_' +
        'secteur like '#39'%Com XYZ%'#39') order by importations.NomEtPrenomElect' +
        'eur')
    Left = 1168
    Top = 336
    object Q_liste_COM_catXYZId: TIntegerField
      FieldName = 'Id'
    end
    object Q_liste_COM_catXYZRaison_Social: TStringField
      FieldName = 'Raison_Social'
      Size = 255
    end
    object Q_liste_COM_catXYZNomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_liste_COM_catXYZAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_liste_COM_catXYZTel: TIntegerField
      FieldName = 'Tel'
    end
    object Q_liste_COM_catXYZEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object Q_liste_COM_catXYZCategorie: TStringField
      FieldName = 'Categorie'
      Size = 10
    end
    object Q_liste_COM_catXYZSecteur: TStringField
      FieldName = 'Secteur'
      Size = 10
    end
    object Q_liste_COM_catXYZReferant: TStringField
      FieldName = 'Referant'
      Size = 255
    end
    object Q_liste_COM_catXYZRegion: TStringField
      FieldName = 'Region'
      Size = 15
    end
    object Q_liste_COM_catXYZNom_sim: TStringField
      FieldName = 'Nom_sim'
    end
    object Q_liste_COM_catXYZid_1: TIntegerField
      FieldName = 'id_1'
      ReadOnly = True
    end
    object Q_liste_COM_catXYZCategorie_1: TStringField
      FieldName = 'Categorie_1'
      ReadOnly = True
      Size = 10
    end
    object Q_liste_COM_catXYZSecteur_1: TStringField
      FieldName = 'Secteur_1'
      ReadOnly = True
    end
    object Q_liste_COM_catXYZNomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_COM_catXYZNom_sim_1: TStringField
      FieldName = 'Nom_sim_1'
      ReadOnly = True
    end
    object Q_liste_COM_catXYZid_2: TIntegerField
      FieldName = 'id_2'
      ReadOnly = True
      Required = True
    end
    object Q_liste_COM_catXYZcat3: TStringField
      FieldName = 'cat3'
      ReadOnly = True
    end
    object Q_liste_COM_catXYZsect3: TStringField
      FieldName = 'sect3'
      ReadOnly = True
    end
    object Q_liste_COM_catXYZNomEtPrenomElecteur3: TStringField
      FieldName = 'NomEtPrenomElecteur3'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_COM_catXYZNom_sim3: TStringField
      FieldName = 'Nom_sim3'
      ReadOnly = True
      Required = True
    end
    object Q_liste_COM_catXYZlist_secteur: TMemoField
      FieldName = 'list_secteur'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object UniQuery2: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'list_secteur'
        FieldType = ftWideString
      end>
    Connection = UniConnection1
    Left = 1320
    Top = 480
    object UniQuery2Raison_Social: TStringField
      FieldName = 'Raison_Social'
      Size = 255
    end
    object UniQuery2NomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object UniQuery2Adresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object UniQuery2Tel: TIntegerField
      FieldName = 'Tel'
    end
    object UniQuery2Email: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object UniQuery2Categorie: TStringField
      FieldName = 'Categorie'
      Size = 10
    end
    object UniQuery2Secteur: TStringField
      FieldName = 'Secteur'
      Size = 10
    end
    object UniQuery2Referant: TStringField
      FieldName = 'Referant'
      Size = 255
    end
    object UniQuery2Region: TStringField
      FieldName = 'Region'
      Size = 15
    end
    object UniQuery2Nom_sim: TStringField
      FieldName = 'Nom_sim'
    end
    object UniQuery2list_secteur: TWideStringField
      FieldName = 'list_secteur'
      ReadOnly = True
    end
  end
  object Q_liste_COM_A_DYNAMIQUE: TUniQuery
    Connection = UniConnection1
    Left = 1400
    Top = 640
  end
  object Q_liste_region_CI: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region<>'#39'LC'#39')  GROUP by electeur.RaisonSocial HAV' +
        'ING (Secteur_list like'#39'%Industrie%'#39') and (Secteur_list like '#39'%Co' +
        'mmerce%'#39') and (Secteur_list not like '#39'%Service%'#39') order by elect' +
        'eur.Representant1')
    Left = 1248
    Top = 672
    object Q_liste_region_CIIdElecteur: TIntegerField
      FieldName = 'IdElecteur'
    end
    object Q_liste_region_CINomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_liste_region_CITypePieceId: TStringField
      FieldName = 'TypePieceId'
    end
    object Q_liste_region_CIDateDelivrance: TStringField
      FieldName = 'DateDelivrance'
      Size = 10
    end
    object Q_liste_region_CIDateExpiration: TStringField
      FieldName = 'DateExpiration'
      Size = 10
    end
    object Q_liste_region_CINumeroCarte: TStringField
      FieldName = 'NumeroCarte'
      Size = 30
    end
    object Q_liste_region_CINIF: TLargeintField
      FieldName = 'NIF'
    end
    object Q_liste_region_CIRaisonSocial: TStringField
      FieldName = 'RaisonSocial'
      Size = 255
    end
    object Q_liste_region_CINumRCCM: TStringField
      FieldName = 'NumRCCM'
    end
    object Q_liste_region_CINumCFE: TStringField
      FieldName = 'NumCFE'
      Size = 30
    end
    object Q_liste_region_CINumCCIT: TStringField
      FieldName = 'NumCCIT'
      Size = 30
    end
    object Q_liste_region_CIAnneedbutactivite: TStringField
      FieldName = 'Anneedbutactivite'
      Size = 30
    end
    object Q_liste_region_CIRepresentant1: TStringField
      FieldName = 'Representant1'
      Size = 255
    end
    object Q_liste_region_CIRepresentant2: TStringField
      FieldName = 'Representant2'
      Size = 255
    end
    object Q_liste_region_CItype: TStringField
      FieldName = 'type'
    end
    object Q_liste_region_CIAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_liste_region_CITel: TStringField
      FieldName = 'Tel'
      Size = 50
    end
    object Q_liste_region_CITel_rep1: TStringField
      FieldName = 'Tel_rep1'
      Size = 50
    end
    object Q_liste_region_CITel_rep2: TStringField
      FieldName = 'Tel_rep2'
      Size = 50
    end
    object Q_liste_region_CINumQuittusFiscal: TStringField
      FieldName = 'NumQuittusFiscal'
      Size = 30
    end
    object Q_liste_region_CIdatexpirationCFE: TStringField
      FieldName = 'datexpirationCFE'
      Size = 10
    end
    object Q_liste_region_CIEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object Q_liste_region_CIRegion: TStringField
      FieldName = 'Region'
      Size = 30
    end
    object Q_liste_region_CIId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Q_liste_region_CICategorie: TStringField
      FieldName = 'Categorie'
      ReadOnly = True
      Size = 10
    end
    object Q_liste_region_CISecteur: TStringField
      FieldName = 'Secteur'
      ReadOnly = True
      Size = 15
    end
    object Q_liste_region_CINomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_region_CINIF_1: TLargeintField
      FieldName = 'NIF_1'
      ReadOnly = True
    end
    object Q_liste_region_CIidpiece: TIntegerField
      FieldName = 'idpiece'
      ReadOnly = True
    end
    object Q_liste_region_CINompiece: TStringField
      FieldName = 'Nompiece'
      ReadOnly = True
      Size = 25
    end
    object Q_liste_region_CINomEtPrenomElecteur_2: TStringField
      FieldName = 'NomEtPrenomElecteur_2'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object Q_liste_region_CICategoriez: TMemoField
      FieldName = 'Categoriez'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_liste_region_CISecteur_list: TMemoField
      FieldName = 'Secteur_list'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_liste_region_CIPiece_fournies: TMemoField
      FieldName = 'Piece_fournies'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object Q_liste_region_CS: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region<>'#39'LC'#39')  GROUP by electeur.RaisonSocial HAV' +
        'ING (Secteur_list not like'#39'%Industrie%'#39') and (Secteur_list like ' +
        #39'%Commerce%'#39') and (Secteur_list like '#39'%Service%'#39') order by elect' +
        'eur.Representant1')
    Left = 1248
    Top = 736
    object Q_liste_region_CSIdElecteur: TIntegerField
      FieldName = 'IdElecteur'
    end
    object Q_liste_region_CSNomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_liste_region_CSTypePieceId: TStringField
      FieldName = 'TypePieceId'
    end
    object Q_liste_region_CSDateDelivrance: TStringField
      FieldName = 'DateDelivrance'
      Size = 10
    end
    object Q_liste_region_CSDateExpiration: TStringField
      FieldName = 'DateExpiration'
      Size = 10
    end
    object Q_liste_region_CSNumeroCarte: TStringField
      FieldName = 'NumeroCarte'
      Size = 30
    end
    object Q_liste_region_CSNIF: TLargeintField
      FieldName = 'NIF'
    end
    object Q_liste_region_CSRaisonSocial: TStringField
      FieldName = 'RaisonSocial'
      Size = 255
    end
    object Q_liste_region_CSNumRCCM: TStringField
      FieldName = 'NumRCCM'
    end
    object Q_liste_region_CSNumCFE: TStringField
      FieldName = 'NumCFE'
      Size = 30
    end
    object Q_liste_region_CSNumCCIT: TStringField
      FieldName = 'NumCCIT'
      Size = 30
    end
    object Q_liste_region_CSAnneedbutactivite: TStringField
      FieldName = 'Anneedbutactivite'
      Size = 30
    end
    object Q_liste_region_CSRepresentant1: TStringField
      FieldName = 'Representant1'
      Size = 255
    end
    object Q_liste_region_CSRepresentant2: TStringField
      FieldName = 'Representant2'
      Size = 255
    end
    object Q_liste_region_CStype: TStringField
      FieldName = 'type'
    end
    object Q_liste_region_CSAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_liste_region_CSTel: TStringField
      FieldName = 'Tel'
      Size = 50
    end
    object Q_liste_region_CSTel_rep1: TStringField
      FieldName = 'Tel_rep1'
      Size = 50
    end
    object Q_liste_region_CSTel_rep2: TStringField
      FieldName = 'Tel_rep2'
      Size = 50
    end
    object Q_liste_region_CSNumQuittusFiscal: TStringField
      FieldName = 'NumQuittusFiscal'
      Size = 30
    end
    object Q_liste_region_CSdatexpirationCFE: TStringField
      FieldName = 'datexpirationCFE'
      Size = 10
    end
    object Q_liste_region_CSEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object Q_liste_region_CSRegion: TStringField
      FieldName = 'Region'
      Size = 30
    end
    object Q_liste_region_CSId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Q_liste_region_CSCategorie: TStringField
      FieldName = 'Categorie'
      ReadOnly = True
      Size = 10
    end
    object Q_liste_region_CSSecteur: TStringField
      FieldName = 'Secteur'
      ReadOnly = True
      Size = 15
    end
    object Q_liste_region_CSNomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_region_CSNIF_1: TLargeintField
      FieldName = 'NIF_1'
      ReadOnly = True
    end
    object Q_liste_region_CSidpiece: TIntegerField
      FieldName = 'idpiece'
      ReadOnly = True
    end
    object Q_liste_region_CSNompiece: TStringField
      FieldName = 'Nompiece'
      ReadOnly = True
      Size = 25
    end
    object Q_liste_region_CSNomEtPrenomElecteur_2: TStringField
      FieldName = 'NomEtPrenomElecteur_2'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object Q_liste_region_CSCategoriez: TMemoField
      FieldName = 'Categoriez'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_liste_region_CSSecteur_list: TMemoField
      FieldName = 'Secteur_list'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_liste_region_CSPiece_fournies: TMemoField
      FieldName = 'Piece_fournies'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object Q_liste_region_IS: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region<>'#39'LC'#39')  GROUP by electeur.RaisonSocial HAV' +
        'ING (Secteur_list like'#39'%Industrie%'#39') and (Secteur_list not  like' +
        ' '#39'%Commerce%'#39') and (Secteur_list like '#39'%Service%'#39') order by elec' +
        'teur.Representant1')
    Left = 1360
    Top = 672
    object Q_liste_region_ISIdElecteur: TIntegerField
      FieldName = 'IdElecteur'
    end
    object Q_liste_region_ISNomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_liste_region_ISTypePieceId: TStringField
      FieldName = 'TypePieceId'
    end
    object Q_liste_region_ISDateDelivrance: TStringField
      FieldName = 'DateDelivrance'
      Size = 10
    end
    object Q_liste_region_ISDateExpiration: TStringField
      FieldName = 'DateExpiration'
      Size = 10
    end
    object Q_liste_region_ISNumeroCarte: TStringField
      FieldName = 'NumeroCarte'
      Size = 30
    end
    object Q_liste_region_ISNIF: TLargeintField
      FieldName = 'NIF'
    end
    object Q_liste_region_ISRaisonSocial: TStringField
      FieldName = 'RaisonSocial'
      Size = 255
    end
    object Q_liste_region_ISNumRCCM: TStringField
      FieldName = 'NumRCCM'
    end
    object Q_liste_region_ISNumCFE: TStringField
      FieldName = 'NumCFE'
      Size = 30
    end
    object Q_liste_region_ISNumCCIT: TStringField
      FieldName = 'NumCCIT'
      Size = 30
    end
    object Q_liste_region_ISAnneedbutactivite: TStringField
      FieldName = 'Anneedbutactivite'
      Size = 30
    end
    object Q_liste_region_ISRepresentant1: TStringField
      FieldName = 'Representant1'
      Size = 255
    end
    object Q_liste_region_ISRepresentant2: TStringField
      FieldName = 'Representant2'
      Size = 255
    end
    object Q_liste_region_IStype: TStringField
      FieldName = 'type'
    end
    object Q_liste_region_ISAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_liste_region_ISTel: TStringField
      FieldName = 'Tel'
      Size = 50
    end
    object Q_liste_region_ISTel_rep1: TStringField
      FieldName = 'Tel_rep1'
      Size = 50
    end
    object Q_liste_region_ISTel_rep2: TStringField
      FieldName = 'Tel_rep2'
      Size = 50
    end
    object Q_liste_region_ISNumQuittusFiscal: TStringField
      FieldName = 'NumQuittusFiscal'
      Size = 30
    end
    object Q_liste_region_ISdatexpirationCFE: TStringField
      FieldName = 'datexpirationCFE'
      Size = 10
    end
    object Q_liste_region_ISEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object Q_liste_region_ISRegion: TStringField
      FieldName = 'Region'
      Size = 30
    end
    object Q_liste_region_ISId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Q_liste_region_ISCategorie: TStringField
      FieldName = 'Categorie'
      ReadOnly = True
      Size = 10
    end
    object Q_liste_region_ISSecteur: TStringField
      FieldName = 'Secteur'
      ReadOnly = True
      Size = 15
    end
    object Q_liste_region_ISNomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_region_ISNIF_1: TLargeintField
      FieldName = 'NIF_1'
      ReadOnly = True
    end
    object Q_liste_region_ISidpiece: TIntegerField
      FieldName = 'idpiece'
      ReadOnly = True
    end
    object Q_liste_region_ISNompiece: TStringField
      FieldName = 'Nompiece'
      ReadOnly = True
      Size = 25
    end
    object Q_liste_region_ISNomEtPrenomElecteur_2: TStringField
      FieldName = 'NomEtPrenomElecteur_2'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object Q_liste_region_ISCategoriez: TMemoField
      FieldName = 'Categoriez'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_liste_region_ISSecteur_list: TMemoField
      FieldName = 'Secteur_list'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_liste_region_ISPiece_fournies: TMemoField
      FieldName = 'Piece_fournies'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object Q_liste_region_C_S_I: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'select *, GROUP_CONCAT(DISTINCT categories.Categorie SEPARATOR '#39 +
        ','#39') as Categoriez, GROUP_CONCAT(DISTINCT categories.Secteur SEPA' +
        'RATOR '#39','#39') as Secteur_list, GROUP_CONCAT(DISTINCT pieces.Nompiec' +
        'e SEPARATOR '#39','#39') as Piece_fournies from electeur,categories,piec' +
        'es WHERE categories.NomEtPrenomElecteur=electeur.NomEtPrenomElec' +
        'teur and electeur.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur' +
        ' and (electeur.Region<>'#39'LC'#39')  GROUP by electeur.RaisonSocial HAV' +
        'ING (Secteur_list like '#39'%Industrie%'#39') and (Secteur_list like '#39'%C' +
        'ommerce%'#39') and (Secteur_list like '#39'%Service%'#39') order by electeur' +
        '.Representant1')
    Left = 1360
    Top = 736
    object Q_liste_region_C_S_IIdElecteur: TIntegerField
      FieldName = 'IdElecteur'
    end
    object Q_liste_region_C_S_INomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_liste_region_C_S_ITypePieceId: TStringField
      FieldName = 'TypePieceId'
    end
    object Q_liste_region_C_S_IDateDelivrance: TStringField
      FieldName = 'DateDelivrance'
      Size = 10
    end
    object Q_liste_region_C_S_IDateExpiration: TStringField
      FieldName = 'DateExpiration'
      Size = 10
    end
    object Q_liste_region_C_S_INumeroCarte: TStringField
      FieldName = 'NumeroCarte'
      Size = 30
    end
    object Q_liste_region_C_S_INIF: TLargeintField
      FieldName = 'NIF'
    end
    object Q_liste_region_C_S_IRaisonSocial: TStringField
      FieldName = 'RaisonSocial'
      Size = 255
    end
    object Q_liste_region_C_S_INumRCCM: TStringField
      FieldName = 'NumRCCM'
    end
    object Q_liste_region_C_S_INumCFE: TStringField
      FieldName = 'NumCFE'
      Size = 30
    end
    object Q_liste_region_C_S_INumCCIT: TStringField
      FieldName = 'NumCCIT'
      Size = 30
    end
    object Q_liste_region_C_S_IAnneedbutactivite: TStringField
      FieldName = 'Anneedbutactivite'
      Size = 30
    end
    object Q_liste_region_C_S_IRepresentant1: TStringField
      FieldName = 'Representant1'
      Size = 255
    end
    object Q_liste_region_C_S_IRepresentant2: TStringField
      FieldName = 'Representant2'
      Size = 255
    end
    object Q_liste_region_C_S_Itype: TStringField
      FieldName = 'type'
    end
    object Q_liste_region_C_S_IAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_liste_region_C_S_ITel: TStringField
      FieldName = 'Tel'
      Size = 50
    end
    object Q_liste_region_C_S_ITel_rep1: TStringField
      FieldName = 'Tel_rep1'
      Size = 50
    end
    object Q_liste_region_C_S_ITel_rep2: TStringField
      FieldName = 'Tel_rep2'
      Size = 50
    end
    object Q_liste_region_C_S_INumQuittusFiscal: TStringField
      FieldName = 'NumQuittusFiscal'
      Size = 30
    end
    object Q_liste_region_C_S_IdatexpirationCFE: TStringField
      FieldName = 'datexpirationCFE'
      Size = 10
    end
    object Q_liste_region_C_S_IEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object Q_liste_region_C_S_IRegion: TStringField
      FieldName = 'Region'
      Size = 30
    end
    object Q_liste_region_C_S_IId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Q_liste_region_C_S_ICategorie: TStringField
      FieldName = 'Categorie'
      ReadOnly = True
      Size = 10
    end
    object Q_liste_region_C_S_ISecteur: TStringField
      FieldName = 'Secteur'
      ReadOnly = True
      Size = 15
    end
    object Q_liste_region_C_S_INomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_liste_region_C_S_INIF_1: TLargeintField
      FieldName = 'NIF_1'
      ReadOnly = True
    end
    object Q_liste_region_C_S_Iidpiece: TIntegerField
      FieldName = 'idpiece'
      ReadOnly = True
    end
    object Q_liste_region_C_S_INompiece: TStringField
      FieldName = 'Nompiece'
      ReadOnly = True
      Size = 25
    end
    object Q_liste_region_C_S_INomEtPrenomElecteur_2: TStringField
      FieldName = 'NomEtPrenomElecteur_2'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object Q_liste_region_C_S_ICategoriez: TMemoField
      FieldName = 'Categoriez'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_liste_region_C_S_ISecteur_list: TMemoField
      FieldName = 'Secteur_list'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_liste_region_C_S_IPiece_fournies: TMemoField
      FieldName = 'Piece_fournies'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object T_manquante: TUniTable
    TableName = 'pieces_manquante'
    Connection = UniConnection1
    Left = 1320
    Top = 400
  end
  object frxReport_pour_electeur_unique_R: TfrxReport
    Version = '6.6.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44139.648494328710000000
    ReportOptions.LastChange = 44139.648494328710000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 304
    Top = 744
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
    end
  end
  object frxDBDataset4_electeur_unique_LC: TfrxDBDataset
    UserName = 'frxDBDataset4_electeur_unique_LC'
    CloseDataSource = False
    DataSet = Q_electeur_uniques_commerce
    BCDToCurrency = False
    Left = 504
    Top = 744
  end
  object UniQuery3: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT * FROM `pieces_ref`')
    Left = 864
    Top = 760
  end
  object Q_piece_manquante_liste: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'SELECT *, GROUP_CONCAT(DISTINCT categories.Secteur SEPARATOR '#39','#39 +
        ') as list_secteur, GROUP_CONCAT(DISTINCT categories.categorie SE' +
        'PARATOR '#39','#39') as list_categories, GROUP_CONCAT(DISTINCT pieces_ma' +
        'nquante.Libelle_piece SEPARATOR '#39','#39') as pieces_manquantes, GROUP' +
        '_CONCAT(DISTINCT pieces.Nompiece SEPARATOR '#39','#39') as pieces_fourni' +
        'es from electeur,categories,pieces_manquante,pieces where electe' +
        'ur.NomEtPrenomElecteur=pieces_manquante.NomEtPrenomElecteur and ' +
        'pieces_manquante.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur ' +
        'and categories.NomEtPrenomElecteur=electeur.NomEtPrenomElecteur ' +
        'and electeur.Region ='#39'LC'#39' group by electeur.RaisonSocial')
    Left = 1136
    Top = 552
    object Q_piece_manquante_listeIdElecteur: TIntegerField
      FieldName = 'IdElecteur'
    end
    object Q_piece_manquante_listeNomEtPrenomElecteur: TStringField
      FieldName = 'NomEtPrenomElecteur'
      Size = 255
    end
    object Q_piece_manquante_listeTypePieceId: TStringField
      FieldName = 'TypePieceId'
    end
    object Q_piece_manquante_listeDateDelivrance: TStringField
      FieldName = 'DateDelivrance'
      Size = 10
    end
    object Q_piece_manquante_listeDateExpiration: TStringField
      FieldName = 'DateExpiration'
      Size = 10
    end
    object Q_piece_manquante_listeNumeroCarte: TStringField
      FieldName = 'NumeroCarte'
      Size = 30
    end
    object Q_piece_manquante_listeNIF: TLargeintField
      FieldName = 'NIF'
    end
    object Q_piece_manquante_listeRaisonSocial: TStringField
      FieldName = 'RaisonSocial'
      Size = 255
    end
    object Q_piece_manquante_listeNumRCCM: TStringField
      FieldName = 'NumRCCM'
    end
    object Q_piece_manquante_listeNumCFE: TStringField
      FieldName = 'NumCFE'
      Size = 30
    end
    object Q_piece_manquante_listeNumCCIT: TStringField
      FieldName = 'NumCCIT'
      Size = 30
    end
    object Q_piece_manquante_listeAnneedbutactivite: TStringField
      FieldName = 'Anneedbutactivite'
      Size = 30
    end
    object Q_piece_manquante_listeRepresentant1: TStringField
      FieldName = 'Representant1'
      Size = 255
    end
    object Q_piece_manquante_listeRepresentant2: TStringField
      FieldName = 'Representant2'
      Size = 255
    end
    object Q_piece_manquante_listetype: TStringField
      FieldName = 'type'
    end
    object Q_piece_manquante_listeAdresse: TStringField
      FieldName = 'Adresse'
      Size = 255
    end
    object Q_piece_manquante_listeTel: TStringField
      FieldName = 'Tel'
      Size = 50
    end
    object Q_piece_manquante_listeTel_rep1: TStringField
      FieldName = 'Tel_rep1'
      Size = 50
    end
    object Q_piece_manquante_listeTel_rep2: TStringField
      FieldName = 'Tel_rep2'
      Size = 50
    end
    object Q_piece_manquante_listeNumQuittusFiscal: TStringField
      FieldName = 'NumQuittusFiscal'
      Size = 30
    end
    object Q_piece_manquante_listedatexpirationCFE: TStringField
      FieldName = 'datexpirationCFE'
      Size = 10
    end
    object Q_piece_manquante_listeEmail: TStringField
      FieldName = 'Email'
      Size = 255
    end
    object Q_piece_manquante_listeRegion: TStringField
      FieldName = 'Region'
      Size = 30
    end
    object Q_piece_manquante_listeId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Q_piece_manquante_listeCategorie: TStringField
      FieldName = 'Categorie'
      ReadOnly = True
      Size = 10
    end
    object Q_piece_manquante_listeSecteur: TStringField
      FieldName = 'Secteur'
      ReadOnly = True
      Size = 15
    end
    object Q_piece_manquante_listeNomEtPrenomElecteur_1: TStringField
      FieldName = 'NomEtPrenomElecteur_1'
      ReadOnly = True
      Size = 255
    end
    object Q_piece_manquante_listeNIF_1: TLargeintField
      FieldName = 'NIF_1'
      ReadOnly = True
    end
    object Q_piece_manquante_listeID_1: TIntegerField
      FieldName = 'ID_1'
      ReadOnly = True
    end
    object Q_piece_manquante_listeLibelle_piece: TStringField
      FieldName = 'Libelle_piece'
      ReadOnly = True
      Required = True
      Size = 15
    end
    object Q_piece_manquante_listeNomEtPrenomElecteur_2: TStringField
      FieldName = 'NomEtPrenomElecteur_2'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object Q_piece_manquante_listeidpiece: TIntegerField
      FieldName = 'idpiece'
      ReadOnly = True
    end
    object Q_piece_manquante_listeNompiece: TStringField
      FieldName = 'Nompiece'
      ReadOnly = True
      Size = 25
    end
    object Q_piece_manquante_listeNomEtPrenomElecteur_3: TStringField
      FieldName = 'NomEtPrenomElecteur_3'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object Q_piece_manquante_listelist_secteur: TMemoField
      FieldName = 'list_secteur'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_piece_manquante_listepieces_manquantes: TMemoField
      FieldName = 'pieces_manquantes'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_piece_manquante_listepieces_fournies: TMemoField
      FieldName = 'pieces_fournies'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Q_piece_manquante_listelist_categories: TMemoField
      FieldName = 'list_categories'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object frxReport5: TfrxReport
    Version = '6.6.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44145.505174467600000000
    ReportOptions.LastChange = 44145.505174467600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1248
    Top = 488
    Datasets = <
      item
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 185.196970000000000000
        Top = 147.401670000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
        RowCount = 0
        object frxDBDataset1NomEtPrenomElecteur: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 48.590600000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'RaisonSocial'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."RaisonSocial"]')
          ParentFont = False
        end
        object frxDBDataset1TypePieceId: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 105.181200000000000000
          Width = 45.354360000000000000
          Height = 185.196970000000000000
          DataField = 'TypePieceId'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."TypePieceId"]')
          ParentFont = False
        end
        object frxDBDataset1DateDelivrance: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 150.535560000000000000
          Width = 64.252010000000000000
          Height = 185.196970000000000000
          DataField = 'DateDelivrance'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."DateDelivrance"]')
          ParentFont = False
        end
        object frxDBDataset1DateExpiration: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 214.787570000000000000
          Width = 60.472480000000000000
          Height = 185.196970000000000000
          DataField = 'DateExpiration'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."DateExpiration"]')
          ParentFont = False
        end
        object frxDBDataset1NIF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 275.039580000000000000
          Width = 49.133890000000000000
          Height = 185.196970000000000000
          DataField = 'NIF'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."NIF"]')
          ParentFont = False
        end
        object frxDBDataset1RaisonSocial: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 49.133890000000000000
          Height = 185.196970000000000000
          DataField = 'NomEtPrenomElecteur'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."NomEtPrenomElecteur"]')
          ParentFont = False
        end
        object frxDBDataset1Secteur_list: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 323.645950000000000000
          Width = 49.133890000000000000
          Height = 185.196970000000000000
          DataField = 'list_secteur'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."list_secteur"]')
          ParentFont = False
        end
        object frxDBDataset1Piece_fournies: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 444.897960000000000000
          Top = 0.559060000000000000
          Width = 102.047310000000000000
          Height = 185.196970000000000000
          DataField = 'pieces_fournies'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."pieces_fournies"]')
          ParentFont = False
        end
        object frxDBDataset1type: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 546.504330000000000000
          Width = 109.606370000000000000
          Height = 185.196970000000000000
          DataField = 'pieces_manquantes'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."pieces_manquantes"]')
          ParentFont = False
        end
        object frxDBDataset1Representant1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 818.717070000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'Representant1'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."Representant1"]')
          ParentFont = False
        end
        object frxDBDataset1Representant2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 932.102970000000000000
          Width = 52.913420000000000000
          Height = 185.196970000000000000
          DataField = 'Representant2'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."Representant2"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 875.410020000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'Tel_rep1'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."Tel_rep1"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 985.016390000000000000
          Width = 60.472480000000000000
          Height = 185.196970000000000000
          DataField = 'Tel_rep2'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset3."Tel_rep2"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 758.244590000000000000
          Width = 60.472480000000000000
          Height = 185.196970000000000000
          DataField = 'Tel'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."Tel"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 709.110700000000000000
          Width = 49.133890000000000000
          Height = 185.196970000000000000
          DataField = 'Adresse'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."Adresse"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 656.197280000000000000
          Width = 52.913420000000000000
          Height = 185.196970000000000000
          DataField = 'Email'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."Email"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 372.897960000000000000
          Width = 71.811070000000000000
          Height = 185.196970000000000000
          DataField = 'list_categories'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset4."list_categories"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 69.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 48.590600000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Raison Social')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 105.181200000000000000
          Width = 45.354360000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Type de piece')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 150.535560000000000000
          Width = 64.252010000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Date de dlivrance')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 214.787570000000000000
          Width = 60.472480000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Date d'#39'expiration')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 274.905690000000000000
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'NIF')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Nom et prenom')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 323.645950000000000000
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Secteurs')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 444.984540000000000000
          Width = 102.047310000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Pieces fournies')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 546.504330000000000000
          Width = 109.606370000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Pieces manquantes')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 818.717070000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Referant 1')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 932.102970000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Referant 2')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 875.410020000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Tel Referent 1')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 985.016390000000000000
          Width = 60.472480000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Tel Referent 2')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 656.197280000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Email')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 709.110700000000000000
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Adresse')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 758.244590000000000000
          Width = 60.472480000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Telephone')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 373.173470000000000000
          Width = 71.811070000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Categories')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 355.275820000000000000
        Width = 1046.929810000000000000
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 975.016390000000000000
          Top = 3.000000000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 774.803650000000000000
          Top = 3.779530000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Total :[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = False
    DataSet = Q_piece_manquante_liste
    BCDToCurrency = False
    Left = 1264
    Top = 448
  end
  object frxReport6: TfrxReport
    Version = '6.6.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44145.505174467600000000
    ReportOptions.LastChange = 44145.505174467600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1248
    Top = 560
    Datasets = <
      item
        DataSet = frxDBDataset6
        DataSetName = 'frxDBDataset6'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 185.196970000000000000
        Top = 147.401670000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset6
        DataSetName = 'frxDBDataset6'
        RowCount = 0
        object frxDBDataset1NomEtPrenomElecteur: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 48.590600000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'RaisonSocial'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset6."RaisonSocial"]')
          ParentFont = False
        end
        object frxDBDataset1TypePieceId: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 105.181200000000000000
          Width = 45.354360000000000000
          Height = 185.196970000000000000
          DataField = 'TypePieceId'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset6."TypePieceId"]')
          ParentFont = False
        end
        object frxDBDataset1DateDelivrance: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 150.535560000000000000
          Width = 64.252010000000000000
          Height = 185.196970000000000000
          DataField = 'DateDelivrance'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset6."DateDelivrance"]')
          ParentFont = False
        end
        object frxDBDataset1DateExpiration: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 214.787570000000000000
          Width = 60.472480000000000000
          Height = 185.196970000000000000
          DataField = 'DateExpiration'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset6."DateExpiration"]')
          ParentFont = False
        end
        object frxDBDataset1NIF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 275.039580000000000000
          Width = 49.133890000000000000
          Height = 185.196970000000000000
          DataField = 'NIF'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset6."NIF"]')
          ParentFont = False
        end
        object frxDBDataset1RaisonSocial: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 49.133890000000000000
          Height = 185.196970000000000000
          DataField = 'NomEtPrenomElecteur'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset6."NomEtPrenomElecteur"]')
          ParentFont = False
        end
        object frxDBDataset1Secteur_list: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 323.645950000000000000
          Width = 49.133890000000000000
          Height = 185.196970000000000000
          DataField = 'list_secteur'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset6."list_secteur"]')
          ParentFont = False
        end
        object frxDBDataset1Piece_fournies: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 372.897960000000000000
          Top = 0.559060000000000000
          Width = 102.047310000000000000
          Height = 185.196970000000000000
          DataField = 'pieces_fournies'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset6."pieces_fournies"]')
          ParentFont = False
        end
        object frxDBDataset1type: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 474.504330000000000000
          Width = 109.606370000000000000
          Height = 185.196970000000000000
          DataField = 'pieces_manquantes'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset6."pieces_manquantes"]')
          ParentFont = False
        end
        object frxDBDataset1Representant1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 746.717070000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'Representant1'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset6."Representant1"]')
          ParentFont = False
        end
        object frxDBDataset1Representant2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 860.102970000000000000
          Width = 52.913420000000000000
          Height = 185.196970000000000000
          DataField = 'Representant2'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset6."Representant2"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 803.410020000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DataField = 'Tel_rep1'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset6."Tel_rep1"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 913.016390000000000000
          Width = 60.472480000000000000
          Height = 185.196970000000000000
          DataField = 'Tel_rep2'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset6."Tel_rep2"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 686.244590000000000000
          Width = 60.472480000000000000
          Height = 185.196970000000000000
          DataField = 'Tel'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset6."Tel"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 637.110700000000000000
          Width = 49.133890000000000000
          Height = 185.196970000000000000
          DataField = 'Adresse'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset6."Adresse"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 584.197280000000000000
          Width = 52.913420000000000000
          Height = 185.196970000000000000
          DataField = 'Email'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset6."Email"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 973.118740000000000000
          Width = 71.811070000000000000
          Height = 185.196970000000000000
          DataField = 'Region'
          DataSet = frxDBDataset6
          DataSetName = 'frxDBDataset6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset6."Region"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 69.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 48.590600000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Raison Social')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 105.181200000000000000
          Width = 45.354360000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Type de piece')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 150.535560000000000000
          Width = 64.252010000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Date de dlivrance')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 214.787570000000000000
          Width = 60.472480000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Date d'#39'expiration')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 274.905690000000000000
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'NIF')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Nom et prenom')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 323.645950000000000000
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Secteurs')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 372.984540000000000000
          Width = 102.047310000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Pieces fournies')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 474.504330000000000000
          Width = 109.606370000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Pieces manquantes')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 746.717070000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Referant 1')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 860.102970000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Referant 2')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 803.410020000000000000
          Width = 56.692950000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Tel Referent 1')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 913.016390000000000000
          Width = 60.472480000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Tel Referent 2')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 584.197280000000000000
          Width = 52.913420000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Email')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 637.110700000000000000
          Width = 49.133890000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Adresse')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 686.244590000000000000
          Width = 60.472480000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Telephone')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 973.394250000000000000
          Width = 71.811070000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Region')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 355.275820000000000000
        Width = 1046.929810000000000000
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 975.016390000000000000
          Top = 3.000000000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 774.803650000000000000
          Top = 3.779530000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Total :[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset6: TfrxDBDataset
    UserName = 'frxDBDataset6'
    CloseDataSource = False
    DataSet = Q_piece_manquante_liste_R
    BCDToCurrency = False
    Left = 1328
    Top = 560
  end
  object Q_piece_manquante_liste_R: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'SELECT *, GROUP_CONCAT(DISTINCT categories.Secteur SEPARATOR '#39','#39 +
        ') as list_secteur, GROUP_CONCAT(DISTINCT pieces_manquante.Libell' +
        'e_piece SEPARATOR '#39','#39') as pieces_manquantes, GROUP_CONCAT(DISTIN' +
        'CT pieces.Nompiece SEPARATOR '#39','#39') as pieces_fournies from electe' +
        'ur,categories,pieces_manquante,pieces where electeur.NomEtPrenom' +
        'Electeur=pieces_manquante.NomEtPrenomElecteur and pieces_manquan' +
        'te.NomEtPrenomElecteur=pieces.NomEtPrenomElecteur and categories' +
        '.NomEtPrenomElecteur=electeur.NomEtPrenomElecteur and electeur.R' +
        'egion <>'#39'LC'#39' group by electeur.RaisonSocial')
    Left = 1224
    Top = 608
  end
  object UniQuery4: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      
        'SELECT NomEtPrenomElecteur, RaisonSocial,Representant1 from elec' +
        'teur where NomEtPrenomElecteur not IN (select NomEtPrenomElecteu' +
        'r from pieces_manquante) group by electeur.RaisonSocial ORDER BY' +
        ' `electeur`.`NomEtPrenomElecteur` ASC')
    Active = True
    Left = 888
    Top = 24
  end
  object Q_categorie: TUniQuery
    Connection = UniConnection1
    Left = 1080
    Top = 344
  end
end
