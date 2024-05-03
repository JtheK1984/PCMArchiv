object frm_Config: Tfrm_Config
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_Config'
  ClientHeight = 800
  ClientWidth = 1280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnActivate = FormActivate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnl_Design: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 0
    Height = 800
    Width = 1280
    object pc_Options: TcxPageControl
      Left = 2
      Top = 2
      Width = 1276
      Height = 796
      Align = alClient
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      Properties.ActivePage = ts_A_Archiv
      Properties.CustomButtons.Buttons = <>
      Properties.Images = dm_PCM.imglst_16x16
      Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea]
      Properties.TabSlants.Kind = skCutCorner
      Properties.TabWidth = 100
      ClientRectBottom = 796
      ClientRectRight = 1276
      ClientRectTop = 25
      object ts_A_Archiv: TcxTabSheet
        Caption = 'Archiv'
        ImageIndex = 82
        object grpbx_FTPConfig: TcxGroupBox
          Left = 0
          Top = 150
          Align = alTop
          Caption = 'Hauptkategorien'
          TabOrder = 1
          Height = 200
          Width = 1276
          object grd_FTPConfig: TcxGrid
            Left = 2
            Top = 103
            Width = 1272
            Height = 95
            Align = alClient
            BorderStyle = cxcbsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LockedStateImageOptions.Effect = lsieDark
            ExplicitLeft = 1
            ExplicitTop = 114
            ExplicitHeight = 136
            object grdDBTblView_FTPConfig: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              FilterBox.CustomizeDialog = False
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataSource = ds_Mainkat
              DataController.Filter.PercentWildcard = '*'
              DataController.Filter.UnderscoreWildcard = '?'
              DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                end>
              DataController.Summary.SummaryGroups = <
                item
                  Links = <
                    item
                    end>
                  SummaryItems = <
                    item
                    end>
                end>
              OptionsBehavior.IncSearch = True
              OptionsBehavior.ShowHourglassCursor = False
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsView.CellEndEllipsis = True
              OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
              OptionsView.GroupByBox = False
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.IndicatorWidth = 14
              object grdDBTblView_FTPConfigBezeichnung: TcxGridDBColumn
                DataBinding.FieldName = 'Bezeichnung'
                DataBinding.IsNullValueType = True
                SortIndex = 0
                SortOrder = soAscending
                Width = 900
              end
            end
            object grdlvl_FTPConfig: TcxGridLevel
              GridView = grdDBTblView_FTPConfig
            end
          end
          object brdckctrl_FTP: TdxBarDockControl
            Left = 2
            Top = 18
            Width = 1272
            Height = 58
            Align = dalTop
            BarManager = brmgr_Config
          end
          object cxGroupBox3: TcxGroupBox
            Left = 2
            Top = 76
            Align = alTop
            PanelStyle.Active = True
            StyleDisabled.BorderColor = clBtnShadow
            StyleDisabled.BorderStyle = ebsNone
            TabOrder = 2
            Height = 27
            Width = 1272
            object edt_CalConfigFTP_URL: TcxDBTextEdit
              AlignWithMargins = True
              Left = 82
              Top = 2
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              DataBinding.DataField = 'Bezeichnung'
              DataBinding.DataSource = ds_Mainkat
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              OnExit = btn_MainKatSaveClick
              Width = 1188
            end
            object lbl_CalConfigFTP_URL: TcxLabel
              AlignWithMargins = True
              Left = 7
              Top = 4
              Margins.Left = 5
              Margins.Top = 2
              Margins.Right = 5
              Margins.Bottom = 2
              Align = alLeft
              AutoSize = False
              Caption = 'Bezeichnung:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
              Height = 19
              Width = 70
            end
          end
        end
        object grpbx_CalcConfig: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Caption = 'Verzeichnis zum Archiv'
          TabOrder = 0
          Height = 150
          Width = 1276
          object bardckctrl_Kalender: TdxBarDockControl
            Left = 2
            Top = 18
            Width = 1272
            Height = 58
            Align = dalTop
            AllowDocking = False
            BarManager = brmgr_Config
          end
          object cxGrid2: TcxGrid
            Left = 2
            Top = 103
            Width = 1272
            Height = 45
            Align = alClient
            BorderStyle = cxcbsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            LockedStateImageOptions.Effect = lsieDark
            ExplicitHeight = 49
            object grdDBTblView_ArchivPfad: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              FilterBox.CustomizeDialog = False
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataSource = ds_Pfad
              DataController.Filter.PercentWildcard = '*'
              DataController.Filter.UnderscoreWildcard = '?'
              DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                end>
              DataController.Summary.SummaryGroups = <
                item
                  Links = <
                    item
                    end>
                  SummaryItems = <
                    item
                    end>
                end>
              OptionsBehavior.IncSearch = True
              OptionsBehavior.ShowHourglassCursor = False
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsView.CellEndEllipsis = True
              OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
              OptionsView.GroupByBox = False
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.IndicatorWidth = 14
              object grdDBTblView_ArchivPfadPfad: TcxGridDBColumn
                DataBinding.FieldName = 'Pfad'
                Width = 900
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = grdDBTblView_ArchivPfad
            end
          end
          object cxGroupBox2: TcxGroupBox
            Left = 2
            Top = 76
            Align = alTop
            PanelStyle.Active = True
            StyleDisabled.BorderColor = clBtnShadow
            StyleDisabled.BorderStyle = ebsNone
            TabOrder = 2
            Height = 27
            Width = 1272
            object cxLabel2: TcxLabel
              AlignWithMargins = True
              Left = 7
              Top = 4
              Margins.Left = 5
              Margins.Top = 2
              Margins.Right = 5
              Margins.Bottom = 2
              Align = alLeft
              AutoSize = False
              Caption = 'Verzeichnis:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
              Height = 19
              Width = 70
            end
            object edt_Pfad: TcxDBButtonEdit
              AlignWithMargins = True
              Left = 82
              Top = 2
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              DataBinding.DataField = 'Pfad'
              DataBinding.DataSource = ds_Pfad
              ParentFont = False
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = edt_PfadPropertiesButtonClick
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              OnExit = btn_CalConfigSave1Click
              Width = 1188
            end
          end
        end
        object cxGroupBox1: TcxGroupBox
          Left = 0
          Top = 350
          Align = alClient
          Caption = 'Unterkategorien'
          TabOrder = 2
          ExplicitTop = 430
          ExplicitHeight = 341
          Height = 421
          Width = 1276
          object cxGrid1: TcxGrid
            Left = 2
            Top = 130
            Width = 1272
            Height = 289
            Align = alClient
            BorderStyle = cxcbsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LockedStateImageOptions.Effect = lsieDark
            ExplicitTop = 103
            ExplicitHeight = 236
            object cxGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              FilterBox.CustomizeDialog = False
              ScrollbarAnnotations.CustomAnnotations = <>
              OnCellClick = cxGridDBTableView1CellClick
              DataController.DataSource = ds_Subkat
              DataController.Filter.PercentWildcard = '*'
              DataController.Filter.UnderscoreWildcard = '?'
              DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                end>
              DataController.Summary.SummaryGroups = <
                item
                  Links = <
                    item
                    end>
                  SummaryItems = <
                    item
                    end>
                end>
              OptionsBehavior.IncSearch = True
              OptionsBehavior.ShowHourglassCursor = False
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsView.CellEndEllipsis = True
              OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
              OptionsView.ExpandButtonsForEmptyDetails = False
              OptionsView.GroupByBox = False
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.IndicatorWidth = 14
              object cxGridDBTableView1Bezeichnung: TcxGridDBColumn
                Caption = 'Unterkategorie'
                DataBinding.FieldName = 'Bezeichnung'
                SortIndex = 0
                SortOrder = soAscending
                Width = 1001
              end
            end
            object cxGrid1DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataSource = ds_index
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.GroupByBox = False
              object cxGrid1DBTableView1Bezeichnung: TcxGridDBColumn
                DataBinding.FieldName = 'Bezeichnung'
                SortIndex = 0
                SortOrder = soAscending
                Width = 1000
              end
            end
            object cxGrid1DBTableView2: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
              OnCellClick = cxGrid1DBTableView2CellClick
              DataController.DataSource = ds_index
              DataController.DetailKeyFieldNames = 'ID_Archiv_Unterkategorien'
              DataController.KeyFieldNames = 'ID_Archiv_Unterkategorien'
              DataController.MasterKeyFieldNames = 'ID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.GroupByBox = False
              object cxGrid1DBTableView2ID: TcxGridDBColumn
                DataBinding.FieldName = 'ID'
                Visible = False
              end
              object cxGrid1DBTableView2Bezeichnung: TcxGridDBColumn
                Caption = 'Index'
                DataBinding.FieldName = 'Bezeichnung'
                Width = 1000
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView2
              end
            end
          end
          object dxBarDockControl1: TdxBarDockControl
            Left = 2
            Top = 18
            Width = 1272
            Height = 58
            Align = dalTop
            BarManager = brmgr_Config
          end
          object cxGroupBox4: TcxGroupBox
            Left = 2
            Top = 76
            Align = alTop
            PanelStyle.Active = True
            StyleDisabled.BorderColor = clBtnShadow
            StyleDisabled.BorderStyle = ebsNone
            TabOrder = 2
            Height = 27
            Width = 1272
            object cxDBTextEdit2: TcxDBTextEdit
              AlignWithMargins = True
              Left = 92
              Top = 2
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              DataBinding.DataField = 'Bezeichnung'
              DataBinding.DataSource = ds_Subkat
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              OnExit = btn_MainKatSaveClick
              ExplicitLeft = 82
              ExplicitWidth = 1188
              Width = 1178
            end
            object cxLabel3: TcxLabel
              AlignWithMargins = True
              Left = 7
              Top = 4
              Margins.Left = 5
              Margins.Top = 2
              Margins.Right = 5
              Margins.Bottom = 2
              Align = alLeft
              AutoSize = False
              Caption = 'Unterkategorie:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
              Height = 19
              Width = 80
            end
          end
          object cxGroupBox5: TcxGroupBox
            Left = 2
            Top = 103
            Align = alTop
            PanelStyle.Active = True
            StyleDisabled.BorderColor = clBtnShadow
            StyleDisabled.BorderStyle = ebsNone
            TabOrder = 3
            ExplicitTop = 108
            Height = 27
            Width = 1272
            object edt_Index: TcxDBTextEdit
              AlignWithMargins = True
              Left = 92
              Top = 2
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              DataBinding.DataField = 'Bezeichnung'
              DataBinding.DataSource = ds_index
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              OnExit = btn_MainKatSaveClick
              Width = 1178
            end
            object cxLabel1: TcxLabel
              AlignWithMargins = True
              Left = 7
              Top = 4
              Margins.Left = 5
              Margins.Top = 2
              Margins.Right = 5
              Margins.Bottom = 2
              Align = alLeft
              AutoSize = False
              Caption = 'Index:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
              Height = 19
              Width = 80
            end
          end
        end
      end
    end
  end
  object brmgr_Config: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = dm_PCM.imglst_32x32
    ImageOptions.LargeIcons = True
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 552
    Top = 313
    PixelsPerInch = 96
    object tb_Dir: TdxBar
      Caption = 'tb_Calendar'
      CaptionButtons = <>
      DockControl = bardckctrl_Kalender
      DockedDockControl = bardckctrl_Kalender
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1123
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_DirSave'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object tb_MainKat: TdxBar
      Caption = 'tb_MainKat'
      CaptionButtons = <>
      DockControl = brdckctrl_FTP
      DockedDockControl = brdckctrl_FTP
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1123
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_MainKatNew'
        end
        item
          Visible = True
          ItemName = 'btn_MainKatSave'
        end
        item
          Visible = True
          ItemName = 'btn_MainKatCancel'
        end
        item
          Visible = True
          ItemName = 'btn_MainKatDelete'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object tb_SubKat: TdxBar
      AllowClose = False
      AllowCustomizing = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1292
      FloatTop = 10
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_SubKatNew'
        end
        item
          Visible = True
          ItemName = 'btn_SubKatSave'
        end
        item
          Visible = True
          ItemName = 'btn_SubKatCancel'
        end
        item
          Visible = True
          ItemName = 'btn_SubKatDelete'
        end
        item
          Visible = True
          ItemName = 'btn_trenn1'
        end
        item
          Visible = True
          ItemName = 'btn_IndexNew'
        end
        item
          Visible = True
          ItemName = 'btn_IndexSave'
        end
        item
          Visible = True
          ItemName = 'btn_IndexCancel'
        end
        item
          Visible = True
          ItemName = 'btn_IndexDelete'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_DirSave: TdxBarLargeButton
      Caption = 'Verzeichnis speichern'
      Category = 0
      Hint = 'Verzeichnis speichern'
      Visible = ivAlways
      OnClick = btn_CalConfigSave1Click
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_MainKatNew: TdxBarLargeButton
      Caption = 'Hauptkategorie anlegen'
      Category = 0
      Hint = 'Hauptkategorie anlegen'
      Visible = ivAlways
      OnClick = btn_MainKatNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 145
    end
    object btn_MainKatDelete: TdxBarLargeButton
      Caption = 'Kategorie l'#246'schen'
      Category = 0
      Hint = 'Kategorie l'#246'schen'
      Visible = ivAlways
      OnClick = btn_MainKatDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 145
    end
    object btn_MainKatSave: TdxBarLargeButton
      Caption = 'Hauptkategorie speichern'
      Category = 0
      Hint = 'Hauptkategorie speichern'
      Visible = ivAlways
      OnClick = btn_MainKatSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 145
    end
    object btn_MainKatCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_MainKatCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 145
    end
    object btn_SubKatNew: TdxBarLargeButton
      Caption = 'Unterkategorie anlegen'
      Category = 0
      Hint = 'Unterkategorie anlegen'
      Visible = ivAlways
      OnClick = btn_SubKatNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 145
    end
    object btn_SubKatDelete: TdxBarLargeButton
      Caption = 'Unterkategorie l'#246'schen'
      Category = 0
      Hint = 'Unterkategorie l'#246'schen'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 145
    end
    object btn_SubKatSave: TdxBarLargeButton
      Caption = 'Unterkategorie speichern'
      Category = 0
      Hint = 'Unterkategorie speichern'
      Visible = ivAlways
      OnClick = btn_SubKatSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 145
    end
    object btn_SubKatCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_SubKatCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 145
    end
    object btn_trenn1: TdxBarButton
      Caption = '        '
      Category = 0
      Enabled = False
      Hint = '        '
      Visible = ivAlways
    end
    object btn_IndexNew: TdxBarLargeButton
      Caption = 'Index anlegen'
      Category = 0
      Hint = 'Index anlegen'
      Visible = ivAlways
      OnClick = btn_IndexNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 145
    end
    object btn_IndexDelete: TdxBarLargeButton
      Caption = 'Index l'#246'schen'
      Category = 0
      Hint = 'Index l'#246'schen'
      Visible = ivAlways
      OnClick = btn_IndexDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 145
    end
    object btn_IndexSave: TdxBarLargeButton
      Caption = 'Index speichern'
      Category = 0
      Hint = 'Index speichern'
      Visible = ivAlways
      OnClick = btn_IndexSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 145
    end
    object btn_IndexCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_IndexCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 145
    end
  end
  object qry_Pfad: TFDQuery
    Active = True
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterCancel = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = SetButtonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT Pfad From archiv_konfiguration')
    Left = 187
    Top = 63
  end
  object ds_Pfad: TDataSource
    DataSet = qry_Pfad
    Left = 243
    Top = 63
  end
  object ds_Mainkat: TDataSource
    DataSet = qry_Mainkat
    Left = 243
    Top = 119
  end
  object qry_Mainkat: TFDQuery
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterCancel = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = qry_MainkatAfterScroll
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT * From archiv_hauptkategorien')
    Left = 187
    Top = 119
  end
  object qry_Subkat: TFDQuery
    Active = True
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterCancel = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = SetButtonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT * From archiv_unterkategorien'
      '')
    Left = 187
    Top = 175
  end
  object ds_Subkat: TDataSource
    DataSet = qry_Subkat
    Left = 243
    Top = 175
  end
  object qry_Index: TFDQuery
    Active = True
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterCancel = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = SetButtonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT * From archiv_Index')
    Left = 187
    Top = 231
  end
  object ds_index: TDataSource
    DataSet = qry_Index
    Left = 243
    Top = 231
  end
end
