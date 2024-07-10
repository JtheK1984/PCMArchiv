object frm_NewFile: Tfrm_NewFile
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'PCM  - Archiv: Neue Datei archivieren'
  ClientHeight = 574
  ClientWidth = 812
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 15
  object grpbx_Design: TcxGroupBox
    Left = 0
    Top = 58
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 0
    Height = 516
    Width = 812
    object lbl_File: TcxLabel
      Left = 8
      Top = 8
      Caption = 'Datei:'
      Transparent = True
    end
    object edt_File: TcxButtonEdit
      Left = 104
      Top = 7
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edt_FilePropertiesButtonClick
      TabOrder = 0
      OnKeyDown = FormKeyDown
      Width = 700
    end
    object cmbbx_Benutzer: TcxComboBox
      Left = 104
      Top = 65
      TabOrder = 2
      Width = 700
    end
    object cmbbx_Mainkat: TcxComboBox
      Left = 104
      Top = 94
      Properties.OnChange = cmbbx_MainkatPropertiesChange
      TabOrder = 3
      Width = 700
    end
    object cmbbx_Subkat: TcxComboBox
      Left = 104
      Top = 123
      Enabled = False
      Properties.OnChange = cmbbx_SubkatPropertiesChange
      TabOrder = 4
      Width = 700
    end
    object lbl_user: TcxLabel
      Left = 8
      Top = 66
      Caption = 'Benutzer:'
      Transparent = True
    end
    object lbl_MainKat: TcxLabel
      Left = 8
      Top = 95
      Caption = 'Hauptkategorie:'
      Transparent = True
    end
    object lbl_Subkat: TcxLabel
      Left = 8
      Top = 124
      Caption = 'Unterkategorie:'
      Transparent = True
    end
    object grpbx_Indizies: TcxGroupBox
      AlignWithMargins = True
      Left = 8
      Top = 155
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Caption = 'Indizes'
      ParentBackground = False
      TabOrder = 9
      Height = 355
      Width = 796
      object sclbx_Indizies: TcxScrollBox
        Left = 2
        Top = 20
        Width = 792
        Height = 333
        Align = alClient
        TabOrder = 0
      end
    end
    object lbl_Filename: TcxLabel
      Left = 8
      Top = 37
      Caption = 'Dateiname:'
      Transparent = True
    end
    object edt_filename: TcxTextEdit
      Left = 104
      Top = 36
      TabOrder = 1
      Width = 700
    end
  end
  object brmgr_Archiv: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = dm_PCM.imglst_32x32
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 440
    Top = 104
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      58
      0)
    object tb_archiv: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 652
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_archivsave'
        end
        item
          Visible = True
          ItemName = 'btn_archivsCancel'
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
    object btn_archivsave: TdxBarLargeButton
      Caption = '&Speichern'
      Category = 0
      Hint = 'Speichern'
      Visible = ivAlways
      OnClick = btn_archivsaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_archivsCancel: TdxBarLargeButton
      Caption = '&Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_archivsCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
  end
  object odlg_Doc: TdxOpenFileDialog
    Left = 304
    Top = 216
  end
end
