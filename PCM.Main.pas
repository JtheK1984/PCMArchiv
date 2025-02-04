unit PCM.Main;

interface

uses
  {$Region Uses}
  {$IFDEF WIN64}
    {$I Skins.inc}
    dxSkinsForm, dxSkinsdxBarPainter, dxSkinscxPCPainter,
  {$ELSE}
    {$I Skins.inc}
    dxSkinsForm, dxSkinsdxBarPainter, dxSkinscxPCPainter,
  {$ENDIF}
  SYSTEM.uitypes, Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ImgList, Vcl.Menus, NTTranslator, Strutils, DateUtils,shellapi, Vcl.Themes,
  FireDAC.Phys.ADSDef, FireDAC.Phys.MSSQLDef, FireDAC.Stan.Param,
  FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL, FireDAC.Phys.ADS,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart, cxGeometry, cxVariants, dxCustomData,
  cxCustomCanvas, dxCoreGraphics, dxChartCore, dxChartData, dxChartLegend,
  dxChartSimpleDiagram, dxChartXYDiagram, dxChartXYSeriesLineView,
  dxChartXYSeriesAreaView, dxChartMarkers, dxChartXYSeriesBarView,
  dxChartDBData, dxCoreClasses, dxChartControl, VCLTee.TeeDBCrossTab,
  cxGridChartView, cxPivotGridChartConnection, cxCustomPivotGrid, cxDBPivotGrid,
  dxBarExtItems, cxBarEditItem,
  cxSplitter, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxEdit, cxClasses, System.ImageList, cxContainer, dxBarBuiltInMenu,
  Vcl.ExtCtrls, cxPC, dxNavBarCollns, dxNavBarBase, dxNavBar, dxSkinsCore,
  dxBar, cxLocalization, cxLabel, cxGroupBox, dxNavBarStyles,inifiles;
  {$EndRegion Uses}
type
  {$Region Type}
  TdxBarControlAccess = class(TdxBarControl);
  TdxBarAccess = class(TdxBar);
  TdxBarManagerAccess = class(TdxBarManager);

  TMethod = procedure of object;
  TModuleType = (mtForm, mtEvent);
  TModule = class(TCollectionItem)
  protected
    FFormClass: TFormClass;
    FInstance: Pointer;
    FEvent: TMethod;
    FType: TModuleType;
    FRight: Integer;
    FModuleName: String;
    FImageIndex: Integer;

    procedure SetFormClass(Value: TFormClass);
    procedure SetEvent(Value: TMethod);
  public
    property FormClass: TFormClass read FFormClass write SetFormClass;
    property Instance: Pointer read FInstance write FInstance;
    property Event: TMethod read FEvent write SetEvent;
    property Typ: TModuleType read FType;
    property Right: Integer read FRight write FRight;
    property ModuleName: String read FModuleName write FModuleName;
    property ImageIndex: Integer read FImageIndex write FImageIndex;
  end;


