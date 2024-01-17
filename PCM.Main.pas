unit PCM.Main;

interface

uses
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
  dxSkinWXI, dxBarExtItems, cxBarEditItem,
  cxSplitter, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxEdit, cxClasses, System.ImageList, cxContainer, dxBarBuiltInMenu,
  Vcl.ExtCtrls, cxPC, dxNavBarCollns, dxNavBarBase, dxNavBar, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxBar, cxLocalization, cxLabel, cxGroupBox, dxNavBarStyles,inifiles;

type
  TdxBarControlAccess = class(TdxBarControl);
  TdxBarAccess = class(TdxBar);
  TdxBarManagerAccess = class(TdxBarManager);

type
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
    img_Icons: TImageList;
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
    navbrit_ChangePW: TdxNavBarItem;
    navbrStyleIt_main: TdxNavBarStyleItem;
    pcmain: TcxPageControl;
    pnl_Design: TcxGroupBox;
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
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    barOpenModule: TdxBarStatic;
    btnModulleiste: TdxBarLargeButton;
    btnRefreshRights: TdxBarLargeButton;
    btnCloseModul: TdxBarLargeButton;
    barUser: TdxBarStatic;
    dxBarButton1: TdxBarButton;
    Menuezurueck: TdxBarButton;
    dxBarGroup1: TdxBarGroup;
    iDesign: TdxNavBarItem;
    ppmbtn_Design: TMenuItem;
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
    procedure pcmainPageChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure btnModulleisteClick(Sender: TObject);
    procedure btnRefreshRightsClick(Sender: TObject);
    procedure btnCloseModulClick(Sender: TObject);
    procedure iSpracheClick(Sender: TObject);
    procedure btnCloseAllGroupsClick(Sender: TObject);
    procedure ppmbtn_DesignClick(Sender: TObject);
  private
    { Private-Deklarationen }
    Modules: TCollection;
    procedure RegisterForm(SideBarItemName: string; FormClass: TFormClass; Instance: Pointer; Right: Integer);
    procedure RegisterEvent(SideBarItemName: string; Event: TMethod);
    procedure BarResize;
    procedure RegisterNavBarItems;
    procedure CloseModules;
    function CurrentModule: TForm;
    procedure LoadSQLs;
    procedure Abmelden;
    procedure InitializeRights;
  public
    { Public-Deklarationen }
    bStyle: boolean;
    bAbmelden: Boolean;
  end;

var
  frm_PCM_Main: Tfrm_PCM_Main;

implementation

{$R *.dfm}

uses
      PCM.Benutzerverwaltung,
      PCM.Data,
      PCM.Design,
      PCM.Functions.Appinfo,
      PCM.Functions.ChangePW,
      PCM.Functions.Languages,
      PCM.Functions.Login,
      PCM.Handbuch,
      PCM.Helper,
      PCM.Functions,
			PCM.Strings,
      PCM.SQL,
      PCM.Modul.B_Config,
      PCM.Modul.C_Archiv;

////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
procedure TModule.SetFormClass(Value: TFormClass);
begin
  if Value <> FFormClass then
  begin
    FFormClass := Value;
    FType := mtForm;
  end;
end;
procedure TModule.SetEvent(Value: TMethod);
begin
  if @Value <> @FEvent then
  begin
    FEvent := Value;
    FType := mtEvent;
  end;
end;
procedure Tfrm_PCM_Main.btnModulleisteClick(Sender: TObject);
begin
  navbr_main.Visible := not navbr_main.Visible;
  if navbr_main.Visible then
    btnModulleiste.Caption := rs_PCM_Modulliste_verstecken
  else
    btnModulleiste.Caption := rs_PCM_Modulliste_anzeigen;
end;
procedure Tfrm_PCM_Main.BarResize;
var
  rRect: TRect;
  iTemp, iUsedSpace: Integer;
  BarControl: TdxBarControlAccess;
begin
  if (dxBarManager1.Bars[0] <> nil) and (dxBarManager1.Bars[0].Control <> nil) then
  begin
    BarControl := TdxBarControlAccess(dxBarManager1.Bars[0].Control);

    iUsedSpace := 0;

    barOpenModule.Width := 0;

    for iTemp := 0 to BarControl.Bar.ItemLinks.Count - 1 do
    begin
      if BarControl.Bar.ItemLinks.Items[iTemp].Item = btnModulleiste then
      begin
        Inc(iUsedSpace, 0);
      end
      else
      begin
        if BarControl.Bar.ItemLinks.Items[iTemp].Item <> barOpenModule then
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
     dxBarManager1.BeginUpdate;
    Try
      barOpenModule.Width := (dxBarManager1.Bars[0].Control as TdxBarControl).Width -  iUsedSpace - btnModulleiste.Width  - 45;
    Finally
      dxBarManager1.EndUpdate();
    End;
  end;
