unit PCM.Modul.C_Archiv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
  dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  cxDBLookupComboBox, cxContainer, Vcl.Menus, cxDBEdit, Vcl.StdCtrls, cxImage,
  cxLookupEdit, cxDBLookupEdit, cxDropDownEdit, cxCalendar, cxMemo, cxButtons,
  cxLabel, cxTextEdit, cxMaskEdit, cxGroupBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxPC, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,shellapi,cxSchedulerRecurrence,system.math,cxDateUtils,dateutils,
  dxBar, cxGridCustomPopupMenu, cxGridPopupMenu,cxGridExportLink, System.UITypes, strutils,
  IdBaseComponent, IdCoder, IdCoder3to4, IdCoderMIME, IdCoderQuotedPrintable,Soap.EncdDecd,System.netencoding,
  Vcl.ExtCtrls, dxShellDialogs,PCM.Functions,cxSchedulerStorage, dxSkinWXI;

type
  Tfrm_Contact = class(TForm)
    ds_Kontakte: TDataSource;
    brmgr_Contacts: TdxBarManager;
    brmgrContactsBar1: TdxBar;
    btn_KontaktNew: TdxBarLargeButton;
    btn_KontaktDelete: TdxBarLargeButton;
    btn_KontaktCancel: TdxBarLargeButton;
    btn_KontaktSave: TdxBarLargeButton;
    pnl_Design: TcxGroupBox;
    qry_Kontakte: TFDQuery;
    qry_KontakteID: TFDAutoIncField;
    qry_KontakteID_Anrede: TIntegerField;
    qry_KontakteVorname: TStringField;
    qry_KontakteNachname: TStringField;
    qry_KontakteZusatz: TStringField;
    qry_KontakteStrasse_Privat: TStringField;
    qry_KontaktePLZ_Privat: TStringField;
    qry_KontakteOrt_Privat: TStringField;
    qry_KontakteTelefon_Privat: TStringField;
    qry_KontakteTelefon_Privat1: TStringField;
    qry_KontakteTelefon_Privat2: TStringField;
    qry_KontakteHandy_privat: TStringField;
    qry_KontakteE_Mail_Privat: TStringField;
    qry_KontakteE_Mail_Privat1: TStringField;
    qry_KontakteE_Mail_Privat2: TStringField;
    qry_KontakteInternet_Privat: TStringField;
    qry_KontakteID_Kontaktart: TIntegerField;
    qry_KontakteBild: TBlobField;
    qry_KontakteGeburtsdatum: TDateField;
    qry_KontakteID_Geschlecht: TIntegerField;
    qry_KontakteID_Familienstand: TIntegerField;
    qry_KontakteID_Staatsangehoerigkeit: TIntegerField;
    qry_KontakteID_Konfession: TIntegerField;
    qry_KontakteInfo: TMemoField;
    qry_KontakteFirma: TStringField;
    qry_KontakteStrasse_Ges: TStringField;
    qry_KontaktePLZ_Ges: TStringField;
    qry_KontakteOrt_Ges: TStringField;
    qry_KontakteAbteilung_Ges: TStringField;
    qry_KontakteFunktion_Ges: TStringField;
    qry_KontakteZentrale_Ges: TStringField;
    qry_KontakteTelefon_Ges: TStringField;
    qry_KontakteHandy_Ges: TStringField;
    qry_KontakteE_Mail_Ges: TStringField;
    qry_KontakteInternet_Ges: TStringField;
    qry_KontakteFacebook: TStringField;
    qry_KontakteSkype: TStringField;
    qry_KontakteICQ: TStringField;
    qry_KontakteLive_Messanger: TStringField;
    qry_KontakteID_Benutzer: TIntegerField;
    qry_KontakteGeburtsname: TStringField;
    qry_KontakteGeburtsland: TStringField;
    grd_Kontaktesuche: TcxGrid;
    grdDBTblView_Kontakte: TcxGridDBTableView;
    grdDBTblView_KontakteID: TcxGridDBColumn;
    grdDBTblView_KontakteID_Anrede: TcxGridDBColumn;
    grdDBTblView_KontakteVorname: TcxGridDBColumn;
    grdDBTblView_KontakteNachname: TcxGridDBColumn;
    grdDBTblView_KontakteGeburtsname: TcxGridDBColumn;
    grdDBTblView_KontakteGeburtsland: TcxGridDBColumn;
    grdDBTblView_KontakteZusatz: TcxGridDBColumn;
    grdDBTblView_KontakteBild: TcxGridDBColumn;
    grdDBTblView_KontakteStrasse_Privat: TcxGridDBColumn;
    grdDBTblView_KontaktePLZ_Privat: TcxGridDBColumn;
    grdDBTblView_KontakteOrt_Privat: TcxGridDBColumn;
    grdDBTblView_KontakteID_Kontaktart: TcxGridDBColumn;
    grdDBTblView_KontakteTelefon_Privat: TcxGridDBColumn;
    grdDBTblView_KontakteTelefon_Privat1: TcxGridDBColumn;
    grdDBTblView_KontakteHandy_privat: TcxGridDBColumn;
    grdDBTblView_KontakteE_Mail_Privat: TcxGridDBColumn;
    grdDBTblView_KontakteE_Mail_Privat1: TcxGridDBColumn;
    grdDBTblView_KontakteInternet_Privat: TcxGridDBColumn;
    grdDBTblView_KontakteGeburtsdatum: TcxGridDBColumn;
    grdDBTblView_KontakteID_Geschlecht: TcxGridDBColumn;
    grdDBTblView_KontakteID_Familienstand: TcxGridDBColumn;
    grdDBTblView_KontakteID_Staatsangehoerigkeit: TcxGridDBColumn;
    grdDBTblView_KontakteID_Konfession: TcxGridDBColumn;
    grdDBTblView_KontakteInfo: TcxGridDBColumn;
    grdDBTblView_KontakteFirma: TcxGridDBColumn;
    grdDBTblView_KontakteStrasse_Ges: TcxGridDBColumn;
    grdDBTblView_KontaktePLZ_Ges: TcxGridDBColumn;
    grdDBTblView_KontakteOrt_Ges: TcxGridDBColumn;
    grdDBTblView_KontakteAbteilung_Ges: TcxGridDBColumn;
    grdDBTblView_KontakteFunktion_Ges: TcxGridDBColumn;
    grdDBTblView_KontakteZentrale_Ges: TcxGridDBColumn;
    grdDBTblView_KontakteTelefon_Ges: TcxGridDBColumn;
    grdDBTblView_KontakteHandy_Ges: TcxGridDBColumn;
    grdDBTblView_KontakteE_Mail_Ges: TcxGridDBColumn;
    grdDBTblView_KontakteInternet_Ges: TcxGridDBColumn;
    grdDBTblView_KontakteFacebook: TcxGridDBColumn;
    grdDBTblView_KontakteSkype: TcxGridDBColumn;
    grdDBTblView_KontakteLive_Messanger: TcxGridDBColumn;
    grdLvl_Kontakte: TcxGridLevel;
    grpbx_KontakteSuche: TcxGroupBox;
    cmbbx_KontaktSucheArt: TcxComboBox;
    edt_KontaktSucheAbteilung: TcxTextEdit;
    edt_KontaktSucheFirma: TcxTextEdit;
    edt_KontaktSucheFunktion: TcxTextEdit;
    edt_KontaktSucheNachname: TcxTextEdit;
    edt_KontaktSucheOrt: TcxTextEdit;
    edt_KontaktSuchePLZ: TcxTextEdit;
    edt_KontaktSucheStrasse: TcxTextEdit;
    edt_KontaktSucheVorname: TcxTextEdit;
    lbl_KontaktSucheAbteilung: TcxLabel;
    lbl_KontaktSucheArt: TcxLabel;
    lbl_KontaktSucheFirma: TcxLabel;
    lbl_KontaktSucheFunktion: TcxLabel;
    lbl_KontaktSucheNachname: TcxLabel;
    lbl_KontaktSucheOrt: TcxLabel;
    lbl_KontaktSuchePLZ: TcxLabel;
    lbl_KontaktSucheStrasse: TcxLabel;
    lbl_KontaktSucheVorname: TcxLabel;
    pnl_KontakteButtons: TcxGroupBox;
    btn_kontaktDeletefilter: TcxButton;
    btn_kontaktsuchen: TcxButton;
    dxBarLargeButton1: TdxBarLargeButton;
    procedure FormShow(Sender: TObject);
    procedure btn_kontaktDeletefilterClick(Sender: TObject);
    procedure btn_kontaktsuchenClick(Sender: TObject);
    procedure grdDBTblView_KontakteCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;   AShift: TShiftState; var AHandled: Boolean);
    procedure edt_KontaktSucheNachnameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private-Deklarationen }
    bButtons: boolean;
    SaveGridViewContacts: TSavedGridView;
    procedure SetGridViews(Show:boolean);
    procedure OpenData;
    procedure InitializeRights;
  public
    { Public-Deklarationen }
  end;

