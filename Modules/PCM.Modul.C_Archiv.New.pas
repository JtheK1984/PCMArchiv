unit PCM.Modul.C_Archiv.New;

interface

uses
  {$Region Uses}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxButtonEdit, cxLabel, cxGroupBox,
  dxBar, cxClasses, cxDateUtils, cxCalendar,System.StrUtils, cxScrollBox, cxCurrencyEdit,
  cxCheckBox,cxTimeEdit,System.DateUtils, dxShellDialogs,ioutils,shlobj,FireDAC.Stan.Param,System.UITypes,
  dxUIAClasses, dxCoreGraphics, dxLayoutContainer, dxLayoutControl,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, shellapi, Vcl.ExtCtrls;
  {$EndRegion Uses}
type
  {$Region type}
  Tfrm_NewFile = class(TForm)
    brmgr_Archiv: TdxBarManager;
    btn_archivsave: TdxBarLargeButton;
    btn_archivsCancel: TdxBarLargeButton;
    cmbbx_Benutzer: TcxComboBox;
    cmbbx_Mainkat: TcxComboBox;
    cmbbx_Subkat: TcxComboBox;
    edt_File: TcxButtonEdit;
    edt_filename: TcxTextEdit;
    odlg_Doc: TdxOpenFileDialog;
    sclbx_Indizies: TcxScrollBox;
    tb_archiv: TdxBar;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxBarDockControl1: TdxBarDockControl;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    cxComboBox1: TcxComboBox;
    dxLayoutItem9: TdxLayoutItem;
    cxButton1: TcxButton;
    Timer1: TTimer;
    dxLayoutItem10: TdxLayoutItem;
    cxComboBox2: TcxComboBox;
    procedure btn_archivsCancelClick(Sender: TObject);
    procedure btn_archivsaveClick(Sender: TObject);
    procedure cmbbx_MainkatPropertiesChange(Sender: TObject);
    procedure cmbbx_SubkatPropertiesChange(Sender: TObject);
    procedure edt_FilePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private-Deklarationen }
    bNew: boolean;
    iID: integer;
    sSubkat: string;
  public
    { Public-Deklarationen }
    function Execute(ANew: boolean; AID: Integer): boolean;
    procedure SaveIndizies(AIDFiles: Integer);
  end;
  {$EndRegion type}
var
  {$Region var}
  frm_NewFile: Tfrm_NewFile;
  {$EndRegion var}