type
  Tfrm_PCM_Main = class(TForm)
    imglst_Icons: TImageList;
    loc_Lang: TcxLocalizer;
    lafCtrl_Main: TcxLookAndFeelController;
    navbr_main: TdxNavBar;
    navbrgrp_Optionen: TdxNavBarGroup;
    navbrgrp_Kontake: TdxNavBarGroup;
    navbrgrp_Info: TdxNavBarGroup;
    navbrgrp_Programm: TdxNavBarGroup;
    iArchiv: TdxNavBarItem;
    iSysteminfo: TdxNavBarItem;
    iBeenden: TdxNavBarItem;
    iBenutzerverwaltung: TdxNavBarItem;
    iKonfiguration: TdxNavBarItem;
    iInfo: TdxNavBarItem;
    iAbmelden: TdxNavBarItem;
    navbrStyleIt_main: TdxNavBarStyleItem;
    pc_main: TcxPageControl;
    grpbx_Design: TcxGroupBox;
    trayic_Main: TTrayIcon;
    ppm_Main: TPopupMenu;
    ppmbtn_Benutzer: TMenuItem;
    ppmbtn_Konfiguration: TMenuItem;
    ppmbtn_Archiv: TMenuItem;
    ppmbtn_Trenn1: TMenuItem;
    ppmbtn_Trenn2: TMenuItem;
    ppmbtn_Systeminfo: TMenuItem;
    ppmbtn_Info: TMenuItem;
    ppmbtn_Beenden: TMenuItem;
    ppmbtn_Trenn6: TMenuItem;
    iHandbuch: TdxNavBarItem;
    ppmbtn_Handbuch: TMenuItem;
    iSprache: TdxNavBarItem;
    ppmbtn_Sprache: TMenuItem;
    ppmbtn_Abmelden: TMenuItem;
    brmgr_Main: TdxBarManager;
    tb_Main: TdxBar;
    brstc_OpenModule: TdxBarStatic;
    btn_Modulleiste: TdxBarLargeButton;
    btn_RefreshRights: TdxBarLargeButton;
    btn_CloseModul: TdxBarLargeButton;
    brstc_User: TdxBarStatic;
    iDesign: TdxNavBarItem;
    ppmbtn_Design: TMenuItem;
    ts_Dashboard: TcxTabSheet;
    pnl_Dashboard: TcxGroupBox;
    pnl_LicenceTop: TcxGroupBox;
    chartctrl_Customer: TdxChartControl;
    chartctrl_CustomerChart: TdxChartSimpleDiagram;
    chartctrl_CustomerSeries: TdxChartSimpleSeries;
    spl_DashboardMain: TcxSplitter;
    pnl_Licencemiddle: TcxGroupBox;
    chartctrl_Licence: TdxChartControl;
    chartctrl_LicenceChart: TdxChartSimpleDiagram;
    chartctrl_LicenceSeries: TdxChartSimpleSeries;
    pnl_Licenceright: TcxGroupBox;
    chartctrl_Programs: TdxChartControl;
    chartctrl_ProgramsChart: TdxChartSimpleDiagram;
    chartctrl_ProgramsSeries: TdxChartSimpleSeries;
    cxSplitter4: TcxSplitter;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ppmbtn_BenutzerClick(Sender: TObject);
    procedure ppmbtn_KonfigurationClick(Sender: TObject);
    procedure ppmbtn_ArchivClick(Sender: TObject);
    procedure ppmbtn_SysteminfoClick(Sender: TObject);
    procedure ppmbtn_InfoClick(Sender: TObject);
    procedure ppmbtn_AbmeldenClick(Sender: TObject);
    procedure ppmbtn_BeendenClick(Sender: TObject);
    procedure ppmbtn_HandbuchClick(Sender: TObject);
    procedure ppmbtn_SpracheClick(Sender: TObject);
    procedure NavBarClick(Sender: TObject);
    procedure pc_mainPageChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure btn_ModulleisteClick(Sender: TObject);
    procedure btn_RefreshRightsClick(Sender: TObject);
    procedure btn_CloseModulClick(Sender: TObject);
    procedure iSpracheClick(Sender: TObject);
    procedure ppmbtn_DesignClick(Sender: TObject);
  private
    { Private-Deklarationen }
    Modules: TCollection;
    function CurrentModule: TForm;
    procedure Abmelden;
    procedure CloseModules;
    procedure LoadData;
  public
    { Public-Deklarationen }
    bAbmelden: Boolean;
  end;
  {$EndRegion Type}
var
  frm_PCM_Main: Tfrm_PCM_Main;

implementation

{$R *.dfm}

uses
      PCM.Benutzerverwaltung,
      PCM.Data,
      PCM.Design,
      PCM.Functions,
      PCM.Functions.Appinfo,
      PCM.Functions.ChangePW,
      PCM.Functions.Languages,
      PCM.Functions.Lizenz,
      PCM.Functions.Login,
      PCM.Functions.Synch.Wait,
      PCM.Handbuch,
      PCM.Helper,
      PCM.SQL,
      PCM.Modul.B_Config,
      PCM.Modul.C_Archiv,
			PCM.Strings;