var
  frm_Contact: Tfrm_Contact;


implementation

{$R *.dfm}

uses  PCM.Data,
      PCM.Functions.Synch.Wait,
      PCM.Strings;


procedure Tfrm_Contact.OpenData;
begin
//  dm_PCM.qry_Contact_Anrede.Open;
//  dm_PCM.qry_Contact_Kontaktart.Open;
//  dm_PCM.qry_Contact_Geschlecht.Open;
//  dm_PCM.qry_Contact_Familienstand.Open;
//  dm_PCM.qry_Contact_Staatsangehoerigkeit.Open;
//  dm_PCM.qry_Contact_Konfession.Open;
end;
procedure Tfrm_Contact.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;
procedure Tfrm_Contact.FormDestroy(Sender: TObject);
begin
  SetGridViews(False);
end;
procedure Tfrm_Contact.FormShow(Sender: TObject);
begin
  cmbbx_KontaktSucheArt.clear;
  dm_PCM.qry_Work.SQL.Text:= 'SELECT ID, Bezeichnung FROM manager_kontaktart order by Bezeichnung asc';
  dm_PCM.qry_Work.open;
  dm_PCM.qry_Work.First;
  while not dm_PCM.qry_Work.EOF do begin
    cmbbx_KontaktSucheArt.Properties.Items.AddObject(dm_PCM.qry_Work.FieldByName('Bezeichnung').AsString, TObject(dm_PCM.qry_Work.FieldByName('ID').AsInteger));
    dm_PCM.qry_Work.Next;
  end;
  dm_PCM.qry_Work.Close;
  OpenData;
  InitializeRights;
	SetGridViews(True);
