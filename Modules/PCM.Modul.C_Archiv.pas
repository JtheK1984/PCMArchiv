unit PCM.Modul.C_Archiv;

interface

uses
  {$Region Uses}
  Winapi.Windows,cxCurrencyEdit, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
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
  Vcl.ExtCtrls, dxShellDialogs,PCM.Functions,cxSchedulerStorage,
  Vcl.ComCtrls, dxCore, cxCalc, cxSpinEdit, cxTimeEdit;
  {$EndRegion Uses}
type
  {$Region Type}
  Tfrm_Archiv = class(TForm)
    brmgr_Contacts: TdxBarManager;
    btn_DocDelete: TdxBarLargeButton;
    btn_DocEdit: TdxBarLargeButton;
    btn_DocNew: TdxBarLargeButton;
    btn_DocSearch: TcxButton;
    btn_DocSearchDelete: TcxButton;
    cmbbx_benutzer: TcxComboBox;
    cmbbx_mainKat: TcxComboBox;
    cmbbx_Subkat: TcxComboBox;
    ds_benutzer: TDataSource;
    ds_Doc: TDataSource;
    ds_mainkat: TDataSource;
    ds_Subkat: TDataSource;
    grd_DocSearch: TcxGrid;
    grdDBTblView_DocSearch: TcxGridDBTableView;
    grdDBTblView_DocSearchBenutzer: TcxGridDBColumn;
    grdDBTblView_DocSearchFileImage: TcxGridDBColumn;
    grdDBTblView_DocSearchFiles: TcxGridDBColumn;
    grdDBTblView_DocSearchFullPath: TcxGridDBColumn;
    grdDBTblView_DocSearchID: TcxGridDBColumn;
    grdDBTblView_DocSearchMainkat: TcxGridDBColumn;
    grdDBTblView_DocSearchSubkat: TcxGridDBColumn;
    grdLvl_DocSearch: TcxGridLevel;
    grpbx_Archiv: TcxGroupBox;
    grpbx_ArchivIndex: TcxGroupBox;
    lbl_MainKat: TcxLabel;
    lbl_Subkat: TcxLabel;
    lbl_User: TcxLabel;
    pnl_DocButtons: TcxGroupBox;
    qry_Benutzer: TFDQuery;
    qry_Doc: TFDQuery;
    qry_mainkat: TFDQuery;
    qry_Subkat: TFDQuery;
    tb_dic: TdxBar;
    cxGridPopupMenu1: TcxGridPopupMenu;
    pc_Options: TcxPageControl;
    ts_A_Archiv: TcxTabSheet;
    dxBarDockControl1: TdxBarDockControl;
    procedure FormShow(Sender: TObject);
    procedure btn_DocSearchDeleteClick(Sender: TObject);
    procedure btn_DocSearchClick(Sender: TObject);
    procedure grdDBTblView_DocSearchCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;   AShift: TShiftState; var AHandled: Boolean);
    procedure SearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure cmbbx_mainKatPropertiesChange(Sender: TObject);
    procedure btn_DocNewClick(Sender: TObject);
    procedure btn_DocDeleteClick(Sender: TObject);
    procedure btn_DocEditClick(Sender: TObject);
  private
    { Private-Deklarationen }
    procedure FillMainKat;
    procedure FillSubKat;
  public
    { Public-Deklarationen }
  end;
  {$EndRegion Type}
var
  frm_Archiv: Tfrm_Archiv;


implementation

{$R *.dfm}

uses  PCM.Data,
      PCM.Functions.Synch.Wait,
      PCM.Strings, PCM.Modul.C_Archiv.New, PCM.Main;

////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen }
procedure Tfrm_Archiv.FillMainKat;
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
procedure Tfrm_Archiv.FillSubKat;
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
{$EndRegion Hilfsfunktionen}
////////////////////////////////////////////////////////////////////////////////
// {$Region Button Functions}                                                 //
////////////////////////////////////////////////////////////////////////////////
{$Region Button Functions}
procedure Tfrm_Archiv.btn_DocDeleteClick(Sender: TObject);
begin
 if qry_doc.FieldByName('ID').AsInteger > 0 then
  begin
    qry_doc.Delete;
  end;
