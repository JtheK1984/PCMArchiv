object frm_Contact: Tfrm_Contact
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_Contact'
  ClientHeight = 786
  ClientWidth = 1181
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnl_Design: TcxGroupBox
    Left = 0
    Top = 63
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 4
    Height = 723
    Width = 1181
    object grd_Kontaktesuche: TcxGrid
      Left = 3
      Top = 151
      Width = 1175
      Height = 569
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
      TabOrder = 0
      LockedStateImageOptions.Effect = lsieDark
      LookAndFeel.ScrollbarMode = sbmDefault
      ExplicitLeft = 0
      ExplicitTop = 148
      ExplicitWidth = 1167
      ExplicitHeight = 535
      object grdDBTblView_Kontakte: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellDblClick = grdDBTblView_KontakteCellDblClick
        DataController.DataSource = ds_Kontakte
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
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblView_KontakteID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          DataBinding.IsNullValueType = True
          Visible = False
        end
        object grdDBTblView_KontakteID_Anrede: TcxGridDBColumn
          Caption = 'Anrede'
          DataBinding.FieldName = 'ID_Anrede'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          FixedKind = fkLeft
        end
        object grdDBTblView_KontakteVorname: TcxGridDBColumn
          DataBinding.FieldName = 'Vorname'
          DataBinding.IsNullValueType = True
          FixedKind = fkLeft
          SortIndex = 0
          SortOrder = soAscending
          Width = 200
        end
        object grdDBTblView_KontakteNachname: TcxGridDBColumn
          DataBinding.FieldName = 'Nachname'
          DataBinding.IsNullValueType = True
          FixedKind = fkLeft
          SortIndex = 1
          SortOrder = soAscending
          Width = 200
        end
        object grdDBTblView_KontakteGeburtsname: TcxGridDBColumn
          DataBinding.FieldName = 'Geburtsname'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 200
        end
        object grdDBTblView_KontakteGeburtsland: TcxGridDBColumn
          DataBinding.FieldName = 'Geburtsland'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 200
        end
        object grdDBTblView_KontakteZusatz: TcxGridDBColumn
          DataBinding.FieldName = 'Zusatz'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 200
        end
        object grdDBTblView_KontakteBild: TcxGridDBColumn
          DataBinding.FieldName = 'Bild'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxImageProperties'
          Properties.GraphicClassName = 'TdxPNGImage'
        end
        object grdDBTblView_KontakteStrasse_Privat: TcxGridDBColumn
          Caption = 'Strasse Privat'
          DataBinding.FieldName = 'Strasse_Privat'
          DataBinding.IsNullValueType = True
          Width = 200
        end
        object grdDBTblView_KontaktePLZ_Privat: TcxGridDBColumn
          Caption = 'PLZ Privat'
          DataBinding.FieldName = 'PLZ_Privat'
          DataBinding.IsNullValueType = True
          Width = 90
        end
        object grdDBTblView_KontakteOrt_Privat: TcxGridDBColumn
          Caption = 'Ort Privat'
          DataBinding.FieldName = 'Ort_Privat'
          DataBinding.IsNullValueType = True
          Width = 200
        end
        object grdDBTblView_KontakteID_Kontaktart: TcxGridDBColumn
          Caption = 'Kontaktart'
          DataBinding.FieldName = 'ID_Kontaktart'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Width = 120
        end
        object grdDBTblView_KontakteTelefon_Privat: TcxGridDBColumn
          Caption = 'Telefon Privat'
          DataBinding.FieldName = 'Telefon_Privat'
          DataBinding.IsNullValueType = True
          Width = 150
        end
        object grdDBTblView_KontakteTelefon_Privat1: TcxGridDBColumn
          Caption = 'Telefon Privat 1'
          DataBinding.FieldName = 'Telefon_Privat1'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 150
        end
        object grdDBTblView_KontakteHandy_privat: TcxGridDBColumn
          Caption = 'Mobil Privat'
          DataBinding.FieldName = 'Handy_privat'
          DataBinding.IsNullValueType = True
          Width = 150
        end
        object grdDBTblView_KontakteE_Mail_Privat: TcxGridDBColumn
          Caption = 'E-Mail Privat'
          DataBinding.FieldName = 'E_Mail_Privat'
          DataBinding.IsNullValueType = True
          Width = 150
        end
        object grdDBTblView_KontakteE_Mail_Privat1: TcxGridDBColumn
          Caption = 'E-Mail Privat 1'
          DataBinding.FieldName = 'E_Mail_Privat1'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 180
        end
        object grdDBTblView_KontakteInternet_Privat: TcxGridDBColumn
          Caption = 'Internet Privat'
          DataBinding.FieldName = 'Internet_Privat'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 200
        end
        object grdDBTblView_KontakteGeburtsdatum: TcxGridDBColumn
          DataBinding.FieldName = 'Geburtsdatum'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 100
        end
        object grdDBTblView_KontakteID_Geschlecht: TcxGridDBColumn
          Caption = 'Geschlecht'
          DataBinding.FieldName = 'ID_Geschlecht'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Visible = False
          Width = 80
        end
        object grdDBTblView_KontakteID_Familienstand: TcxGridDBColumn
          Caption = 'Familienstand'
          DataBinding.FieldName = 'ID_Familienstand'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Visible = False
          Width = 90
        end
        object grdDBTblView_KontakteID_Staatsangehoerigkeit: TcxGridDBColumn
          Caption = 'Staatsangehoerigkeit'
          DataBinding.FieldName = 'ID_Staatsangehoerigkeit'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Visible = False
          Width = 120
        end
        object grdDBTblView_KontakteID_Konfession: TcxGridDBColumn
          Caption = 'Konfession'
          DataBinding.FieldName = 'ID_Konfession'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Visible = False
          Width = 80
        end
        object grdDBTblView_KontakteInfo: TcxGridDBColumn
          DataBinding.FieldName = 'Info'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 100
        end
        object grdDBTblView_KontakteFirma: TcxGridDBColumn
          DataBinding.FieldName = 'Firma'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 200
        end
        object grdDBTblView_KontakteStrasse_Ges: TcxGridDBColumn
          Caption = 'Strasse Gesch'#228'ftlich'
          DataBinding.FieldName = 'Strasse_Ges'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 200
        end
        object grdDBTblView_KontaktePLZ_Ges: TcxGridDBColumn
          Caption = 'PLZ Gesch'#228'ftlich'
          DataBinding.FieldName = 'PLZ_Ges'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 90
        end
        object grdDBTblView_KontakteOrt_Ges: TcxGridDBColumn
          Caption = 'Ort Gesch'#228'ftlich'
          DataBinding.FieldName = 'Ort_Ges'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 200
        end
        object grdDBTblView_KontakteAbteilung_Ges: TcxGridDBColumn
          Caption = 'Abteilung'
          DataBinding.FieldName = 'Abteilung_Ges'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 200
        end
        object grdDBTblView_KontakteFunktion_Ges: TcxGridDBColumn
          Caption = 'Funktion'
          DataBinding.FieldName = 'Funktion_Ges'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 200
        end
        object grdDBTblView_KontakteZentrale_Ges: TcxGridDBColumn
          Caption = 'Zentrale'
          DataBinding.FieldName = 'Zentrale_Ges'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 200
        end
        object grdDBTblView_KontakteTelefon_Ges: TcxGridDBColumn
          Caption = 'Durchwahl'
          DataBinding.FieldName = 'Telefon_Ges'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 200
        end
        object grdDBTblView_KontakteHandy_Ges: TcxGridDBColumn
          Caption = 'Handy Gesch'#228'ftlich'
          DataBinding.FieldName = 'Handy_Ges'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 200
        end
        object grdDBTblView_KontakteE_Mail_Ges: TcxGridDBColumn
          Caption = 'E-Mail Gesch'#228'ftlich'
          DataBinding.FieldName = 'E_Mail_Ges'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 200
        end
        object grdDBTblView_KontakteInternet_Ges: TcxGridDBColumn
          Caption = 'Internet Gesch'#228'ftlich'
          DataBinding.FieldName = 'Internet_Ges'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 200
        end
        object grdDBTblView_KontakteFacebook: TcxGridDBColumn
          DataBinding.FieldName = 'Facebook'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 200
        end
        object grdDBTblView_KontakteSkype: TcxGridDBColumn
          DataBinding.FieldName = 'Skype'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 200
        end
        object grdDBTblView_KontakteLive_Messanger: TcxGridDBColumn
          Caption = 'Microsoft Teams'
          DataBinding.FieldName = 'Live_Messanger'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 200
        end
      end
      object grdLvl_Kontakte: TcxGridLevel
        GridView = grdDBTblView_Kontakte
      end
    end
    object grpbx_KontakteSuche: TcxGroupBox
      Left = 3
      Top = 3
      Align = alTop
      Caption = 'Filterkriterien'
      TabOrder = 1
      Height = 109
      Width = 1175
      object cmbbx_KontaktSucheArt: TcxComboBox
        Left = 91
        Top = 75
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        OnKeyDown = edt_KontaktSucheNachnameKeyDown
        Width = 250
      end
      object edt_KontaktSucheAbteilung: TcxTextEdit
        Left = 814
        Top = 48
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 7
        OnKeyDown = edt_KontaktSucheNachnameKeyDown
        Width = 250
      end
      object edt_KontaktSucheFirma: TcxTextEdit
        Left = 814
        Top = 21
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 6
        OnKeyDown = edt_KontaktSucheNachnameKeyDown
        Width = 250
      end
      object edt_KontaktSucheFunktion: TcxTextEdit
        Left = 814
        Top = 75
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 8
        OnKeyDown = edt_KontaktSucheNachnameKeyDown
        Width = 250
      end
      object edt_KontaktSucheNachname: TcxTextEdit
        Left = 91
        Top = 21
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.TextColor = clBtnShadow
        StyleDisabled.TextStyle = []
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.TextStyle = []
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.TextStyle = []
        TabOrder = 0
        OnKeyDown = edt_KontaktSucheNachnameKeyDown
        Width = 250
      end
      object edt_KontaktSucheOrt: TcxTextEdit
        Left = 454
        Top = 75
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 5
        OnKeyDown = edt_KontaktSucheNachnameKeyDown
        Width = 250
      end
      object edt_KontaktSuchePLZ: TcxTextEdit
        Left = 454
        Top = 48
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 4
        OnKeyDown = edt_KontaktSucheNachnameKeyDown
        Width = 250
      end
      object edt_KontaktSucheStrasse: TcxTextEdit
        Left = 454
        Top = 21
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        OnKeyDown = edt_KontaktSucheNachnameKeyDown
        Width = 250
      end
      object edt_KontaktSucheVorname: TcxTextEdit
        Left = 91
        Top = 48
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        OnKeyDown = edt_KontaktSucheNachnameKeyDown
        Width = 250
      end
      object lbl_KontaktSucheAbteilung: TcxLabel
        Left = 757
        Top = 51
        Caption = 'Abteilung:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object lbl_KontaktSucheArt: TcxLabel
        Left = 8
        Top = 78
        Caption = 'Kontaktart:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object lbl_KontaktSucheFirma: TcxLabel
        Left = 757
        Top = 24
        Caption = 'Firma:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object lbl_KontaktSucheFunktion: TcxLabel
        Left = 757
        Top = 78
        Caption = 'Funktion:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object lbl_KontaktSucheNachname: TcxLabel
        Left = 8
        Top = 24
        Caption = 'Nachname:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object lbl_KontaktSucheOrt: TcxLabel
        Left = 409
        Top = 78
        Caption = 'Ort:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object lbl_KontaktSuchePLZ: TcxLabel
        Left = 409
        Top = 51
        Caption = 'Plz:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object lbl_KontaktSucheStrasse: TcxLabel
        Left = 409
        Top = 24
        Caption = 'Stra'#223'e:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object lbl_KontaktSucheVorname: TcxLabel
        Left = 8
        Top = 51
        Caption = 'Vorname:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
    end
    object pnl_KontakteButtons: TcxGroupBox
      Left = 3
      Top = 112
      Align = alTop
      PanelStyle.Active = True
      Style.BorderStyle = ebsNone
      TabOrder = 2
      ExplicitLeft = 0
      ExplicitTop = 109
      Height = 39
      Width = 1175
      object btn_kontaktDeletefilter: TcxButton
        Left = 151
        Top = 6
        Width = 137
        Height = 27
        Caption = 'Filter l'#246'schen'
        OptionsImage.ImageIndex = 24
        OptionsImage.Images = dm_PCM.imglst_16x16
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = btn_kontaktDeletefilterClick
      end
      object btn_kontaktsuchen: TcxButton
        Left = 8
        Top = 6
        Width = 137
        Height = 27
        Caption = 'Kontakt suchen'
        OptionsImage.ImageIndex = 25
        OptionsImage.Images = dm_PCM.imglst_16x16
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = btn_kontaktsuchenClick
      end
    end
  end
  object ds_Kontakte: TDataSource
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
    DockControlHeights = (
      0
      0
      63
      0)
    object brmgrContactsBar1: TdxBar
      Caption = 'tb_Contacts'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 1133
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_KontaktNew'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'btn_KontaktDelete'
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
    object btn_KontaktNew: TdxBarLargeButton
      Caption = 'Dokument anlegen'
      Category = 0
      Hint = 'Dokument anlegen'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 120
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_KontaktDelete: TdxBarLargeButton
      Caption = 'Dokument l'#246'schen'
      Category = 0
      Hint = 'Dokument l'#246'schen'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 120
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_KontaktCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 120
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_KontaktSave: TdxBarLargeButton
      Caption = 'Dokument speichern'
      Category = 0
      Hint = 'Dokument speichern'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 120
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Dokument bearbeiten'
      Category = 0
      Hint = 'Dokument bearbeiten'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 114
      Width = 125
    end
  end
  object qry_Kontakte: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT * '
      'From Manager_kontakte'
      'order by Vorname, Nachname')
    Left = 504
    Top = 288
    object qry_KontakteID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qry_KontakteID_Anrede: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Anrede'
      Origin = 'ID_Anrede'
    end
    object qry_KontakteVorname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Vorname'
      Origin = 'Vorname'
      Size = 128
    end
    object qry_KontakteNachname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nachname'
      Origin = 'Nachname'
      Size = 128
    end
    object qry_KontakteZusatz: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Zusatz'
      Origin = 'Zusatz'
      Size = 128
    end
    object qry_KontakteStrasse_Privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Strasse_Privat'
      Origin = 'Strasse_Privat'
      Size = 128
    end
    object qry_KontaktePLZ_Privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLZ_Privat'
      Origin = 'PLZ_Privat'
      Size = 128
    end
    object qry_KontakteOrt_Privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ort_Privat'
      Origin = 'Ort_Privat'
      Size = 128
    end
    object qry_KontakteTelefon_Privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefon_Privat'
      Origin = 'Telefon_Privat'
      Size = 128
    end
    object qry_KontakteTelefon_Privat1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefon_Privat1'
      Origin = 'Telefon_Privat1'
      Size = 128
    end
    object qry_KontakteTelefon_Privat2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefon_Privat2'
      Origin = 'Telefon_Privat2'
      Size = 128
    end
    object qry_KontakteHandy_privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Handy_privat'
      Origin = 'Handy_privat'
      Size = 128
    end
    object qry_KontakteE_Mail_Privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'E_Mail_Privat'
      Origin = 'E_Mail_Privat'
      Size = 128
    end
    object qry_KontakteE_Mail_Privat1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'E_Mail_Privat1'
      Origin = 'E_Mail_Privat1'
      Size = 128
    end
    object qry_KontakteE_Mail_Privat2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'E_Mail_Privat2'
      Origin = 'E_Mail_Privat2'
      Size = 128
    end
    object qry_KontakteInternet_Privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Internet_Privat'
      Origin = 'Internet_Privat'
      Size = 128
    end
    object qry_KontakteID_Kontaktart: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Kontaktart'
      Origin = 'ID_Kontaktart'
    end
    object qry_KontakteBild: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Bild'
      Origin = 'Bild'
    end
    object qry_KontakteGeburtsdatum: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Geburtsdatum'
      Origin = 'Geburtsdatum'
    end
    object qry_KontakteID_Geschlecht: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Geschlecht'
      Origin = 'ID_Geschlecht'
    end
    object qry_KontakteID_Familienstand: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Familienstand'
      Origin = 'ID_Familienstand'
    end
    object qry_KontakteID_Staatsangehoerigkeit: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Staatsangehoerigkeit'
      Origin = 'ID_Staatsangehoerigkeit'
    end
    object qry_KontakteID_Konfession: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Konfession'
      Origin = 'ID_Konfession'
    end
    object qry_KontakteInfo: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'Info'
      Origin = 'Info'
      BlobType = ftMemo
    end
    object qry_KontakteFirma: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Firma'
      Origin = 'Firma'
      Size = 128
    end
    object qry_KontakteStrasse_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Strasse_Ges'
      Origin = 'Strasse_Ges'
      Size = 128
    end
    object qry_KontaktePLZ_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLZ_Ges'
      Origin = 'PLZ_Ges'
      Size = 128
    end
    object qry_KontakteOrt_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ort_Ges'
      Origin = 'Ort_Ges'
      Size = 128
    end
    object qry_KontakteAbteilung_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Abteilung_Ges'
      Origin = 'Abteilung_Ges'
      Size = 128
    end
    object qry_KontakteFunktion_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Funktion_Ges'
      Origin = 'Funktion_Ges'
      Size = 128
    end
    object qry_KontakteZentrale_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Zentrale_Ges'
      Origin = 'Zentrale_Ges'
      Size = 128
    end
    object qry_KontakteTelefon_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefon_Ges'
      Origin = 'Telefon_Ges'
      Size = 128
    end
    object qry_KontakteHandy_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Handy_Ges'
      Origin = 'Handy_Ges'
      Size = 128
    end
    object qry_KontakteE_Mail_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'E_Mail_Ges'
      Origin = 'E_Mail_Ges'
      Size = 128
    end
    object qry_KontakteInternet_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Internet_Ges'
      Origin = 'Internet_Ges'
      Size = 128
    end
    object qry_KontakteFacebook: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Facebook'
      Origin = 'Facebook'
      Size = 128
    end
    object qry_KontakteSkype: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Skype'
      Origin = 'Skype'
      Size = 128
    end
    object qry_KontakteICQ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICQ'
      Origin = 'ICQ'
      Size = 128
    end
    object qry_KontakteLive_Messanger: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Live_Messanger'
      Origin = 'Live_Messanger'
      Size = 128
    end
    object qry_KontakteID_Benutzer: TIntegerField
      FieldName = 'ID_Benutzer'
      Origin = 'ID_Benutzer'
      Required = True
    end
    object qry_KontakteGeburtsname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Geburtsname'
      Origin = 'Geburtsname'
      Size = 128
    end
    object qry_KontakteGeburtsland: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Geburtsland'
      Origin = 'Geburtsland'
      Size = 128
    end
  end
end