////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen }
function Tfrm_PCM_Main.CurrentModule: TForm;
begin
  if pc_Main.ControlCount > 0 then
    Result := TForm(pc_Main.ActivePage.Controls[0])
  else
    Result := nil;
end;
procedure TModule.SetEvent(Value: TMethod);
begin
  if @Value <> @FEvent then
  begin
    FEvent := Value;
    FType := mtEvent;
  end;
end;
procedure TModule.SetFormClass(Value: TFormClass);
begin
  if Value <> FFormClass then
  begin
    FFormClass := Value;
    FType := mtForm;
  end;
end;
procedure Tfrm_PCM_Main.Abmelden;
begin
  bAbmelden := True;
  dm_PCM.bLogin := false;
  dm_PCM.bStyle:= false;
  Hide;
  Show;
end;
procedure Tfrm_PCM_Main.CloseModules;
var
  iPage: Integer;
begin
  for iPage := pc_Main.PageCount - 1 downto 1 do
  begin
    try
      TForm(pc_Main.Pages[iPage].Controls[0]).Close;
      TForm(pc_Main.Pages[iPage].Controls[0]).Free;
    except
    end;
    pc_Main.Pages[iPage].Free;
  end;
end;
procedure Tfrm_PCM_Main.LoadData;
var
  ADataBinding: TdxChartSimpleSeriesDBDataBinding;
begin
  dm_PCM.qry_Work.SQL.Text:= ASSQL_GetUsername[dm_PCM.iDBType];
  dm_PCM.qry_Work.ParamByName('ID').AsInteger:= dm_PCM.iIDBenutzerPCM;
  dm_PCM.qry_Work.Open;
  brstc_User.Caption:= dm_PCM.qry_Work.FieldByName('Benutzer').AsString;
  dm_PCM.qry_Work.Close;

  ADataBinding := chartctrl_CustomerSeries.DataBinding as TdxChartSimpleSeriesDBDataBinding;
  ADataBinding.DataSource := dm_pcm.ds_ChartFiles;

  ADataBinding := chartctrl_LicenceSeries.DataBinding as TdxChartSimpleSeriesDBDataBinding;
  ADataBinding.DataSource := dm_pcm.ds_ChartMain;

  ADataBinding := chartctrl_ProgramsSeries.DataBinding as TdxChartSimpleSeriesDBDataBinding;
  ADataBinding.DataSource := dm_PCM.ds_ChartSub;

  if dm_pcm.qry_ChartMain.active then
  begin
    dm_pcm.qry_ChartMain.Refresh;
  end
  else begin
    dm_pcm.qry_ChartMain.open;
  end;

  if dm_pcm.qry_ChartSub.active then
  begin
    dm_pcm.qry_ChartSub.Refresh;
  end
  else begin
    dm_pcm.qry_ChartSub.open;
  end;

  if dm_pcm.qry_ChartFiles.active then
  begin
    dm_pcm.qry_ChartFiles.Refresh;
  end
  else begin
    dm_pcm.qry_ChartFiles.open;
  end;
end;
{$EndRegion Hilfsfunktionen}
////////////////////////////////////////////////////////////////////////////////
// Toolbar                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Toolbar}
procedure Tfrm_PCM_Main.btn_CloseModulClick(Sender: TObject);
begin
  if pc_Main.PageCount > 1 then
  begin
    if pc_Main.PageCount = 2 then
      brstc_OpenModule.Caption := 'Dashboard';
    if pc_Main.ActivePage <> ts_Dashboard  then
    begin
      TForm(pc_Main.ActivePage.Controls[0]).Close;
      TForm(pc_Main.ActivePage.Controls[0]).Free;
      pc_Main.ActivePage.Free;
    end;
  end;