end;
procedure Tfrm_Archiv.btn_DocEditClick(Sender: TObject);
begin
  if qry_doc.FieldByName('ID').AsInteger > 0 then
  begin
    Application.CreateForm(Tfrm_NewFile, frm_NewFile);
    frm_NewFile.Execute(false,qry_Doc.FieldByName('ID').asInteger);
    frm_NewFile := nil;
  end;
end;
procedure Tfrm_Archiv.btn_DocNewClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_NewFile, frm_NewFile);
  frm_NewFile.Execute(True,-1);
  frm_NewFile := nil;
end;
procedure Tfrm_Archiv.btn_DocSearchClick(Sender: TObject);
  function GetSearchValue(AName: string; ATyp: integer): String ;
  var
    i: Integer;
    cmbbx:  TcxComboBox;
    edt:    TcxTextEdit;
    dtedt:  TcxDateEdit;
    tedt:   TcxTimeEdit;
    medt:   TcxMaskEdit;
    cedt:   TcxCurrencyEdit;
  begin
    Result:='';
    for i := 0 to grpbx_ArchivIndex.ComponentCount - 1 do
    begin
      if grpbx_ArchivIndex.Components[i].name = AName then
      begin
        // TcxTextEdit
        {$Region Text}
        if grpbx_ArchivIndex.Components[i] is TcxTextEdit then
        begin
          edt:= TcxTextEdit(grpbx_ArchivIndex.Components[i]);
          if edt.Text <> '' then
            Result:= 'Lower(' + StringReplace(edt.Name,'edt_','',[rfIgnoreCase,rfReplaceAll]) + ') like '+ QuotedStr('%' + lowercase(edt.Text) + '%');
        end;
        {$EndRegion Text}
        // TcxComboBox
        {$Region Combo}
        if grpbx_ArchivIndex.Components[i] is TcxComboBox then
        begin
          cmbbx:= TcxComboBox(grpbx_ArchivIndex.Components[i]);
          if cmbbx.itemindex > -1 then
            Result:= StringReplace(cmbbx.Name,'cmbbx_','',[rfIgnoreCase,rfReplaceAll]) + ' = ' + cmbbx.Properties.Items[cmbbx.itemindex];
        end;
        {$EndRegion Combo}
        // TcxDateEdit
        {$Region Date}
        if grpbx_ArchivIndex.Components[i] is TcxDateEdit then
        begin
          case ATyp of
            0:
            begin
              dtedt:= TcxDateEdit(grpbx_ArchivIndex.Components[i]);
              if dtedt.date > -700000 then
              begin
                Result:= StringReplace(dtedt.Name,'dtedt_','',[rfIgnoreCase,rfReplaceAll]) + ' = ' + QuotedStr(DateToStr(dtedt.date));
              end;
            end;
            1:
            begin
              dtedt:= TcxDateEdit(grpbx_ArchivIndex.Components[i]);
              if dtedt.date > -700000 then
              begin
                Result:= StringReplace(dtedt.Name,'dtedt_','',[rfIgnoreCase,rfReplaceAll]) + ' = ' + QuotedStr(DateTimeToStr(dtedt.date));
              end;
            end;
          end;
        end;
        {$EndRegion Date}
        // TcxTimeEdit
        {$Region Time}
        if grpbx_ArchivIndex.Components[i] is TcxTimeEdit then
        begin
          tedt:= TcxTimeEdit(grpbx_ArchivIndex.Components[i]);
          if tedt.time > 0 then
          begin
            Result:= StringReplace(tedt.Name,'tedt_','',[rfIgnoreCase,rfReplaceAll]) + ' = ' + QuotedStr(TimeToStr(tedt.time));
          end;
        end;
        {$EndRegion Time}
        // TcxMaskEdit
        {$Region Mask}
        if grpbx_ArchivIndex.Components[i] is TcxMaskEdit then
        begin
           medt:= TcxMaskEdit(grpbx_ArchivIndex.Components[i]);
           if medt.EditValue <> '' then
           begin
             Result:= StringReplace(medt.Name,'medt_','',[rfIgnoreCase,rfReplaceAll]) + ' = ' + QuotedStr(medt.EditValue);
           end;
        end;
        {$EndRegion Mask}
        // TcxCurrencyEdit
        {$Region Currency}
        if grpbx_ArchivIndex.Components[i] is TcxCurrencyEdit then
        begin
           cedt:= TcxCurrencyEdit(grpbx_ArchivIndex.Components[i]);
           if FloatToStr(cedt.Value) <> '0' then
           begin
             Result:= StringReplace(cedt.Name,'cedt_','',[rfIgnoreCase,rfReplaceAll]) + ' = ' + QuotedStr(FloatToStr(cedt.Value));
           end;
        end;
        {$EndRegion Currency}
      end;
    end;
  end;