end;
procedure Tfrm_Contact.SetGridViews(Show:boolean);
begin
  if Show then
  begin
    SaveGridViewContacts := TSavedGridView.Create(GV_Archiv,dm_PCM.iIDBenutzerPCM, grdDBTblView_Kontakte);
    SaveGridViewContacts.LoadView;
  end
  else begin
    SaveGridViewContacts.SaveView(0);
    SaveGridViewContacts.Free;
  end;
end;
procedure Tfrm_Contact.InitializeRights;
begin
// Kontakte / Lesen
  if dm_PCM.iArchiv = 1 then
  begin
    // Toolbar
    btn_KontaktNew.Enabled:= false;
    btn_KontaktSave.Enabled:= false;
    btn_KontaktCancel.Enabled:= false;
    btn_KontaktDelete.Enabled:= false;
    // Editfelder
//    cmbbx_KontaktAnrede.Enabled:= false;
//    edt_KontaktName.Enabled:= false;
//    edt_KontaktNachname.Enabled:= false;
//    edt_KontaktZusatz.Enabled:= false;
//    edt_KontaktStrasse.Enabled:= false;
//    edt_KontaktPLZ.Enabled:= false;
//    edt_KontaktORT.Enabled:= false;
//    edt_KontaktTelefon1.Enabled:= false;
//    edt_KontaktTelefon2.Enabled:= false;
//    edt_KontaktHandy.Enabled:= false;
//    edt_KontaktEmail1.Enabled:= false;
//    edt_KontaktEmail2.Enabled:= false;
//    edt_KontaktInternet.Enabled:= false;
//    cmbbx_KontaktArt.Enabled:= false;
//    dtEdt_KontaktZusatzGeburtsdatum.Enabled:= false;
//    lucmbbx_KontaktZusatzGeschlecht.Enabled:= false;
//    lucmbbx_KontaktZusatzFamilienstand.Enabled:= false;
//    lucmbbx_KontaktZusatzStaatsanghoerigkeit.Enabled:= false;
//    lucmbbx_KontaktZusatzkonfession.Enabled:= false;
//    mem_KontakteZusatzSonstige.Enabled:= false;
//    img_KontaktZusatzPicture.Enabled:= false;
//    edt_KontaktGeschaeftlichFirma.Enabled:= false;
//    edt_KontaktGeschaeftlichStrasse.Enabled:= false;
//    edt_KontaktGeschaeftlichPLZ.Enabled:= false;
//    edt_KontaktGeschaeftlichORt.Enabled:= false;
//    edt_KontaktGeschaeftlichAbteilung.Enabled:= false;
//    edt_KontaktGeschaeftlichFunktion.Enabled:= false;
//    edt_KontaktGeschaeftlichTelefonZentrale.Enabled:= false;
//    edt_KontaktGeschaeftlichTelefonDurchwahl.Enabled:= false;
//    edt_KontaktGeschaeftlichHandy.Enabled:= false;
//    edt_KontaktGeschaeftlichEMail.Enabled:= false;
//    edt_KontaktGeschaeftlichInternet.Enabled:= false;
//    edt_KontakteSonstigesFacebook.Enabled:= false;
//    edt_KontakteSonstigesSkype.Enabled:= false;
//    edt_KontakteSonstigesTeams.Enabled:= false;
//    btn_KontaktStaatsangehörigkeitEdit.Enabled:= false;
//    btn_KontaktKonfessionEdit.Enabled:= false;
  end;
    // Kontakte / Ändern
  if dm_PCM.iArchiv = 2 then
  begin
    // Toolbar
    btn_KontaktNew.Enabled:= true;
    btn_KontaktSave.Enabled:= true;
    btn_KontaktCancel.Enabled:= true;
    btn_KontaktDelete.Enabled:= false;
    // Editfelder
