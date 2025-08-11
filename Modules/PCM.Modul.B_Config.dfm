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
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1280
    Height = 800
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object bardckctrl_ArchivPfad: TdxBarDockControl
      Left = 26
      Top = 56
      Width = 1228
      Height = 58
      Align = dalNone
      AllowDocking = False
      BarManager = brmgr_Config
    end
    object edt_ArchivPfad: TcxDBButtonEdit
      AlignWithMargins = True
      Left = 95
      Top = 120
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      DataBinding.DataField = 'Pfad'
      DataBinding.DataSource = ds_Pfad
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edt_PfadPropertiesButtonClick
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 1
      OnExit = btn_DirSaveClick
      Height = 19
      Width = 1159
    end
    object grd_ArchivPfad: TcxGrid
      Left = 26
      Top = 145
      Width = 1228
      Height = 251
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
    object brdckctrl_MainKat: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1228
      Height = 58
      Align = dalNone
      BarManager = brmgr_Config
      Visible = False
    end
    object edt_MainKat: TcxDBTextEdit
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      DataBinding.DataField = 'Bezeichnung'
      DataBinding.DataSource = ds_Mainkat
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 9
      Visible = False
      OnExit = btn_MainKatSaveClick
      OnKeyUp = edt_MainKatKeyUp
      Height = 19
      Width = 1159
    end
    object grd_MainKat: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1228
      Height = 629
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      Visible = False
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
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 900
        end
      end
      object grdlvl_MainKat: TcxGridLevel
        GridView = grdDBTblView_MainKat
      end
    end
    object brdckctrl_SubKat: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1228
      Height = 58
      Align = dalNone
      BarManager = brmgr_Config
      Visible = False
    end
    object edt_SubKat: TcxDBTextEdit
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      DataBinding.DataField = 'Bezeichnung'
      DataBinding.DataSource = ds_Subkat
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 12
      Visible = False
      OnExit = btn_SubKatSaveClick
      OnKeyUp = edt_SubKatKeyUp
      Height = 19
      Width = 1147
    end
    object grd_SubKat: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1228
      Height = 629
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      Visible = False
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
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 900
        end
      end
      object grdlvl_SubKat: TcxGridLevel
        GridView = grdDBTblView_Subkat
      end
    end
    object brdckCtrl_Index: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1228
      Height = 58
      Align = dalNone
      BarManager = brmgr_Config
      Visible = False
    end
    object edt_index: TcxDBTextEdit
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      DataBinding.DataField = 'Bezeichnung'
      DataBinding.DataSource = ds_index
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 15
      Visible = False
      OnExit = btn_MainKatSaveClick
      OnKeyUp = edt_indexKeyUp
      Height = 19
      Width = 736
    end
    object lucmbbx_Datatype: TcxDBLookupComboBox
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      DataBinding.DataField = 'ID_archiv_konfiguration_index_typ'
      DataBinding.DataSource = ds_index
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Bezeichnung'
        end>
      Properties.ListSource = ds_indexType
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 16
      Visible = False
      Height = 19
      Width = 395
    end
    object grd_Index: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1228
      Height = 629
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      Visible = False
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
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 900
        end
        object grdDBTblView_IndexID_archiv_konfiguration_index_typ: TcxGridDBColumn
          Caption = 'Typ'
          DataBinding.FieldName = 'ID_archiv_konfiguration_index_typ'
          DataBinding.IsNullValueType = True
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
    object trlst_MainKat: TcxTreeList
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Width = 386
      Height = 217
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
      TabOrder = 18
      Visible = False
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
    object trlst_SubKat: TcxTreeList
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Width = 386
      Height = 218
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
      TabOrder = 19
      Visible = False
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
    object trlst_Ind: TcxTreeList
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Width = 386
      Height = 217
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
      TabOrder = 20
      Visible = False
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
    object trlst_Zuweisung: TcxTreeList
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Width = 818
      Height = 718
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
      TabOrder = 21
      Visible = False
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
    object cxGrid1: TcxGrid
      Left = 26
      Top = 521
      Width = 1228
      Height = 253
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      LockedStateImageOptions.Effect = lsieDark
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_Scan
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
        object cxGridDBTableView1Scanprofile: TcxGridDBColumn
          DataBinding.FieldName = 'Scanprofile'
          DataBinding.IsNullValueType = True
          Width = 300
        end
        object cxGridDBTableView1Type: TcxGridDBColumn
          Caption = 'Typ'
          DataBinding.FieldName = 'Type'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'Flachbett'
              ImageIndex = 0
              Value = '0'
            end
            item
              Description = 'Dokumenteneinzug'
              Value = '1'
            end>
          Width = 200
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 95
      Top = 490
      AutoSize = False
      DataBinding.DataField = 'Scanprofile'
      DataBinding.DataSource = ds_Scan
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Height = 25
      Width = 547
    end
    object Button1: TButton
      Left = 1134
      Top = 490
      Width = 120
      Height = 25
      Caption = 'Scanprofil anlegen'
      TabOrder = 6
      OnClick = Button1Click
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 675
      Top = 490
      AutoSize = False
      DataBinding.DataField = 'Type'
      DataBinding.DataSource = ds_Scan
      Properties.Items = <
        item
          Description = 'Flachbett'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Dokumenteneinzug'
          Value = 1
        end>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Height = 25
      Width = 453
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 26
      Top = 426
      Width = 1228
      Height = 58
      Align = dalNone
      BarManager = brmgr_Config
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object lagrp_ConfigTab: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = lagrp_ConfigTab
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Pfad f'#252'r Dokumente / Scannerprofile'
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Verzeichnis zum Archiv'
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'bardckctrl_ArchivPfad'
      CaptionOptions.Visible = False
      Control = bardckctrl_ArchivPfad
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 1256
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Verzeichnis:'
      Control = edt_ArchivPfad
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 1172
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_ArchivPfad'
      CaptionOptions.Visible = False
      Control = grd_ArchivPfad
      ControlOptions.OriginalHeight = 150
      ControlOptions.OriginalWidth = 1256
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = lagrp_ConfigTab
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hauptkategorien'
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hauptkategorien'
      ItemIndex = 2
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckctrl_MainKat'
      CaptionOptions.Visible = False
      Control = brdckctrl_MainKat
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 1256
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Bezeichnung:'
      Control = edt_MainKat
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 1172
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_MainKat'
      CaptionOptions.Visible = False
      Control = grd_MainKat
      ControlOptions.OriginalHeight = 634
      ControlOptions.OriginalWidth = 1256
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = lagrp_ConfigTab
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Unterkategorien'
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutGroup14: TdxLayoutGroup
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Unterkategorien'
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckctrl_SubKat'
      CaptionOptions.Visible = False
      Control = brdckctrl_SubKat
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 1256
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup15: TdxLayoutGroup
      Parent = dxLayoutGroup14
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Unterkategorie:'
      Control = edt_SubKat
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 1162
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_SubKat'
      CaptionOptions.Visible = False
      Control = grd_SubKat
      ControlOptions.OriginalHeight = 634
      ControlOptions.OriginalWidth = 1256
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup17: TdxLayoutGroup
      Parent = lagrp_ConfigTab
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Indizies'
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutGroup18: TdxLayoutGroup
      Parent = dxLayoutGroup17
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Unterkategorien'
      ItemIndex = 2
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckCtrl_Index'
      CaptionOptions.Visible = False
      Control = brdckCtrl_Index
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 1256
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup19: TdxLayoutGroup
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Index:'
      Control = edt_index
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Datentyp:'
      Control = lucmbbx_Datatype
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_Index'
      CaptionOptions.Visible = False
      Control = grd_Index
      ControlOptions.OriginalHeight = 634
      ControlOptions.OriginalWidth = 1256
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup22: TdxLayoutGroup
      Parent = lagrp_ConfigTab
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Zuweisung'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object dxLayoutGroup24: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Hauptkategorie'
      ButtonOptions.ShowExpandButton = True
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup24
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'trlst_MainKat'
      CaptionOptions.Visible = False
      Control = trlst_MainKat
      ControlOptions.OriginalHeight = 274
      ControlOptions.OriginalWidth = 386
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup25: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Unterkategorie'
      ButtonOptions.ShowExpandButton = True
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup25
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'trlst_SubKat'
      CaptionOptions.Visible = False
      Control = trlst_SubKat
      ControlOptions.OriginalHeight = 274
      ControlOptions.OriginalWidth = 386
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup26: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Indizies'
      ButtonOptions.ShowExpandButton = True
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup26
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'trlst_Ind'
      CaptionOptions.Visible = False
      Control = trlst_Ind
      ControlOptions.OriginalHeight = 274
      ControlOptions.OriginalWidth = 386
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup30: TdxLayoutGroup
      Parent = dxLayoutGroup22
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Zuweisung'
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup30
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'trlst_Zuweisung'
      CaptionOptions.Visible = False
      Control = trlst_Zuweisung
      ControlOptions.OriginalHeight = 709
      ControlOptions.OriginalWidth = 846
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup22
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Scan-Profile'
      Index = 1
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 150
      ControlOptions.OriginalWidth = 1228
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Bezeichnung:'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'Button1'
      CaptionOptions.Visible = False
      Control = Button1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Typ:'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = dxBarDockControl1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 1280
      ControlOptions.ShowBorder = False
      Index = 0
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
    object brmgr_ConfigBar1: TdxBar
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1292
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
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
      Caption = 'Hauptkategorie l'#246'schen'
      Category = 0
      Hint = 'Hauptkategorie l'#246'schen'
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
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Scanprofil anlegen'
      Category = 0
      Hint = 'Scanprofil anlegen'
      Visible = ivAlways
      OnClick = dxBarLargeButton2Click
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'Scanprofil speichern'
      Category = 0
      Hint = 'Scanprofil speichern'
      Visible = ivAlways
      OnClick = dxBarLargeButton3Click
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = dxBarLargeButton4Click
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Caption = 'Scanprofil l'#246'schen'
      Category = 0
      Hint = 'Scanprofil l'#246'schen'
      Visible = ivAlways
      OnClick = dxBarLargeButton5Click
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
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
      'SELECT * From archiv_konfiguration')
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
  object qry_Scan: TFDQuery
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterCancel = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = SetButtonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT * From archiv_konfiguration_scanner')
    Left = 187
    Top = 375
  end
  object ds_Scan: TDataSource
    DataSet = qry_Scan
    Left = 243
    Top = 367
  end
end