var
  str_filter: string;
  str_temp:string;
begin
  Screen.Cursor := crHourGlass;
  qry_Doc.Filtered:= false;
  dm_PCM.qry_work.sql.text:= 'SELECT aki.Bezeichnung,akit.Bezeichnung as Typ '  +
                             'From archiv_konfiguration_index aki '        +
                             'LEFT OUTER JOIN archiv_konfiguration_index_typ akit ON akit.id = aki.ID_archiv_konfiguration_index_typ';
  dm_PCM.qry_work.open;
  str_Filter:= '';
  while not dm_pcm.qry_work.Eof do
  begin
    case AnsiIndexStr(dm_PCM.qry_work.FieldByName('Typ').AsString, ['Ganzzahl', 'Währung','Datum','Zeit','Zeitstempel','Text','Gleitkommazahl']) of
      0:
      begin
        if dm_PCM.qry_work.FieldByName('Bezeichnung').AsString = 'Jahr' then
        begin
          str_temp:= GetSearchValue('cmbbx_' + dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,0);
        end
        else begin
          if dm_PCM.qry_work.FieldByName('Bezeichnung').AsString = 'Monat' then
          begin
            str_temp:= GetSearchValue('cmbbx_' + dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,1);
          end
          else begin
            str_temp:= GetSearchValue('medt_' + dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,0);
          end;
        end;
      end;
      1:
        begin
          str_temp:= GetSearchValue('cedt_' + dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,1);
        end;
      2:
        begin
          str_temp:= GetSearchValue('dtedt_' + dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,0);
        end;
      3:
        begin
          str_temp:= GetSearchValue('tedt_' + dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,-1);
        end;
      4:
        begin
          str_temp:= GetSearchValue('dtedt_' + dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,1);
        end;
      5:
        begin
          str_temp:= GetSearchValue('edt_' + dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,-1);
        end;
      6:
        begin
          str_temp:= GetSearchValue('medt_' + dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,-1);
        end;
    end;
    if (str_Filter <> '') and (str_temp <> '') then
      str_Filter := str_Filter + ' and ';
    if str_temp <> '' then
      str_Filter := str_Filter + str_temp ;
    str_temp:= '';
    dm_PCM.qry_work.Next;
  end;

  if cmbbx_benutzer.ItemIndex > -1 then
    str_temp:= 'Benutzer = ' + IntToStr(Integer(cmbbx_benutzer.Properties.Items.Objects[cmbbx_benutzer.ItemIndex]));
  if (str_Filter <> '') and (str_temp <> '') then
    str_Filter := str_Filter + ' and ';
  if str_temp <> '' then
    str_Filter := str_Filter + str_temp ;
  str_temp:= '';
  if cmbbx_mainKat.ItemIndex > -1 then
    str_temp:= 'Mainkat = ' + IntToStr(Integer(cmbbx_mainKat.Properties.Items.Objects[cmbbx_mainKat.ItemIndex]));
  if (str_Filter <> '') and (str_temp <> '') then
    str_Filter := str_Filter + ' and ';
  if str_temp <> '' then
    str_Filter := str_Filter + str_temp ;
  str_temp:= '';
  if cmbbx_SubKat.ItemIndex > -1 then
    str_temp:= 'Subkat = ' + IntToStr(Integer(cmbbx_SubKat.Properties.Items.Objects[cmbbx_SubKat.ItemIndex]));
  if (str_Filter <> '') and (str_temp <> '') then
    str_Filter := str_Filter + ' and ';
  if str_temp <> '' then
    str_Filter := str_Filter + str_temp ;
  str_temp:= '';

  str_Filter := str_Filter;
  qry_Doc.Filter:= str_filter;
  qry_Doc.Filtered:= true;
  Screen.Cursor := crDefault;
  grd_DocSearch.SetFocus;
  grdDBTblView_DocSearch.Focused := true;