end;
procedure Tfrm_PCM_Main.btn_ModulleisteClick(Sender: TObject);
begin
  navbr_main.Visible := not navbr_main.Visible;
  if navbr_main.Visible then
    btn_Modulleiste.Caption := rs_PCM_Modulliste_verstecken
  else
    btn_Modulleiste.Caption := rs_PCM_Modulliste_anzeigen;
end;
procedure Tfrm_PCM_Main.btn_RefreshRightsClick(Sender: TObject);
var
  navbrItm_Item: TdxNavBarItem;
  mModule: TModule;
begin
  btn_RefreshRights.Enabled := False;
  try
    if pc_Main.PageCount > 1 then
    begin
      mModule := TModule(Modules.FindItemID(pc_Main.ActivePage.Tag));
      if mModule.Typ = mtForm then
      begin
        navbrItm_Item := navbr_main.Items.Items[navbr_main.Items.ItemByName(mModule.ModuleName).index];
        TForm(pc_Main.ActivePage.Controls[0]).Close;
        TForm(pc_Main.ActivePage.Controls[0]).Free;
        pc_Main.ActivePage.Free;
        NavBarClick(navbrItm_Item);
      end;
    end;
  finally
    btn_RefreshRights.Enabled := True;
  end;
end;
procedure Tfrm_PCM_Main.pc_mainPageChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  brstc_OpenModule.Caption := NewPage.Caption;
end;
{$EndRegion Toolbar}
////////////////////////////////////////////////////////////////////////////////
// Navbarfunktionen                                                           //
////////////////////////////////////////////////////////////////////////////////
{$Region Navbarfunktionen}
procedure Tfrm_PCM_Main.iSpracheClick(Sender: TObject);
var
  ifINI: TIniFile;