implementation
{$R *.dfm}
uses
  {$Region Uses}
  PCM.Data,
  PCM.Modul.C_Archiv,
  PCM.Strings;
  {$EndRegion Uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
function Tfrm_NewFile.Execute(ANew: boolean; AID: Integer): boolean;
begin
  bNew:= ANew;
  iID:= AID;
  Result := False;
  if ShowModal = mrOk then
  begin
    Result := true;
    Release;
  end;
end;
procedure Tfrm_NewFile.SaveIndizies(AIDFiles: Integer);
  procedure WriteIndizies(AName: string; ATyp, AIDFiles, AIDTYP: integer);
  var
    iCount: Integer;
    sValue, sCheckname: String;
    Component: TComponent;
  begin
    for iCount := 0 to sclbx_Indizies.ComponentCount - 1 do
    begin
      Component := sclbx_Indizies.Components[iCount];
      if Component.Name = AName then
      begin
        try
          if Component is TcxComboBox then
            sValue := TcxComboBox(Component).Properties.Items[TcxComboBox(Component).ItemIndex]
          else if Component is TcxTextEdit then
            sValue := TcxTextEdit(Component).Text
          else if Component is TcxDateEdit then
            sValue := ifThen(ATyp = 0, DateToStr(TcxDateEdit(Component).Date), DateTimeToStr(TcxDateEdit(Component).Date))
          else if Component is TcxMaskEdit then
            sValue := TcxMaskEdit(Component).EditValue
          else if Component is TcxTimeEdit then
            sValue := TimeToStr(TcxTimeEdit(Component).Time)
          else if Component is TcxCurrencyEdit then
            sValue := FloatToStr(TcxCurrencyEdit(Component).Value);

          sCheckname := AName;
          sCheckname := StringReplace(sCheckname, 'cmbbx_', 'chkbx_', [rfReplaceAll, rfIgnoreCase]);
          sCheckname := StringReplace(sCheckname, 'dtedt_', 'chkbx_', [rfReplaceAll, rfIgnoreCase]);
          sCheckname := StringReplace(sCheckname, 'medt_', 'chkbx_', [rfReplaceAll, rfIgnoreCase]);
          sCheckname := StringReplace(sCheckname, 'tedt_', 'chkbx_', [rfReplaceAll, rfIgnoreCase]);
          sCheckname := StringReplace(sCheckname, 'cedt_', 'chkbx_', [rfReplaceAll, rfIgnoreCase]);
          sCheckname := StringReplace(sCheckname, 'edt_', 'chkbx_', [rfReplaceAll, rfIgnoreCase]);


          dm_PCM.qry_work.SQL.Text := 'Update archiv_files Set ' + StringReplace(sCheckname, 'chkbx_', '', [rfReplaceAll, rfIgnoreCase]) + ' = :Wert ' +
                                      'Where ID = :ID';
          dm_PCM.qry_work.ParamByName('ID').AsInteger := AIDFiles;
          dm_PCM.qry_work.ParamByName('Wert').AsString := sValue;
          dm_PCM.qry_work.ExecSQL;
        except
          on E: Exception do
            ShowMessage('Error updating index: ' + E.Message);
        end;
      end;
    end;
  end;
begin
  dm_PCM.qry_work1.SQL.Text := 'SELECT aki.Bezeichnung, akit.Bezeichnung as Typ, aki.ID ' +
                               'FROM archiv_konfiguration_index aki ' +
                               'LEFT OUTER JOIN archiv_konfiguration_index_typ akit ON akit.id = aki.ID_archiv_konfiguration_index_typ';
  dm_PCM.qry_work1.Open;
  while not dm_PCM.qry_work1.Eof do
  begin
    try
      case AnsiIndexStr(dm_PCM.qry_work1.FieldByName('Typ').AsString, ['Ganzzahl', 'Währung', 'Datum', 'Zeit', 'Zeitstempel', 'Text', 'Gleitkommazahl']) of
        0:
          if dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString = 'Jahr' then
            WriteIndizies('cmbbx_' + dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString, 0, AIDFiles, dm_PCM.qry_work1.FieldByName('ID').AsInteger)
          else if dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString = 'Monat' then
            WriteIndizies('cmbbx_' + dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString, 1, AIDFiles, dm_PCM.qry_work1.FieldByName('ID').AsInteger)
          else
            WriteIndizies('medt_' + dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString, -1, AIDFiles, dm_PCM.qry_work1.FieldByName('ID').AsInteger);
        1:
          begin
            WriteIndizies('cedt_' + dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString, 1, AIDFiles, dm_PCM.qry_work1.FieldByName('ID').AsInteger);
          end;
        2:
          begin
            WriteIndizies('dtedt_' + dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString, 0, AIDFiles, dm_PCM.qry_work1.FieldByName('ID').AsInteger);
          end;
        3:
          begin
            WriteIndizies('tedt_' + dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString, -1, AIDFiles, dm_PCM.qry_work1.FieldByName('ID').AsInteger);
          end;
        4:
          begin
            WriteIndizies('dtedt_' + dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString, 1, AIDFiles, dm_PCM.qry_work1.FieldByName('ID').AsInteger);
          end;
        5:
          begin
            WriteIndizies('edt_' + dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString, -1, AIDFiles, dm_PCM.qry_work1.FieldByName('ID').AsInteger);
          end;
      end;
      dm_PCM.qry_work1.Next;
    except
      on E: Exception do
        ShowMessage('Error processing index: ' + E.Message);
    end;
  end;
end;
procedure Tfrm_NewFile.Timer1Timer(Sender: TObject);
begin

end;

{$EndRegion Hilfsfunktionen}
////////////////////////////////////////////////////////////////////////////////
// {$Region Button Functions}                                                 //
////////////////////////////////////////////////////////////////////////////////
{$Region Button Functions}
procedure Tfrm_NewFile.btn_archivsaveClick(Sender: TObject);
  function CheckFileExists(ATable,AField,AValue: String): boolean;
  begin
    Result:= False;
    dm_PCM.qry_work.SQL.Text:= 'Select Count(*) as Anzahl From ' + ATable + ' Where ' + AField + ' = :AValue';
    dm_PCM.qry_work.ParamByName('AValue').asString:= AValue;
    dm_PCM.qry_work.Open;
    if dm_PCM.qry_work.FieldByName('Anzahl').AsInteger > 0 then
      Result:= True;
    dm_PCM.qry_work.Close;
  end;
var
  iIDFiles: integer;
  iSelected: integer;
  sPathFrom: string;
  sPathTo: string;
  sFile: string;
begin
  if (edt_File.Text = '') and (cxComboBox1.ItemIndex < 1) then
  begin
    MessageDlg(rs_ArchivNew_ChooseFile, mtWarning, [mbOk], 0);
    exit;
  end;

  if cmbbx_Benutzer.ItemIndex < 0 then
  begin
    MessageDlg(rs_ArchivNew_ChooseUSer, mtWarning, [mbOk], 0);
    exit;
  end;

  if cmbbx_Mainkat.ItemIndex < 0 then
  begin
    MessageDlg(rs_ArchivNew_ChooseMainCat, mtWarning, [mbOk], 0);
    exit;
  end;
  dm_PCM.qry_work.SQL.Text:= 'Select Pfad From archiv_konfiguration';
  dm_PCM.qry_work.Open;
  if cxComboBox1.itemindex > 0 then
  begin
    sPathfrom:= ExtractFilePath(Paramstr(0)) + edt_filename.text + '.pdf';
  end
  else begin
    sPathfrom:= edt_File.Text;
  end;
  if edt_filename.Text <> '' then
  begin
    sFile:= edt_filename.Text + ExtractFileExt(edt_File.Text);
  end
  else begin
    sFile:= ExtractFileName(sPathfrom);
    if ExtractFileExt(sFile) = '' then
    begin
      sFile:= sFile + '.pdf';
    end;
  end;
  sPathTo:= dm_PCM.qry_work.FieldByName('Pfad').AsString + '\' + cmbbx_Benutzer.Properties.Items[cmbbx_Benutzer.ItemIndex] + '\' + cmbbx_Mainkat.Properties.Items[cmbbx_Mainkat.ItemIndex];
  if Pos(lowercase('Onedrive'),lowercase(sPathTo) ) > 0 then
    sPathTo:= GetEnvironmentVariable('OneDrive') + Copy(spathto,Pos(lowercase('Onedrive'),lowercase(sPathTo))+ 8 ,Length(sPathTo));
  if cmbbx_Subkat.ItemIndex > -1 then
    sPathTo:= sPathTo + '\' + cmbbx_Subkat.Properties.Items[cmbbx_Subkat.ItemIndex]  ;
  dm_PCM.qry_work.Close;
  if not DirectoryExists(sPathTo,True) then
  begin
    TDirectory.CreateDirectory(spathto);
  end;
  sPathTo:= sPathTo + '\' + sFile;
  if bnew then
  begin
    if FileExists(sPathTo) then
    begin
      MessageDlg(rs_ArchivNew_DocExists,mtWarning,[mbOk], 0);
      exit;
    end;
    if not CopyFileEx(PChar(sPathfrom), PChar(sPathTo), nil, Pointer(Handle), nil, 0) then
    begin
      ShowMessage(SysErrorMessage(GetLastError));
      exit;
    end;
    iSelected := MessageDlg(rs_ArchivNew_DeleteDocOrg,TMsgDlgType.mtConfirmation,[mbYes,mbNo,mbCancel], 0);
    if (iSelected = 6) then
    begin
      DeleteFile(sPathfrom);
    end;
  end;
  if Pos(lowercase('Onedrive'),lowercase(sPathTo) ) > 0 then
    sPathTo:= '%onedrive%' + Copy(spathto,Pos(lowercase('Onedrive'),lowercase(sPathTo))+ 8 ,Length(sPathTo));
  if not CheckFileExists('archiv_files','Files',sFile) then
  begin
    dm_PCM.qry_work.SQL.Text:=  'Insert into archiv_files (Files,Fullpath,Benutzer,Mainkat,Subkat) ' +
                                'Values ' +
                                '(:Files,:Fullpath,:Benutzer,:Mainkat,:Subkat)';
    dm_PCM.qry_work.ParamByName('Files').AsString:= sFile;
    dm_PCM.qry_work.ParamByName('Fullpath').AsString:= sPathTo;
    dm_PCM.qry_work.ParamByName('Benutzer').AsInteger:= Integer(cmbbx_Benutzer.Properties.Items.Objects[cmbbx_Benutzer.Itemindex]);
    dm_PCM.qry_work.ParamByName('Mainkat').AsInteger:= Integer(cmbbx_Mainkat.Properties.Items.Objects[cmbbx_Mainkat.Itemindex]);;
    if cmbbx_Subkat.ItemIndex > -1 then
    begin
      dm_PCM.qry_work.ParamByName('Subkat').AsInteger:= Integer(cmbbx_Subkat.Properties.Items.Objects[cmbbx_Subkat.Itemindex]);;;
    end
    else begin
      dm_PCM.qry_work.ParamByName('Subkat').AsInteger:= -1;
    end;
    dm_PCM.qry_work.ExecSQL;
    dm_PCM.qry_work.SQL.Text:= 'SELECT LAST_INSERT_ID() AS ID';
    dm_PCM.qry_work.Open;
    iIDFiles:= dm_PCM.qry_work.FieldByName('ID').AsInteger;
    dm_PCM.qry_work.Close;
  end
  else begin
    dm_PCM.qry_work.SQL.Text:= 'SELECT ID From archiv_files Where Files = :Files';
    dm_PCM.qry_work.ParamByName('Files').AsString:= sFile;
    dm_PCM.qry_work.Open;
    iIDFiles:= dm_PCM.qry_work.FieldByName('ID').AsInteger;
    dm_PCM.qry_work.Close;
  end;
  SaveIndizies(iIDFiles);
  frm_Archiv.qry_doc.refresh;
  ModalResult := mrOk;
end;
procedure Tfrm_NewFile.btn_archivsCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;
procedure Tfrm_NewFile.cmbbx_MainkatPropertiesChange(Sender: TObject);
  procedure FillSubKat;
  begin
    dm_PCM.qry_Work.SQL.Text:= 'SELECT akzuk.ID, akuk.Bezeichnung ' +
                               'From archiv_konfiguration_zuweisung_unterkategorien akzuk ' +
                               'Left outer join archiv_konfiguration_unterkategorien akuk on akzuk.ID_archiv_konfiguration_unterkategorien = akuk.id ' +
                               'WHERE akzuk.ID_archiv_konfiguration_hauptkategorien = :ID ' +
                               'order by akuk.Bezeichnung';
    dm_PCM.qry_Work.ParamByName('ID').AsInteger:= Integer(cmbbx_mainKat.Properties.Items.Objects[cmbbx_mainKat.ItemIndex]);
    dm_PCM.qry_Work.open;
    dm_PCM.qry_Work.First;
    while not dm_PCM.qry_Work.EOF do begin
      cmbbx_Subkat.Properties.Items.AddObject(dm_PCM.qry_Work.FieldByName('Bezeichnung').AsString, TObject(dm_PCM.qry_Work.FieldByName('ID').AsInteger));
      dm_PCM.qry_Work.Next;
    end;
    cmbbx_Subkat.ItemIndex:= -1;
    dm_PCM.qry_Work.Close;
  end;
begin
  cmbbx_Subkat.ItemIndex:= -1;
  cmbbx_Subkat.Properties.Items.Clear;
  if cmbbx_mainKat.ItemIndex > -1 then
  begin
    cmbbx_Subkat.Enabled:= true;
    FillSubKat;
    if not bNew then
    begin
      cmbbx_Subkat.ItemIndex:= cmbbx_Subkat.Properties.Items.IndexOf(sSubkat);
    end;
  end
  else begin
    cmbbx_Subkat.Enabled:= false;
  end;
end;
procedure Tfrm_NewFile.cmbbx_SubkatPropertiesChange(Sender: TObject);
  function GetValue(ATableName: String): String;
  begin
    Result:= '';
    dm_PCM.qry_work2.SQL.Text:= 'Select ' + ATableName + ' From archiv_files Where ID = :ID';
    dm_PCM.qry_work2.ParamByName('ID').AsInteger:= iID;
    dm_PCM.qry_work2.Open;
    Result:= dm_PCm.qry_work2.FieldByName(ATableName).AsString;
    dm_PCM.qry_work2.Close;
  end;
  procedure CreateNewLabel(ACompName: String; AY: integer) ;
  var
    lbl_New: TcxLabel;
  begin
    lbl_New:= TcxLabel.Create(sclbx_Indizies);
    lbl_new.Parent:= sclbx_Indizies;
    lbl_New.Name := 'lbl_' + ACompName;
    lbl_New.Caption:= ACompName + ':';
    lbl_New.Transparent:= true;
    lbl_New.Left:= 8;
    lbl_New.Top:= 8 + (29 * AY);
    lbl_New.AutoSize:= false;
    lbl_New.Width:= 85;

  end;
  procedure CreateNewEdit(ACompName: String; AY: integer) ;
  var
    edt_New: TcxTextEdit;
  begin
    edt_New:= TcxTextEdit.Create(sclbx_Indizies);
    edt_New.Parent:= sclbx_Indizies;
    edt_New.Name := 'edt_' + ACompName;
    edt_New.Left:= 93;
    edt_New.Top:= 7 + (29 * AY);
    edt_New.Width:= 691;
    if not bnew then
      edt_new.Text:= GetValue(ACompName)
    else
      edt_new.Text:= '';
  end;
  procedure CreateNewCombobox(ACompName: String; AY, ATyp: integer) ;
  var
    cmbbx_New: TcxComboBox;
    wjahr,wMonat,wTag : word;
  begin
    cmbbx_New:= TcxComboBox.Create(sclbx_Indizies);
    cmbbx_New.Parent:= sclbx_Indizies;
    cmbbx_New.Name := 'cmbbx_' + ACompName;
    cmbbx_New.Left:= 93;
    cmbbx_New.Top:= 7 + (29 * AY);
    cmbbx_New.Width:= 691;
    case ATyp of
      0:
      begin
        cmbbx_New.Properties.Items.Add('1900');
        cmbbx_New.Properties.Items.Add('1901');
        cmbbx_New.Properties.Items.Add('1902');
        cmbbx_New.Properties.Items.Add('1903');
        cmbbx_New.Properties.Items.Add('1904');
        cmbbx_New.Properties.Items.Add('1905');
        cmbbx_New.Properties.Items.Add('1906');
        cmbbx_New.Properties.Items.Add('1907');
        cmbbx_New.Properties.Items.Add('1908');
        cmbbx_New.Properties.Items.Add('1909');
        cmbbx_New.Properties.Items.Add('1910');
        cmbbx_New.Properties.Items.Add('1911');
        cmbbx_New.Properties.Items.Add('1912');
        cmbbx_New.Properties.Items.Add('1913');
        cmbbx_New.Properties.Items.Add('1914');
        cmbbx_New.Properties.Items.Add('1915');
        cmbbx_New.Properties.Items.Add('1916');
        cmbbx_New.Properties.Items.Add('1917');
        cmbbx_New.Properties.Items.Add('1918');
        cmbbx_New.Properties.Items.Add('1919');
        cmbbx_New.Properties.Items.Add('1920');
        cmbbx_New.Properties.Items.Add('1921');
        cmbbx_New.Properties.Items.Add('1922');
        cmbbx_New.Properties.Items.Add('1923');
        cmbbx_New.Properties.Items.Add('1924');
        cmbbx_New.Properties.Items.Add('1925');
        cmbbx_New.Properties.Items.Add('1926');
        cmbbx_New.Properties.Items.Add('1927');
        cmbbx_New.Properties.Items.Add('1928');
        cmbbx_New.Properties.Items.Add('1929');
        cmbbx_New.Properties.Items.Add('1930');
        cmbbx_New.Properties.Items.Add('1931');
        cmbbx_New.Properties.Items.Add('1932');
        cmbbx_New.Properties.Items.Add('1933');
        cmbbx_New.Properties.Items.Add('1934');
        cmbbx_New.Properties.Items.Add('1935');
        cmbbx_New.Properties.Items.Add('1936');
        cmbbx_New.Properties.Items.Add('1937');
        cmbbx_New.Properties.Items.Add('1938');
        cmbbx_New.Properties.Items.Add('1939');
        cmbbx_New.Properties.Items.Add('1940');
        cmbbx_New.Properties.Items.Add('1941');
        cmbbx_New.Properties.Items.Add('1942');
        cmbbx_New.Properties.Items.Add('1943');
        cmbbx_New.Properties.Items.Add('1944');
        cmbbx_New.Properties.Items.Add('1945');
        cmbbx_New.Properties.Items.Add('1946');
        cmbbx_New.Properties.Items.Add('1947');
        cmbbx_New.Properties.Items.Add('1948');
        cmbbx_New.Properties.Items.Add('1949');
        cmbbx_New.Properties.Items.Add('1950');
        cmbbx_New.Properties.Items.Add('1951');
        cmbbx_New.Properties.Items.Add('1952');
        cmbbx_New.Properties.Items.Add('1953');
        cmbbx_New.Properties.Items.Add('1954');
        cmbbx_New.Properties.Items.Add('1955');
        cmbbx_New.Properties.Items.Add('1956');
        cmbbx_New.Properties.Items.Add('1957');
        cmbbx_New.Properties.Items.Add('1958');
        cmbbx_New.Properties.Items.Add('1959');
        cmbbx_New.Properties.Items.Add('1960');
        cmbbx_New.Properties.Items.Add('1961');
        cmbbx_New.Properties.Items.Add('1962');
        cmbbx_New.Properties.Items.Add('1963');
        cmbbx_New.Properties.Items.Add('1964');
        cmbbx_New.Properties.Items.Add('1965');
        cmbbx_New.Properties.Items.Add('1966');
        cmbbx_New.Properties.Items.Add('1967');
        cmbbx_New.Properties.Items.Add('1968');
        cmbbx_New.Properties.Items.Add('1969');
        cmbbx_New.Properties.Items.Add('1970');
        cmbbx_New.Properties.Items.Add('1971');
        cmbbx_New.Properties.Items.Add('1972');
        cmbbx_New.Properties.Items.Add('1973');
        cmbbx_New.Properties.Items.Add('1974');
        cmbbx_New.Properties.Items.Add('1975');
        cmbbx_New.Properties.Items.Add('1976');
        cmbbx_New.Properties.Items.Add('1977');
        cmbbx_New.Properties.Items.Add('1978');
        cmbbx_New.Properties.Items.Add('1979');
        cmbbx_New.Properties.Items.Add('1980');
        cmbbx_New.Properties.Items.Add('1981');
        cmbbx_New.Properties.Items.Add('1982');
        cmbbx_New.Properties.Items.Add('1983');
        cmbbx_New.Properties.Items.Add('1984');
        cmbbx_New.Properties.Items.Add('1985');
        cmbbx_New.Properties.Items.Add('1986');
        cmbbx_New.Properties.Items.Add('1987');
        cmbbx_New.Properties.Items.Add('1988');
        cmbbx_New.Properties.Items.Add('1989');
        cmbbx_New.Properties.Items.Add('1990');
        cmbbx_New.Properties.Items.Add('1991');
        cmbbx_New.Properties.Items.Add('1992');
        cmbbx_New.Properties.Items.Add('1993');
        cmbbx_New.Properties.Items.Add('1994');
        cmbbx_New.Properties.Items.Add('1995');
        cmbbx_New.Properties.Items.Add('1996');
        cmbbx_New.Properties.Items.Add('1997');
        cmbbx_New.Properties.Items.Add('1998');
        cmbbx_New.Properties.Items.Add('1999');
        cmbbx_New.Properties.Items.Add('2000');
        cmbbx_New.Properties.Items.Add('2001');
        cmbbx_New.Properties.Items.Add('2002');
        cmbbx_New.Properties.Items.Add('2003');
        cmbbx_New.Properties.Items.Add('2004');
        cmbbx_New.Properties.Items.Add('2005');
        cmbbx_New.Properties.Items.Add('2006');
        cmbbx_New.Properties.Items.Add('2007');
        cmbbx_New.Properties.Items.Add('2008');
        cmbbx_New.Properties.Items.Add('2009');
        cmbbx_New.Properties.Items.Add('2010');
        cmbbx_New.Properties.Items.Add('2011');
        cmbbx_New.Properties.Items.Add('2012');
        cmbbx_New.Properties.Items.Add('2013');
        cmbbx_New.Properties.Items.Add('2014');
        cmbbx_New.Properties.Items.Add('2015');
        cmbbx_New.Properties.Items.Add('2016');
        cmbbx_New.Properties.Items.Add('2017');
        cmbbx_New.Properties.Items.Add('2018');
        cmbbx_New.Properties.Items.Add('2019');
        cmbbx_New.Properties.Items.Add('2020');
        cmbbx_New.Properties.Items.Add('2021');
        cmbbx_New.Properties.Items.Add('2022');
        cmbbx_New.Properties.Items.Add('2023');
        cmbbx_New.Properties.Items.Add('2024');
        cmbbx_New.Properties.Items.Add('2025');
        cmbbx_New.Properties.Items.Add('2026');
        cmbbx_New.Properties.Items.Add('2027');
        cmbbx_New.Properties.Items.Add('2028');
        cmbbx_New.Properties.Items.Add('2029');
        cmbbx_New.Properties.Items.Add('2030');
        cmbbx_New.Properties.Items.Add('2031');
        cmbbx_New.Properties.Items.Add('2032');
        cmbbx_New.Properties.Items.Add('2033');
        cmbbx_New.Properties.Items.Add('2034');
        cmbbx_New.Properties.Items.Add('2035');
        cmbbx_New.Properties.Items.Add('2036');
        cmbbx_New.Properties.Items.Add('2037');
        cmbbx_New.Properties.Items.Add('2038');
        cmbbx_New.Properties.Items.Add('2039');
        cmbbx_New.Properties.Items.Add('2040');
        cmbbx_New.Properties.Items.Add('2041');
        cmbbx_New.Properties.Items.Add('2042');
        cmbbx_New.Properties.Items.Add('2043');
        cmbbx_New.Properties.Items.Add('2044');
        cmbbx_New.Properties.Items.Add('2045');
        cmbbx_New.Properties.Items.Add('2046');
        cmbbx_New.Properties.Items.Add('2047');
        cmbbx_New.Properties.Items.Add('2048');
        cmbbx_New.Properties.Items.Add('2049');
        cmbbx_New.Properties.Items.Add('2050');
        cmbbx_New.Properties.Items.Add('2051');
        cmbbx_New.Properties.Items.Add('2052');
        cmbbx_New.Properties.Items.Add('2053');
        cmbbx_New.Properties.Items.Add('2054');
        cmbbx_New.Properties.Items.Add('2055');
        cmbbx_New.Properties.Items.Add('2056');
        cmbbx_New.Properties.Items.Add('2057');
        cmbbx_New.Properties.Items.Add('2058');
        cmbbx_New.Properties.Items.Add('2059');
        cmbbx_New.Properties.Items.Add('2060');
        cmbbx_New.Properties.Items.Add('2061');
        cmbbx_New.Properties.Items.Add('2062');
        cmbbx_New.Properties.Items.Add('2063');
        cmbbx_New.Properties.Items.Add('2064');
        cmbbx_New.Properties.Items.Add('2065');
        cmbbx_New.Properties.Items.Add('2066');
        cmbbx_New.Properties.Items.Add('2067');
        cmbbx_New.Properties.Items.Add('2068');
        cmbbx_New.Properties.Items.Add('2069');
        cmbbx_New.Properties.Items.Add('2070');
        cmbbx_New.Properties.Items.Add('2071');
        cmbbx_New.Properties.Items.Add('2072');
        cmbbx_New.Properties.Items.Add('2073');
        cmbbx_New.Properties.Items.Add('2074');
        cmbbx_New.Properties.Items.Add('2075');
        cmbbx_New.Properties.Items.Add('2076');
        cmbbx_New.Properties.Items.Add('2077');
        cmbbx_New.Properties.Items.Add('2078');
        cmbbx_New.Properties.Items.Add('2079');
        cmbbx_New.Properties.Items.Add('2080');
        cmbbx_New.Properties.Items.Add('2081');
        cmbbx_New.Properties.Items.Add('2082');
        cmbbx_New.Properties.Items.Add('2083');
        cmbbx_New.Properties.Items.Add('2084');
        cmbbx_New.Properties.Items.Add('2085');
        cmbbx_New.Properties.Items.Add('2086');
        cmbbx_New.Properties.Items.Add('2087');
        cmbbx_New.Properties.Items.Add('2088');
        cmbbx_New.Properties.Items.Add('2089');
        cmbbx_New.Properties.Items.Add('2090');
        cmbbx_New.Properties.Items.Add('2091');
        cmbbx_New.Properties.Items.Add('2092');
        cmbbx_New.Properties.Items.Add('2093');
        cmbbx_New.Properties.Items.Add('2094');
        cmbbx_New.Properties.Items.Add('2095');
        cmbbx_New.Properties.Items.Add('2096');
        cmbbx_New.Properties.Items.Add('2097');
        cmbbx_New.Properties.Items.Add('2098');
        cmbbx_New.Properties.Items.Add('2099');
        DecodeDate(Date, wjahr,wMonat,wTag);
        if not bnew then
          cmbbx_New.ItemIndex:= StrToInt(GetValue(ACompName)) - 1900
        else
          cmbbx_New.ItemIndex:= wJahr - 1900;
      end;
      1:
      begin
        cmbbx_New.Properties.Items.Add('1');
        cmbbx_New.Properties.Items.Add('2');
        cmbbx_New.Properties.Items.Add('3');
        cmbbx_New.Properties.Items.Add('4');
        cmbbx_New.Properties.Items.Add('5');
        cmbbx_New.Properties.Items.Add('6');
        cmbbx_New.Properties.Items.Add('7');
        cmbbx_New.Properties.Items.Add('8');
        cmbbx_New.Properties.Items.Add('9');
        cmbbx_New.Properties.Items.Add('10');
        cmbbx_New.Properties.Items.Add('11');
        cmbbx_New.Properties.Items.Add('12');
        DecodeDate(Date, wjahr,wMonat,wTag);
        if not bnew then
          cmbbx_New.ItemIndex:= StrToInt(GetValue(ACompName)) - 1
        else
          cmbbx_New.ItemIndex:= wMonat - 1;
      end;
    end;
  end;
  procedure CreateNewDateTime(ACompName: String; AY, ATyp: integer) ;
  var
    dtedt_New: TcxDateEdit;
  begin
    dtedt_New:= TcxDateEdit.Create(sclbx_Indizies);
    dtedt_New.Parent:= sclbx_Indizies;
    dtedt_New.Name := 'dtedt_' + ACompName;
    dtedt_New.Left:= 93;
    dtedt_New.Top:= 7 + (29 * AY);
    dtedt_New.Width:= 691;
    case ATyp of
      0:
      begin
        dtedt_New.Properties.InputKind:= ikRegExpr;
        dtedt_New.Properties.Kind:= ckDate;
        if not bnew then
          dtedt_New.Date:= StrToDate(GetValue(ACompName))
        else
          dtedt_New.Date:= Date;
      end;
      1:
      begin
        dtedt_New.Properties.InputKind:= ikMask;
        dtedt_New.Properties.Kind:= ckDateTime;
        if not bnew then
          dtedt_New.Date:= StrToDateTime(GetValue(ACompName))
        else
          dtedt_New.Date:= Now;
      end;
    end;
  end;
  procedure CreateNewInteger(ACompName: String; AX, AY: integer);
  var
    edt_New: TcxMaskEdit;
  begin
    edt_New:= TcxMaskEdit.Create(Self);
    edt_New.Parent:= sclbx_Indizies;
    edt_New.Name := 'medt_' + ACompName;
    edt_New.Left:= 93;
    edt_New.Top:= 7 + (29 * AY);
    edt_New.Width:= 691;
    edt_New.Properties.MaskKind:= emkRegExpr;
    edt_New.Properties.EditMask:= '\d+';
    if not bnew then
      edt_New.EditValue:= StrtoInt(GetValue(ACompName));
  end;
  procedure CreateNewFloat(ACompName: String; AX, AY: integer);
  var
    cedt_New: TcxCurrencyEdit;
  begin
    cedt_New:= TcxCurrencyEdit.Create(sclbx_Indizies);
    cedt_New.Parent:= sclbx_Indizies;
    cedt_New.Name := 'cedt_' + ACompName;
    cedt_New.Left:= 93;
    cedt_New.Top:= 7 + (29 * AY);
    cedt_New.Width:= 691;
    if not bnew then
      cedt_New.Value:= StrtoFloat(GetValue(ACompName));
  end;
  procedure CreateNewTime(ACompName: String; AX, AY: integer);
  var
    tedt_New: TcxTimeEdit;
  begin
    tedt_New:= TcxTimeEdit.Create(sclbx_Indizies);
    tedt_New.Parent:= sclbx_Indizies;
    tedt_New.Name := 'tedt_' + ACompName;
    tedt_New.Left:= 93;
    tedt_New.Top:= 7 + (29 * AY);
    tedt_New.Width:= 691;
    if not bnew then
      tedt_New.Time:= StrtoTime(GetValue(ACompName));
  end;
  procedure CreateInizesComponents;
  var
    iCountLeftRight: integer;
    iCountUpDown: integer;
  begin
    if cmbbx_Subkat.ItemIndex > -1 then
    begin
      dm_PCM.qry_Work.SQL.Text:= 'SELECT aki.ID, aki.Bezeichnung, akit.Bezeichnung AS Typ ' +
                                 'FROM archiv_konfiguration_zuweisung_unterkategorien akzuk ' +
                                 'LEFT OUTER JOIN archiv_konfiguration_zuweisung_index akzi ON akzi.ID_archiv_konfiguration_unterkategorien = akzuk.id ' +
                                 'LEFT OUTER JOIN archiv_konfiguration_index aki ON aki.ID = akzi.ID_archiv_konfiguration_index ' +
                                 'LEFT OUTER JOIN archiv_konfiguration_index_typ akit ON akit.ID = aki.ID_archiv_konfiguration_index_typ ' +
                                 'WHERE akzuk.ID = :ID0 AND akzuk.ID_archiv_konfiguration_hauptkategorien = :ID1 ' +
                                 'Order by Bezeichnung asc';
      dm_PCM.qry_Work.ParamByName('ID0').AsInteger:= Integer(cmbbx_Subkat.Properties.Items.Objects[cmbbx_Subkat.Itemindex]);
      dm_PCM.qry_Work.ParamByName('ID1').AsInteger:= Integer(cmbbx_Mainkat.Properties.Items.Objects[cmbbx_mainkat.Itemindex]);
      dm_PCM.qry_Work.open;
      dm_PCM.qry_Work.First;
      iCountLeftRight:= 0;
      iCountUpDown:= 0;
      if sclbx_Indizies.ComponentCount > 0 then
      begin
        sclbx_Indizies.DestroyComponents
      end;
      while not dm_PCM.qry_Work.EOF do begin
        CreateNewLabel(dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,iCountUpDown);
        case AnsiIndexStr(dm_PCM.qry_work.FieldByName('Typ').AsString, ['Ganzzahl', 'Währung','Datum','Zeit','Zeitstempel','Text','Gleitkommazahl']) of
        0:
          begin
            if dm_PCM.qry_work.FieldByName('Bezeichnung').AsString = 'Jahr' then
            begin
              CreateNewCombobox(dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,iCountUpDown,0);
            end
            else begin
              if dm_PCM.qry_work.FieldByName('Bezeichnung').AsString = 'Monat' then
              begin
                CreateNewCombobox(dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,iCountUpDown,1);
              end
              else begin
                CreateNewInteger(dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,iCountLeftRight,iCountUpDown);
              end;
            end;
          end;
        1: CreateNewFloat(dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,iCountLeftRight,iCountUpDown);
        2: CreateNewDateTime(dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,iCountUpDown,0);
        3: CreateNewTime(dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,iCountLeftRight,iCountUpDown);
        4: CreateNewDateTime(dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,iCountUpDown,1);
        5: CreateNewEdit(dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,iCountUpDown);
        end;
        iCountUpDown:= iCountUpDown + 1;
        dm_PCM.qry_Work.Next;
      end;
      dm_PCM.qry_Work.Close;
    end
    else begin
      if sclbx_Indizies.ComponentCount > 0 then
      begin
        sclbx_Indizies.DestroyComponents
      end;
    end;
  end;
begin
  CreateInizesComponents;
end;
procedure Tfrm_NewFile.cxButton1Click(Sender: TObject);
  procedure RunScannerAndWait(const FileName, Params: string);
  var
    SEI: TShellExecuteInfo;
  begin
    ZeroMemory(@SEI, SizeOf(SEI));
    SEI.cbSize := SizeOf(SEI);
    SEI.fMask := SEE_MASK_NOCLOSEPROCESS;
    SEI.Wnd := 0;
    SEI.lpVerb := 'open';
    SEI.lpFile := PChar(FileName);
    SEI.lpParameters := PChar(Params);
    SEI.lpDirectory := nil;
    SEI.nShow := SW_SHOWNORMAL;

    if ShellExecuteEx(@SEI) then
    begin
      if SEI.hProcess <> 0 then
      begin
        // Wait until the external process finishes
        WaitForSingleObject(SEI.hProcess, INFINITE);
        CloseHandle(SEI.hProcess);
      end
      else
        raise Exception.Create('Failed to get process handle.');
    end
    else
      raise Exception.CreateFmt('Failed to execute %s', [FileName]);
  end;
var
  sExePath,sParams: string;
begin
  if edt_filename.Text = '' then
  begin
    MessageDlg('Bitte geben Sie eine Bezeichnung für den Dateinamen an!', mtWarning, [mbOk], 0);
    exit;
  end;
  if cxCombobox2.ItemIndex = -1 then
  begin
    MessageDlg('Bitte wählen Sie die Scannerart aus!', mtWarning, [mbOk], 0);
    exit;
  end;
  btn_archivsave.Enabled:= false;
  sExePath := ExtractFilePath(Paramstr(0)) +'Scanner\naps2.console.exe';
  sParams := Format('-o "%s" -n 1 -f -v --progress --profile "%s" --enableocr',[ExtractFilePath(ParamStr(0)) + edt_filename.Text + '.pdf',cxComboBox2.Properties.Items[cxComboBox2.ItemIndex]]);
  RunScannerAndWait(sExePath, sParams);
  if FileExists(ExtractFilePath(paramstr(0)) + edt_filename.text + '.pdf') then
  begin
    btn_archivsave.Enabled:= true;
  end
  else begin
    MessageDlg('Fehler beim Scannen',TMsgDlgType.mtWarning,[mbOK],0)
  end;
end;

procedure Tfrm_NewFile.cxComboBox1PropertiesChange(Sender: TObject);
begin
  if cxComboBox1.ItemIndex > 0  then
  begin
    dxLayoutItem3.Visible:= false;
    dxLayoutItem9.Visible:= true;
  end
  else begin
    dxLayoutItem3.Visible:= true;
    dxLayoutItem9.Visible:= false;
  end;
end;

procedure Tfrm_NewFile.edt_FilePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if odlg_Doc.Execute then
    edt_File.text:= odlg_Doc.FileName;
end;
{$EndRegion Button Functions}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region Formfunktionen}
procedure Tfrm_NewFile.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key = 78) and (ssAlt in Shift) then
  begin
    if odlg_Doc.Execute then
    begin
      edt_File.text:= odlg_Doc.FileName;
    end;
  end;