end;
procedure Tfrm_PCM_Main.RegisterForm(SideBarItemName: string; FormClass: TFormClass; Instance: Pointer; Right: Integer);
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
procedure Tfrm_PCM_Main.RegisterNavBarItems;
begin
  Modules.Clear;
  RegisterForm('iBenutzerverwaltung', Tfrm_User, @frm_User, 1);
  RegisterForm('iKonfiguration', Tfrm_config, @frm_config, 1);
  RegisterForm('iDesign', Tfrm_Design, @frm_Design, 1);
  RegisterForm('iArchiv',Tfrm_Contact, @frm_Contact, 1);
  RegisterForm('iSysteminfo',Tfrm_PCM_System, @frm_PCM_System, 1);
  RegisterForm('iInfo',Tfrm_PCM_InfoApp, @frm_PCM_InfoApp, 1);
  RegisterForm('iHandbuch',Tfrm_Handbuch, @frm_Handbuch, 1);
  RegisterEvent('iAbmelden', Abmelden);
  RegisterEvent('iBeenden', Close);
end;
procedure Tfrm_PCM_Main.RegisterEvent(SideBarItemName: string; Event: TMethod);
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
procedure Tfrm_PCM_Main.CloseModules;
var
  iPage: Integer;
begin
  for iPage := pcMain.PageCount - 1 downto 0 do
  begin
    try
      TForm(pcMain.Pages[iPage].Controls[0]).Close;
      TForm(pcMain.Pages[iPage].Controls[0]).Free;
    except
    end;
    pcMain.Pages[iPage].Free;
  end;
end;
procedure Tfrm_PCM_Main.pcmainPageChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  barOpenModule.Caption := NewPage.Caption;
end;
procedure Tfrm_PCM_Main.btnRefreshRightsClick(Sender: TObject);
var
  Item: TdxNavBarItem;
  Module: TModule;
begin
  btnRefreshRights.Enabled := False;
  try
    if pcMain.PageCount > 0 then
    begin
      Module := TModule(Modules.FindItemID(pcMain.ActivePage.Tag));
      if Module.Typ = mtForm then
      begin
        Item := navbr_main.Items.Items[navbr_main.Items.ItemByName(Module.ModuleName).index];
        TForm(pcMain.ActivePage.Controls[0]).Close;
        TForm(pcMain.ActivePage.Controls[0]).Free;
        pcMain.ActivePage.Free;
        NavBarClick(Item);
      end;
    end;
  finally
    btnRefreshRights.Enabled := True;
  end;
end;
procedure Tfrm_PCM_Main.btnCloseAllGroupsClick(Sender: TObject);
var
  iCount: Integer;
begin
  for iCount := 1 to navbr_main.Groups.Count -1 do
  begin
    navbr_main.Groups[iCount].Expanded := False;
  end;
end;
procedure Tfrm_PCM_Main.btnCloseModulClick(Sender: TObject);
begin
  if pcMain.PageCount > 0 then
  begin
    TForm(pcMain.ActivePage.Controls[0]).Close;
    TForm(pcMain.ActivePage.Controls[0]).Free;
    pcMain.ActivePage.Free;
    if pcMain.PageCount > 0 then
    begin

      barOpenModule.Caption := pcmain.ActivePage.Caption;
    end
    else
    begin
      barOpenModule.Caption := rs_PCM_ChooseModul;
    end;
  end;
end;
procedure Tfrm_PCM_Main.InitializeRights;
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
procedure Tfrm_PCM_Main.Abmelden;
begin
  bAbmelden := True;
  dm_PCM.bLogin := false;
  bStyle:= false;
  Hide;
  Show;
end;
procedure Tfrm_PCM_Main.LoadSQLs;
begin
  dm_PCM.qry_Work.SQL.Text:= ASSQL_GetUsername[dm_PCM.iDBType];
  dm_PCM.qry_Work.ParamByName('ID').AsInteger:= dm_PCM.iIDBenutzerPCM;
  dm_PCM.qry_Work.Open;
  barUser.Caption:= dm_PCM.qry_Work.FieldByName('Benutzer').AsString;
  dm_PCM.qry_Work.Close;
end;
function Tfrm_PCM_Main.CurrentModule: TForm;
begin
  if pcMain.ControlCount > 0 then
    Result := TForm(pcMain.ActivePage.Controls[0])
  else
    Result := nil;
end;
////////////////////////////////////////////////////////////////////////////////
// Navbarfunktionen                                                           //
////////////////////////////////////////////////////////////////////////////////
procedure Tfrm_PCM_Main.NavBarClick(Sender: TObject);
var
  Module: TModule;
  fTabForm: TForm;
  iPageIndex: Integer;

  function TabExist(sTabName: String): Integer;
  var
    iCount: Integer;
  begin
    Result := -1;
    for iCount := 0 to pcMain.PageCount -1 do
    begin
      if pcMain.Pages[iCount].Name = sTabName then
      begin
        Result := iCount;
        Break;
      end;
    end;
  end;

  function CreateNewTabSheet(sTabName: String): Integer;
  var
    tshNew: TcxTabSheet;
  begin
    tshNew := TcxTabSheet.Create(pcMain);
    tshNew.PageControl := pcMain;
    tshNew.Name := sTabName;
    pcMain.ActivePage := tshNew;
    Result := pcMain.ActivePageIndex;
  end;