//    cmbbx_KontaktAnrede.Enabled:= true;
//    edt_KontaktName.Enabled:= true;
//    edt_KontaktNachname.Enabled:= true;
//    edt_KontaktZusatz.Enabled:= true;
//    edt_KontaktStrasse.Enabled:= true;
//    edt_KontaktPLZ.Enabled:= true;
//    edt_KontaktORT.Enabled:= true;
//    edt_KontaktTelefon1.Enabled:= true;
//    edt_KontaktTelefon2.Enabled:= true;
//    edt_KontaktHandy.Enabled:= true;
//    edt_KontaktEmail1.Enabled:= true;
//    edt_KontaktEmail2.Enabled:= true;
//    edt_KontaktInternet.Enabled:= true;
//    cmbbx_KontaktArt.Enabled:= true;
//    dtEdt_KontaktZusatzGeburtsdatum.Enabled:= true;
//    lucmbbx_KontaktZusatzGeschlecht.Enabled:= true;
//    lucmbbx_KontaktZusatzFamilienstand.Enabled:= true;
//    lucmbbx_KontaktZusatzStaatsanghoerigkeit.Enabled:= true;
//    lucmbbx_KontaktZusatzkonfession.Enabled:= true;
//    mem_KontakteZusatzSonstige.Enabled:= true;
//    img_KontaktZusatzPicture.Enabled:= true;
//    edt_KontaktGeschaeftlichFirma.Enabled:= true;
//    edt_KontaktGeschaeftlichStrasse.Enabled:= true;
//    edt_KontaktGeschaeftlichPLZ.Enabled:= true;
//    edt_KontaktGeschaeftlichORt.Enabled:= true;
//    edt_KontaktGeschaeftlichAbteilung.Enabled:= true;
//    edt_KontaktGeschaeftlichFunktion.Enabled:= true;
//    edt_KontaktGeschaeftlichTelefonZentrale.Enabled:= true;
//    edt_KontaktGeschaeftlichTelefonDurchwahl.Enabled:= true;
//    edt_KontaktGeschaeftlichHandy.Enabled:= true;
//    edt_KontaktGeschaeftlichEMail.Enabled:= true;
//    edt_KontaktGeschaeftlichInternet.Enabled:= true;
//    edt_KontakteSonstigesFacebook.Enabled:= true;
//    edt_KontakteSonstigesSkype.Enabled:= true;
//    edt_KontakteSonstigesTeams.Enabled:= true;
//    btn_KontaktStaatsangehörigkeitEdit.Enabled:= true;
//    btn_KontaktKonfessionEdit.Enabled:= true;
  end;
  // Kontakte / Vollzugriff
  if dm_PCM.iArchiv = 3 then
  begin
    // Toolbar
    btn_KontaktNew.Enabled:= true;
    btn_KontaktSave.Enabled:= true;
    btn_KontaktCancel.Enabled:= true;
    btn_KontaktDelete.Enabled:= true;
    // Editfelder