begin
  Application.CreateForm(Tfrm_Language,frm_Language);
  frm_Language.Position:= poScreenCenter;
  frm_Language.ClientHeight:= 135;
  frm_Language.ShowModal;
  TNtTranslator.SetNew(dm_PCM.slocale,[],'de');
  TNtTranslator.TranslateForms;
  ifINI := TIniFile.Create(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\PCM.ini');
  try
    ifINI.WriteString(PCM_Logname, 'Language', dm_PCm.sLocale);
  finally
    ifINI.Free;
  end;
  Caption:= PCM_Programmname;
  trayic_Main.popupmenu:= ppm_Main;
  LoadData;
  btn_RefreshRightsClick(Self);
  lafCtrl_Main.SkinName:= dm_PCM.sDesign;
end;
procedure Tfrm_PCM_Main.NavBarClick(Sender: TObject);
var
  mModule: TModule;
  frm_TabForm: TForm;
  iPageIndex: Integer;

  function TabExist(sTabName: String): Integer;
  var
    iCount: Integer;
  begin
    Result := -1;
    for iCount := 0 to pc_Main.PageCount -1 do
    begin
      if pc_Main.Pages[iCount].Name = sTabName then
      begin
        Result := iCount;
        Break;
      end;
    end;
  end;
  function CreateNewTabSheet(sTabName: String): Integer;
  var
    ts_New: TcxTabSheet;
  begin
    ts_New := TcxTabSheet.Create(pc_Main);
    ts_New.PageControl := pc_Main;
    ts_New.Name := sTabName;
    pc_Main.ActivePage := ts_New;
    Result := pc_Main.ActivePageIndex;
  end;
var
  sModul,sModulCaption: String;
begin
  if navbr_main.Enabled then
  begin
    navbr_main.Enabled := False;
    TRY
      mModule := TModule(Modules.FindItemID((Sender AS TdxNavBarItem).Tag));
      if Assigned(mModule) then
      begin
        sModul:= mModule.ModuleName;
        sModulCaption:= mModule.ModuleName;
        case AnsiIndexStr(sModul, ['iBenutzerverwaltung','iKonfiguration','iDesign','iArchiv','iSysteminfo','iInfo','iHandbuch']) of
        0:
          begin
            sModulCaption := 'i'  + rs_PCM_Benutzerverwaltung;
            dm_PCM.iModulTab:= 1;
          end;
        1:
          begin
            sModulCaption := 'i'  + rs_PCM_Konfiguration ;
            dm_PCM.iModulTab:= 1;
          end;
        2:
          begin
            sModulCaption := 'i'  + rs_PCM_Design;
            dm_PCM.iModulTab:= 1;
          end;
        3:
          begin
            sModulCaption := 'i'  + rs_PCMArchiv_Archiv;
            dm_PCM.iModulTab:= 1;
          end;
        4:
          begin
            sModulCaption := 'i'  + rs_PCM_Systeminformation;
            dm_PCM.iModulTab:= 3;
          end;
        5:
          begin
            sModulCaption := 'i'  + rs_PCM_Programminfo;
            dm_PCM.iModulTab:= 3;
          end;
        6:
          begin
            sModulCaption := 'i'  + rs_PCM_Handbuch;
            dm_PCM.iModulTab:= 3;
          end;
        end;
        iPageIndex := TabExist('tsh' + sModul);
        if iPageIndex > -1 then
        begin
          pc_Main.ActivePageIndex := iPageIndex;
          frm_TabForm := CurrentModule;
          if frm_TabForm <> nil then
            if not frm_TabForm.Focused then
              if Assigned(frm_TabForm.OnActivate) then
              begin
                frm_TabForm.OnActivate(Sender);
                brstc_OpenModule.Caption := Copy(sModulCaption, 2, Length(sModulCaption));
              end;
          Exit;
        end;
        if mModule.Typ = mtForm then
        begin
          Screen.Cursor := crHourglass;
          try

            if sModulCaption = 'i'+ rs_PCM_Konfiguration then
            begin
              dm_PCM.qry_Work.SQL.Text:= 'SELECT COUNT(*) + ' +
                                         '(SELECT COUNT(*) FROM archiv_konfiguration_unterkategorien) + ' +
                                         '(SELECT COUNT(*) FROM archiv_konfiguration_index) + ' +
                                         '(SELECT COUNT(*) FROM archiv_konfiguration_zuweisung_hauptkategorien) as Anzahl ' +
                                         'FROM archiv_konfiguration_hauptkategorien';
              dm_PCM.qry_Work.Open;
        	    ShowWaitForm(TForm(Self), PWideChar('Formular wird geladen'), dm_PCM.qry_Work.FieldByName('Anzahl').asinteger,ClientWidth, Height);
              dm_PCM.qry_Work.Close;
            end
            else begin
        	    ShowWaitForm(TForm(Self), PWideChar('Formular wird geladen'), 1,ClientWidth, Height);
            end;
            Application.ProcessMessages;
            WaitFormStep;
            TForm(mModule.Instance^) := mModule.FormClass.Create(Nil);
          finally
            Screen.Cursor := crDefault;
          end;
          frm_TabForm := TForm((mModule.Instance)^);
          iPageIndex := CreateNewTabSheet('tsh' + sModul);
          frm_TabForm.Parent := pc_Main.Pages[iPageIndex];
          pc_Main.Pages[iPageIndex].Caption := Copy(sModulCaption, 2, Length(sModulCaption));
          pc_Main.Pages[iPageIndex].Tag := (Sender AS TdxNavBarItem).Tag;
          pc_Main.Pages[iPageIndex].ImageIndex := mModule.ImageIndex;
          pc_Main.Pages[iPageIndex].InsertComponent(frm_TabForm);
          frm_TabForm.BorderStyle := bsNone;
          frm_TabForm.ALign:= AlClient;
          frm_TabForm.Enabled := True;
          frm_TabForm.Show;
          CloseWaitform;
          brstc_OpenModule.Caption := Copy(sModulCaption, 2, Length(sModulCaption));
        end
        else
          if mModule.Typ = mtEvent then
          begin
            mModule.Event;
          end;
      end
    FINALLY
      navbr_main.Enabled := True;
      Application.ProcessMessages;
    END;
  end;
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region Formfunktionen}
procedure Tfrm_PCM_Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CloseModules;
  WriteLog(PCM_Logname,rs_PCM_Beenden,0);
