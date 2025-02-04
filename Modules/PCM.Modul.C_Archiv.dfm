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
  object pc_Options: TcxPageControl
    Left = 0
    Top = 0
    Width = 1280
    Height = 800
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
    ClientRectBottom = 794
    ClientRectLeft = 2
    ClientRectRight = 1274
    ClientRectTop = 28
    object ts_A_Archiv: TcxTabSheet
      Caption = 'Archiv'
      ImageIndex = 83
      object pnl_DocButtons: TcxGroupBox
        Left = 0
        Top = 63
        Align = alTop
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 39
        Width = 1272
        object btn_DocSearchDelete: TcxButton
          Left = 151
          Top = 6
          Width = 137
          Height = 27
          Caption = '&Filter l'#246'schen'
          OptionsImage.ImageIndex = 24
          OptionsImage.Images = dm_PCM.imglst_16x16
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btn_DocSearchDeleteClick
        end
        object btn_DocSearch: TcxButton
          Left = 8
          Top = 6
          Width = 137
          Height = 27
          Caption = 'Datei &suchen'
          OptionsImage.ImageIndex = 25
          OptionsImage.Images = dm_PCM.imglst_16x16
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btn_DocSearchClick
        end
      end
      object grpbx_Archiv: TcxGroupBox
        Left = 0
        Top = 102
        Align = alTop
        Caption = 'Filterkriterien'
        TabOrder = 1
        Height = 113
        Width = 1272
        object lbl_User: TcxLabel
          Left = 8
          Top = 24
          AutoSize = False
          Caption = 'Benutzer'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 17
          Width = 90
        end
        object lbl_MainKat: TcxLabel
          Left = 368
          Top = 24
          AutoSize = False
          Caption = 'Hauptkategorie:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 17
          Width = 90
        end
        object cmbbx_Subkat: TcxComboBox
          Left = 820
          Top = 23
          Enabled = False
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          OnKeyDown = SearchKeyDown
          Width = 234
        end
        object lbl_Subkat: TcxLabel
          Left = 728
          Top = 24
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
          Width = 90
        end
        object cmbbx_benutzer: TcxComboBox
          Left = 100
          Top = 23
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          OnKeyDown = SearchKeyDown
          Width = 234
        end
        object cmbbx_mainKat: TcxComboBox
          Left = 460
          Top = 23
          ParentFont = False
          Properties.OnChange = cmbbx_mainKatPropertiesChange
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          OnKeyDown = SearchKeyDown
          Width = 234
        end
        object grpbx_ArchivIndex: TcxGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 52
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alBottom
          Caption = 'Indizes'
          ParentBackground = False
          TabOrder = 6
          Height = 52
          Width = 1266
        end
      end
      object grd_DocSearch: TcxGrid
        Left = 0
        Top = 215
        Width = 1272
        Height = 551
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = cxcbsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
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
        Left = 0
        Top = 0
        Width = 1272
        Height = 63
        Align = dalTop
        BarManager = brmgr_Contacts
      end
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