var
  sModul,sModulCaption: String;
begin
  if navbr_main.Enabled then
  begin
    navbr_main.Enabled := False;
    TRY
      Module := TModule(Modules.FindItemID((Sender AS TdxNavBarItem).Tag));
      if Assigned(Module) then
      begin
        sModul:= Module.ModuleName;
        sModulCaption:= Module.ModuleName;
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
          pcMain.ActivePageIndex := iPageIndex;
          fTabForm := CurrentModule;
          if fTabForm <> nil then
            if not fTabForm.Focused then
              if Assigned(fTabForm.OnActivate) then
              begin
                fTabForm.OnActivate(Sender);
                barOpenModule.Caption := Copy(sModulCaption, 2, Length(sModulCaption));
              end;
          Exit;
        end;
        if Module.Typ = mtForm then
        begin
          Screen.Cursor := crHourglass;
          try
            TForm(Module.Instance^) := Module.FormClass.Create(Nil);
          finally
            Screen.Cursor := crDefault;
          end;
          fTabForm := TForm((Module.Instance)^);
          iPageIndex := CreateNewTabSheet('tsh' + sModul);
          fTabForm.Parent := pcMain.Pages[iPageIndex];
          pcMain.Pages[iPageIndex].Caption := Copy(sModulCaption, 2, Length(sModulCaption));
          pcMain.Pages[iPageIndex].Tag := (Sender AS TdxNavBarItem).Tag;
          pcMain.Pages[iPageIndex].ImageIndex := Module.ImageIndex;
          pcMain.Pages[iPageIndex].InsertComponent(fTabForm);
          fTabForm.BorderStyle := bsNone;
          fTabForm.ALign:= AlClient;
          fTabForm.Enabled := True;
          fTabForm.Show;
          barOpenModule.Caption := Copy(sModulCaption, 2, Length(sModulCaption));
        end
        else
          if Module.Typ = mtEvent then
          begin
            Module.Event;
          end;
      end
    FINALLY
      navbr_main.Enabled := True;
      Application.ProcessMessages;
    END;
  end;
end;
procedure Tfrm_PCM_Main.iSpracheClick(Sender: TObject);
var
  iniFile: TIniFile;
begin
  Application.CreateForm(Tfrm_Language,frm_Language);
  frm_Language.Position:= poScreenCenter;
  frm_Language.ClientHeight:= 214;
  frm_Language.ShowModal;
  TNtTranslator.SetNew(dm_PCM.slocale,[],'de');
  TNtTranslator.TranslateForms;
  iniFile := TIniFile.Create(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\PCM.ini');
  try
    iniFile.WriteString(PCM_Logname, 'Language', dm_PCm.sLocale);
  finally
    iniFile.Free;
  end;
  Caption:= PCM_Programmname;
  trayic_Main.popupmenu:= ppm_Main;
  LoadSQLs;
  btnRefreshRightsClick(Self);
end;
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
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
  m: TForm;
begin
  m := CurrentModule;
  if m <> nil then
    if not m.Focused then
      if Assigned(m.OnKeyPress) then
        m.OnKeyPress(Sender, Key);
end;
procedure Tfrm_PCM_Main.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  m: TForm;
begin
  m := CurrentModule;
  if m <> nil then
    if not m.Focused then
      if Assigned(m.OnKeyUp) then
        m.OnKeyUp(Sender, Key, Shift);
end;
procedure Tfrm_PCM_Main.FormResize(Sender: TObject);
begin
  BarResize;
end;
procedure Tfrm_PCM_Main.FormShow(Sender: TObject);
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
    try
      loc_lang.LoadFromFile(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\cxLocalLang.ini');
      loc_lang.LanguageIndex := 1;
    except
      on e:Exception do
      begin
        MessageDlg(rs_PCM_Sprachdatei, mtWarning, [mbOk], 0);
      end
    end;
    if bStyle then
    begin
      NavBarClick(iDesign);
    end
    else begin
      dm_PCM.bNewLiceneCheck:= false;
      CheckLizenzNew;
      if dm_PCm.bNewLiceneCheck = false then
      begin
        CheckLizenzNew;
        if dm_PCm.bNewLiceneCheck = false then
          Application.Terminate;
      end;
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
      InitializeRights;
      LoadSQLs;
      FormResize(Self);
      WriteLog(PCM_Logname,rs_PCM_Start,0);
      Caption:= PCM_Programmname;

      trayIC_Main.PopupMenu:= ppm_main;
      if dm_PCM.bDemo then
        Caption:=PCM_Programmname + rs_PCM_Demolizenz + DateTostr(dm_PCM.dtGueltig);
      BarResize;
      RegisterNavBarItems;
    end;
  end;
end;
////////////////////////////////////////////////////////////////////////////////
// Traymenü                                                                   //
////////////////////////////////////////////////////////////////////////////////
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
  navbarclick(iSprache);
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

end.