end;
procedure Tfrm_NewFile.FormShow(Sender: TObject);
  procedure FillBenutzer;
  begin
    cmbbx_Benutzer.clear;
    dm_PCM.qry_Work.SQL.Text:= 'SELECT ID, Benutzer FROM Benutzer order by Benutzer asc';
    dm_PCM.qry_Work.open;
    dm_PCM.qry_Work.First;
    while not dm_PCM.qry_Work.EOF do begin
      cmbbx_Benutzer.Properties.Items.AddObject(dm_PCM.qry_Work.FieldByName('Benutzer').AsString, TObject(dm_PCM.qry_Work.FieldByName('ID').AsInteger));
      dm_PCM.qry_Work.Next;
    end;
    dm_PCM.qry_Work.Close;
  end;
  procedure FillMainKat;
  begin
    cmbbx_Mainkat.clear;
    dm_PCM.qry_Work.SQL.Text:= 'SELECT akzhk.ID, akhk.Bezeichnung ' +
                               'From archiv_konfiguration_Zuweisung_hauptkategorien akzhk ' +
                               'Left outer join archiv_konfiguration_hauptkategorien akhk on akzhk.ID = akhk.id ' +
                               'order by akhk.Bezeichnung';
    dm_PCM.qry_Work.open;
    dm_PCM.qry_Work.First;
    while not dm_PCM.qry_Work.EOF do begin
      cmbbx_Mainkat.Properties.Items.AddObject(dm_PCM.qry_Work.FieldByName('Bezeichnung').AsString, TObject(dm_PCM.qry_Work.FieldByName('ID').AsInteger));
      dm_PCM.qry_Work.Next;
    end;
  end;
  procedure FillScannertype;
  begin
    cxComboBox2.clear;
    dm_PCM.qry_Work.SQL.Text:= 'SELECT Scanprofile, Type ' +
                               'From archiv_konfiguration_scanner ' +
                               'order by type';
    dm_PCM.qry_Work.open;
    dm_PCM.qry_Work.First;
    while not dm_PCM.qry_Work.EOF do begin
      cxComboBox2.Properties.Items.AddObject(dm_PCM.qry_Work.FieldByName('Scanprofile').AsString, TObject(dm_PCM.qry_Work.FieldByName('Type').AsInteger));
      dm_PCM.qry_Work.Next;
    end;
  end;