end;
procedure Tfrm_PCM_Main.FormCreate(Sender: TObject);
begin
  Modules := TCollection.Create(TModule);
end;
procedure Tfrm_PCM_Main.FormDestroy(Sender: TObject);
begin
  Modules.Free;
end;
procedure Tfrm_PCM_Main.FormHide(Sender: TObject);
begin
  CloseModules;
end;
procedure Tfrm_PCM_Main.FormKeyPress(Sender: TObject; var Key: Char);
var
  frm_Form: TForm;
begin
  frm_Form := CurrentModule;
  if frm_Form <> nil then
    if not frm_Form.Focused then
      if Assigned(frm_Form.OnKeyPress) then
        frm_Form.OnKeyPress(Sender, Key);
end;
procedure Tfrm_PCM_Main.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  frm_Form: TForm;
begin
  frm_Form := CurrentModule;
  if frm_Form <> nil then
    if not frm_Form.Focused then
      if Assigned(frm_Form.OnKeyUp) then
        frm_Form.OnKeyUp(Sender, Key, Shift);
end;
procedure Tfrm_PCM_Main.FormResize(Sender: TObject);
  procedure BarResize;
  var
    rRect: TRect;
    iTemp, iUsedSpace: Integer;
    BarControl: TdxBarControlAccess;
  begin
    if (brmgr_Main.Bars[0] <> nil) and (brmgr_Main.Bars[0].Control <> nil) then
    begin
      BarControl := TdxBarControlAccess(brmgr_Main.Bars[0].Control);

      iUsedSpace := 0;

      brstc_OpenModule.Width := 0;

      for iTemp := 0 to BarControl.Bar.ItemLinks.Count - 1 do
      begin
        if BarControl.Bar.ItemLinks.Items[iTemp].Item = btn_Modulleiste then
        begin
          Inc(iUsedSpace, 0);
        end
        else
        begin
          if BarControl.Bar.ItemLinks.Items[iTemp].Item <> brstc_OpenModule then
          begin
            Inc(iUsedSpace, BarControl.Bar.ItemLinks.Items[iTemp].ItemRect.Width);
          end;
        end;
      end;

      if BarControl.MarkExists then
      begin
        rRect := BarControl.MarkRect;
        Inc(iUsedSpace, rRect.Right - rRect.Left);
      end;
       brmgr_Main.BeginUpdate;
      Try
        brstc_OpenModule.Width := (brmgr_Main.Bars[0].Control as TdxBarControl).Width -  iUsedSpace - btn_Modulleiste.Width  - 45;
      Finally
        brmgr_Main.EndUpdate();
      End;
    end;
  end;
begin
  BarResize;
  pnl_LicenceTop.Height:= Trunc(ts_Dashboard.Height/2);
  pnl_Licencemiddle.Height:= Trunc(ts_Dashboard.Height/2);
  pnl_Licenceright.Height:= Trunc(ts_Dashboard.Height/2);
  pnl_Licencemiddle.Width:= Trunc(ts_Dashboard.Width/2);
  pnl_LicenceRight.Width:= Trunc(ts_Dashboard.Width/2);
