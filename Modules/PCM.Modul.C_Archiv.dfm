object frm_Archiv: Tfrm_Archiv
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'frm_Archiv'
  ClientHeight = 800
  ClientWidth = 1280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnShow = FormShow
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1280
    Height = 800
    Align = alClient
    TabOrder = 4
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    ExplicitLeft = 192
    ExplicitTop = 216
    ExplicitWidth = 964
    ExplicitHeight = 584
    object btn_DocSearchDelete: TcxButton
      Left = 153
      Top = 74
      Width = 137
      Height = 27
      Caption = '&Filter l'#246'schen'
      OptionsImage.ImageIndex = 24
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btn_DocSearchDeleteClick
    end
    object btn_DocSearch: TcxButton
      Left = 10
      Top = 74
      Width = 137
      Height = 27
      Caption = 'Datei &suchen'
      OptionsImage.ImageIndex = 25
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btn_DocSearchClick
    end
    object cmbbx_Subkat: TcxComboBox
      Left = 920
      Top = 122
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 5
      OnKeyDown = SearchKeyDown
      Width = 341
    end
    object cmbbx_benutzer: TcxComboBox
      Left = 71
      Top = 122
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 3
      OnKeyDown = SearchKeyDown
      Width = 331
    end
    object cmbbx_mainKat: TcxComboBox
      Left = 491
      Top = 122
      ParentFont = False
      Properties.OnChange = cmbbx_mainKatPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 4
      OnKeyDown = SearchKeyDown
      Width = 342
    end
    object grd_DocSearch: TcxGrid
      Left = 19
      Top = 331
      Width = 1242
      Height = 450
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      LockedStateImageOptions.Effect = lsieDark
      LookAndFeel.ScrollbarMode = sbmDefault
      object grdDBTblView_DocSearch: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellDblClick = grdDBTblView_DocSearchCellDblClick
        DataController.DataSource = ds_Doc
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.PercentWildcard = '*'
        DataController.Filter.UnderscoreWildcard = '?'
        DataController.KeyFieldNames = 'ID'
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
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblView_DocSearchID: TcxGridDBColumn
          Tag = 1
          DataBinding.FieldName = 'ID'
          Visible = False
          VisibleForExpressionEditor = bFalse
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
          VisibleForRowLayout = bFalse
        end
        object grdDBTblView_DocSearchFiles: TcxGridDBColumn
          Tag = 1
          DataBinding.FieldName = 'Files'
          FixedKind = fkLeft
          Width = 200
        end
        object grdDBTblView_DocSearchFullPath: TcxGridDBColumn
          Tag = 1
          DataBinding.FieldName = 'FullPath'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 500
        end
        object grdDBTblView_DocSearchBenutzer: TcxGridDBColumn
          Tag = 1
          DataBinding.FieldName = 'Benutzer'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Benutzer'
            end>
          Properties.ListSource = ds_benutzer
          Visible = False
          GroupIndex = 0
          Width = 200
        end
        object grdDBTblView_DocSearchMainkat: TcxGridDBColumn
          Tag = 1
          Caption = 'Hauptkategorie'
          DataBinding.FieldName = 'Mainkat'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Properties.ListSource = ds_mainkat
          Visible = False
          GroupIndex = 1
          Width = 200
        end
        object grdDBTblView_DocSearchSubkat: TcxGridDBColumn
          Tag = 1
          Caption = 'Unterkategorie'
          DataBinding.FieldName = 'Subkat'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Properties.ListSource = ds_Subkat
          Visible = False
          GroupIndex = 2
          Width = 200
        end
        object grdDBTblView_DocSearchFileImage: TcxGridDBColumn
          DataBinding.FieldName = 'FileImage'
          Visible = False
          VisibleForExpressionEditor = bFalse
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
          VisibleForRowLayout = bFalse
        end
      end
      object grdLvl_DocSearch: TcxGridLevel
        GridView = grdDBTblView_DocSearch
      end
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 10
      Top = 10
      Width = 1260
      Height = 58
      Align = dalNone
      BarManager = brmgr_Contacts
    end
    object grpbx_ArchivIndex: TcxGroupBox
      AlignWithMargins = True
      Left = 19
      Top = 147
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'Indizes'
      ParentBackground = False
      Style.TransparentBorder = False
      TabOrder = 6
      Height = 178
      Width = 1242
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = dxBarDockControl1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 1272
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Filterkriterien'
      ItemIndex = 1
      Index = 2
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Benutzer:'
      Control = cmbbx_benutzer
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 234
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Hauptkategorie:'
      Control = cmbbx_mainKat
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 234
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Unterkategorie:'
      Control = cmbbx_Subkat
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 234
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_DocSearch
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 137
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_DocSearchDelete
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 137
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = grd_DocSearch
      ControlOptions.OriginalHeight = 544
      ControlOptions.OriginalWidth = 1266
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = grpbx_ArchivIndex
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 178
      ControlOptions.OriginalWidth = 1272
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object ds_Doc: TDataSource
    DataSet = qry_Doc
    Left = 509
    Top = 344
  end
  object brmgr_Contacts: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'pm_kontakte'
      'pm_KontaktImExport'
      'PopupMenu1')
    Categories.ItemsVisibles = (
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True)
    ImageOptions.Images = dm_PCM.imglst_16x16
    ImageOptions.LargeImages = dm_PCM.imglst_32x32
    ImageOptions.LargeIcons = True
    ImageOptions.UseLargeImagesForLargeIcons = True
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 112
    Top = 488
    PixelsPerInch = 96
    object tb_dic: TdxBar
      Caption = 'tb_Contacts'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1133
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_DocNew'
        end
        item
          Visible = True
          ItemName = 'btn_DocEdit'
        end
        item
          Visible = True
          ItemName = 'btn_DocDelete'
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
    object btn_DocNew: TdxBarLargeButton
      Caption = 'Dokument a&nlegen'
      Category = 0
      Hint = 'Dokument anlegen'
      Visible = ivAlways
      OnClick = btn_DocNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 140
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_DocDelete: TdxBarLargeButton
      Caption = 'Dokument &l'#246'schen'
      Category = 0
      Hint = 'Dokument l'#246'schen'
      Visible = ivAlways
      OnClick = btn_DocDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 140
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_DocEdit: TdxBarLargeButton
      Caption = 'Dokument neu &indizieren'
      Category = 0
      Hint = 'Dokument neu indizieren'
      Visible = ivAlways
      OnClick = btn_DocEditClick
      AutoGrayScale = False
      LargeImageIndex = 114
      Width = 140
    end
  end
  object qry_Doc: TFDQuery
    Active = True
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT *'
      'From archiv_files'
      ''
      '')
    Left = 504
    Top = 288
  end
  object qry_Benutzer: TFDQuery
    Active = True
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT * '
      'From benutzer'
      'order by benutzer')
    Left = 288
    Top = 304
  end
  object ds_benutzer: TDataSource
    DataSet = qry_Benutzer
    Left = 293
    Top = 360
  end
  object qry_mainkat: TFDQuery
    Active = True
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT akzhk.ID, akhk.Bezeichnung '
      'From archiv_konfiguration_Zuweisung_hauptkategorien akzhk'
      
        'Left outer join archiv_konfiguration_hauptkategorien akhk on akz' +
        'hk.ID = akhk.id  '
      'order by akhk.Bezeichnung')
    Left = 192
    Top = 312
  end
  object ds_mainkat: TDataSource
    DataSet = qry_mainkat
    Left = 197
    Top = 368
  end
  object ds_Subkat: TDataSource
    DataSet = qry_Subkat
    Left = 109
    Top = 368
  end
  object qry_Subkat: TFDQuery
    Active = True
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT akzhk.ID, akhk.Bezeichnung '
      'From archiv_konfiguration_Zuweisung_unterkategorien akzhk'
      
        'Left outer join archiv_konfiguration_unterkategorien akhk on akz' +
        'hk.ID_archiv_konfiguration_unterkategorien = akhk.id  '
      'order by akhk.Bezeichnung')
    Left = 104
    Top = 312
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grd_DocSearch
    PopupMenus = <
      item
        GridView = grdDBTblView_DocSearch
        HitTypes = [gvhtCell, gvhtRecord, gvhtIndicator]
        Index = 0
      end>
    Left = 776
    Top = 583
  end
end
