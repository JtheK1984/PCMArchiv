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
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object grpbx_Design: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 0
    Height = 800
    Width = 1280
    object pc_Options: TcxPageControl
      Left = 3
      Top = 3
      Width = 1274
      Height = 794
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
      ClientRectBottom = 788
      ClientRectLeft = 2
      ClientRectRight = 1268
      ClientRectTop = 28
      object ts_A_Archiv: TcxTabSheet
        Caption = 'Archiv'
        ImageIndex = 82
        object pc_Config: TcxPageControl
          Left = 0
          Top = 0
          Width = 1266
          Height = 760
          Align = alClient
          Color = clBtnFace
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          Properties.ActivePage = ts_1ArchivPfad
          Properties.CustomButtons.Buttons = <>
          Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea]
          Properties.TabSlants.Kind = skCutCorner
          Properties.TabWidth = 150
          OnClick = pc_ConfigClick
          ClientRectBottom = 754
          ClientRectLeft = 2
          ClientRectRight = 1260
          ClientRectTop = 27
          object ts_1ArchivPfad: TcxTabSheet
            Caption = 'Pfad f'#252'r Dokumente'
            ImageIndex = 82
            object grpbx_ArchivPfad: TcxGroupBox
              Left = 0
              Top = 0
              Align = alClient
              Caption = 'Verzeichnis zum Archiv'
              TabOrder = 0
              Height = 727
              Width = 1258
              object bardckctrl_ArchivPfad: TdxBarDockControl
                Left = 3
                Top = 15
                Width = 1252
                Height = 63
                Align = dalTop
                AllowDocking = False
                BarManager = brmgr_Config
              end
              object grpbx_PathDetail: TcxGroupBox
                Left = 3
                Top = 78
                Align = alTop
                PanelStyle.Active = True
                StyleDisabled.BorderColor = clBtnShadow
                StyleDisabled.BorderStyle = ebsNone
                TabOrder = 1
                Height = 27
                Width = 1252
                object lbl_ArchivPfad: TcxLabel
                  AlignWithMargins = True
                  Left = 8
                  Top = 5
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
                  Height = 17
                  Width = 70
                end
                object edt_ArchivPfad: TcxDBButtonEdit
                  AlignWithMargins = True
                  Left = 83
                  Top = 3
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
                  OnExit = btn_DirSaveClick
                  Width = 1166
                end
              end
              object grd_ArchivPfad: TcxGrid
                Left = 3
                Top = 105
                Width = 1252
                Height = 613
                Align = alClient
                BorderStyle = cxcbsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                LockedStateImageOptions.Effect = lsieDark
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
                    DataBinding.IsNullValueType = True
                    Width = 800
                  end
                end
                object grdlvl_ArchivPfad: TcxGridLevel
                  GridView = grdDBTblView_ArchivPfad
                end
              end
            end
          end
          object ts_2MainKat: TcxTabSheet
            Caption = 'Hauptkategorien'
            ImageIndex = 1
            object grpbx_MainKat: TcxGroupBox
              Left = 0
              Top = 0
              Align = alClient
              Caption = 'Hauptkategorien'
              TabOrder = 0
              Height = 727
              Width = 1258
              object brdckctrl_MainKat: TdxBarDockControl
                Left = 3
                Top = 15
                Width = 1252
                Height = 63
                Align = dalTop
                BarManager = brmgr_Config
              end
              object grpbx_MainKatDetail: TcxGroupBox
                Left = 3
                Top = 78
                Align = alTop
                PanelStyle.Active = True
                StyleDisabled.BorderColor = clBtnShadow
                StyleDisabled.BorderStyle = ebsNone
                TabOrder = 1
                ExplicitTop = 59
                Height = 27
                Width = 1252
                object edt_MainKat: TcxDBTextEdit
                  AlignWithMargins = True
                  Left = 83
                  Top = 3
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
                  OnKeyUp = edt_MainKatKeyUp
                  Width = 1166
                end
                object lbl_MainKat: TcxLabel
                  AlignWithMargins = True
                  Left = 8
                  Top = 5
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
                  Height = 17
                  Width = 70
                end
              end
              object grd_MainKat: TcxGrid
                Left = 3
                Top = 105
                Width = 1252
                Height = 613
                Align = alClient
                BorderStyle = cxcbsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                LockedStateImageOptions.Effect = lsieDark
                object grdDBTblView_MainKat: TcxGridDBTableView
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
                  object grdDBTblView_MainKatBezeichnung: TcxGridDBColumn
                    DataBinding.FieldName = 'Bezeichnung'
                    SortIndex = 0
                    SortOrder = soAscending
                    Width = 900
                  end
                end
                object grdlvl_MainKat: TcxGridLevel
                  GridView = grdDBTblView_MainKat
                end
              end
            end
          end
          object ts_3SubKat: TcxTabSheet
            Caption = 'Unterkategorien'
            ImageIndex = 2
            object grpbx_SubKat: TcxGroupBox
              Left = 0
              Top = 0
              Align = alClient
              Caption = 'Unterkategorien'
              TabOrder = 0
              Height = 727
              Width = 1258
              object brdckctrl_SubKat: TdxBarDockControl
                Left = 3
                Top = 15
                Width = 1252
                Height = 63
                Align = dalTop
                BarManager = brmgr_Config
              end
              object grpbx_SubKatDetail: TcxGroupBox
                Left = 3
                Top = 78
                Align = alTop
                PanelStyle.Active = True
                StyleDisabled.BorderColor = clBtnShadow
                StyleDisabled.BorderStyle = ebsNone
                TabOrder = 1
                ExplicitTop = 59
                Height = 27
                Width = 1252
                object edt_SubKat: TcxDBTextEdit
                  AlignWithMargins = True
                  Left = 93
                  Top = 3
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
                  OnExit = btn_SubKatSaveClick
                  OnKeyUp = edt_SubKatKeyUp
                  Width = 1156
                end
                object lbl_SubKat: TcxLabel
                  AlignWithMargins = True
                  Left = 8
                  Top = 5
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
                  Height = 17
                  Width = 80
                end
              end
              object grd_SubKat: TcxGrid
                Left = 3
                Top = 105
                Width = 1252
                Height = 613
                Align = alClient
                BorderStyle = cxcbsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                LockedStateImageOptions.Effect = lsieDark
                object grdDBTblView_Subkat: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  FilterBox.CustomizeDialog = False
                  ScrollbarAnnotations.CustomAnnotations = <>
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
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderFilterButtonShowMode = fbmButton
                  OptionsView.IndicatorWidth = 14
                  object grdDBTblView_SubkatBezeichnung: TcxGridDBColumn
                    DataBinding.FieldName = 'Bezeichnung'
                    SortIndex = 0
                    SortOrder = soAscending
                    Width = 900
                  end
                end
                object grdlvl_SubKat: TcxGridLevel
                  GridView = grdDBTblView_Subkat
                end
              end
            end
          end
          object ts_4Index: TcxTabSheet
            Caption = 'Indizies'
            ImageIndex = 3
            object grpbox_Index: TcxGroupBox
              Left = 0
              Top = 0
              Align = alClient
              Caption = 'Unterkategorien'
              TabOrder = 0
              Height = 727
              Width = 1258
              object brdckCtrl_Index: TdxBarDockControl
                Left = 3
                Top = 15
                Width = 1252
                Height = 63
                Align = dalTop
                BarManager = brmgr_Config
              end
              object grpbox_IndexDetail: TcxGroupBox
                Left = 3
                Top = 78
                Align = alTop
                PanelStyle.Active = True
                StyleDisabled.BorderColor = clBtnShadow
                StyleDisabled.BorderStyle = ebsNone
                TabOrder = 1
                ExplicitTop = 59
                Height = 27
                Width = 1252
                object edt_index: TcxDBTextEdit
                  AlignWithMargins = True
                  Left = 93
                  Top = 3
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alLeft
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
                  OnKeyUp = edt_indexKeyUp
                  Width = 400
                end
                object lbl_Datatyp: TcxLabel
                  AlignWithMargins = True
                  Left = 498
                  Top = 5
                  Margins.Left = 5
                  Margins.Top = 2
                  Margins.Right = 5
                  Margins.Bottom = 2
                  Align = alLeft
                  AutoSize = False
                  Caption = 'Datentyp:'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                  Height = 17
                  Width = 80
                end
                object lbl_index: TcxLabel
                  AlignWithMargins = True
                  Left = 8
                  Top = 5
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
                  Height = 17
                  Width = 80
                end
                object lucmbbx_Datatype: TcxDBLookupComboBox
                  AlignWithMargins = True
                  Left = 583
                  Top = 3
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Right = 0
                  Margins.Bottom = 0
                  Align = alLeft
                  DataBinding.DataField = 'ID_archiv_konfiguration_index_typ'
                  DataBinding.DataSource = ds_index
                  Properties.KeyFieldNames = 'ID'
                  Properties.ListColumns = <
                    item
                      FieldName = 'Bezeichnung'
                    end>
                  Properties.ListSource = ds_indexType
                  TabOrder = 3
                  Width = 200
                end
              end
              object grd_Index: TcxGrid
                Left = 3
                Top = 105
                Width = 1252
                Height = 613
                Align = alClient
                BorderStyle = cxcbsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                LockedStateImageOptions.Effect = lsieDark
                object grdDBTblView_Index: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  FilterBox.CustomizeDialog = False
                  ScrollbarAnnotations.CustomAnnotations = <>
                  DataController.DataSource = ds_index
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
                  object grdDBTblView_IndexBezeichnung: TcxGridDBColumn
                    DataBinding.FieldName = 'Bezeichnung'
                    SortIndex = 0
                    SortOrder = soAscending
                    Width = 900
                  end
                  object grdDBTblView_IndexID_archiv_konfiguration_index_typ: TcxGridDBColumn
                    Caption = 'Typ'
                    DataBinding.FieldName = 'ID_archiv_konfiguration_index_typ'
                    PropertiesClassName = 'TcxLookupComboBoxProperties'
                    Properties.KeyFieldNames = 'ID'
                    Properties.ListColumns = <
                      item
                        FieldName = 'Bezeichnung'
                      end>
                    Properties.ListSource = ds_indexType
                    Width = 200
                  end
                end
                object grdLvl_Index: TcxGridLevel
                  GridView = grdDBTblView_Index
                end
              end
            end
          end
          object ts_Zuweisung: TcxTabSheet
            Caption = 'Zuweisung'
            ImageIndex = 4
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object grpbx_Left: TcxGroupBox
              AlignWithMargins = True
              Left = 0
              Top = 0
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              PanelStyle.Active = True
              Style.BorderStyle = ebsNone
              TabOrder = 0
              Height = 727
              Width = 400
              object grpbx_1Main: TcxGroupBox
                AlignWithMargins = True
                Left = 3
                Top = 3
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Hauptkategorie'
                Style.BorderStyle = ebsFlat
                TabOrder = 0
                Height = 300
                Width = 394
                object trlst_MainKat: TcxTreeList
                  AlignWithMargins = True
                  Left = 6
                  Top = 18
                  Width = 382
                  Height = 270
                  Align = alClient
                  Bands = <
                    item
                    end>
                  DragCursor = crDrag
                  DragMode = dmAutomatic
                  Navigator.Buttons.CustomButtons = <>
                  OptionsBehavior.ChangeDelay = 1000
                  OptionsBehavior.CopyCaptionsToClipboard = False
                  OptionsData.Editing = False
                  OptionsData.MultiThreadedSorting = bTrue
                  OptionsSelection.CellSelect = False
                  OptionsView.ColumnAutoWidth = True
                  OptionsView.Headers = False
                  OptionsView.TreeLineStyle = tllsSolid
                  ScrollbarAnnotations.CustomAnnotations = <>
                  TabOrder = 0
                  object trlstCol_MainKatBezeichnung: TcxTreeListColumn
                    Caption.Text = 'Bezeichnung'
                    Width = 100
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                    Position.BandIndex = 0
                    SortOrder = soAscending
                    SortIndex = 0
                    Summary.FooterSummaryItems = <>
                    Summary.GroupFooterSummaryItems = <>
                  end
                  object trlstCol_MainKatID: TcxTreeListColumn
                    VisibleForExpressionEditor = bFalse
                    Visible = False
                    Caption.Text = 'Typ'
                    Width = 100
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                    Position.BandIndex = 0
                    Summary.FooterSummaryItems = <>
                    Summary.GroupFooterSummaryItems = <>
                  end
                  object trlstCol_MainKatLVL: TcxTreeListColumn
                    Visible = False
                    Width = 100
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                    Position.BandIndex = 0
                    Summary.FooterSummaryItems = <>
                    Summary.GroupFooterSummaryItems = <>
                  end
                  object trlstCol_MainKatIDTable: TcxTreeListColumn
                    Visible = False
                    Width = 100
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                    Position.BandIndex = 0
                    Summary.FooterSummaryItems = <>
                    Summary.GroupFooterSummaryItems = <>
                  end
                end
              end
              object grpbx_2Sub: TcxGroupBox
                Left = 3
                Top = 303
                Align = alTop
                Caption = 'Unterkategorie'
                Style.BorderStyle = ebsFlat
                TabOrder = 1
                Height = 300
                Width = 394
                object trlst_SubKat: TcxTreeList
                  AlignWithMargins = True
                  Left = 6
                  Top = 18
                  Width = 382
                  Height = 270
                  Align = alClient
                  Bands = <
                    item
                    end>
                  DragCursor = crDrag
                  DragMode = dmAutomatic
                  Navigator.Buttons.CustomButtons = <>
                  OptionsBehavior.ChangeDelay = 1000
                  OptionsBehavior.CopyCaptionsToClipboard = False
                  OptionsData.Editing = False
                  OptionsData.MultiThreadedSorting = bTrue
                  OptionsSelection.CellSelect = False
                  OptionsView.ColumnAutoWidth = True
                  OptionsView.Headers = False
                  OptionsView.TreeLineStyle = tllsSolid
                  ScrollbarAnnotations.CustomAnnotations = <>
                  TabOrder = 0
                  object trlstCol_SubKatBezeichnung: TcxTreeListColumn
                    Caption.Text = 'Bezeichnung'
                    Width = 100
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                    Position.BandIndex = 0
                    SortOrder = soAscending
                    SortIndex = 0
                    Summary.FooterSummaryItems = <>
                    Summary.GroupFooterSummaryItems = <>
                  end
                  object trlstCol_SubKatID: TcxTreeListColumn
                    VisibleForExpressionEditor = bFalse
                    Visible = False
                    Caption.Text = 'Typ'
                    Width = 100
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                    Position.BandIndex = 0
                    Summary.FooterSummaryItems = <>
                    Summary.GroupFooterSummaryItems = <>
                  end
                  object trlstColt_SubKatLVL: TcxTreeListColumn
                    Visible = False
                    Width = 100
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                    Position.BandIndex = 0
                    Summary.FooterSummaryItems = <>
                    Summary.GroupFooterSummaryItems = <>
                  end
                  object trlstCol_SubKatIDTable: TcxTreeListColumn
                    Visible = False
                    Width = 100
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                    Position.BandIndex = 0
                    Summary.FooterSummaryItems = <>
                    Summary.GroupFooterSummaryItems = <>
                  end
                end
              end
              object grpbx_3Ind: TcxGroupBox
                Left = 3
                Top = 603
                Align = alTop
                Caption = 'Indizies'
                Style.BorderStyle = ebsFlat
                TabOrder = 2
                Height = 300
                Width = 394
                object trlst_Ind: TcxTreeList
                  AlignWithMargins = True
                  Left = 6
                  Top = 18
                  Width = 382
                  Height = 270
                  Align = alClient
                  Bands = <
                    item
                    end>
                  DragCursor = crDrag
                  DragMode = dmAutomatic
                  Navigator.Buttons.CustomButtons = <>
                  OptionsBehavior.ChangeDelay = 1000
                  OptionsBehavior.CopyCaptionsToClipboard = False
                  OptionsData.Editing = False
                  OptionsData.MultiThreadedSorting = bTrue
                  OptionsSelection.CellSelect = False
                  OptionsView.ColumnAutoWidth = True
                  OptionsView.Headers = False
                  OptionsView.TreeLineStyle = tllsSolid
                  ScrollbarAnnotations.CustomAnnotations = <>
                  TabOrder = 0
                  object trlstCol_IndBezeichnung: TcxTreeListColumn
                    Caption.Text = 'Bezeichnung'
                    Width = 100
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                    Position.BandIndex = 0
                    SortOrder = soAscending
                    SortIndex = 0
                    Summary.FooterSummaryItems = <>
                    Summary.GroupFooterSummaryItems = <>
                  end
                  object trlstCol_IndID: TcxTreeListColumn
                    VisibleForExpressionEditor = bFalse
                    Visible = False
                    Caption.Text = 'Typ'
                    Width = 100
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                    Position.BandIndex = 0
                    Summary.FooterSummaryItems = <>
                    Summary.GroupFooterSummaryItems = <>
                  end
                  object trlstCol_IndLVL: TcxTreeListColumn
                    Visible = False
                    Width = 100
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                    Position.BandIndex = 0
                    Summary.FooterSummaryItems = <>
                    Summary.GroupFooterSummaryItems = <>
                  end
                  object trlstCol_IndIDTable: TcxTreeListColumn
                    Visible = False
                    Width = 100
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                    Position.BandIndex = 0
                    Summary.FooterSummaryItems = <>
                    Summary.GroupFooterSummaryItems = <>
                  end
                end
              end
            end
            object grpbx_right: TcxGroupBox
              AlignWithMargins = True
              Left = 400
              Top = 0
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              PanelStyle.Active = True
              Style.BorderStyle = ebsNone
              TabOrder = 1
              Height = 727
              Width = 858
              object grpbx_Zuweisung: TcxGroupBox
                Left = 3
                Top = 3
                Align = alClient
                Caption = 'Zuweisung'
                Style.BorderStyle = ebsFlat
                TabOrder = 0
                Height = 721
                Width = 852
                object trlst_Zuweisung: TcxTreeList
                  AlignWithMargins = True
                  Left = 6
                  Top = 18
                  Width = 840
                  Height = 691
                  Align = alClient
                  Bands = <
                    item
                    end>
                  DragCursor = crDrag
                  DragMode = dmAutomatic
                  Navigator.Buttons.CustomButtons = <>
                  OptionsBehavior.ChangeDelay = 1000
                  OptionsBehavior.CopyCaptionsToClipboard = False
                  OptionsData.Editing = False
                  OptionsData.MultiThreadedSorting = bTrue
                  OptionsSelection.CellSelect = False
                  OptionsView.ColumnAutoWidth = True
                  OptionsView.Headers = False
                  OptionsView.TreeLineStyle = tllsSolid
                  PopupMenu = brpmm_Zuweisung
                  ScrollbarAnnotations.CustomAnnotations = <>
                  TabOrder = 0
                  OnClick = trlst_ZuweisungClick
                  OnDragDrop = trlst_ZuweisungDragDrop
                  OnDragOver = trlst_ZuweisungDragOver
                  object trlstCol_ZuweisungBezeichnung: TcxTreeListColumn
                    Caption.Text = 'Bezeichnung'
                    Width = 100
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                    Position.BandIndex = 0
                    SortOrder = soAscending
                    SortIndex = 0
                    Summary.FooterSummaryItems = <>
                    Summary.GroupFooterSummaryItems = <>
                  end
                  object trlstCol_ZuweisungID: TcxTreeListColumn
                    VisibleForExpressionEditor = bFalse
                    Visible = False
                    Caption.Text = 'Typ'
                    Width = 100
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                    Position.BandIndex = 0
                    Summary.FooterSummaryItems = <>
                    Summary.GroupFooterSummaryItems = <>
                  end
                  object trlstCol_ZuweisungLVL: TcxTreeListColumn
                    Visible = False
                    Width = 100
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                    Position.BandIndex = 0
                    Summary.FooterSummaryItems = <>
                    Summary.GroupFooterSummaryItems = <>
                  end
                  object trlstCol_ZuweisungIDTable: TcxTreeListColumn
                    Visible = False
                    Width = 100
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                    Position.BandIndex = 0
                    Summary.FooterSummaryItems = <>
                    Summary.GroupFooterSummaryItems = <>
                  end
                end
              end
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
      'Default'
      'PopupMenu1')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
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
      DockControl = bardckctrl_ArchivPfad
      DockedDockControl = bardckctrl_ArchivPfad
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
      DockControl = brdckctrl_MainKat
      DockedDockControl = brdckctrl_MainKat
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
      DockControl = brdckctrl_SubKat
      DockedDockControl = brdckctrl_SubKat
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
    object tb_Index: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = brdckCtrl_Index
      DockedDockControl = brdckCtrl_Index
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1292
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
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
      OnClick = btn_DirSaveClick
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
      OnClick = btn_SubKatDeleteClick
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
    object ppmbtn_Collapse: TdxBarButton
      Caption = 'Alles einklappen'
      Category = 0
      Hint = 'Alles einklappen'
      Visible = ivAlways
      OnClick = ppmbtn_CollapseClick
    end
    object ppmbtn_Expand: TdxBarButton
      Caption = 'Alles ausklappen'
      Category = 0
      Hint = 'Alles ausklappen'
      Visible = ivAlways
      OnClick = ppmbtn_ExpandClick
    end
    object ppmbtn_Delete: TdxBarButton
      Caption = 'L'#246'schen'
      Category = 1
      Visible = ivAlways
      OnClick = ppmbtn_DeleteClick
    end
  end
  object qry_Pfad: TFDQuery
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
      'SELECT * From archiv_konfiguration_hauptkategorien'
      'order by Bezeichnung'
      '')
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
      'SELECT * From archiv_konfiguration_unterkategorien'
      'order by Bezeichnung')
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
      'SELECT * From archiv_konfiguration_Index'
      'order by Bezeichnung')
    Left = 187
    Top = 231
  end
  object ds_index: TDataSource
    DataSet = qry_Index
    Left = 243
    Top = 231
  end
  object brpmm_Zuweisung: TdxBarPopupMenu
    BarManager = brmgr_Config
    ItemLinks = <
      item
        Visible = True
        ItemName = 'ppmbtn_Delete'
      end
      item
        Visible = True
        ItemName = 'ppmbtn_Collapse'
      end
      item
        Visible = True
        ItemName = 'ppmbtn_Expand'
      end>
    UseOwnFont = False
    OnPopup = brpmm_ZuweisungPopup
    Left = 600
    Top = 536
    PixelsPerInch = 96
  end
  object ds_indexType: TDataSource
    DataSet = qry_indexType
    Left = 243
    Top = 303
  end
  object qry_indexType: TFDQuery
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterCancel = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = SetButtonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT * From archiv_konfiguration_Index_typ'
      'order by Bezeichnung')
    Left = 187
    Top = 303
  end
end