end;
procedure Tfrm_Archiv.btn_DocSearchDeleteClick(Sender: TObject);
  procedure SetSearchValue(AName: string; ATyp: integer);
  var
    i: Integer;
    cmbbx:  TcxComboBox;
    edt:    TcxTextEdit;
    dtedt:  TcxDateEdit;
    tedt:   TcxTimeEdit;
    medt:   TcxMaskEdit;
    cedt:   TcxCurrencyEdit;
  begin
    for i := 0 to grpbx_ArchivIndex.ComponentCount - 1 do
    begin
      if grpbx_ArchivIndex.Components[i].name = AName then
      begin
        // TcxTextEdit
        {$Region Text}
        if grpbx_ArchivIndex.Components[i] is TcxTextEdit then
        begin
          edt:= TcxTextEdit(grpbx_ArchivIndex.Components[i]);
          edt.Text := '';
        end;
        {$EndRegion Text}
        // TcxComboBox
        {$Region Combo}
        if grpbx_ArchivIndex.Components[i] is TcxComboBox then
        begin
          cmbbx:= TcxComboBox(grpbx_ArchivIndex.Components[i]);
          cmbbx.itemindex:= -1;
        end;
        {$EndRegion Combo}
        // TcxDateEdit
        {$Region Date}
        if grpbx_ArchivIndex.Components[i] is TcxDateEdit then
        begin
          dtedt:= TcxDateEdit(grpbx_ArchivIndex.Components[i]);
          dtedt.date := -700000;
        end;
        {$EndRegion Date}
        // TcxTimeEdit
        {$Region Time}
        if grpbx_ArchivIndex.Components[i] is TcxTimeEdit then
        begin
          tedt:= TcxTimeEdit(grpbx_ArchivIndex.Components[i]);
          tedt.time := 0;
        end;
        {$EndRegion Time}
        // TcxMaskEdit
        {$Region Mask}
        if grpbx_ArchivIndex.Components[i] is TcxMaskEdit then
        begin
           medt:= TcxMaskEdit(grpbx_ArchivIndex.Components[i]);
           medt.EditValue:= '';
        end;
        {$EndRegion Mask}
        // TcxCurrencyEdit
        {$Region Currency}
        if grpbx_ArchivIndex.Components[i] is TcxCurrencyEdit then
        begin
          cedt:= TcxCurrencyEdit(grpbx_ArchivIndex.Components[i]);
          cedt.Value:= 0;
        end;
        {$EndRegion Currency}
      end;
    end;
  end;
begin
  Screen.Cursor := crHourGlass;
  qry_Doc.Filtered:= false;
  dm_PCM.qry_work.sql.text:= 'SELECT aki.Bezeichnung,akit.Bezeichnung as Typ '  +
                             'From archiv_konfiguration_index aki '        +
                             'LEFT OUTER JOIN archiv_konfiguration_index_typ akit ON akit.id = aki.ID_archiv_konfiguration_index_typ';
  dm_PCM.qry_work.open;
  while not dm_pcm.qry_work.Eof do
  begin
    case AnsiIndexStr(dm_PCM.qry_work.FieldByName('Typ').AsString, ['Ganzzahl', 'Währung','Datum','Zeit','Zeitstempel','Text','Gleitkommazahl']) of
      0:
      begin
        if dm_PCM.qry_work.FieldByName('Bezeichnung').AsString = 'Jahr' then
        begin
          SetSearchValue('cmbbx_' + dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,0);
        end
        else begin
          if dm_PCM.qry_work.FieldByName('Bezeichnung').AsString = 'Monat' then
          begin
            SetSearchValue('cmbbx_' + dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,1);
          end
          else begin
            SetSearchValue('medt_' + dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,0);
          end;
        end;
      end;
      1:
        begin
          SetSearchValue('cedt_' + dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,1);
        end;
      2:
        begin
          SetSearchValue('dtedt_' + dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,0);
        end;
      3:
        begin
          SetSearchValue('tedt_' + dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,-1);
        end;
      4:
        begin
          SetSearchValue('dtedt_' + dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,1);
        end;
      5:
        begin
          SetSearchValue('edt_' + dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,-1);
        end;
      6:
        begin
          SetSearchValue('medt_' + dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,-1);
        end;
    end;
    dm_PCM.qry_work.Next;
  end;
  qry_Doc.Filter:= '';
  qry_Doc.Filtered:= false;
  Screen.Cursor := crDefault;
  grd_DocSearch.SetFocus;
  grdDBTblView_DocSearch.Focused := true;
