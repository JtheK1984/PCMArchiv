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
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 812
    Height = 574
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object edt_File: TcxButtonEdit
      Left = 103
      Top = 193
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edt_FilePropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      OnKeyDown = FormKeyDown
      Width = 697
    end
    object cmbbx_Benutzer: TcxComboBox
      Left = 103
      Top = 221
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Width = 697
    end
    object cmbbx_Mainkat: TcxComboBox
      Left = 103
      Top = 249
      Properties.OnChange = cmbbx_MainkatPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Width = 697
    end
    object cmbbx_Subkat: TcxComboBox
      Left = 103
      Top = 277
      Properties.OnChange = cmbbx_SubkatPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Width = 697
    end
    object sclbx_Indizies: TcxScrollBox
      Left = 12
      Top = 305
      Width = 788
      Height = 257
      TabOrder = 9
    end
    object edt_filename: TcxTextEdit
      Left = 103
      Top = 133
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 697
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 12
      Top = 12
      Width = 788
      Height = 58
      Align = dalNone
      BarManager = brmgr_Archiv
    end
    object cxComboBox1: TcxComboBox
      Left = 103
      Top = 77
      Properties.Items.Strings = (
        'Datei'
        'Scanner')
      Properties.OnChange = cxComboBox1PropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Text = 'Scanner'
      Width = 697
    end
    object cxButton1: TcxButton
      Left = 12
      Top = 161
      Width = 788
      Height = 25
      Caption = 'Dokument scannen'
      TabOrder = 4
      OnClick = cxButton1Click
    end
    object cxComboBox2: TcxComboBox
      Left = 103
      Top = 105
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Text = 'cxComboBox2'
      Width = 697
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = dxBarDockControl1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 790
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = sclbx_Indizies
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 333
      ControlOptions.OriginalWidth = 792
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Datei:'
      Control = edt_File
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 700
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Dateiname:'
      Control = edt_filename
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 700
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Benutzer:'
      Control = cmbbx_Benutzer
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 700
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Hauptkategorie:'
      Control = cmbbx_Mainkat
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 700
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Unterkategorie:'
      Control = cmbbx_Subkat
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 700
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Quelle:'
      Control = cxComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Scantyp:'
      Control = cxComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
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
    UseSystemFont = True
    Left = 440
    Top = 104
    PixelsPerInch = 96
    object tb_archiv: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
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
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 400
    Top = 296
  end
end