end;
procedure Tfrm_PCM_Main.FormShow(Sender: TObject);
  procedure RegisterForm(SideBarItemName: string; FormClass: TFormClass; Instance: Pointer; Right: Integer);
  var
    NewModule: TModule;
    Item: TdxNavBarItem;
  begin
    Item := navbr_main.Items.Items[navbr_main.Items.ItemByName(SideBarItemName).index];
    if Assigned(Item) then
    begin
      NewModule := TModule(Modules.Add);
      Item.Tag := NewModule.ID;
      NewModule.FormClass := FormClass;
      NewModule.Instance := Instance;
      NewModule.Right := Right;
      NewModule.ModuleName := SideBarItemName;
      NewModule.ImageIndex := Item.SmallImageIndex;
    end;
  end;
  procedure RegisterEvent(SideBarItemName: string; Event: TMethod);
  var
    NewModule: TModule;
    Item: TdxNavBarItem;
  begin
    Item := navbr_main.Items.Items[navbr_main.Items.ItemByName(SideBarItemName).index];
    if Assigned(Item) then
    begin
      NewModule := TModule(Modules.Add);
      Item.Tag := NewModule.ID;
      NewModule.Event := Event;
      NewModule.ModuleName := SideBarItemName;
    end
  end;
  procedure RegisterNavBarItems;
  begin
    Modules.Clear;
    RegisterForm('iBenutzerverwaltung', Tfrm_User, @frm_User, 1);
    RegisterForm('iKonfiguration', Tfrm_config, @frm_config, 1);
    RegisterForm('iDesign', Tfrm_Design, @frm_Design, 1);
    RegisterForm('iArchiv',Tfrm_Archiv, @frm_Archiv, 1);
    RegisterForm('iSysteminfo',Tfrm_PCM_System, @frm_PCM_System, 1);
    RegisterForm('iInfo',Tfrm_PCM_InfoApp, @frm_PCM_InfoApp, 1);
    RegisterForm('iHandbuch',Tfrm_Handbuch, @frm_Handbuch, 1);
    RegisterEvent('iAbmelden', Abmelden);
    RegisterEvent('iBeenden', Close);
  end;
  procedure InitializeRights;
  begin
    dm_PCM.qry_Work.SQL.Text:= ASSQL_GetAllRights[dm_PCM.iDBType];
    dm_PCM.qry_Work.ParamByName('ID').AsInteger := dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_Work.Open;
    dm_PCM.iBenutzer:= dm_PCM.qry_Work.FieldByName('Benutzer').asInteger;
    dm_PCM.iKonfiguration:= dm_PCM.qry_Work.FieldByName('Konfiguration').asInteger;
    dm_PCM.iDesign:= dm_PCM.qry_Work.FieldByName('Design').asInteger;
    dm_PCM.iArchiv:= dm_PCM.qry_Work.FieldByName('dm_archiv').asInteger;
    dm_PCM.qry_Work.Close;
    // Benutzerverwaltung / Kein Recht
    if (dm_PCM.iBenutzer = 0) and (dm_PCM.iKonfiguration = 0) and (dm_PCM.iDesign = 0) then
    begin
      navbrgrp_Optionen.Visible:= false;
      iBenutzerverwaltung.Visible:= false;
      iKonfiguration.Visible:= false;
      ppmbtn_Benutzer.Visible:= false;
      ppmbtn_Konfiguration.Visible:= false;
      ppmbtn_Design.Visible:= false;
    end;
    // Benutzerverwaltung / Lesen / Ändern / Vollzugriff
    case dm_PCM.iBenutzer of
    0:
      begin
        iBenutzerverwaltung.Visible:= false;
        ppmbtn_Benutzer.Visible:= false;
      end;
    1,2,3:
      begin
        navbrgrp_Optionen.Visible:= true;
        iBenutzerverwaltung.Visible:= true;
        ppmbtn_Benutzer.Visible:= true;
      end;
    end;
    // Optionen / Lesen / Ändern / Vollzugriff
    case dm_PCM.iKonfiguration of
    0:
      begin
        iKonfiguration.Visible:= false;
        ppmbtn_Konfiguration.Visible:= false;
      end;
    1,2,3:
      begin
        navbrgrp_Optionen.Visible:= true;
        iKonfiguration.Visible:= true;
        ppmbtn_Konfiguration.Visible:= true;
      end;
    end;
    // Design / Lesen / Ändern / Vollzugriff
    case dm_PCM.iDesign of
    0:
      begin
        iDesign.Visible:= false;
        ppmbtn_Design.Visible:= false;
      end;
    1,2,3:
      begin
        navbrgrp_Optionen.Visible:= true;
        iDesign.Visible:= true;
        ppmbtn_Design.Visible:= true;
      end;
    end;
    // Archiv / Lesen / Ändern / Vollzugriff
    case dm_PCM.iArchiv of
    0:
      begin
        navbrgrp_Kontake.Visible:= false;
        ppmbtn_Archiv.Visible:= false;
      end;
    1,2,3:
      begin
        navbrgrp_Kontake.Visible:= true;
        ppmbtn_Archiv.Visible:= true;
      end;
    end;
  end;
  procedure LoadLanguageIni;
  begin
    try
      loc_lang.LoadFromFile(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\cxLocalLang.ini');
      loc_lang.LanguageIndex := 1;
    except
      on e:Exception do
      begin
        MessageDlg(rs_PCM_Sprachdatei, mtWarning, [mbOk], 0);
      end
    end;
  end;
  procedure CheckClientLicence;
  begin
    dm_PCM.bNewLiceneCheck:= false;
    CheckLizenzNew;
    if dm_PCm.bNewLiceneCheck = false then
    begin
      CheckLizenzNew;
      if dm_PCm.bNewLiceneCheck = false then
        Application.Terminate;
    end;
  end;
  procedure CheckLogin;
  begin
    if not bAbmelden then
      dm_PCM.bLogin := Autologin
    else
      dm_PCM.bLogin := false;
    if not dm_PCM.bLogin then
    begin
      Application.CreateForm(Tfrm_PCM_Login, frm_PCM_Login);
      dm_PCM.bLogin := frm_pcm_login.Login_User;
      frm_PCM_Login.Free;
    end;
    if not dm_PCM.bLogin then
      Application.Terminate;
    bAbmelden:= False;
  end;
  procedure SetTrayMenu;
  begin
    Caption:= PCM_Programmname;
    trayIC_Main.PopupMenu:= ppm_main;
    if dm_PCM.bDemo then
      Caption:=PCM_Programmname + rs_PCM_Demolizenz + DateTostr(dm_PCM.dtGueltig);
  end;
begin
  {$ifdef WIn32}
  iSprache.Visible:= false;
  ppmbtn_Sprache.Visible:= false;
  {$endif}
  lafCtrl_Main.NativeStyle:= false;
  trayIC_Main.Hint:= PCM_Programmname;
  dm_PCM.iDBType:= 0;
  if not ReadServerAdress then
  begin
    Application.Terminate;
  end
  else begin
  	lafCtrl_Main.SkinName:= dm_PCM.sDesign;
    LoadLanguageIni;
    if dm_PCM.bStyle then
    begin
      NavBarClick(iDesign);
    end
    else begin
      CheckClientLicence;
      CheckLogin;
      InitializeRights;
      LoadData;
      WriteLog(PCM_Logname,rs_PCM_Start,0);
      SetTrayMenu;
      RegisterNavBarItems;
    end;
  end;
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// Traymenü                                                                   //
////////////////////////////////////////////////////////////////////////////////
{$Region Traymenü}
procedure Tfrm_PCM_Main.ppmbtn_BenutzerClick(Sender: TObject);
begin
  navbarclick(iBenutzerverwaltung);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_KonfigurationClick(Sender: TObject);
begin
  NavBarClick(iKonfiguration);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_DesignClick(Sender: TObject);
begin
  navbarclick(iDesign);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_ArchivClick(Sender: TObject);
begin
  navbarclick(iArchiv);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_SysteminfoClick(Sender: TObject);
begin
  navbarclick(iSysteminfo);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_InfoClick(Sender: TObject);
begin
  navbarclick(iInfo);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_HandbuchClick(Sender: TObject);
begin
  navbarclick(iHandbuch);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_SpracheClick(Sender: TObject);
begin
  iSpracheClick(Self);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_AbmeldenClick(Sender: TObject);
begin
  Abmelden
end;
procedure Tfrm_PCM_Main.ppmbtn_BeendenClick(Sender: TObject);
begin
  Close;
end;
{$EndRegion}
end.


