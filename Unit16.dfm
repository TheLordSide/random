object Form16: TForm16
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'SIMULATION LOME COMMUNE UPDATE'
  ClientHeight = 824
  ClientWidth = 1466
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1466
    Height = 824
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'COMMERCE'
      object GridPanel1: TGridPanel
        Left = 0
        Top = 0
        Width = 1458
        Height = 380
        Align = alTop
        BevelOuter = bvNone
        ColumnCollection = <
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = Panel1
            Row = 0
          end
          item
            Column = 1
            Control = Panel2
            Row = 0
          end
          item
            Column = 2
            Control = Panel3
            Row = 0
          end
          item
            Column = 3
            Control = Panel4
            Row = 0
          end
          item
            Column = 0
            Control = Label17
            Row = 1
          end
          item
            Column = 1
            Control = Label18
            Row = 1
          end
          item
            Column = 2
            Control = Label19
            Row = 1
          end
          item
            Column = 3
            Control = Label20
            Row = 1
          end
          item
            Column = 0
            Control = GridPanel2
            Row = 2
          end
          item
            Column = 1
            Control = GridPanel3
            Row = 2
          end
          item
            Column = 2
            Control = GridPanel4
            Row = 2
          end
          item
            Column = 3
            Control = GridPanel5
            Row = 2
          end
          item
            Column = 4
            Control = Panel5
            Row = 0
          end
          item
            Column = 4
            Control = Label21
            Row = 1
          end
          item
            Column = 4
            Control = GridPanel6
            Row = 2
          end
          item
            Column = 1
            Control = W7SpeedButton2
            Row = 3
          end
          item
            Column = 2
            Control = W7SpeedButton3
            Row = 3
          end
          item
            Column = 3
            Control = W7SpeedButton4
            Row = 3
          end
          item
            Column = 4
            Control = W7SpeedButton5
            Row = 3
          end
          item
            Column = 0
            Control = W7SpeedButton1
            Row = 3
          end>
        RowCollection = <
          item
            Value = 25.000000000000000000
          end
          item
            Value = 25.000000000000000000
          end
          item
            Value = 25.000000000000000000
          end
          item
            Value = 25.000000000000000000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 0
        DesignSize = (
          1458
          380)
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 291
          Height = 95
          Align = alClient
          BevelOuter = bvNone
          Caption = 'CATEGORIE A'
          TabOrder = 0
        end
        object Panel2: TPanel
          Left = 291
          Top = 0
          Width = 291
          Height = 95
          Align = alClient
          BevelOuter = bvNone
          Caption = 'CATEGORIE B'
          TabOrder = 1
        end
        object Panel3: TPanel
          Left = 582
          Top = 0
          Width = 291
          Height = 95
          Align = alClient
          BevelOuter = bvNone
          Caption = 'CATEGORIE C'
          TabOrder = 2
        end
        object Panel4: TPanel
          Left = 873
          Top = 0
          Width = 291
          Height = 95
          Align = alClient
          BevelOuter = bvNone
          Caption = 'CATEGORIE D'
          TabOrder = 3
        end
        object Label17: TLabel
          Left = 141
          Top = 132
          Width = 9
          Height = 21
          Anchors = []
          Caption = '0'
          ExplicitLeft = 131
          ExplicitTop = 305
        end
        object Label18: TLabel
          Left = 432
          Top = 132
          Width = 9
          Height = 21
          Anchors = []
          Caption = '0'
          ExplicitLeft = 450
          ExplicitTop = 305
        end
        object Label19: TLabel
          Left = 723
          Top = 132
          Width = 9
          Height = 21
          Anchors = []
          Caption = '0'
          ExplicitLeft = 769
          ExplicitTop = 305
        end
        object Label20: TLabel
          Left = 1014
          Top = 132
          Width = 9
          Height = 21
          Anchors = []
          Caption = '0'
          ExplicitLeft = 1089
          ExplicitTop = 305
        end
        object GridPanel2: TGridPanel
          Left = 0
          Top = 190
          Width = 291
          Height = 95
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
              Control = Label1
              Row = 0
            end
            item
              Column = 1
              Control = Label2
              Row = 0
            end
            item
              Column = 0
              Control = Label9
              Row = 1
            end
            item
              Column = 1
              Control = Label10
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 4
          DesignSize = (
            291
            95)
          object Label1: TLabel
            Left = 35
            Top = 13
            Width = 74
            Height = 21
            Anchors = []
            Caption = 'STATIQUE'
            ExplicitLeft = 43
            ExplicitTop = 55
          end
          object Label2: TLabel
            Left = 168
            Top = 13
            Width = 99
            Height = 21
            Anchors = []
            Caption = 'DYNAMIQUE'
            ExplicitLeft = 180
            ExplicitTop = 55
          end
          object Label9: TLabel
            Left = 68
            Top = 60
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 78
            ExplicitTop = 83
          end
          object Label10: TLabel
            Left = 213
            Top = 60
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 236
            ExplicitTop = 83
          end
        end
        object GridPanel3: TGridPanel
          Left = 291
          Top = 190
          Width = 291
          Height = 95
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
              Control = Label3
              Row = 0
            end
            item
              Column = 1
              Control = Label4
              Row = 0
            end
            item
              Column = 0
              Control = Label11
              Row = 1
            end
            item
              Column = 1
              Control = Label12
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 5
          DesignSize = (
            291
            95)
          object Label3: TLabel
            Left = 35
            Top = 13
            Width = 74
            Height = 21
            Anchors = []
            Caption = 'STATIQUE'
            ExplicitLeft = 73
            ExplicitTop = 55
          end
          object Label4: TLabel
            Left = 168
            Top = 13
            Width = 99
            Height = 21
            Anchors = []
            Caption = 'DYNAMIQUE'
            ExplicitLeft = 223
            ExplicitTop = 55
          end
          object Label11: TLabel
            Left = 68
            Top = 60
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 78
            ExplicitTop = 83
          end
          object Label12: TLabel
            Left = 213
            Top = 60
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 236
            ExplicitTop = 83
          end
        end
        object GridPanel4: TGridPanel
          Left = 582
          Top = 190
          Width = 291
          Height = 95
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
              Control = Label5
              Row = 0
            end
            item
              Column = 1
              Control = Label6
              Row = 0
            end
            item
              Column = 0
              Control = Label13
              Row = 1
            end
            item
              Column = 1
              Control = Label14
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 6
          DesignSize = (
            291
            95)
          object Label5: TLabel
            Left = 35
            Top = 13
            Width = 74
            Height = 21
            Anchors = []
            Caption = 'STATIQUE'
            ExplicitLeft = 73
            ExplicitTop = 55
          end
          object Label6: TLabel
            Left = 168
            Top = 13
            Width = 99
            Height = 21
            Anchors = []
            Caption = 'DYNAMIQUE'
            ExplicitLeft = 223
            ExplicitTop = 55
          end
          object Label13: TLabel
            Left = 68
            Top = 60
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 78
            ExplicitTop = 83
          end
          object Label14: TLabel
            Left = 213
            Top = 60
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 236
            ExplicitTop = 83
          end
        end
        object GridPanel5: TGridPanel
          Left = 873
          Top = 190
          Width = 291
          Height = 95
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
              Control = Label7
              Row = 0
            end
            item
              Column = 1
              Control = Label8
              Row = 0
            end
            item
              Column = 0
              Control = Label15
              Row = 1
            end
            item
              Column = 1
              Control = Label16
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 7
          DesignSize = (
            291
            95)
          object Label7: TLabel
            Left = 35
            Top = 13
            Width = 74
            Height = 21
            Anchors = []
            Caption = 'STATIQUE'
            ExplicitLeft = 73
            ExplicitTop = 55
          end
          object Label8: TLabel
            Left = 168
            Top = 13
            Width = 99
            Height = 21
            Anchors = []
            Caption = 'DYNAMIQUE'
            ExplicitLeft = 223
            ExplicitTop = 55
          end
          object Label15: TLabel
            Left = 68
            Top = 60
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 78
            ExplicitTop = 83
          end
          object Label16: TLabel
            Left = 213
            Top = 60
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 238
            ExplicitTop = 83
          end
        end
        object Panel5: TPanel
          Left = 1164
          Top = 0
          Width = 294
          Height = 95
          Align = alClient
          BevelOuter = bvNone
          Caption = 'CATEGORIE N/A'
          TabOrder = 8
        end
        object Label21: TLabel
          Left = 1306
          Top = 132
          Width = 9
          Height = 21
          Anchors = []
          Caption = '0'
          ExplicitLeft = 1145
          ExplicitTop = 179
        end
        object GridPanel6: TGridPanel
          Left = 1164
          Top = 190
          Width = 294
          Height = 95
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
              Control = Label22
              Row = 0
            end
            item
              Column = 1
              Control = Label23
              Row = 0
            end
            item
              Column = 0
              Control = Label24
              Row = 1
            end
            item
              Column = 1
              Control = Label25
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 9
          DesignSize = (
            294
            95)
          object Label22: TLabel
            Left = 36
            Top = 13
            Width = 74
            Height = 21
            Anchors = []
            Caption = 'STATIQUE'
            ExplicitLeft = 73
            ExplicitTop = 55
          end
          object Label23: TLabel
            Left = 171
            Top = 13
            Width = 99
            Height = 21
            Anchors = []
            Caption = 'DYNAMIQUE'
            ExplicitLeft = 223
            ExplicitTop = 55
          end
          object Label24: TLabel
            Left = 69
            Top = 60
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 78
            ExplicitTop = 83
          end
          object Label25: TLabel
            Left = 216
            Top = 60
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 238
            ExplicitTop = 83
          end
        end
        object W7SpeedButton2: TW7SpeedButton
          Left = 361
          Top = 312
          Width = 150
          Height = 40
          Caption = 'DEPLACER'
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = []
          ParentFont = False
          OnClick = W7SpeedButton2Click
          ExplicitLeft = 362
          ExplicitTop = 317
        end
        object W7SpeedButton3: TW7SpeedButton
          Left = 652
          Top = 312
          Width = 150
          Height = 40
          Caption = '1'
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = []
          ParentFont = False
          OnClick = W7SpeedButton3Click
          ExplicitLeft = 653
          ExplicitTop = 317
        end
        object W7SpeedButton4: TW7SpeedButton
          Left = 943
          Top = 312
          Width = 150
          Height = 40
          Caption = 'DEPLACER'
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = []
          ParentFont = False
          OnClick = W7SpeedButton4Click
          ExplicitLeft = 944
          ExplicitTop = 317
        end
        object W7SpeedButton5: TW7SpeedButton
          Left = 1236
          Top = 312
          Width = 150
          Height = 40
          Caption = 'DEPLACER'
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = []
          ParentFont = False
          OnClick = W7SpeedButton5Click
          ExplicitTop = 317
        end
        object W7SpeedButton1: TW7SpeedButton
          Left = 70
          Top = 312
          Width = 150
          Height = 40
          Caption = 'DEPLACER'
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = []
          ParentFont = False
          OnClick = W7SpeedButton1Click
          ExplicitLeft = 69
          ExplicitTop = 310
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'INDUSTRIE'
      ImageIndex = 1
      object GridPanel7: TGridPanel
        Left = 0
        Top = 0
        Width = 1458
        Height = 380
        Align = alTop
        ColumnCollection = <
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = Panel6
            Row = 0
          end
          item
            Column = 1
            Control = Panel7
            Row = 0
          end
          item
            Column = 2
            Control = Panel8
            Row = 0
          end
          item
            Column = 3
            Control = Panel9
            Row = 0
          end
          item
            Column = 0
            Control = Label26
            Row = 1
          end
          item
            Column = 1
            Control = Label27
            Row = 1
          end
          item
            Column = 2
            Control = Label28
            Row = 1
          end
          item
            Column = 3
            Control = Label29
            Row = 1
          end
          item
            Column = 0
            Control = GridPanel8
            Row = 2
          end
          item
            Column = 1
            Control = GridPanel9
            Row = 2
          end
          item
            Column = 2
            Control = GridPanel10
            Row = 2
          end
          item
            Column = 3
            Control = GridPanel11
            Row = 2
          end
          item
            Column = 4
            Control = Panel10
            Row = 0
          end
          item
            Column = 4
            Control = Label46
            Row = 1
          end
          item
            Column = 4
            Control = GridPanel12
            Row = 2
          end
          item
            Column = 1
            Control = W7SpeedButton6
            Row = 3
          end
          item
            Column = 2
            Control = W7SpeedButton7
            Row = 3
          end
          item
            Column = 3
            Control = W7SpeedButton8
            Row = 3
          end
          item
            Column = 4
            Control = W7SpeedButton9
            Row = 3
          end
          item
            Column = 0
            Control = W7SpeedButton10
            Row = 3
          end>
        RowCollection = <
          item
            Value = 25.000000000000000000
          end
          item
            Value = 25.000000000000000000
          end
          item
            Value = 25.000000000000000000
          end
          item
            Value = 25.000000000000000000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 0
        DesignSize = (
          1458
          380)
        object Panel6: TPanel
          Left = 1
          Top = 1
          Width = 291
          Height = 94
          Align = alClient
          Caption = 'CATEGORIE A'
          TabOrder = 0
        end
        object Panel7: TPanel
          Left = 292
          Top = 1
          Width = 291
          Height = 94
          Align = alClient
          Caption = 'CATEGORIE B'
          TabOrder = 1
        end
        object Panel8: TPanel
          Left = 583
          Top = 1
          Width = 291
          Height = 94
          Align = alClient
          Caption = 'CATEGORIE C'
          TabOrder = 2
        end
        object Panel9: TPanel
          Left = 874
          Top = 1
          Width = 291
          Height = 94
          Align = alClient
          Caption = 'CATEGORIE D'
          TabOrder = 3
        end
        object Label26: TLabel
          Left = 142
          Top = 131
          Width = 9
          Height = 21
          Anchors = []
          Caption = '0'
          ExplicitLeft = 131
          ExplicitTop = 305
        end
        object Label27: TLabel
          Left = 433
          Top = 131
          Width = 9
          Height = 21
          Anchors = []
          Caption = '0'
          ExplicitLeft = 450
          ExplicitTop = 305
        end
        object Label28: TLabel
          Left = 724
          Top = 131
          Width = 9
          Height = 21
          Anchors = []
          Caption = '0'
          ExplicitLeft = 769
          ExplicitTop = 305
        end
        object Label29: TLabel
          Left = 1015
          Top = 131
          Width = 9
          Height = 21
          Anchors = []
          Caption = '0'
          ExplicitLeft = 1089
          ExplicitTop = 305
        end
        object GridPanel8: TGridPanel
          Left = 1
          Top = 189
          Width = 291
          Height = 94
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
              Column = 0
              Control = Label30
              Row = 0
            end
            item
              Column = 1
              Control = Label31
              Row = 0
            end
            item
              Column = 0
              Control = Label32
              Row = 1
            end
            item
              Column = 1
              Control = Label33
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 4
          DesignSize = (
            291
            94)
          object Label30: TLabel
            Left = 36
            Top = 13
            Width = 74
            Height = 21
            Anchors = []
            Caption = 'STATIQUE'
            ExplicitLeft = 43
            ExplicitTop = 55
          end
          object Label31: TLabel
            Left = 168
            Top = 13
            Width = 99
            Height = 21
            Anchors = []
            Caption = 'DYNAMIQUE'
            ExplicitLeft = 180
            ExplicitTop = 55
          end
          object Label32: TLabel
            Left = 68
            Top = 59
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 78
            ExplicitTop = 83
          end
          object Label33: TLabel
            Left = 213
            Top = 59
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 236
            ExplicitTop = 83
          end
        end
        object GridPanel9: TGridPanel
          Left = 292
          Top = 189
          Width = 291
          Height = 94
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
              Column = 0
              Control = Label34
              Row = 0
            end
            item
              Column = 1
              Control = Label35
              Row = 0
            end
            item
              Column = 0
              Control = Label36
              Row = 1
            end
            item
              Column = 1
              Control = Label37
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 5
          DesignSize = (
            291
            94)
          object Label34: TLabel
            Left = 36
            Top = 13
            Width = 74
            Height = 21
            Anchors = []
            Caption = 'STATIQUE'
            ExplicitLeft = 73
            ExplicitTop = 55
          end
          object Label35: TLabel
            Left = 168
            Top = 13
            Width = 99
            Height = 21
            Anchors = []
            Caption = 'DYNAMIQUE'
            ExplicitLeft = 223
            ExplicitTop = 55
          end
          object Label36: TLabel
            Left = 68
            Top = 59
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 78
            ExplicitTop = 83
          end
          object Label37: TLabel
            Left = 213
            Top = 59
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 236
            ExplicitTop = 83
          end
        end
        object GridPanel10: TGridPanel
          Left = 583
          Top = 189
          Width = 291
          Height = 94
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
              Column = 0
              Control = Label38
              Row = 0
            end
            item
              Column = 1
              Control = Label39
              Row = 0
            end
            item
              Column = 0
              Control = Label40
              Row = 1
            end
            item
              Column = 1
              Control = Label41
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 6
          DesignSize = (
            291
            94)
          object Label38: TLabel
            Left = 36
            Top = 13
            Width = 74
            Height = 21
            Anchors = []
            Caption = 'STATIQUE'
            ExplicitLeft = 73
            ExplicitTop = 55
          end
          object Label39: TLabel
            Left = 168
            Top = 13
            Width = 99
            Height = 21
            Anchors = []
            Caption = 'DYNAMIQUE'
            ExplicitLeft = 223
            ExplicitTop = 55
          end
          object Label40: TLabel
            Left = 68
            Top = 59
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 78
            ExplicitTop = 83
          end
          object Label41: TLabel
            Left = 213
            Top = 59
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 236
            ExplicitTop = 83
          end
        end
        object GridPanel11: TGridPanel
          Left = 874
          Top = 189
          Width = 291
          Height = 94
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
              Column = 0
              Control = Label42
              Row = 0
            end
            item
              Column = 1
              Control = Label43
              Row = 0
            end
            item
              Column = 0
              Control = Label44
              Row = 1
            end
            item
              Column = 1
              Control = Label45
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 7
          DesignSize = (
            291
            94)
          object Label42: TLabel
            Left = 36
            Top = 13
            Width = 74
            Height = 21
            Anchors = []
            Caption = 'STATIQUE'
            ExplicitLeft = 73
            ExplicitTop = 55
          end
          object Label43: TLabel
            Left = 168
            Top = 13
            Width = 99
            Height = 21
            Anchors = []
            Caption = 'DYNAMIQUE'
            ExplicitLeft = 223
            ExplicitTop = 55
          end
          object Label44: TLabel
            Left = 68
            Top = 59
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 78
            ExplicitTop = 83
          end
          object Label45: TLabel
            Left = 213
            Top = 59
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 238
            ExplicitTop = 83
          end
        end
        object Panel10: TPanel
          Left = 1165
          Top = 1
          Width = 292
          Height = 94
          Align = alClient
          Caption = 'CATEGORIE E'
          TabOrder = 8
        end
        object Label46: TLabel
          Left = 1306
          Top = 131
          Width = 9
          Height = 21
          Anchors = []
          Caption = '0'
          ExplicitLeft = 1145
          ExplicitTop = 179
        end
        object GridPanel12: TGridPanel
          Left = 1165
          Top = 189
          Width = 292
          Height = 94
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
              Column = 0
              Control = Label47
              Row = 0
            end
            item
              Column = 1
              Control = Label48
              Row = 0
            end
            item
              Column = 0
              Control = Label49
              Row = 1
            end
            item
              Column = 1
              Control = Label50
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 9
          DesignSize = (
            292
            94)
          object Label47: TLabel
            Left = 36
            Top = 13
            Width = 74
            Height = 21
            Anchors = []
            Caption = 'STATIQUE'
            ExplicitLeft = 73
            ExplicitTop = 55
          end
          object Label48: TLabel
            Left = 169
            Top = 13
            Width = 99
            Height = 21
            Anchors = []
            Caption = 'DYNAMIQUE'
            ExplicitLeft = 223
            ExplicitTop = 55
          end
          object Label49: TLabel
            Left = 69
            Top = 59
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 78
            ExplicitTop = 83
          end
          object Label50: TLabel
            Left = 214
            Top = 59
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 238
            ExplicitTop = 83
          end
        end
        object W7SpeedButton6: TW7SpeedButton
          Left = 362
          Top = 310
          Width = 150
          Height = 40
          Caption = 'DEPLACER'
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = []
          ParentFont = False
          OnClick = W7SpeedButton6Click
          ExplicitTop = 317
        end
        object W7SpeedButton7: TW7SpeedButton
          Left = 653
          Top = 310
          Width = 150
          Height = 40
          Caption = 'DEPLACER'
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = []
          ParentFont = False
          OnClick = W7SpeedButton7Click
          ExplicitLeft = 655
        end
        object W7SpeedButton8: TW7SpeedButton
          Left = 944
          Top = 310
          Width = 150
          Height = 40
          Caption = 'DEPLACER'
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = []
          ParentFont = False
          OnClick = W7SpeedButton8Click
          ExplicitLeft = 946
        end
        object W7SpeedButton9: TW7SpeedButton
          Left = 1236
          Top = 310
          Width = 150
          Height = 40
          Caption = 'DEPLACER'
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = []
          ParentFont = False
          OnClick = W7SpeedButton9Click
          ExplicitLeft = 1234
        end
        object W7SpeedButton10: TW7SpeedButton
          Left = 71
          Top = 310
          Width = 150
          Height = 40
          Caption = 'DEPLACER'
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = []
          ParentFont = False
          OnClick = W7SpeedButton10Click
          ExplicitLeft = 69
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'SERVICE'
      ImageIndex = 2
      object GridPanel13: TGridPanel
        AlignWithMargins = True
        Left = 3
        Top = 471
        Width = 1452
        Height = 234
        Align = alTop
        ColumnCollection = <
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = Panel11
            Row = 0
          end
          item
            Column = 1
            Control = Panel12
            Row = 0
          end
          item
            Column = 2
            Control = Panel13
            Row = 0
          end
          item
            Column = 3
            Control = Panel14
            Row = 0
          end
          item
            Column = 0
            Control = Label51
            Row = 1
          end
          item
            Column = 1
            Control = Label52
            Row = 1
          end
          item
            Column = 2
            Control = Label53
            Row = 1
          end
          item
            Column = 3
            Control = Label54
            Row = 1
          end
          item
            Column = 0
            Control = GridPanel14
            Row = 2
          end
          item
            Column = 1
            Control = GridPanel15
            Row = 2
          end
          item
            Column = 2
            Control = GridPanel16
            Row = 2
          end
          item
            Column = 3
            Control = GridPanel17
            Row = 2
          end
          item
            Column = 1
            Control = W7SpeedButton11
            Row = 3
          end
          item
            Column = 2
            Control = W7SpeedButton12
            Row = 3
          end
          item
            Column = 3
            Control = W7SpeedButton13
            Row = 3
          end
          item
            Column = 0
            Control = W7SpeedButton15
            Row = 3
          end>
        RowCollection = <
          item
            Value = 25.000000000000000000
          end
          item
            Value = 25.000000000000000000
          end
          item
            Value = 25.000000000000000000
          end
          item
            Value = 25.000000000000000000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 0
        DesignSize = (
          1452
          234)
        object Panel11: TPanel
          Left = 1
          Top = 1
          Width = 290
          Height = 58
          Align = alClient
          Caption = 'CATEGORIE D1G3'
          TabOrder = 0
        end
        object Panel12: TPanel
          Left = 291
          Top = 1
          Width = 290
          Height = 58
          Align = alClient
          Caption = 'CATEGORIE D1G4'
          TabOrder = 1
        end
        object Panel13: TPanel
          Left = 581
          Top = 1
          Width = 290
          Height = 58
          Align = alClient
          Caption = 'CATEGORIE D1G5'
          TabOrder = 2
        end
        object Panel14: TPanel
          Left = 871
          Top = 1
          Width = 290
          Height = 58
          Align = alClient
          Caption = 'CATEGORIE D2'
          TabOrder = 3
        end
        object Label51: TLabel
          Left = 141
          Top = 77
          Width = 9
          Height = 21
          Anchors = []
          Caption = '0'
          ExplicitLeft = 131
          ExplicitTop = 305
        end
        object Label52: TLabel
          Left = 431
          Top = 77
          Width = 9
          Height = 21
          Anchors = []
          Caption = '0'
          ExplicitLeft = 450
          ExplicitTop = 305
        end
        object Label53: TLabel
          Left = 721
          Top = 77
          Width = 9
          Height = 21
          Anchors = []
          Caption = '0'
          ExplicitLeft = 769
          ExplicitTop = 305
        end
        object Label54: TLabel
          Left = 1011
          Top = 77
          Width = 9
          Height = 21
          Anchors = []
          Caption = '0'
          ExplicitLeft = 1089
          ExplicitTop = 305
        end
        object GridPanel14: TGridPanel
          Left = 1
          Top = 117
          Width = 290
          Height = 58
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
              Column = 0
              Control = Label55
              Row = 0
            end
            item
              Column = 1
              Control = Label56
              Row = 0
            end
            item
              Column = 0
              Control = Label57
              Row = 1
            end
            item
              Column = 1
              Control = Label58
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 4
          DesignSize = (
            290
            58)
          object Label55: TLabel
            Left = 36
            Top = 4
            Width = 74
            Height = 21
            Anchors = []
            Caption = 'STATIQUE'
            ExplicitLeft = 43
            ExplicitTop = 55
          end
          object Label56: TLabel
            Left = 167
            Top = 4
            Width = 99
            Height = 21
            Anchors = []
            Caption = 'DYNAMIQUE'
            ExplicitLeft = 180
            ExplicitTop = 55
          end
          object Label57: TLabel
            Left = 68
            Top = 32
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 78
            ExplicitTop = 83
          end
          object Label58: TLabel
            Left = 212
            Top = 32
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 236
            ExplicitTop = 83
          end
        end
        object GridPanel15: TGridPanel
          Left = 291
          Top = 117
          Width = 290
          Height = 58
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
              Column = 0
              Control = Label59
              Row = 0
            end
            item
              Column = 1
              Control = Label60
              Row = 0
            end
            item
              Column = 0
              Control = Label61
              Row = 1
            end
            item
              Column = 1
              Control = Label62
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 5
          DesignSize = (
            290
            58)
          object Label59: TLabel
            Left = 36
            Top = 4
            Width = 74
            Height = 21
            Anchors = []
            Caption = 'STATIQUE'
            ExplicitLeft = 73
            ExplicitTop = 55
          end
          object Label60: TLabel
            Left = 167
            Top = 4
            Width = 99
            Height = 21
            Anchors = []
            Caption = 'DYNAMIQUE'
            ExplicitLeft = 223
            ExplicitTop = 55
          end
          object Label61: TLabel
            Left = 68
            Top = 32
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 78
            ExplicitTop = 83
          end
          object Label62: TLabel
            Left = 212
            Top = 32
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 236
            ExplicitTop = 83
          end
        end
        object GridPanel16: TGridPanel
          Left = 581
          Top = 117
          Width = 290
          Height = 58
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
              Column = 0
              Control = Label63
              Row = 0
            end
            item
              Column = 1
              Control = Label64
              Row = 0
            end
            item
              Column = 0
              Control = Label65
              Row = 1
            end
            item
              Column = 1
              Control = Label66
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 6
          DesignSize = (
            290
            58)
          object Label63: TLabel
            Left = 36
            Top = 4
            Width = 74
            Height = 21
            Anchors = []
            Caption = 'STATIQUE'
            ExplicitLeft = 73
            ExplicitTop = 55
          end
          object Label64: TLabel
            Left = 167
            Top = 4
            Width = 99
            Height = 21
            Anchors = []
            Caption = 'DYNAMIQUE'
            ExplicitLeft = 223
            ExplicitTop = 55
          end
          object Label65: TLabel
            Left = 68
            Top = 32
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 78
            ExplicitTop = 83
          end
          object Label66: TLabel
            Left = 212
            Top = 32
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 236
            ExplicitTop = 83
          end
        end
        object GridPanel17: TGridPanel
          Left = 871
          Top = 117
          Width = 290
          Height = 58
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
              Column = 0
              Control = Label67
              Row = 0
            end
            item
              Column = 1
              Control = Label68
              Row = 0
            end
            item
              Column = 0
              Control = Label69
              Row = 1
            end
            item
              Column = 1
              Control = Label70
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 7
          DesignSize = (
            290
            58)
          object Label67: TLabel
            Left = 36
            Top = 4
            Width = 74
            Height = 21
            Anchors = []
            Caption = 'STATIQUE'
            ExplicitLeft = 73
            ExplicitTop = 55
          end
          object Label68: TLabel
            Left = 167
            Top = 4
            Width = 99
            Height = 21
            Anchors = []
            Caption = 'DYNAMIQUE'
            ExplicitLeft = 223
            ExplicitTop = 55
          end
          object Label69: TLabel
            Left = 68
            Top = 32
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 78
            ExplicitTop = 83
          end
          object Label70: TLabel
            Left = 212
            Top = 32
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 238
            ExplicitTop = 83
          end
        end
        object W7SpeedButton11: TW7SpeedButton
          Left = 361
          Top = 184
          Width = 150
          Height = 40
          Caption = 'DEPLACER'
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = []
          ParentFont = False
          OnClick = W7SpeedButton11Click
          ExplicitLeft = 362
          ExplicitTop = 317
        end
        object W7SpeedButton12: TW7SpeedButton
          Left = 651
          Top = 184
          Width = 150
          Height = 40
          Caption = 'DEPLACER'
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = []
          ParentFont = False
          OnClick = W7SpeedButton12Click
          ExplicitLeft = 653
          ExplicitTop = 317
        end
        object W7SpeedButton13: TW7SpeedButton
          Left = 941
          Top = 184
          Width = 150
          Height = 40
          Caption = 'DEPLACER'
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = []
          ParentFont = False
          OnClick = W7SpeedButton13Click
          ExplicitLeft = 946
          ExplicitTop = 310
        end
        object W7SpeedButton15: TW7SpeedButton
          Left = 71
          Top = 184
          Width = 150
          Height = 40
          Caption = 'DEPLACER'
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = []
          ParentFont = False
          OnClick = W7SpeedButton15Click
          ExplicitLeft = 69
          ExplicitTop = 310
        end
      end
      object GridPanel19: TGridPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1452
        Height = 246
        Align = alTop
        ColumnCollection = <
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = Panel16
            Row = 0
          end
          item
            Column = 1
            Control = Panel17
            Row = 0
          end
          item
            Column = 2
            Control = Panel18
            Row = 0
          end
          item
            Column = 3
            Control = Panel19
            Row = 0
          end
          item
            Column = 0
            Control = Label76
            Row = 1
          end
          item
            Column = 1
            Control = Label77
            Row = 1
          end
          item
            Column = 2
            Control = Label78
            Row = 1
          end
          item
            Column = 3
            Control = Label79
            Row = 1
          end
          item
            Column = 0
            Control = GridPanel20
            Row = 2
          end
          item
            Column = 1
            Control = GridPanel21
            Row = 2
          end
          item
            Column = 2
            Control = GridPanel22
            Row = 2
          end
          item
            Column = 3
            Control = GridPanel23
            Row = 2
          end
          item
            Column = 4
            Control = Panel20
            Row = 0
          end
          item
            Column = 4
            Control = Label96
            Row = 1
          end
          item
            Column = 4
            Control = GridPanel24
            Row = 2
          end
          item
            Column = 1
            Control = W7SpeedButton16
            Row = 3
          end
          item
            Column = 2
            Control = W7SpeedButton17
            Row = 3
          end
          item
            Column = 3
            Control = W7SpeedButton18
            Row = 3
          end
          item
            Column = 4
            Control = W7SpeedButton19
            Row = 3
          end
          item
            Column = 0
            Control = W7SpeedButton20
            Row = 3
          end>
        RowCollection = <
          item
            Value = 25.000000000000000000
          end
          item
            Value = 25.000000000000000000
          end
          item
            Value = 25.000000000000000000
          end
          item
            Value = 25.000000000000000000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 1
        DesignSize = (
          1452
          246)
        object Panel16: TPanel
          Left = 1
          Top = 1
          Width = 290
          Height = 61
          Align = alClient
          Caption = 'CATEGORIE A'
          TabOrder = 0
        end
        object Panel17: TPanel
          Left = 291
          Top = 1
          Width = 290
          Height = 61
          Align = alClient
          Caption = 'CATEGORIE B1'
          TabOrder = 1
        end
        object Panel18: TPanel
          Left = 581
          Top = 1
          Width = 290
          Height = 61
          Align = alClient
          Caption = 'CATEGORIE B2'
          TabOrder = 2
        end
        object Panel19: TPanel
          Left = 871
          Top = 1
          Width = 290
          Height = 61
          Align = alClient
          Caption = 'CATEGORIE B3'
          TabOrder = 3
        end
        object Label76: TLabel
          Left = 141
          Top = 82
          Width = 9
          Height = 21
          Anchors = []
          Caption = '0'
          ExplicitLeft = 131
          ExplicitTop = 305
        end
        object Label77: TLabel
          Left = 431
          Top = 82
          Width = 9
          Height = 21
          Anchors = []
          Caption = '0'
          ExplicitLeft = 450
          ExplicitTop = 305
        end
        object Label78: TLabel
          Left = 721
          Top = 82
          Width = 9
          Height = 21
          Anchors = []
          Caption = '0'
          ExplicitLeft = 769
          ExplicitTop = 305
        end
        object Label79: TLabel
          Left = 1011
          Top = 82
          Width = 9
          Height = 21
          Anchors = []
          Caption = '0'
          ExplicitLeft = 1089
          ExplicitTop = 305
        end
        object GridPanel20: TGridPanel
          Left = 1
          Top = 123
          Width = 290
          Height = 61
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
              Column = 0
              Control = Label80
              Row = 0
            end
            item
              Column = 1
              Control = Label81
              Row = 0
            end
            item
              Column = 0
              Control = Label82
              Row = 1
            end
            item
              Column = 1
              Control = Label83
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 4
          DesignSize = (
            290
            61)
          object Label80: TLabel
            Left = 36
            Top = 5
            Width = 74
            Height = 21
            Anchors = []
            Caption = 'STATIQUE'
            ExplicitLeft = 43
            ExplicitTop = 55
          end
          object Label81: TLabel
            Left = 167
            Top = 5
            Width = 99
            Height = 21
            Anchors = []
            Caption = 'DYNAMIQUE'
            ExplicitLeft = 180
            ExplicitTop = 55
          end
          object Label82: TLabel
            Left = 68
            Top = 34
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 78
            ExplicitTop = 83
          end
          object Label83: TLabel
            Left = 212
            Top = 34
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 236
            ExplicitTop = 83
          end
        end
        object GridPanel21: TGridPanel
          Left = 291
          Top = 123
          Width = 290
          Height = 61
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
              Column = 0
              Control = Label84
              Row = 0
            end
            item
              Column = 1
              Control = Label85
              Row = 0
            end
            item
              Column = 0
              Control = Label86
              Row = 1
            end
            item
              Column = 1
              Control = Label87
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 5
          DesignSize = (
            290
            61)
          object Label84: TLabel
            Left = 36
            Top = 5
            Width = 74
            Height = 21
            Anchors = []
            Caption = 'STATIQUE'
            ExplicitLeft = 73
            ExplicitTop = 55
          end
          object Label85: TLabel
            Left = 167
            Top = 5
            Width = 99
            Height = 21
            Anchors = []
            Caption = 'DYNAMIQUE'
            ExplicitLeft = 223
            ExplicitTop = 55
          end
          object Label86: TLabel
            Left = 68
            Top = 34
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 78
            ExplicitTop = 83
          end
          object Label87: TLabel
            Left = 212
            Top = 34
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 236
            ExplicitTop = 83
          end
        end
        object GridPanel22: TGridPanel
          Left = 581
          Top = 123
          Width = 290
          Height = 61
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
              Column = 0
              Control = Label88
              Row = 0
            end
            item
              Column = 1
              Control = Label89
              Row = 0
            end
            item
              Column = 0
              Control = Label90
              Row = 1
            end
            item
              Column = 1
              Control = Label91
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 6
          DesignSize = (
            290
            61)
          object Label88: TLabel
            Left = 36
            Top = 5
            Width = 74
            Height = 21
            Anchors = []
            Caption = 'STATIQUE'
            ExplicitLeft = 73
            ExplicitTop = 55
          end
          object Label89: TLabel
            Left = 167
            Top = 5
            Width = 99
            Height = 21
            Anchors = []
            Caption = 'DYNAMIQUE'
            ExplicitLeft = 223
            ExplicitTop = 55
          end
          object Label90: TLabel
            Left = 68
            Top = 34
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 78
            ExplicitTop = 83
          end
          object Label91: TLabel
            Left = 212
            Top = 34
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 236
            ExplicitTop = 83
          end
        end
        object GridPanel23: TGridPanel
          Left = 871
          Top = 123
          Width = 290
          Height = 61
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
              Column = 0
              Control = Label92
              Row = 0
            end
            item
              Column = 1
              Control = Label93
              Row = 0
            end
            item
              Column = 0
              Control = Label94
              Row = 1
            end
            item
              Column = 1
              Control = Label95
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 7
          DesignSize = (
            290
            61)
          object Label92: TLabel
            Left = 36
            Top = 5
            Width = 74
            Height = 21
            Anchors = []
            Caption = 'STATIQUE'
            ExplicitLeft = 73
            ExplicitTop = 55
          end
          object Label93: TLabel
            Left = 167
            Top = 5
            Width = 99
            Height = 21
            Anchors = []
            Caption = 'DYNAMIQUE'
            ExplicitLeft = 223
            ExplicitTop = 55
          end
          object Label94: TLabel
            Left = 68
            Top = 34
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 78
            ExplicitTop = 83
          end
          object Label95: TLabel
            Left = 212
            Top = 34
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 238
            ExplicitTop = 83
          end
        end
        object Panel20: TPanel
          Left = 1161
          Top = 1
          Width = 290
          Height = 61
          Align = alClient
          Caption = 'CATEGORIE B4'
          TabOrder = 8
        end
        object Label96: TLabel
          Left = 1301
          Top = 82
          Width = 9
          Height = 21
          Anchors = []
          Caption = '0'
          ExplicitLeft = 1145
          ExplicitTop = 179
        end
        object GridPanel24: TGridPanel
          Left = 1161
          Top = 123
          Width = 290
          Height = 61
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
              Column = 0
              Control = Label97
              Row = 0
            end
            item
              Column = 1
              Control = Label98
              Row = 0
            end
            item
              Column = 0
              Control = Label99
              Row = 1
            end
            item
              Column = 1
              Control = Label100
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 9
          DesignSize = (
            290
            61)
          object Label97: TLabel
            Left = 36
            Top = 5
            Width = 74
            Height = 21
            Anchors = []
            Caption = 'STATIQUE'
            ExplicitLeft = 73
            ExplicitTop = 55
          end
          object Label98: TLabel
            Left = 167
            Top = 5
            Width = 99
            Height = 21
            Anchors = []
            Caption = 'DYNAMIQUE'
            ExplicitLeft = 223
            ExplicitTop = 55
          end
          object Label99: TLabel
            Left = 68
            Top = 34
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 78
            ExplicitTop = 83
          end
          object Label100: TLabel
            Left = 212
            Top = 34
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 238
            ExplicitTop = 83
          end
        end
        object W7SpeedButton16: TW7SpeedButton
          Left = 361
          Top = 194
          Width = 150
          Height = 40
          Caption = 'DEPLACER'
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = []
          ParentFont = False
          OnClick = W7SpeedButton16Click
          ExplicitLeft = 362
          ExplicitTop = 317
        end
        object W7SpeedButton17: TW7SpeedButton
          Left = 651
          Top = 194
          Width = 150
          Height = 40
          Caption = 'DEPLACER'
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = []
          ParentFont = False
          OnClick = W7SpeedButton17Click
          ExplicitLeft = 653
          ExplicitTop = 317
        end
        object W7SpeedButton18: TW7SpeedButton
          Left = 941
          Top = 194
          Width = 150
          Height = 40
          Caption = 'DEPLACER'
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = []
          ParentFont = False
          OnClick = W7SpeedButton18Click
          ExplicitLeft = 946
          ExplicitTop = 310
        end
        object W7SpeedButton19: TW7SpeedButton
          Left = 1231
          Top = 194
          Width = 150
          Height = 40
          Caption = 'DEPLACER'
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = []
          ParentFont = False
          OnClick = W7SpeedButton19Click
          ExplicitLeft = 1236
          ExplicitTop = 317
        end
        object W7SpeedButton20: TW7SpeedButton
          Left = 71
          Top = 194
          Width = 150
          Height = 40
          Caption = 'DEPLACER'
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = []
          ParentFont = False
          OnClick = W7SpeedButton20Click
          ExplicitLeft = 69
          ExplicitTop = 310
        end
      end
      object GridPanel25: TGridPanel
        AlignWithMargins = True
        Left = 3
        Top = 255
        Width = 1452
        Height = 210
        Align = alTop
        ColumnCollection = <
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end
          item
            Value = 20.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = Panel21
            Row = 0
          end
          item
            Column = 1
            Control = Panel22
            Row = 0
          end
          item
            Column = 2
            Control = Panel23
            Row = 0
          end
          item
            Column = 3
            Control = Panel24
            Row = 0
          end
          item
            Column = 0
            Control = Label101
            Row = 1
          end
          item
            Column = 1
            Control = Label102
            Row = 1
          end
          item
            Column = 2
            Control = Label103
            Row = 1
          end
          item
            Column = 3
            Control = Label104
            Row = 1
          end
          item
            Column = 0
            Control = GridPanel26
            Row = 2
          end
          item
            Column = 1
            Control = GridPanel27
            Row = 2
          end
          item
            Column = 2
            Control = GridPanel28
            Row = 2
          end
          item
            Column = 3
            Control = GridPanel29
            Row = 2
          end
          item
            Column = 4
            Control = Panel25
            Row = 0
          end
          item
            Column = 4
            Control = Label121
            Row = 1
          end
          item
            Column = 4
            Control = GridPanel30
            Row = 2
          end
          item
            Column = 1
            Control = W7SpeedButton21
            Row = 3
          end
          item
            Column = 2
            Control = W7SpeedButton22
            Row = 3
          end
          item
            Column = 3
            Control = W7SpeedButton23
            Row = 3
          end
          item
            Column = 4
            Control = W7SpeedButton24
            Row = 3
          end
          item
            Column = 0
            Control = W7SpeedButton25
            Row = 3
          end>
        RowCollection = <
          item
            Value = 25.000000000000000000
          end
          item
            Value = 25.000000000000000000
          end
          item
            Value = 25.000000000000000000
          end
          item
            Value = 25.000000000000000000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 2
        DesignSize = (
          1452
          210)
        object Panel21: TPanel
          Left = 1
          Top = 1
          Width = 290
          Height = 52
          Align = alClient
          Caption = 'CATEGORIE B5'
          TabOrder = 0
        end
        object Panel22: TPanel
          Left = 291
          Top = 1
          Width = 290
          Height = 52
          Align = alClient
          Caption = 'CATEGORIE B6'
          TabOrder = 1
        end
        object Panel23: TPanel
          Left = 581
          Top = 1
          Width = 290
          Height = 52
          Align = alClient
          Caption = 'CATEGORIE C'
          TabOrder = 2
        end
        object Panel24: TPanel
          Left = 871
          Top = 1
          Width = 290
          Height = 52
          Align = alClient
          Caption = 'CATEGORIE D1G1'
          TabOrder = 3
        end
        object Label101: TLabel
          Left = 141
          Top = 68
          Width = 9
          Height = 21
          Anchors = []
          Caption = '0'
          ExplicitLeft = 131
          ExplicitTop = 305
        end
        object Label102: TLabel
          Left = 431
          Top = 68
          Width = 9
          Height = 21
          Anchors = []
          Caption = '0'
          ExplicitLeft = 450
          ExplicitTop = 305
        end
        object Label103: TLabel
          Left = 721
          Top = 68
          Width = 9
          Height = 21
          Anchors = []
          Caption = '0'
          ExplicitLeft = 769
          ExplicitTop = 305
        end
        object Label104: TLabel
          Left = 1011
          Top = 68
          Width = 9
          Height = 21
          Anchors = []
          Caption = '0'
          ExplicitLeft = 1089
          ExplicitTop = 305
        end
        object GridPanel26: TGridPanel
          Left = 1
          Top = 105
          Width = 290
          Height = 52
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
              Column = 0
              Control = Label105
              Row = 0
            end
            item
              Column = 1
              Control = Label106
              Row = 0
            end
            item
              Column = 0
              Control = Label107
              Row = 1
            end
            item
              Column = 1
              Control = Label108
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 4
          DesignSize = (
            290
            52)
          object Label105: TLabel
            Left = 36
            Top = 3
            Width = 74
            Height = 21
            Anchors = []
            Caption = 'STATIQUE'
            ExplicitLeft = 43
            ExplicitTop = 55
          end
          object Label106: TLabel
            Left = 167
            Top = 3
            Width = 99
            Height = 21
            Anchors = []
            Caption = 'DYNAMIQUE'
            ExplicitLeft = 180
            ExplicitTop = 55
          end
          object Label107: TLabel
            Left = 68
            Top = 28
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 78
            ExplicitTop = 83
          end
          object Label108: TLabel
            Left = 212
            Top = 28
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 236
            ExplicitTop = 83
          end
        end
        object GridPanel27: TGridPanel
          Left = 291
          Top = 105
          Width = 290
          Height = 52
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
              Column = 0
              Control = Label109
              Row = 0
            end
            item
              Column = 1
              Control = Label110
              Row = 0
            end
            item
              Column = 0
              Control = Label111
              Row = 1
            end
            item
              Column = 1
              Control = Label112
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 5
          DesignSize = (
            290
            52)
          object Label109: TLabel
            Left = 36
            Top = 3
            Width = 74
            Height = 21
            Anchors = []
            Caption = 'STATIQUE'
            ExplicitLeft = 73
            ExplicitTop = 55
          end
          object Label110: TLabel
            Left = 167
            Top = 3
            Width = 99
            Height = 21
            Anchors = []
            Caption = 'DYNAMIQUE'
            ExplicitLeft = 223
            ExplicitTop = 55
          end
          object Label111: TLabel
            Left = 68
            Top = 28
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 78
            ExplicitTop = 83
          end
          object Label112: TLabel
            Left = 212
            Top = 28
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 236
            ExplicitTop = 83
          end
        end
        object GridPanel28: TGridPanel
          Left = 581
          Top = 105
          Width = 290
          Height = 52
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
              Column = 0
              Control = Label113
              Row = 0
            end
            item
              Column = 1
              Control = Label114
              Row = 0
            end
            item
              Column = 0
              Control = Label115
              Row = 1
            end
            item
              Column = 1
              Control = Label116
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 6
          DesignSize = (
            290
            52)
          object Label113: TLabel
            Left = 36
            Top = 3
            Width = 74
            Height = 21
            Anchors = []
            Caption = 'STATIQUE'
            ExplicitLeft = 73
            ExplicitTop = 55
          end
          object Label114: TLabel
            Left = 167
            Top = 3
            Width = 99
            Height = 21
            Anchors = []
            Caption = 'DYNAMIQUE'
            ExplicitLeft = 223
            ExplicitTop = 55
          end
          object Label115: TLabel
            Left = 68
            Top = 28
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 78
            ExplicitTop = 83
          end
          object Label116: TLabel
            Left = 212
            Top = 28
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 236
            ExplicitTop = 83
          end
        end
        object GridPanel29: TGridPanel
          Left = 871
          Top = 105
          Width = 290
          Height = 52
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
              Column = 0
              Control = Label117
              Row = 0
            end
            item
              Column = 1
              Control = Label118
              Row = 0
            end
            item
              Column = 0
              Control = Label119
              Row = 1
            end
            item
              Column = 1
              Control = Label120
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 7
          DesignSize = (
            290
            52)
          object Label117: TLabel
            Left = 36
            Top = 3
            Width = 74
            Height = 21
            Anchors = []
            Caption = 'STATIQUE'
            ExplicitLeft = 73
            ExplicitTop = 55
          end
          object Label118: TLabel
            Left = 167
            Top = 3
            Width = 99
            Height = 21
            Anchors = []
            Caption = 'DYNAMIQUE'
            ExplicitLeft = 223
            ExplicitTop = 55
          end
          object Label119: TLabel
            Left = 68
            Top = 28
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 78
            ExplicitTop = 83
          end
          object Label120: TLabel
            Left = 212
            Top = 28
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 238
            ExplicitTop = 83
          end
        end
        object Panel25: TPanel
          Left = 1161
          Top = 1
          Width = 290
          Height = 52
          Align = alClient
          Caption = 'CATEGORIE D1G2'
          TabOrder = 8
        end
        object Label121: TLabel
          Left = 1301
          Top = 68
          Width = 9
          Height = 21
          Anchors = []
          Caption = '0'
          ExplicitLeft = 1145
          ExplicitTop = 179
        end
        object GridPanel30: TGridPanel
          Left = 1161
          Top = 105
          Width = 290
          Height = 52
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
              Column = 0
              Control = Label122
              Row = 0
            end
            item
              Column = 1
              Control = Label123
              Row = 0
            end
            item
              Column = 0
              Control = Label124
              Row = 1
            end
            item
              Column = 1
              Control = Label125
              Row = 1
            end>
          RowCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          TabOrder = 9
          DesignSize = (
            290
            52)
          object Label122: TLabel
            Left = 36
            Top = 3
            Width = 74
            Height = 21
            Anchors = []
            Caption = 'STATIQUE'
            ExplicitLeft = 73
            ExplicitTop = 55
          end
          object Label123: TLabel
            Left = 167
            Top = 3
            Width = 99
            Height = 21
            Anchors = []
            Caption = 'DYNAMIQUE'
            ExplicitLeft = 223
            ExplicitTop = 55
          end
          object Label124: TLabel
            Left = 68
            Top = 28
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 78
            ExplicitTop = 83
          end
          object Label125: TLabel
            Left = 212
            Top = 28
            Width = 9
            Height = 21
            Anchors = []
            Caption = '0'
            ExplicitLeft = 238
            ExplicitTop = 83
          end
        end
        object W7SpeedButton21: TW7SpeedButton
          Left = 361
          Top = 163
          Width = 150
          Height = 40
          Caption = 'DEPLACER'
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = []
          ParentFont = False
          OnClick = W7SpeedButton21Click
          ExplicitLeft = 362
          ExplicitTop = 317
        end
        object W7SpeedButton22: TW7SpeedButton
          Left = 651
          Top = 163
          Width = 150
          Height = 40
          Caption = 'DEPLACER'
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = []
          ParentFont = False
          OnClick = W7SpeedButton22Click
          ExplicitLeft = 653
          ExplicitTop = 317
        end
        object W7SpeedButton23: TW7SpeedButton
          Left = 941
          Top = 163
          Width = 150
          Height = 40
          Caption = 'DEPLACER'
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = []
          ParentFont = False
          OnClick = W7SpeedButton23Click
          ExplicitLeft = 946
          ExplicitTop = 310
        end
        object W7SpeedButton24: TW7SpeedButton
          Left = 1231
          Top = 163
          Width = 150
          Height = 40
          Caption = 'DEPLACER'
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = []
          ParentFont = False
          OnClick = W7SpeedButton24Click
          ExplicitLeft = 1236
          ExplicitTop = 317
        end
        object W7SpeedButton25: TW7SpeedButton
          Left = 71
          Top = 163
          Width = 150
          Height = 40
          Caption = 'DEPLACER'
          Flat = False
          Light = False
          FadeInInterval = 15
          FadeOutInterval = 40
          IconSize = is16px
          ArrowType = atDown
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5978398
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Anchors = []
          ParentFont = False
          OnClick = W7SpeedButton25Click
          ExplicitTop = 160
        end
      end
    end
  end
end