end;
procedure Tfrm_Archiv.cmbbx_mainKatPropertiesChange(Sender: TObject);
begin
  cmbbx_Subkat.Properties.Items.Clear;
  if cmbbx_mainKat.ItemIndex > -1 then
  begin
    cmbbx_Subkat.Enabled:= true;
    FillSubKat;
  end
  else begin
    cmbbx_Subkat.Enabled:= false;
  end;
end;
procedure Tfrm_Archiv.grdDBTblView_DocSearchCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;  AShift: TShiftState; var AHandled: Boolean);
var
  hittest : TcxCustomGridHitTest;
  sPath:  String;
begin
  hittest := grdDBTblView_DocSearch.GetHitTest(grd_DocSearch.ScreenToClient(Mouse.CursorPos));
  if hittest.HitTestCode = htCell then
  begin
    if qry_Doc.FieldByName('ID').AsInteger > 0 then
    begin
      sPath:= GetEnvironmentVariable('OneDrive');
      ShellExecute(0, 'open', PCHAR(StringReplace(qry_Doc.FieldByName('Fullpath').Asstring,'%onedrive%',sPath,[rfReplaceAll,rfIgnoreCase])) ,nil, nil, 0);
    end;
  end;
end;
procedure Tfrm_Archiv.SearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    btn_DocSearch.Click;
end;
{$EndRegion Button Functions}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region Formfunktionen}
procedure Tfrm_Archiv.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;
procedure Tfrm_Archiv.FormShow(Sender: TObject);
  procedure InitializeRights;
  begin
  // Kontakte / Lesen
    if dm_PCM.iArchiv = 1 then
    begin
      // Toolbar
      btn_DocNew.Enabled:= false;
      btn_DocEdit.Enabled:= false;
      btn_DocDelete.Enabled:= false;
    end;
      // Kontakte / Ändern
    if dm_PCM.iArchiv = 2 then
    begin
      // Toolbar
      btn_DocNew.Enabled:= true;
      btn_DocEdit.Enabled:= true;
      btn_DocDelete.Enabled:= false;
    end;
    // Kontakte / Vollzugriff
    if dm_PCM.iArchiv = 3 then
    begin
      // Toolbar
      btn_DocNew.Enabled:= true;
      btn_DocEdit.Enabled:= true;
      btn_DocDelete.Enabled:= true;
    end;
  end;
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
  procedure OpenData;
  var
    iTemp: integer;
    sTyp: string;
  begin
    qry_Doc.Open;
    qry_Benutzer.Open;
    qry_mainkat.Open;
    qry_Subkat.Open;
    grdDBTblView_DocSearch.DataController.DataSource:= ds_Doc;
    grdDBTblView_DocSearch.DataController.CreateAllItems(True);
    for iTemp := 0 to grdDBTblView_DocSearch.ColumnCount - 1 do
    begin
      if grdDBTblView_DocSearch.Columns[iTemp].Tag = 0 then
      begin
        grdDBTblView_DocSearch.Columns[iTemp].Width:= 150;
        dm_PCM.qry_work2.SQL.Text:= 'SELECT akit.Bezeichnung FROM archiv_konfiguration_index aki ' +
                                    'LEFT OUTER JOIN archiv_konfiguration_index_typ akit ON akit.id = aki.ID_archiv_konfiguration_index_typ ' +
                                    'WHERE aki.Bezeichnung = :Name';
        dm_PCM.qry_work2.ParamByName('Name').AsString:= grdDBTblView_DocSearch.Columns[iTemp].Caption;
        dm_PCM.qry_work2.open;
        sTyp:= dm_PCM.qry_work2.FieldByName('Bezeichnung').AsString;
        dm_PCM.qry_work2.Close;

        case AnsiIndexStr(sTyp, ['Ganzzahl', 'Währung','Datum','Zeit','Zeitstempel','Text','Gleitkommazahl']) of
        1: grdDBTblView_DocSearch.Columns[iTemp].PropertiesClass:= TcxCurrencyEditProperties;