//    cmbbx_KontaktAnrede.Enabled:= true;
//    edt_KontaktName.Enabled:= true;
//    edt_KontaktNachname.Enabled:= true;
//    edt_KontaktZusatz.Enabled:= true;
//    edt_KontaktStrasse.Enabled:= true;
//    edt_KontaktPLZ.Enabled:= true;
//    edt_KontaktORT.Enabled:= true;
//    edt_KontaktTelefon1.Enabled:= true;
//    edt_KontaktTelefon2.Enabled:= true;
//    edt_KontaktHandy.Enabled:= true;
//    edt_KontaktEmail1.Enabled:= true;
//    edt_KontaktEmail2.Enabled:= true;
//    edt_KontaktInternet.Enabled:= true;
//    cmbbx_KontaktArt.Enabled:= true;
//    dtEdt_KontaktZusatzGeburtsdatum.Enabled:= true;
//    lucmbbx_KontaktZusatzGeschlecht.Enabled:= true;
//    lucmbbx_KontaktZusatzFamilienstand.Enabled:= true;
//    lucmbbx_KontaktZusatzStaatsanghoerigkeit.Enabled:= true;
//    lucmbbx_KontaktZusatzkonfession.Enabled:= true;
//    mem_KontakteZusatzSonstige.Enabled:= true;
//    img_KontaktZusatzPicture.Enabled:= true;
//    edt_KontaktGeschaeftlichFirma.Enabled:= true;
//    edt_KontaktGeschaeftlichStrasse.Enabled:= true;
//    edt_KontaktGeschaeftlichPLZ.Enabled:= true;
//    edt_KontaktGeschaeftlichORt.Enabled:= true;
//    edt_KontaktGeschaeftlichAbteilung.Enabled:= true;
//    edt_KontaktGeschaeftlichFunktion.Enabled:= true;
//    edt_KontaktGeschaeftlichTelefonZentrale.Enabled:= true;
//    edt_KontaktGeschaeftlichTelefonDurchwahl.Enabled:= true;
//    edt_KontaktGeschaeftlichHandy.Enabled:= true;
//    edt_KontaktGeschaeftlichEMail.Enabled:= true;
//    edt_KontaktGeschaeftlichInternet.Enabled:= true;
//    edt_KontakteSonstigesFacebook.Enabled:= true;
//    edt_KontakteSonstigesSkype.Enabled:= true;
//    edt_KontakteSonstigesTeams.Enabled:= true;
//    btn_KontaktStaatsangehörigkeitEdit.Enabled:= true;
//    btn_KontaktKonfessionEdit.Enabled:= true;
  end;