begin
  FillBenutzer;
  FillMainKat;
  FillScannertype;
  if not bNew then
  begin
    dxLayoutItem3.Visible:= true;
    dxLayoutItem9.Visible:= false;
    btn_archivsave.Enabled:= true;
    dm_pcm.qry_work.SQL.Text:=  'SELECT af.Files, af.FullPath, b.Benutzer, akhk.Bezeichnung AS Mainkat, akuk.Bezeichnung as Subkat ' +
                                'FROM archiv_files af ' +
                                'LEFT OUTER JOIN benutzer b ON b.id = af.Benutzer ' +
                                'LEFT OUTER JOIN archiv_konfiguration_hauptkategorien akhk ON akhk.ID = af.Mainkat ' +
                                'LEFT OUTER JOIN archiv_konfiguration_zuweisung_unterkategorien akzuk ON akzuk.ID = af.subkat ' +
                                'LEFT OUTER JOIN archiv_konfiguration_unterkategorien akuk ON akuk.ID = akzuk.ID_archiv_konfiguration_unterkategorien ' +
                                'WHERE af.ID = :ID';
    dm_PCM.qry_work.ParamByName('ID').AsInteger:= iID;
    dm_pcm.qry_work.open;
    sSubkat:= dm_pcm.qry_work.FieldByName('Subkat').asString;
    edt_File.Text:= dm_pcm.qry_work.FieldByName('FullPath').asString;
    cmbbx_Benutzer.ItemIndex:= cmbbx_Benutzer.Properties.Items.IndexOf(dm_pcm.qry_work.FieldByName('Benutzer').asString);
    cmbbx_Mainkat.ItemIndex:= cmbbx_Mainkat.Properties.Items.IndexOf(dm_pcm.qry_work.FieldByName('Mainkat').asString);
    dm_pcm.qry_work.Close;
  end
  else begin
    if cxComboBox1.ItemIndex > 0  then
    begin
      dxLayoutItem3.Visible:= false;
      dxLayoutItem9.Visible:= true;
      btn_archivsave.Enabled:= false;
    end
    else begin
      dxLayoutItem3.Visible:= true;
      dxLayoutItem9.Visible:= false;
      btn_archivsave.Enabled:= true;
    end;
  end;
end;
{$EndRegion Formfunktionen}
end.
