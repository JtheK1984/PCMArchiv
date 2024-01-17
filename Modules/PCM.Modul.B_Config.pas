unit PCM.Modul.B_Config;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxTextEdit, cxCheckBox,
  cxColorComboBox, cxDBLookupComboBox, cxDropDownEdit, Vcl.StdCtrls,
  cxRadioGroup, dxGDIPlusClasses, cxImage, cxLookupEdit, cxDBLookupEdit,
  cxDBColorComboBox, cxDBEdit, cxMaskEdit, cxImageComboBox, cxLabel,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxButtons, cxGroupBox, cxPC,
  System.ImageList, Vcl.ImgList, cxImageList, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, IniFiles, Vcl.Themes, dateutils,
  IdIMAP4, IDpop3, IdSMTP, IdSSLOpenSSL, IdMessage,
  IdExplicitTLSClientServerBase,System.UITypes,
  dxBar, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient,
  IdSMTPBase, cxCurrencyEdit, Vcl.OleServer, OutlookXP,PCM.Functions, dxSkinWXI,
  Vcl.VirtualImage, Vcl.BaseImageCollection, Vcl.ImageCollection, dxBarExtItems,
  cxButtonEdit,Vcl.FileCtrl;

type
  Tfrm_Config = class(TForm)
    pc_Options: TcxPageControl;
    ts_A_Archiv: TcxTabSheet;
    grpbx_FTPConfig: TcxGroupBox;
    edt_CalConfigFTP_URL: TcxDBTextEdit;
    grd_FTPConfig: TcxGrid;
    grdDBTblView_FTPConfig: TcxGridDBTableView;
    grdlvl_FTPConfig: TcxGridLevel;
    lbl_CalConfigFTP_URL: TcxLabel;
    grpbx_CalcConfig: TcxGroupBox;
    bardckctrl_Kalender: TdxBarDockControl;
    brmgr_Config: TdxBarManager;
    tb_Dir: TdxBar;
    btn_DirSave: TdxBarLargeButton;
    brdckctrl_FTP: TdxBarDockControl;
    tb_MainKat: TdxBar;
    btn_MainKatNew: TdxBarLargeButton;
    btn_MainKatDelete: TdxBarLargeButton;
    btn_MainKatSave: TdxBarLargeButton;
    pnl_Design: TcxGroupBox;
    btn_MainKatCancel: TdxBarLargeButton;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dxBarDockControl1: TdxBarDockControl;
    tb_SubKat: TdxBar;
    btn_SubKatNew: TdxBarLargeButton;
    btn_SubKatDelete: TdxBarLargeButton;
    btn_SubKatSave: TdxBarLargeButton;
    btn_SubKatCancel: TdxBarLargeButton;
    qry_Pfad: TFDQuery;
    ds_Pfad: TDataSource;
    cxGrid2: TcxGrid;
    grdDBTblView_ArchivPfad: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    grdDBTblView_ArchivPfadPfad: TcxGridDBColumn;
    cxGroupBox2: TcxGroupBox;
    cxLabel2: TcxLabel;
    edt_Pfad: TcxDBButtonEdit;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    ds_Mainkat: TDataSource;
    qry_Mainkat: TFDQuery;
    grdDBTblView_FTPConfigBezeichnung: TcxGridDBColumn;
    qry_Subkat: TFDQuery;
    ds_Subkat: TDataSource;
    cxGridDBTableView1Bezeichnung: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btn_CalConfigSave1Click(Sender: TObject);
    procedure btn_MainKatNewClick(Sender: TObject);
    procedure btn_MainKatSaveClick(Sender: TObject);
    procedure SetButtonsEnableVisible(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edt_PfadPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_MainKatCancelClick(Sender: TObject);
    procedure btn_MainKatDeleteClick(Sender: TObject);
    procedure btn_SubKatNewClick(Sender: TObject);
    procedure btn_SubKatCancelClick(Sender: TObject);
    procedure qry_MainkatAfterScroll(DataSet: TDataSet);
    procedure btn_SubKatSaveClick(Sender: TObject);
  private
    { Private-Deklarationen }
    SaveGridPfad,
    SaveGridMainKat,
    SaveGridSubKat: TSavedGridView;
    procedure SetGridViews(Show:boolean);
    procedure OpenData;
    procedure InitializeRights;
    procedure SetButtons;
  public
    { Public-Deklarationen }
  end;

var
  frm_Config: Tfrm_Config;

implementation

{$R *.dfm}

uses PCM.Main,
     PCM.Functions.Synch.Wait, PCM.Data, PCM.Strings;

procedure Tfrm_Config.OpenData;
begin
  qry_Pfad.Sql.Text:= 'Select Pfad From archiv_konfiguration';
  qry_Pfad.Open;
  qry_Mainkat.open;
  qry_Subkat.open;
end;
procedure Tfrm_Config.qry_MainkatAfterScroll(DataSet: TDataSet);
begin
  qry_Subkat.Filter := 'ID_Hauptkategorie = ' + qry_Mainkat.Fieldbyname('ID').asString;
  qry_Subkat.Filtered := true;
  SetButtons;
end;
procedure Tfrm_Config.SetButtonsEnableVisible(DataSet: TDataSet);
begin
  SetButtons;
end;
procedure Tfrm_Config.SetGridViews(Show: boolean);
begin
  if Show then
  begin
    SaveGridPfad := TSavedGridView.Create(GV_Pfad,dm_PCM.iIDBenutzerPCM, grdDBTblView_ArchivPfad);
    SaveGridPfad.LoadView;
    SaveGridMainKat := TSavedGridView.Create(GV_Main,dm_PCM.iIDBenutzerPCM, grdDBTblView_FTPConfig);
    SaveGridMainKat.LoadView;
    SaveGridSubKat := TSavedGridView.Create(GV_Sub,dm_PCM.iIDBenutzerPCM, cxGridDBTableView1);
    SaveGridSubKat.LoadView;
  end
  else begin
    SaveGridPfad.SaveView(0);
    SaveGridPfad.Free;
    SaveGridMainKat.SaveView(0);
    SaveGridMainKat.Free;
    SaveGridSubKat.SaveView(0);
    SaveGridSubKat.Free;
  end;
end;
procedure Tfrm_Config.InitializeRights;
begin
  case dm_PCM.iKonfiguration of
  // Lesen
  1:
    begin
      btn_DirSave.enabled := false;
      btn_MainKatNew.enabled := false;
      btn_MainKatSave.enabled := false;
      btn_MainKatCancel.enabled := false;
      btn_MainKatDelete.enabled := false;
      btn_SubKatNew.enabled := false;
      btn_SubKatSave.enabled := false;
      btn_SubKatCancel.enabled := false;
      btn_SubKatDelete.enabled := false;
    end;
  // Ändern
  2:
    begin
      btn_DirSave.enabled := true;
      btn_MainKatNew.enabled := true;
      btn_MainKatSave.enabled := true;
      btn_MainKatCancel.enabled := true;
      btn_MainKatDelete.enabled := false;
      btn_SubKatNew.enabled := true;
      btn_SubKatSave.enabled := true;
      btn_SubKatCancel.enabled := true;
      btn_SubKatDelete.enabled := false;
    end;
  // Vollzugriff
  3:
    begin
      btn_DirSave.enabled := true;
      btn_MainKatNew.enabled := true;
      btn_MainKatSave.enabled := true;
      btn_MainKatCancel.enabled := true;
      btn_MainKatDelete.enabled := true;
      btn_SubKatNew.enabled := true;
      btn_SubKatSave.enabled := true;
      btn_SubKatCancel.enabled := true;
      btn_SubKatDelete.enabled := true;
    end;
  end;
end;
procedure Tfrm_Config.SetButtons;
begin
  // AB_Optionen
  if dm_PCM.iKonfiguration >= 2 then
  begin
    // Option Pfad
    btn_DirSave.enabled := qry_Pfad.State in [dsInsert, dsEdit];
    // Option Kategorien
    btn_MainKatSave.enabled := qry_Mainkat.State in [dsInsert, dsEdit];
    btn_MainKatCancel.enabled := qry_Mainkat.State in [dsInsert, dsEdit];
    // Option Subkategorien
    btn_SubKatSave.Enabled := qry_Subkat.State in [dsInsert, dsEdit];
    btn_SubKatCancel.Enabled := qry_Subkat.State in [dsInsert, dsEdit];
  end;
  if dm_PCM.iKonfiguration = 3 then
  begin
    // Option Kategorien
    btn_MainKatDelete.enabled := (not qry_Mainkat.Eof) and not(qry_Mainkat.State in [dsInsert, dsEdit]);
    // Option Subkategorien
    btn_SubKatDelete.enabled := (not qry_Subkat.Eof) and not(qry_Subkat.State in [dsInsert, dsEdit]);
  end;
end;
procedure Tfrm_Config.btn_MainKatCancelClick(Sender: TObject);
begin
  qry_Mainkat.Cancel;
end;
procedure Tfrm_Config.btn_MainKatDeleteClick(Sender: TObject);
begin
  if qry_Mainkat.FieldByName('ID').AsInteger > 0 then
  begin
    qry_Mainkat.Delete;
  end
end;
procedure Tfrm_Config.btn_MainKatNewClick(Sender: TObject);
begin
  if qry_Mainkat.State in [dsInsert, dsEdit] then
    qry_Mainkat.Post;
  qry_Mainkat.Append;
  qry_Mainkat.Insert;
  if not edt_CalConfigFTP_URL.enabled then
  begin
    edt_CalConfigFTP_URL.enabled := true;
  end;
  edt_CalConfigFTP_URL.SetFocus;
end;
procedure Tfrm_Config.btn_MainKatSaveClick(Sender: TObject);
begin
  if qry_Mainkat.State in [dsInsert, dsEdit] then
  begin
    edt_CalConfigFTP_URL.PostEditValue;
    qry_Mainkat.Post;
  end;
end;
procedure Tfrm_Config.btn_CalConfigSave1Click(Sender: TObject);
begin
  if qry_Pfad.State in [dsInsert, dsEdit] then
  begin
    edt_Pfad.PostEditValue;
    qry_Pfad.Post;
  end;
end;
procedure Tfrm_Config.btn_SubKatNewClick(Sender: TObject);
begin
  if qry_Subkat.State in [dsInsert, dsEdit] then
    qry_Subkat.Post;
  qry_Subkat.Append;
  qry_Subkat.Insert;
  qry_Subkat.FieldByName('ID_Hauptkategorie').asInteger:= qry_Mainkat.FieldByName('ID').AsInteger;
  if not cxDBTextEdit2.enabled then
  begin
    cxDBTextEdit2.enabled := true;
  end;
  cxDBTextEdit2.SetFocus;
end;
procedure Tfrm_Config.btn_SubKatSaveClick(Sender: TObject);
begin
  if qry_Subkat.State in [dsInsert, dsEdit] then
  begin
    cxDBTextEdit2.PostEditValue;
    qry_Subkat.Post;
  end;
end;
procedure Tfrm_Config.btn_SubKatCancelClick(Sender: TObject);
begin
  qry_subkat.cancel;
end;
procedure Tfrm_Config.edt_PfadPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  sDir: String;
begin
  qry_Pfad.Edit;
  if SelectDirectory(rs_PCMService_ZielVerzeichnis, '', sDir) then
  begin
    edt_pfad.Text := sDir;
  end;
end;
procedure Tfrm_Config.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;
procedure Tfrm_Config.FormDestroy(Sender: TObject);
begin
  SetGridViews(false);
end;
procedure Tfrm_Config.FormShow(Sender: TObject);
begin
  OpenData;
  InitializeRights;
  SetButtons;
  SetGridViews(True);
end;

end.