end;
procedure Tfrm_Contact.grdDBTblView_KontakteCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;  AShift: TShiftState; var AHandled: Boolean);
var
  hittest : TcxCustomGridHitTest;
begin
  hittest := grdDBTblView_Kontakte.GetHitTest(grd_Kontaktesuche.ScreenToClient(Mouse.CursorPos));
  if hittest.HitTestCode = htCell then
  begin
    if qry_Kontakte.FieldByName('ID').AsInteger > 0 then
    begin
//      pc_Kontakte_Kontakte.ActivePageIndex:= 1;
    end;
  end;
end;
procedure Tfrm_Contact.btn_kontaktDeletefilterClick(Sender: TObject);
begin
  edt_KontaktSucheNachname.Text:= '';
  edt_KontaktSucheVorname.Text:= '';
  cmbbx_KontaktSucheArt.ItemIndex:= -1;
  edt_KontaktSucheStrasse.Text:= '';
  edt_KontaktSuchePLZ.Text:= '';
  edt_KontaktSucheOrt.Text:= '';
  edt_KontaktSucheFirma.Text:= '';
  edt_KontaktSucheAbteilung.Text:= '';
  edt_KontaktSucheFunktion.Text:= '';
  btn_kontaktsuchen.Click;
end;
procedure Tfrm_Contact.btn_kontaktsuchenClick(Sender: TObject);
var
  str_filter: string;
  str_temp:string;
begin
  qry_Kontakte.Open;
  Screen.Cursor := crHourGlass;
  qry_Kontakte.Filtered:= false;
  str_Filter:= 'id_Benutzer = ' +  IntToStr(dm_PCM.iIDBenutzerPCM);
  if edt_KontaktSucheNachname.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSucheNachname.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Nachname) like '+ QuotedStr(str_temp);
  end;
  if edt_KontaktSucheVorname.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSucheVorname.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Vorname) like ' + QuotedStr(str_temp);
  end;
  if cmbbx_KontaktSucheArt.ItemIndex <> -1 then
  begin
  if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'ID_Kontaktart = ' + IntToStr(Integer(cmbbx_KontaktSucheArt.Properties.Items.Objects[cmbbx_KontaktSucheArt.ItemIndex]));
  end;
  if edt_KontaktSucheStrasse.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSucheStrasse.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Strasse_Privat) like ' + QuotedStr(str_temp);
  end;
  if edt_KontaktSuchePLZ.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSuchePLZ.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(PLZ_Privat like) ' + QuotedStr(str_temp);
  end;
  if edt_KontaktSucheOrt.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSucheOrt.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Ort_Privat) like ' + QuotedStr(str_temp);
  end;
  if edt_KontaktSucheFirma.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSucheFirma.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Firma) like ' + QuotedStr(str_temp);
  end;
  if edt_KontaktSucheAbteilung.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSucheAbteilung.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Abteilung_Ges) like ' + QuotedStr(str_temp);
  end;
  if edt_KontaktSucheFunktion.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSucheFunktion.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Funktion_Ges) like ' + QuotedStr(str_temp);
  end;
  qry_Kontakte.Filter:= str_filter;
  qry_Kontakte.Filtered:= true;
  Screen.Cursor := crDefault;
  grd_Kontaktesuche.SetFocus;
  grdDBTblView_Kontakte.Focused := true;
end;
procedure Tfrm_Contact.edt_KontaktSucheNachnameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    btn_kontaktsuchen.Click;
end;

end.
