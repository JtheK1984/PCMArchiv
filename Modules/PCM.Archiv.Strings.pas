unit PCM.Archiv.Strings;

interface

uses
  {$Region uses}
  Classes,
  SysUtils,
  Windows;
  {$EndRegion uses}
// allgemein
resourcestring
  rs_Archiv_WAIT_Formload = 'Formular wird geladen';
  rs_Archiv_CAP_Dashboard = 'Dashboard';
  rs_Archiv_CAP_Modulliste_verstecken = 'Modulliste verstecken';
  rs_Archiv_CAP_Modulliste_anzeigen = 'Modulliste anzeigen';
  rs_Archiv_MOD_Benutzerverwaltung ='Benutzerverwaltung';
  rs_Archiv_MOD_Konfiguration = 'Konfiguration';
  rs_Archiv_MOD_Design = 'Design';
  rs_Archiv_MOD_Archiv = 'Archiv';
  rs_Archiv_MOD_Systeminformation = 'Systeminformation';
  rs_Archiv_MOD_Programminfo = 'Programminfo';
  rs_Archiv_MOD_Handbuch = 'Handbuch';
  rs_Archiv_LOG_Start = 'Programm gestartet';
  rs_Archiv_LOG_Beenden = 'Programm beendet';
  rs_Archiv_BTN_Yes = '&Ja';
  rs_Archiv_BTN_No = '&Nein';
  rs_Archiv_BTN_Ok = '&Ok';
  rs_Archiv_BTN_Cancel = '&Abbrechen';
  rs_Archiv_Benutzer = 'Benutzer';
  rs_Archiv_Hauptkategorie = 'Hauptkategorie';
  rs_Archiv_Unterkategorie = 'Unterkategorie';
  rs_Archiv_MSG_SetDesc = 'Bitte Bezeichnung eingeben!';
  rs_Archiv_MSG_SetDescforFileType = 'Bitte geben Sie eine Bezeichnung für den Dateinamen an!';
  rs_Archiv_MSG_ChooseType = 'Bitte Typ auswählen!';
  rs_Archiv_MSG_Scanart = 'Bitte wählen Sie die Scannerart aus!';
  rs_Archiv_MSG_ScanError = 'Fehler beim Scannen';
  rs_Archiv_MSG_ChooseFile = 'Bitte Datei auswählen!';
  rs_Archiv_MSG_ChooseUSer = 'Bitte Benutzer auswählen!';
  rs_Archiv_MSG_ChooseMainCat = 'Bitte Hauptkategorie auswählen!';
  rs_Archiv_MSG_DocExists = 'Dokument existiert schon. Wenn das Dokument geändert werden soll, klicken Sie auf Dokument bearbeiten!';
  rs_Archiv_MSG_DeleteDocOrg = 'Soll die Originaldatei gelöscht werden?';
	rs_Archiv_DIC_ZielVerzeichnis = 'Bitte Ziel-Verzeichnis wählen';
type
  {$Region type}
  TResourceStringID = Pointer;

  TResOriginalStrings = class(TStringList)
  public
    constructor Create;
  end;
  {$EndRegion type}
var
  {$Region var}
  FResOriginalStrings: TResOriginalStrings = nil;
  FResStrings: TStringList = nil;
  FUseResCache: Boolean = true;
  {$EndRegion var}
Const
  {$Region const}
  SetNone = 0;
  SetRead = 1;
  SetReadWrite = 2;
  SetComplete = 3;
  {$EndRegion const}
// Deklarationen
{$Region Deklarationen}
procedure initNewLanguage(locale: LCID);
procedure CreateResStringLists;
procedure DestroyResStringLists;
procedure ClearResourceStrings;
function GetResourceString(AResString: TResourceStringID): string;
{$EndRegion Deklarationen}
implementation
// Deklarationen
{$Region Prozeduren}
constructor TResOriginalStrings.Create;
begin
  inherited Create;
  CaseSensitive := True;
end;
procedure ClearResourceStrings;
begin
  if FResStrings <> nil then
    FResStrings.Clear;
  if FResOriginalStrings <> nil then
    FResOriginalStrings.Clear;
end;
procedure CreateResStringLists;
begin
  FResOriginalStrings := TResOriginalStrings.Create;
  FResStrings := TStringList.Create;
end;
procedure DestroyResStringLists;
begin
  FreeAndNil(FResOriginalStrings);
  FreeAndNil(FResStrings);
end;
function GetResOriginalStringIndex(AResString: TResourceStringID): Integer;
begin
  Result := FResOriginalStrings.IndexOfObject(TObject(AResString));
end;
procedure SetResourceString(AResString: TResourceStringID; const Value: string);
var
  AIndex: Integer;
begin
  AIndex := GetResOriginalStringIndex(AResString);
  if AIndex <> -1 then
    FResStrings[AIndex] := Value
  else
  begin
    FResOriginalStrings.AddObject(LoadResString(AResString), TObject(AResString));
    FResStrings.Add(Value);
  end;
end;
function GetResourceString(AResString: TResourceStringID): string;
var
  AIndex: Integer;
begin
  if FUseResCache then
  begin
    AIndex := GetResOriginalStringIndex(AResString);
    if AIndex <> -1 then
    begin
      Result := FResStrings[AIndex]
    end
    else
    begin
      Result := LoadResString(AResString);
      SetResourceString(AResString, Result);
    end;
  end
  else
    Result := LoadResString(AResString);
end;
procedure initNewLanguage(locale: LCID);
begin
  ClearResourceStrings;
end;
{$EndRegion Prozeduren}
initialization
  CreateResStringLists;
finalization
  DestroyResStringLists;
end.