//        2: grdDBTblView_DocSearch.Columns[iTemp].Properties:= TcxDateEdit;
//        3: grdDBTblView_DocSearch.Columns[iTemp].Properties:= TcxDateEdit;
//        4: grdDBTblView_DocSearch.Columns[iTemp].Properties:= TcxDateEdit;
//        5: grdDBTblView_DocSearch.Columns[iTemp].Properties:= TcxDateEdit;
        end;
      end;





    end;
  end;
  procedure CreateNewLabel(ACompName: String; AX, AY: integer) ;
  var
    lbl_New: TcxLabel;
  begin
    lbl_New:= TcxLabel.Create(grpbx_ArchivIndex);
    lbl_new.Parent:= grpbx_ArchivIndex;
    lbl_New.Name := 'lbl_' + ACompName;
    lbl_New.Caption:= ACompName + ':';
    lbl_New.Transparent:= true;
    lbl_New.Left:= 6 + (360 * AX);
    lbl_New.Top:= 24 + (27 * AY);
  end;
  procedure CreateNewEdit(ACompName: String; AX, AY: integer) ;
  var
    edt_New: TcxTextEdit;
  begin
    edt_New:= TcxTextEdit.Create(grpbx_ArchivIndex);
    edt_New.Parent:= grpbx_ArchivIndex;
    edt_New.Name := 'edt_' + ACompName;
    edt_New.Left:= 95 + (360 * AX);
    edt_New.Top:= 23 + (27 * AY);
    edt_New.Width:= 234;
    edt_new.Text:= '';
    edt_new.OnKeyDown:= SearchKeyDown;
  end;
  procedure CreateNewCombobox(ACompName: String; AX, AY, ATyp: integer) ;
  var
    cmbbx_New: TcxComboBox;
    wjahr,wMonat,wTag : word;
  begin
    cmbbx_New:= TcxComboBox.Create(grpbx_ArchivIndex);
    cmbbx_New.Parent:= grpbx_ArchivIndex;
    cmbbx_New.Name := 'cmbbx_' + ACompName;
    cmbbx_New.Left:= 95 + (360 * AX);
    cmbbx_New.Top:= 23 + (27 * AY);
    cmbbx_New.Width:= 234;
    cmbbx_New.Text:= '';
    cmbbx_New.OnKeyDown:= SearchKeyDown;
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
      end;
    end;

  end;
  procedure CreateNewDateTime(ACompName: String; AX, AY, ATyp: integer) ;
  var
    dtedt_New: TcxDateEdit;
  begin
    dtedt_New:= TcxDateEdit.Create(grpbx_ArchivIndex);
    dtedt_New.Parent:= grpbx_ArchivIndex;
    dtedt_New.Name := 'dtedt_' + ACompName;
    dtedt_New.Left:= 95 + (360 * AX);
    dtedt_New.Top:= 23 + (27 * AY);
    dtedt_New.Width:= 234;
    dtedt_New.OnKeyDown:= SearchKeyDown;
    case ATyp of
      0:
      begin
        dtedt_New.Properties.InputKind:= ikRegExpr;
        dtedt_New.Properties.Kind:= ckDate;
      end;
      1:
      begin
        dtedt_New.Properties.InputKind:= ikMask;
        dtedt_New.Properties.Kind:= ckDateTime;
      end;
    end;
  end;
  procedure CreateNewInteger(ACompName: String; AX, AY: integer);
  var
    edt_New: TcxMaskEdit;
  begin
    edt_New:= TcxMaskEdit.Create(grpbx_ArchivIndex);
    edt_New.Parent:= grpbx_ArchivIndex;
    edt_New.Name := 'medt_' + ACompName;
    edt_New.Left:= 95 + (360 * AX);
    edt_New.Top:= 23 + (27 * AY);
    edt_New.Width:= 234;
    edt_New.Properties.MaskKind:= emkRegExpr;
    edt_New.Properties.EditMask:= '\d+';
    edt_New.OnKeyDown:= SearchKeyDown;
  end;
  procedure CreateNewFloat(ACompName: String; AX, AY: integer);
  var
    cedt_new: TcxCurrencyEdit;
  begin
    cedt_new:= TcxCurrencyEdit.Create(grpbx_ArchivIndex);
    cedt_new.Parent:= grpbx_ArchivIndex;
    cedt_new.Name := 'cedt_' + ACompName;
    cedt_new.Left:= 95 + (360 * AX);
    cedt_new.Top:= 23 + (27 * AY);
    cedt_new.Width:= 234;
    cedt_New.OnKeyDown:= SearchKeyDown;
    cedt_new.EditValue:= '';
  end;
  procedure CreateNewTime(ACompName: String; AX, AY: integer);
  var
    tedt_New: TcxTimeEdit;
  begin
    tedt_New:= TcxTimeEdit.Create(grpbx_ArchivIndex);
    tedt_New.Parent:= grpbx_ArchivIndex;
    tedt_New.Name := 'tedt_' + ACompName;
    tedt_New.Left:= 95 + (360 * AX);
    tedt_New.Top:= 23 + (27 * AY);
    tedt_New.Width:= 234;
    tedt_New.OnKeyDown:= SearchKeyDown;
  end;
  procedure CreateInizesComponents;
  var
    iCountLeftRight: integer;
    iCountUpDown: integer;
  begin
    dm_PCM.qry_Work.SQL.Text:= 'SELECT aki.ID, aki.Bezeichnung, akit.Bezeichnung AS Typ ' +
                               'FROM archiv_konfiguration_index aki ' +
                               'LEFT OUTER JOIN archiv_konfiguration_index_typ akit On aki.ID_archiv_konfiguration_index_typ = akit.ID ' +
                               'order by Bezeichnung asc';
    dm_PCM.qry_Work.open;
    dm_PCM.qry_Work.First;
    iCountLeftRight:= 0;
    iCountUpDown:= 0;
    while not dm_PCM.qry_Work.EOF do begin
      if iCountLeftRight = 3 then
      begin
        iCountLeftRight:= 0;
        iCountUpDown:= iCountUpDown + 1;
      end;
      CreateNewLabel(dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,iCountLeftRight,iCountUpDown);
      case AnsiIndexStr(dm_PCM.qry_work.FieldByName('Typ').AsString, ['Ganzzahl', 'Währung','Datum','Zeit','Zeitstempel','Text','Gleitkommazahl']) of
      0:
        begin
          if dm_PCM.qry_work.FieldByName('Bezeichnung').AsString = 'Jahr' then
          begin
            CreateNewCombobox(dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,iCountLeftRight,iCountUpDown,0);
          end
          else begin
            if dm_PCM.qry_work.FieldByName('Bezeichnung').AsString = 'Monat' then
            begin
                CreateNewCombobox(dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,iCountLeftRight,iCountUpDown,1);
            end
            else begin
              CreateNewInteger(dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,iCountLeftRight,iCountUpDown);
            end;
          end;
        end;
      1:
        begin
          CreateNewFloat(dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,iCountLeftRight,iCountUpDown);
        end;
      2: CreateNewDateTime(dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,iCountLeftRight,iCountUpDown,0);
      3: CreateNewTime(dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,iCountLeftRight,iCountUpDown);
      4: CreateNewDateTime(dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,iCountLeftRight,iCountUpDown,1);
      5: CreateNewEdit(dm_PCM.qry_work.FieldByName('Bezeichnung').AsString,iCountLeftRight,iCountUpDown);
      end;
      iCountLeftRight:= iCountLeftRight + 1;
      dm_PCM.qry_Work.Next;
    end;
    dm_PCM.qry_Work.Close;
    grpbx_ArchivIndex.Height:= 24 + (33 * (iCountUpDown + 1));
    grpbx_Archiv.Height:= 24 + 36 + grpbx_ArchivIndex.Height;
  end;
begin
  OpenData;
  InitializeRights;
  FillBenutzer;
  FillMainKat;
  if grpbx_ArchivIndex.ComponentCount = 0 then
    CreateInizesComponents;
end;
{$EndRegion Formfunktionen}
end.
