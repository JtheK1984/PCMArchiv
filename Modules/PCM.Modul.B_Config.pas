unit PCM.Modul.B_Config;

interface

uses
  {$Region uses}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
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
  IdSMTPBase, cxCurrencyEdit, Vcl.OleServer, OutlookXP,PCM.Functions,
  Vcl.VirtualImage, Vcl.BaseImageCollection, Vcl.ImageCollection, dxBarExtItems,
  cxButtonEdit,Vcl.FileCtrl, cxTL, cxTLdxBarBuiltInMenu, cxInplaceContainer,
  cxTLData, cxDBTL, dxUIAClasses, dxLayoutContainer, dxLayoutcxEditAdapters,
  dxLayoutControl,shellapi, dxLayoutControlAdapters;
  {$EndRegion uses}
type
  {$Region type}
  Tfrm_Config = class(TForm)
    bardckctrl_ArchivPfad: TdxBarDockControl;
    brdckCtrl_Index: TdxBarDockControl;
    brdckctrl_MainKat: TdxBarDockControl;
    brdckctrl_SubKat: TdxBarDockControl;
    brmgr_Config: TdxBarManager;
    brpmm_Zuweisung: TdxBarPopupMenu;
    btn_DirSave: TdxBarLargeButton;
    btn_IndexCancel: TdxBarLargeButton;
    btn_IndexDelete: TdxBarLargeButton;
    btn_IndexNew: TdxBarLargeButton;
    btn_IndexSave: TdxBarLargeButton;
    btn_MainKatCancel: TdxBarLargeButton;
    btn_MainKatDelete: TdxBarLargeButton;
    btn_MainKatNew: TdxBarLargeButton;
    btn_MainKatSave: TdxBarLargeButton;
    btn_SubKatCancel: TdxBarLargeButton;
    btn_SubKatDelete: TdxBarLargeButton;
    btn_SubKatNew: TdxBarLargeButton;
    btn_SubKatSave: TdxBarLargeButton;
    ds_index: TDataSource;
    ds_indexType: TDataSource;
    ds_Mainkat: TDataSource;
    ds_Pfad: TDataSource;
    ds_Subkat: TDataSource;
    edt_ArchivPfad: TcxDBButtonEdit;
    edt_index: TcxDBTextEdit;
    edt_MainKat: TcxDBTextEdit;
    edt_SubKat: TcxDBTextEdit;
    grd_ArchivPfad: TcxGrid;
    grd_Index: TcxGrid;
    grd_MainKat: TcxGrid;
    grd_SubKat: TcxGrid;
    grdDBTblView_ArchivPfad: TcxGridDBTableView;
    grdDBTblView_ArchivPfadPfad: TcxGridDBColumn;
    grdDBTblView_Index: TcxGridDBTableView;
    grdDBTblView_IndexBezeichnung: TcxGridDBColumn;
    grdDBTblView_IndexID_archiv_konfiguration_index_typ: TcxGridDBColumn;
    grdDBTblView_MainKat: TcxGridDBTableView;
    grdDBTblView_MainKatBezeichnung: TcxGridDBColumn;
    grdDBTblView_Subkat: TcxGridDBTableView;
    grdDBTblView_SubkatBezeichnung: TcxGridDBColumn;
    grdlvl_ArchivPfad: TcxGridLevel;
    grdLvl_Index: TcxGridLevel;
    grdlvl_MainKat: TcxGridLevel;
    grdlvl_SubKat: TcxGridLevel;
    lucmbbx_Datatype: TcxDBLookupComboBox;
    ppmbtn_Collapse: TdxBarButton;
    ppmbtn_Delete: TdxBarButton;
    ppmbtn_Expand: TdxBarButton;
    qry_Index: TFDQuery;
    qry_indexType: TFDQuery;
    qry_Mainkat: TFDQuery;
    qry_Pfad: TFDQuery;
    qry_Subkat: TFDQuery;
    tb_Dir: TdxBar;
    tb_Index: TdxBar;
    tb_MainKat: TdxBar;
    tb_SubKat: TdxBar;
    trlst_Ind: TcxTreeList;
    trlst_MainKat: TcxTreeList;
    trlst_SubKat: TcxTreeList;
    trlst_Zuweisung: TcxTreeList;
    trlstCol_IndBezeichnung: TcxTreeListColumn;
    trlstCol_IndID: TcxTreeListColumn;
    trlstCol_IndIDTable: TcxTreeListColumn;
    trlstCol_IndLVL: TcxTreeListColumn;
    trlstCol_MainKatBezeichnung: TcxTreeListColumn;
    trlstCol_MainKatID: TcxTreeListColumn;
    trlstCol_MainKatIDTable: TcxTreeListColumn;
    trlstCol_MainKatLVL: TcxTreeListColumn;
    trlstCol_SubKatBezeichnung: TcxTreeListColumn;
    trlstCol_SubKatID: TcxTreeListColumn;
    trlstCol_SubKatIDTable: TcxTreeListColumn;
    trlstCol_ZuweisungBezeichnung: TcxTreeListColumn;
    trlstCol_ZuweisungID: TcxTreeListColumn;
    trlstCol_ZuweisungIDTable: TcxTreeListColumn;
    trlstCol_ZuweisungLVL: TcxTreeListColumn;
    trlstColt_SubKatLVL: TcxTreeListColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    lagrp_ConfigTab: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutGroup19: TdxLayoutGroup;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutGroup22: TdxLayoutGroup;
    dxLayoutGroup24: TdxLayoutGroup;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutGroup25: TdxLayoutGroup;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutGroup26: TdxLayoutGroup;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutGroup30: TdxLayoutGroup;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxBarLargeButton1: TdxBarLargeButton;
    dxLayoutItem20: TdxLayoutItem;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    Button1: TButton;
    dxLayoutItem19: TdxLayoutItem;
    cxGridDBTableView1Scanprofile: TcxGridDBColumn;
    dxLayoutItem18: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxGridDBTableView1Type: TcxGridDBColumn;
    dxLayoutItem22: TdxLayoutItem;
    qry_Scan: TFDQuery;
    ds_Scan: TDataSource;
    dxBarDockControl1: TdxBarDockControl;
    brmgr_ConfigBar1: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    procedure brpmm_ZuweisungPopup(Sender: TObject);
    procedure btn_DirSaveClick(Sender: TObject);
    procedure btn_IndexCancelClick(Sender: TObject);
    procedure btn_IndexDeleteClick(Sender: TObject);
    procedure btn_IndexNewClick(Sender: TObject);
    procedure btn_IndexSaveClick(Sender: TObject);
    procedure btn_MainKatCancelClick(Sender: TObject);
    procedure btn_MainKatDeleteClick(Sender: TObject);
    procedure btn_MainKatNewClick(Sender: TObject);
    procedure btn_MainKatSaveClick(Sender: TObject);
    procedure btn_SubKatCancelClick(Sender: TObject);
    procedure btn_SubKatDeleteClick(Sender: TObject);
    procedure btn_SubKatNewClick(Sender: TObject);
    procedure btn_SubKatSaveClick(Sender: TObject);
    procedure edt_indexKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_MainKatKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_PfadPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edt_SubKatKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pc_ConfigClick(Sender: TObject);
    procedure ppmbtn_CollapseClick(Sender: TObject);
    procedure ppmbtn_DeleteClick(Sender: TObject);
    procedure ppmbtn_ExpandClick(Sender: TObject);
    procedure SetButtonsEnableVisible(DataSet: TDataSet);
    procedure trlst_ZuweisungClick(Sender: TObject);
    procedure trlst_ZuweisungDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure trlst_ZuweisungDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
  private
    { Private-Deklarationen }
    iID: integer;
    SaveGridPfad: TSavedGridView;
    SaveGridMainKat: TSavedGridView;
    SaveGridSubKat: TSavedGridView;
    SaveGridIndex: TSavedGridView;
    function FindDuplicateNode(const AParentNode, ANewNode: TcxTreeListNode; ASender: TcxTreeList): Boolean;
    procedure LoadData;
    procedure SaveConfig;
    procedure SetButtons;
    procedure SetGridViews(AShow:boolean);
  public
    { Public-Deklarationen }
  end;
  {$EndRegion type}
var
  {$Region var}
  frm_Config: Tfrm_Config;
  {$EndRegion var}
implementation
{$R *.dfm}
uses
  {$Region uses}
  PCM.Main,
  PCM.Functions.Synch.Wait,
  PCM.Data;
  {$EndRegion uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen }
function Tfrm_Config.FindDuplicateNode(const AParentNode, ANewNode: TcxTreeListNode; ASender: TcxTreeList): Boolean;
var
  iTemp: Integer;
  tln_ChildNode: TcxTreeListNode;
begin
  Result:= False;
  tln_ChildNode:= nil;
  // Hauptkategorien
  {$Region Mainkat}
  if ASender =  trlst_MainKat then
  begin
    for iTemp := 0 to trlst_Zuweisung.Count - 1 do
    begin
      if (trlst_Zuweisung.items[iTemp].Values[1] = ANewNode.Values[1]) then
        Result := True;
    end;
  end;
  {$EndRegion Mainkat}
  // Unhterkategorien
  {$Region Subkat}
  if ASender =  trlst_SubKat then
  begin
    if AParentNode = nil then
    begin
      exit;
    end;

    for iTemp := 0 to AParentNode.Count -1 do
    begin
      if iTemp = 0 then
      begin
        tln_ChildNode := AParentNode.getFirstChild;
      end
      else
      begin
        tln_ChildNode := AParentNode.GetNextChild(tln_ChildNode);
      end;
      if (tln_ChildNode.Values[1] = ANewNode.Values[1]) then
      begin
        Result := True;
        break;
      end;
    end;
  end;
  {$EndRegion Subkat}
end;
procedure Tfrm_Config.LoadData;
  procedure LoadMainKat;
  var
    tln_NewNode: TcxTreeListNode;
  begin
    trlst_MainKat.BeginUpdate;
    try
      trlst_MainKat.Clear;
      qry_Mainkat.First;
      while not qry_Mainkat.Eof do
      begin
        dm_PCM.qry_work.SQL.Text:= 'SELECT COUNT(*) AS ANZAHL FROM archiv_konfiguration_zuweisung_hauptkategorien Where ID = :ID';
        dm_PCM.qry_work.ParamByName('ID').AsInteger:= qry_Mainkat.FieldByName('ID').AsInteger;
        dm_PCM.qry_work.Open;
        if dm_PCM.qry_work.FieldByName('Anzahl').AsInteger = 0 then
        begin
          tln_NewNode := trlst_MainKat.Add;
          tln_NewNode.AssignValues([qry_Mainkat.FieldByName('Bezeichnung').AsString,qry_Mainkat.FieldByName('ID').AsInteger,1,0]);
        end;
        WaitFormStep;
        dm_PCM.qry_work.Close;
        qry_Mainkat.Next;
      end;
    finally
      trlst_MainKat.EndUpdate;
    end;
  end;
  procedure LoadSubKat;
  var
    tln_NewNode: TcxTreeListNode;
  begin
    trlst_SubKat.BeginUpdate;
    try
      trlst_SubKat.Clear;
      qry_Subkat.First;
      while not qry_Subkat.Eof do
      begin
        tln_NewNode := trlst_SubKat.Add;
        tln_NewNode.AssignValues([qry_Subkat.FieldByName('Bezeichnung').AsString,qry_Subkat.FieldByName('ID').AsInteger,2,0]);
        WaitFormStep;
        qry_Subkat.Next;
      end;
    finally
      trlst_SubKat.EndUpdate;
    end;
  end;
  procedure LoadIndex;
  var
    tln_NewNode: TcxTreeListNode;
  begin
    trlst_Ind.BeginUpdate;
    try
      trlst_Ind.Clear;
      qry_Index.First;
      while not qry_Index.Eof do
      begin
        tln_NewNode := trlst_Ind.Add;
        tln_NewNode.AssignValues([qry_Index.FieldByName('Bezeichnung').AsString,qry_Index.FieldByName('ID').AsInteger,2,0]);
        WaitFormStep;
        qry_Index.Next;
      end;
    finally
      trlst_Ind.EndUpdate;
    end;
  end;
  procedure LoadZuweisung;
  var
    tln_NewNodeLevel1: TcxTreeListNode;
    tln_NewNodeLevel2: TcxTreeListNode;
    tln_NewNodeLevel3: TcxTreeListNode;
    tln_nodeLVL1,tln_nodeLVL2: TcxTreeListNode;
    qry_Main: TFDQuery;
    qry_Sub: TFDQuery;
    qry_Ind: TFDQuery;
    iCountLVL1, iCountLVL2: integer;
  begin
    trlst_Zuweisung.BeginUpdate;
    qry_Main:= TFDQuery.Create(Self);
    try
      qry_Main.Connection:= dm_PCM.con_PCM;
      trlst_Zuweisung.Clear;
      qry_main.SQL.Text:= 'SELECT akhk.Bezeichnung AS Bez, akhk.ID AS ID ' +
                          'FROM archiv_konfiguration_zuweisung_hauptkategorien akzhk ' +
                          'LEFT OUTER JOIN archiv_Konfiguration_hauptkategorien akhk ON akzhk.ID = akhk.ID ' +
                          'ORDER BY Bez';
      qry_main.Open;
      while not qry_main.Eof do
      begin
        tln_NewNodeLevel1 := trlst_Zuweisung.add;
        tln_NewNodeLevel1.AssignValues([qry_main.FieldByName('Bez').AsString,qry_main.FieldByName('ID').AsInteger,1,0]);
        qry_Sub:= TFDQuery.Create(Self);
        try
          qry_Sub.Connection:= dm_PCM.con_PCM;
          qry_Sub.SQL.Text:= 'SELECT akuk.Bezeichnung AS Bez, akuk.ID AS ID,akzuk.ID as ID1 ' +
                             'FROM archiv_konfiguration_zuweisung_unterkategorien akzuk ' +
                             'LEFT OUTER JOIN archiv_Konfiguration_Unterkategorien akuk ON akzuk.ID_archiv_konfiguration_unterkategorien = akuk.ID ' +
                             'WHERE akzuk.ID_archiv_konfiguration_hauptkategorien = :ID_archiv_konfiguration_hauptkategorien ' +
                             'ORDER BY Bez';
          qry_Sub.ParamByName('ID_archiv_konfiguration_hauptkategorien').AsInteger:= qry_main.FieldByName('ID').AsInteger;
          qry_Sub.open;
          while not qry_Sub.Eof do
          begin
            tln_NewNodeLevel2 := tln_NewNodeLevel1.AddChildFirst;
            tln_NewNodeLevel2.AssignValues([qry_Sub.FieldByName('Bez').AsString,qry_Sub.FieldByName('ID').AsInteger,2,qry_Sub.FieldByName('ID1').AsInteger]);
            qry_Ind:= TFDQuery.Create(Self);
            try
              qry_Ind.Connection:= dm_PCM.con_PCM;
              qry_Ind.SQL.Text:= 'SELECT aki.Bezeichnung AS Bez, aki.ID AS ID,akzi.ID as ID1 ' +
                                 'FROM archiv_konfiguration_zuweisung_index akzi ' +
                                 'LEFT OUTER JOIN archiv_konfiguration_index aki ON akzi.ID_archiv_konfiguration_index = aki.ID ' +
                                 'WHERE akzi.ID_archiv_konfiguration_unterkategorien = :ID_archiv_konfiguration_unterkategorien ' +
                                 'ORDER BY Bez';
              qry_Ind.ParamByName('ID_archiv_konfiguration_unterkategorien').AsInteger:= qry_Sub.FieldByName('ID1').AsInteger;
              qry_Ind.open;
              while not qry_Ind.Eof do
              begin
                tln_NewNodeLevel3 := tln_NewNodeLevel2.AddChildFirst;
                tln_NewNodeLevel3.AssignValues([qry_Ind.FieldByName('Bez').AsString,qry_Ind.FieldByName('ID').AsInteger,3,qry_Ind.FieldByName('ID1').AsInteger]);
                qry_Ind.Next;
              end;
            finally
              qry_Ind.Close;
              qry_Ind.Free;
            end;
            qry_Sub.Next;
          end;
        finally
          qry_Sub.Close;
          qry_Sub.Free;
        end;
        WaitFormStep;
        qry_main.Next;
      end;
    finally
      qry_Main.Close;
      qry_Main.Free;
      trlst_Zuweisung.EndUpdate;
      for iCountLVL1 := 0 to trlst_Zuweisung.Count - 1 do
      begin
        tln_nodeLVL1 := TcxTreeListNode(trlst_Zuweisung.Items[iCountLVL1]);
        for iCountLVL2 := 0 to tln_nodeLVL1.Count -1 do
        begin
          tln_nodeLVL2 := TcxTreeListNode(tln_nodeLVL1[iCountLVL2]);
          dm_PCM.qry_work2.SQL.Text:= 'SELECT Expanded FROM archiv_konfiguration_zuweisung_expand Where Bezeichnung = :Beschreibung AND LVL = :LVL and ID_Node = :ID_node';
          dm_PCM.qry_work2.ParamByName('Beschreibung').AsString:= tln_nodeLVL2.values[0];
          dm_PCM.qry_work2.ParamByName('LVL').AsString:= tln_nodeLVL2.values[2];
          dm_PCM.qry_work2.ParamByName('ID_node').AsString:= tln_nodeLVL2.values[1];
          dm_PCM.qry_work2.Open;
          if dm_PCM.qry_work2.RecordCount > 0 then
          begin
            if dm_PCM.qry_work2.FieldByName('Expanded').AsInteger = 1 then
              tln_nodeLVL2.Expand(true)
          end;
        end;

        dm_PCM.qry_work2.SQL.Text:= 'SELECT Expanded FROM archiv_konfiguration_zuweisung_expand Where Bezeichnung = :Beschreibung AND LVL = :LVL and ID_Node = :ID_node';
        dm_PCM.qry_work2.ParamByName('Beschreibung').AsString:= tln_nodeLVL1.values[0];
        dm_PCM.qry_work2.ParamByName('LVL').AsString:= tln_nodeLVL1.values[2];
        dm_PCM.qry_work2.ParamByName('ID_node').AsString:= tln_nodeLVL1.values[1];
        dm_PCM.qry_work2.Open;
        if dm_PCM.qry_work2.RecordCount > 0 then
        begin
          if dm_PCM.qry_work2.FieldByName('Expanded').AsInteger = 1 then
            tln_nodeLVL1.Expand(true)
        end;
        dm_PCM.qry_work2.Close;
      end;
    end;
  end;
begin
  LoadMainKat;
  LoadSubKat;
  LoadZuweisung;
  LoadIndex;
end;
procedure Tfrm_Config.SaveConfig;
  procedure WriteInDb(ANode: string; AID, ALvl, AExpanded: integer);
  var
    iCount: integer;
  begin
    dm_PCM.qry_work.SQL.Text:= 'Select Count(*) as Anzahl From archiv_konfiguration_zuweisung_Expand ' +
                               'Where Bezeichnung = :Bezeichnung and ID_node = :ID_node and Lvl = :Lvl';
    dm_PCM.qry_work.Parambyname('Bezeichnung').AsString:= ANode;
    dm_PCM.qry_work.Parambyname('ID_node').AsInteger:= AID;
    dm_PCM.qry_work.Parambyname('Lvl').AsInteger:= Alvl;
    dm_PCM.qry_work.open;
    iCount:= dm_PCM.qry_work.FieldByName('Anzahl').AsInteger;
    dm_PCM.qry_work.Close;
    if iCount = 0 then
    begin
      dm_PCM.qry_work.SQL.Text:= 'Insert INTO archiv_konfiguration_zuweisung_Expand ' +
                                 '(Bezeichnung,ID_node,Lvl,Expanded) Values (:Bezeichnung,:ID_node,:Lvl,:Expanded)';
      dm_PCM.qry_work.Parambyname('Bezeichnung').AsString:= ANode;
      dm_PCM.qry_work.Parambyname('ID_node').AsInteger:= AID;
      dm_PCM.qry_work.Parambyname('Expanded').AsInteger:= AExpanded;
      dm_PCM.qry_work.Parambyname('Lvl').AsInteger:= Alvl;
      dm_PCM.qry_work.ExecSQL;
    end
    else begin
      dm_PCM.qry_work.SQL.Text:= 'Update archiv_konfiguration_zuweisung_Expand ' +
                                 'Set Expanded =:Expanded Where Bezeichnung = :Bezeichnung and ID_node = :ID_node and Lvl =:Lvl';
      dm_PCM.qry_work.Parambyname('Bezeichnung').AsString:= ANode;
      dm_PCM.qry_work.Parambyname('ID_node').AsInteger:= AID;
      dm_PCM.qry_work.Parambyname('Expanded').AsInteger:= AExpanded;
      dm_PCM.qry_work.Parambyname('Lvl').AsInteger:= Alvl;
      dm_PCM.qry_work.ExecSQL;
    end;
  end;
var
  I, J: Integer;
  node, cnode: TcxTreeListNode;
begin
  for i := 0 to trlst_Zuweisung.Count - 1 do
  begin
    node:= TcxTreeListNode(trlst_Zuweisung.Items[i]);
    if node.Expanded then
    begin
      WriteInDb(node.Values[0],node.Values[1],node.Values[2],1);
    end
    else begin
      WriteInDb(node.Values[0],node.Values[1],node.Values[2],0);
    end;
    for j := 0 to node.Count - 1 do
    begin
      cnode:= node[j];
      if cnode.Expanded then
      begin
        WriteInDb(cnode.Values[0],cnode.Values[1],cnode.Values[2],1);
      end
      else begin
        WriteInDb(cnode.Values[0],cnode.Values[1],cnode.Values[2],0);
      end;
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
        // Option Subkategorien
    btn_IndexSave.Enabled := qry_Index.State in [dsInsert, dsEdit];
    btn_IndexCancel.Enabled := qry_Index.State in [dsInsert, dsEdit];
  end;
  if dm_PCM.iKonfiguration = 3 then
  begin
    // Option Kategorien
    btn_MainKatDelete.enabled := (not qry_Mainkat.Eof) and not(qry_Mainkat.State in [dsInsert, dsEdit]);
    // Option Subkategorien
    btn_SubKatDelete.enabled := (not qry_Subkat.Eof) and not(qry_Subkat.State in [dsInsert, dsEdit]);
    btn_IndexDelete.enabled := (not qry_Index.Eof) and not(qry_Index.State in [dsInsert, dsEdit]) and (iID > 0);
    // Option Index
    btn_IndexDelete.enabled := (not qry_Index.Eof) and not(qry_Index.State in [dsInsert, dsEdit]);
  end;
end;
procedure Tfrm_Config.SetButtonsEnableVisible(DataSet: TDataSet);
begin
  SetButtons;
end;
procedure Tfrm_Config.SetGridViews(AShow: boolean);
begin
  if AShow then
  begin
    SaveGridPfad := TSavedGridView.Create(GV_Pfad,dm_PCM.iIDBenutzerPCM, grdDBTblView_ArchivPfad);
    SaveGridPfad.LoadView;
    SaveGridMainKat := TSavedGridView.Create(GV_Main,dm_PCM.iIDBenutzerPCM, grdDBTblView_MainKat);
    SaveGridMainKat.LoadView;
    SaveGridSubKat := TSavedGridView.Create(GV_Sub,dm_PCM.iIDBenutzerPCM, grdDBTblView_Subkat);
    SaveGridSubKat.LoadView;
    SaveGridIndex := TSavedGridView.Create(GV_Index,dm_PCM.iIDBenutzerPCM, grdDBTblView_Index);
    SaveGridSubKat.LoadView;
  end
  else begin
    SaveGridPfad.SaveView(0);
    SaveGridPfad.Free;
    SaveGridMainKat.SaveView(0);
    SaveGridMainKat.Free;
    SaveGridSubKat.SaveView(0);
    SaveGridSubKat.Free;
    SaveGridIndex.SaveView(0);
    SaveGridIndex.Free;
  end;
end;
{$EndRegion Hilfsfunktionen }
////////////////////////////////////////////////////////////////////////////////
// Button Function                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Button Function}
procedure Tfrm_Config.brpmm_ZuweisungPopup(Sender: TObject);
var
  tln_NewNode: TcxTreeListNode;
  pnt_Node: TPoint;
begin
  pnt_Node := trlst_Zuweisung.ScreenToClient(Mouse.CursorPos);
  tln_NewNode := trlst_Zuweisung.GetNodeAt(pnt_Node.X, pnt_Node.Y);
  if tln_NewNode = nil then
    ppmbtn_Delete.Visible := ivnever
  else
    ppmbtn_Delete.Visible := ivAlways;
end;
procedure Tfrm_Config.btn_DirSaveClick(Sender: TObject);
begin
  if qry_Pfad.State in [dsInsert, dsEdit] then
  begin
    edt_ArchivPfad.PostEditValue;
    qry_Pfad.Post;
  end;
end;
procedure Tfrm_Config.btn_IndexCancelClick(Sender: TObject);
begin
  qry_Index.Cancel;
end;
procedure Tfrm_Config.btn_IndexDeleteClick(Sender: TObject);
  function CheckColumn(AFieldName: String) : boolean;
  var
    iFieldCount: integer;
  begin
    Result:= false;
    dm_PCM.qry_work.SQL.Text:= 'SELECT COUNT(*) as Anzahl FROM INFORMATION_SCHEMA.COLUMNS ' +
                               'WHERE TABLE_SCHEMA = ''pcm'' AND TABLE_NAME = ''archiv_files'' AND COLUMN_NAME = ''' + AFieldName + '''';
    dm_PCM.qry_work.open;
    iFieldCount:= dm_PCM.qry_work.FieldByName('Anzahl').AsInteger;
    dm_PCM.qry_work.Close;
    if iFieldCount > 0 then
    begin
      Result:= true;
    end;
  end;
begin
  if qry_Index.FieldByName('ID').AsInteger > 0 then
  begin
    if CheckColumn(qry_Index.FieldByName('Bezeichnung').AsString) then
    begin
      dm_PCM.qry_work.SQL.Text:= 'ALTER TABLE archiv_files DROP COLUMN ' + qry_Index.FieldByName('Bezeichnung').AsString + ';';
      dm_PCM.qry_work.ExecSQL;
    end;
    dm_PCM.qry_work.SQL.Text:= 'Delete FROM archiv_konfiguration_zuweisung_index ' +
                               'WHERE ID_archiv_konfiguration_index = :ID_archiv_konfiguration_hauptkategorien';
    dm_PCM.qry_work.ParamByName('ID_archiv_konfiguration_hauptkategorien').AsInteger:= qry_Index.FieldByName('ID').AsInteger;
    dm_PCM.qry_work.ExecSQL;
    qry_Index.Delete;
  end;
end;
procedure Tfrm_Config.btn_IndexNewClick(Sender: TObject);
begin
  if qry_index.State in [dsInsert, dsEdit] then
    qry_index.Post;
  qry_index.Append;
  qry_index.Insert;
  if not edt_Index.enabled then
  begin
    edt_Index.enabled := true;
  end;
  edt_Index.SetFocus;
end;
procedure Tfrm_Config.btn_IndexSaveClick(Sender: TObject);
  function CheckColumn(AFieldName: String) : boolean;
  var
    iFieldCount: integer;
  begin
    Result:= false;
    dm_PCM.qry_work.SQL.Text:= 'SELECT COUNT(*) as Anzahl FROM INFORMATION_SCHEMA.COLUMNS ' +
                               'WHERE TABLE_SCHEMA = ''pcm'' AND TABLE_NAME = ''archiv_files'' AND COLUMN_NAME = ''' + AFieldName + '''';
    dm_PCM.qry_work.open;
    iFieldCount:= dm_PCM.qry_work.FieldByName('Anzahl').AsInteger;
    dm_PCM.qry_work.Close;
    if iFieldCount > 0 then
    begin
      Result:= true;
    end;
  end;
begin
  if qry_Index.State in [dsInsert, dsEdit] then
  begin
    edt_Index.PostEditValue;
    qry_Index.Post;
    if not CheckColumn(edt_Index.Text) then
    begin
      dm_PCM.qry_work.SQL.Text:= 'ALTER TABLE archiv_files ADD ' + edt_Index.Text + ' varchar(255)';
      dm_PCM.qry_work.ExecSQL;
    end;
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
   // Indexe Löschen
    dm_PCM.qry_work.SQL.Text:= 'Delete FROM archiv_konfiguration_zuweisung_index ' +
                        'WHERE ID_archiv_konfiguration_unterkategorien IN ' +
                        '(SELECT ID ' +
                        'FROM archiv_konfiguration_zuweisung_unterkategorien ' +
                        'WHERE ID_archiv_konfiguration_hauptkategorien = :ID_archiv_konfiguration_hauptkategorien )';
    dm_PCM.qry_work.ParamByName('ID_archiv_konfiguration_hauptkategorien').AsInteger:= qry_Mainkat.FieldByName('ID').AsInteger;
    dm_PCM.qry_work.ExecSQL;
    // Unterkategorien löschen
    dm_PCM.qry_work.SQL.Text:= 'Delete FROM archiv_konfiguration_zuweisung_unterkategorien ' +
                        'WHERE ID_archiv_konfiguration_hauptkategorien = :ID_archiv_konfiguration_hauptkategorien';
    dm_PCM.qry_work.ParamByName('ID_archiv_konfiguration_hauptkategorien').AsInteger:= qry_Mainkat.FieldByName('ID').AsInteger;
    dm_PCM.qry_work.ExecSQL;
    // Hauptkategorien löschen
    dm_PCM.qry_work.SQL.Text:= 'Delete FROM archiv_konfiguration_zuweisung_hauptkategorien ' +
                        'WHERE ID = :ID';
    dm_PCM.qry_work.ParamByName('ID').AsInteger:= qry_Mainkat.FieldByName('ID').AsInteger;;
    dm_PCM.qry_work.ExecSQL;
    qry_Mainkat.Delete;
  end
end;
procedure Tfrm_Config.btn_MainKatNewClick(Sender: TObject);
begin
  if qry_Mainkat.State in [dsInsert, dsEdit] then
    qry_Mainkat.Post;
  qry_Mainkat.Append;
  qry_Mainkat.Insert;
  if not edt_MainKat.enabled then
  begin
    edt_MainKat.enabled := true;
  end;
  edt_MainKat.SetFocus;
end;
procedure Tfrm_Config.btn_MainKatSaveClick(Sender: TObject);
begin
  if qry_Mainkat.State in [dsInsert, dsEdit] then
  begin
    edt_MainKat.PostEditValue;
    qry_Mainkat.Post;
  end;
end;
procedure Tfrm_Config.btn_SubKatCancelClick(Sender: TObject);
begin
  qry_subkat.cancel;
end;
procedure Tfrm_Config.btn_SubKatDeleteClick(Sender: TObject);
begin
  if qry_Subkat.FieldByName('ID').AsInteger > 0 then
  begin
    // Indexe Löschen
    dm_PCM.qry_work.SQL.Text:= 'Delete FROM archiv_konfiguration_zuweisung_index ' +
                        'WHERE ID_archiv_konfiguration_unterkategorien IN ' +
                        '(SELECT ID ' +
                        'FROM archiv_konfiguration_zuweisung_unterkategorien ' +
                        'WHERE ID_archiv_konfiguration_unterkategorien = :ID_archiv_konfiguration_hauptkategorien )';
    dm_PCM.qry_work.ParamByName('ID_archiv_konfiguration_hauptkategorien').AsInteger:= qry_Subkat.FieldByName('ID').AsInteger;
    dm_PCM.qry_work.ExecSQL;
    // Unterkategorien löschen
    dm_PCM.qry_work.SQL.Text:= 'Delete FROM archiv_konfiguration_zuweisung_unterkategorien ' +
                        'WHERE ID_archiv_konfiguration_unterkategorien = :ID_archiv_konfiguration_hauptkategorien';
    dm_PCM.qry_work.ParamByName('ID_archiv_konfiguration_hauptkategorien').AsInteger:= qry_Subkat.FieldByName('ID').AsInteger;
    dm_PCM.qry_work.ExecSQL;
    qry_Subkat.Delete;
  end
end;
procedure Tfrm_Config.btn_SubKatNewClick(Sender: TObject);
begin
  if qry_Subkat.State in [dsInsert, dsEdit] then
    qry_Subkat.Post;
  qry_Subkat.Append;
  qry_Subkat.Insert;
  if not edt_SubKat.enabled then
  begin
    edt_SubKat.enabled := true;
  end;
  edt_SubKat.SetFocus;
end;
procedure Tfrm_Config.btn_SubKatSaveClick(Sender: TObject);
begin
  if qry_Subkat.State in [dsInsert, dsEdit] then
  begin
    edt_SubKat.PostEditValue;
    qry_Subkat.Post;
  end;
end;
procedure Tfrm_Config.Button1Click(Sender: TObject);
begin
  ShellExecute(0, nil, PChar(ExtractFilePath(Paramstr(0)) +'\Scanner\NAPS2.exe'), nil, nil, SW_SHOWNORMAL);
end;

procedure Tfrm_Config.dxBarLargeButton2Click(Sender: TObject);
begin
   if qry_Scan.State in [dsInsert, dsedit] then
    qry_Scan.Post;
  qry_Scan.Append;
  qry_Scan.Insert;
  cxDBTextEdit1.SetFocus;
end;

procedure Tfrm_Config.dxBarLargeButton3Click(Sender: TObject);
begin
 if qry_Scan.State in [dsInsert, dsEdit] then
  begin
    cxDBTextEdit1.PostEditValue;
    cxDBImageComboBox1.PostEditValue;
    if cxDBTextEdit1.EditingText = '' then
    begin
      MessageDlg('Bitte Bezeichnung angeben!',mtwarning,[mbok],0);
      exit;
    end;
    if cxDBImageComboBox1.ItemIndex = -1 then
    begin
      MessageDlg('Bitte Typ auswählen!',mtwarning,[mbok],0);
      exit;
    end;
    qry_Scan.Post;
  end;
end;

procedure Tfrm_Config.dxBarLargeButton4Click(Sender: TObject);
begin
  qry_Scan.Cancel;
end;

procedure Tfrm_Config.dxBarLargeButton5Click(Sender: TObject);
begin
  if qry_Scan.FieldByName('ID').asInteger > 0 then
  begin
    qry_Scan.Delete;
  end;
end;

procedure Tfrm_Config.edt_indexKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = 13) and (Length(edt_MainKat.Text) > 0) then
  begin
    btn_IndexSaveClick(Self);
  end;
end;
procedure Tfrm_Config.edt_MainKatKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = 13) and (Length(edt_MainKat.Text) > 0) then
  begin
    btn_MainKatSaveClick(Self);
  end;
end;
procedure Tfrm_Config.edt_PfadPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  sDir: String;
begin
  qry_Pfad.Edit;
  if SelectDirectory(rs_Config_ZielVerzeichnis, GetEnvironmentVariable('ONEDRIVE'), sDir) then
  begin
    edt_ArchivPfad.Text := sDir;
  end;
end;
procedure Tfrm_Config.edt_SubKatKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = 13) and (Length(edt_MainKat.Text) > 0) then
  begin
    btn_SubKatSaveClick(Self);
  end;
end;
procedure Tfrm_Config.pc_ConfigClick(Sender: TObject);
begin
  if lagrp_ConfigTab.itemindex = 4 then
  begin
    LoadData;
  end;
end;
procedure Tfrm_Config.ppmbtn_CollapseClick(Sender: TObject);
begin
  trlst_Zuweisung.FullCollapse;
end;
procedure Tfrm_Config.ppmbtn_DeleteClick(Sender: TObject);
var
  iID_Main: integer;
  iLVL: integer;
  qry_Main: TFDQuery;
begin
  iLVL:= StrToInt(trlst_Zuweisung.FocusedNode.Values[2]);
  iID_Main:= StrToInt(trlst_Zuweisung.FocusedNode.Values[1]);
  qry_Main:= TFDQuery.Create(Self);
  qry_Main.Connection:= dm_PCM.con_PCM;
    try
    case iLVL of
    1:
      begin
        // Indexe Löschen
        qry_Main.SQL.Text:= 'Delete FROM archiv_konfiguration_zuweisung_index ' +
                            'WHERE ID_archiv_konfiguration_unterkategorien IN ' +
                            '(SELECT ID_archiv_konfiguration_unterkategorien ' +
                            'FROM archiv_konfiguration_zuweisung_unterkategorien ' +
                            'WHERE ID_archiv_konfiguration_hauptkategorien = :ID_archiv_konfiguration_hauptkategorien )';
        qry_Main.ParamByName('ID_archiv_konfiguration_hauptkategorien').AsInteger:= iID_Main;
        qry_Main.ExecSQL;
        // Unterkategorien löschen
        qry_Main.SQL.Text:= 'Delete FROM archiv_konfiguration_zuweisung_unterkategorien ' +
                            'WHERE ID_archiv_konfiguration_hauptkategorien = :ID_archiv_konfiguration_hauptkategorien';
        qry_Main.ParamByName('ID_archiv_konfiguration_hauptkategorien').AsInteger:= iID_Main;
        qry_Main.ExecSQL;
        // Hauptkategorien löschen
        qry_Main.SQL.Text:= 'Delete FROM archiv_konfiguration_zuweisung_hauptkategorien ' +
                            'WHERE ID = :ID';
        qry_Main.ParamByName('ID').AsInteger:= iID_Main;
        qry_Main.ExecSQL;
      end;
    2:
      begin
        iID_Main:= StrToInt(trlst_Zuweisung.FocusedNode.Values[3]);
        // Indexe Löschen
        qry_Main.SQL.Text:= 'Delete FROM archiv_konfiguration_zuweisung_index ' +
                            'WHERE ID_archiv_konfiguration_unterkategorien = :ID_archiv_konfiguration_unterkategorien';
        qry_Main.ParamByName('ID_archiv_konfiguration_unterkategorien').AsInteger:= iID_Main;
        qry_Main.ExecSQL;
        // Unterkategorien löschen
        iID_Main:= StrToInt(trlst_Zuweisung.FocusedNode.Values[1]);
        qry_Main.SQL.Text:= 'Delete FROM archiv_konfiguration_zuweisung_unterkategorien ' +
                            'WHERE ID_archiv_konfiguration_unterkategorien = :ID_archiv_konfiguration_unterkategorien';
        qry_Main.ParamByName('ID_archiv_konfiguration_unterkategorien').AsInteger:= iID_Main;
        qry_Main.ExecSQL;
      end;
    3:
      begin
        iID_Main:= StrToInt(trlst_Zuweisung.FocusedNode.Values[3]);
         // Indexe Löschen
        qry_Main.SQL.Text:= 'Delete FROM archiv_konfiguration_zuweisung_index ' +
                            'WHERE ID = :ID';
        qry_Main.ParamByName('ID').AsInteger:= iID_Main;
        qry_Main.ExecSQL;
      end
    end;
  finally
    qry_Main.Free;
  end;
  trlst_Zuweisung.FocusedNode.Delete;
  LoadData;
end;
procedure Tfrm_Config.ppmbtn_ExpandClick(Sender: TObject);
begin
  trlst_Zuweisung.FullExpand;
end;
procedure Tfrm_Config.trlst_ZuweisungClick(Sender: TObject);
begin
  SaveConfig;
end;
procedure Tfrm_Config.trlst_ZuweisungDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  tln_DropToNode: TcxTreeListNode;
  tln_SrcNode: TcxTreeListNode;
  tln_SrcNodeCopy: TcxTreeListNode;
  bDuplicateFound: boolean;
begin
  // Hauptkategorien
  if (Source as TcxTreeList) = trlst_MainKat then
  begin
    tln_DropToNode := TcxTreeList(Sender).GetNodeAt(X,Y);
    tln_SrcNode := (Source as tcxTreelist).FocusedNode;
    if tln_DropToNode = nil then
    begin
      trlst_Zuweisung.BeginUpdate;
      tln_SrcNodeCopy := TcxTreeListNode.Create(trlst_Zuweisung);
      tln_SrcNodeCopy.AssignValues([tln_SrcNode.Values[0],tln_SrcNode.Values[1],tln_SrcNode.Values[2]]);
      bDuplicateFound := FindDuplicateNode(tln_DropToNode, tln_SrcNodeCopy,trlst_MainKat);
      if not bDuplicateFound then
      begin
        dm_PCM.qry_work.SQL.Text:= 'Insert INTO archiv_konfiguration_zuweisung_hauptkategorien (ID) Values (:ID_Archiv_Hauptkategorien)';
        dm_PCM.qry_work.Parambyname('ID_Archiv_Hauptkategorien').AsInteger:= StrToint(tln_SrcNode.Values[1]);
        dm_PCM.qry_work.ExecSQL;
      end;
      tln_SrcNodeCopy.Free;
      trlst_Zuweisung.EndUpdate;
    end;
  end;
  // Unterkategorien
  if (Source as TcxTreeList) = trlst_SubKat then
  begin
    tln_DropToNode := TcxTreeList(Sender).GetNodeAt(X,Y);
    tln_SrcNode := (Source as tcxTreelist).FocusedNode;
    if tln_DropToNode <> nil then
    begin
      trlst_Zuweisung.BeginUpdate;
      tln_SrcNodeCopy := TcxTreeListNode.Create(trlst_Zuweisung);
      tln_SrcNodeCopy.AssignValues([tln_SrcNode.Values[0],tln_SrcNode.Values[1],tln_SrcNode.Values[2]]);
      bDuplicateFound := FindDuplicateNode(tln_DropToNode, tln_SrcNodeCopy,trlst_SubKat);
      if not bDuplicateFound then
      begin
        dm_PCM.qry_work.SQL.Text:= 'Insert INTO archiv_konfiguration_zuweisung_unterkategorien ' +
                                   '(ID_archiv_konfiguration_hauptkategorien,ID_archiv_konfiguration_unterkategorien) Values (:ID_archiv_konfiguration_hauptkategorien,:ID_archiv_konfiguration_unterkategorien)';
        dm_PCM.qry_work.Parambyname('ID_archiv_konfiguration_hauptkategorien').AsInteger:= StrToint(tln_DropToNode.Values[1]);
        dm_PCM.qry_work.Parambyname('ID_archiv_konfiguration_unterkategorien').AsInteger:= StrToint(tln_SrcNode.Values[1]);
        dm_PCM.qry_work.ExecSQL;
      end;
      tln_SrcNodeCopy.Free;
      trlst_Zuweisung.EndUpdate;
    end;
  end;
  // Index
  if (Source as TcxTreeList) = trlst_Ind then
  begin
    tln_DropToNode := TcxTreeList(Sender).GetNodeAt(X,Y);
    tln_SrcNode := (Source as tcxTreelist).FocusedNode;
    if tln_DropToNode <> nil then
    begin
      trlst_Zuweisung.BeginUpdate;
      tln_SrcNodeCopy := TcxTreeListNode.Create(trlst_Zuweisung);
      tln_SrcNodeCopy.AssignValues([tln_SrcNode.Values[0],tln_SrcNode.Values[1],tln_SrcNode.Values[2]]);
      bDuplicateFound := FindDuplicateNode(tln_DropToNode, tln_SrcNodeCopy,trlst_SubKat);
      if not bDuplicateFound then
      begin
        dm_PCM.qry_work.SQL.Text:= 'Insert INTO archiv_konfiguration_zuweisung_Index ' +
                                   '(ID_archiv_konfiguration_unterkategorien,ID_archiv_konfiguration_index) Values (:ID_archiv_konfiguration_unterkategorien,:ID_archiv_konfiguration_index)';
        dm_PCM.qry_work.Parambyname('ID_archiv_konfiguration_unterkategorien').AsInteger:= StrToint(tln_DropToNode.Values[3]);
        dm_PCM.qry_work.Parambyname('ID_archiv_konfiguration_index').AsInteger:= StrToint(tln_SrcNode.Values[1]);
        dm_PCM.qry_work.ExecSQL;
      end;
      tln_SrcNodeCopy.Free;
      trlst_Zuweisung.EndUpdate;
    end;
  end;
  LoadData;
end;
procedure Tfrm_Config.trlst_ZuweisungDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  tln_DropToNode: TcxTreeListNode;
  tln_SrcNode: TcxTreeListNode;
  tln_SrcNodeCopy: TcxTreeListNode;
  bDuplicateFound: boolean;
begin
  tln_DropToNode := TcxTreeList(Sender).GetNodeAt(X, Y);
  tln_SrcNode := (Source as TcxTreeList).FocusedNode;
  // Hauptkategorien
  {$Region Mainkat}
  if ((Source as TcxTreeList) = trlst_MainKat) then
  begin
    if tln_DropToNode <> nil then
    begin
      Accept := False;
      Exit;
    end
    else begin
      tln_SrcNodeCopy := TcxTreeListNode.Create(trlst_Zuweisung);
      tln_SrcNodeCopy.AssignValues([tln_SrcNode.Values[0],tln_SrcNode.Values[1],tln_SrcNode.Values[2]]);
      bDuplicateFound := FindDuplicateNode(tln_DropToNode, tln_SrcNodeCopy,trlst_MainKat);
      if bDuplicateFound then
      begin
        Accept := False;
        Exit;
      end;
    end;
  end;
  {$EndRegion Mainkat}
  // Unterkategorien
  {$Region Subkat}
  if ((Source as TcxTreeList) = trlst_SubKat) then
  begin
    if tln_DropToNode = nil then
    begin
      Accept := False;
      Exit;
    end
    else begin
      tln_SrcNodeCopy := TcxTreeListNode.Create(trlst_Zuweisung);
      tln_SrcNodeCopy.AssignValues([tln_SrcNode.Values[0],tln_SrcNode.Values[1],tln_SrcNode.Values[2]]);
      bDuplicateFound := FindDuplicateNode(tln_DropToNode, tln_SrcNodeCopy,trlst_SubKat);
      if bDuplicateFound then
      begin
        Accept := False;
        Exit;
      end;
      if StrToInt(tln_DropToNode.Values[2]) in  [2,3] then
      begin
        Accept := False;
        Exit;
      end;
    end;
  end;
  {$EndRegion Subkat}
  // Index
  {$Region Subkat}
  if ((Source as TcxTreeList) = trlst_Ind) then
  begin
    if tln_DropToNode = nil then
    begin
      Accept := False;
      Exit;
    end
    else begin
      tln_SrcNodeCopy := TcxTreeListNode.Create(trlst_Zuweisung);
      tln_SrcNodeCopy.AssignValues([tln_SrcNode.Values[0],tln_SrcNode.Values[1],tln_SrcNode.Values[2]]);
      bDuplicateFound := FindDuplicateNode(tln_DropToNode, tln_SrcNodeCopy,trlst_SubKat);
      if bDuplicateFound then
      begin
        Accept := False;
        Exit;
      end;
      if StrToInt(tln_DropToNode.Values[2]) in  [1,3] then
      begin
        Accept := False;
        Exit;
      end;
    end;
  end;
  {$EndRegion Subkat}
end;
{$EndRegion Button Function}
////////////////////////////////////////////////////////////////////////////////
// Form Function                                                              //
////////////////////////////////////////////////////////////////////////////////
{$Region Form Function}
procedure Tfrm_Config.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;
procedure Tfrm_Config.FormDestroy(Sender: TObject);
begin
  SetGridViews(false);
end;
procedure Tfrm_Config.FormResize(Sender: TObject);
begin
  trlstCol_MainKatBezeichnung.Width:= trlst_MainKat.Width - 8;
  trlstCol_SubKatBezeichnung.Width:= trlst_SubKat.Width - 8;
  trlstCol_IndBezeichnung.Width:= trlst_SubKat.Width - 8;
end;
procedure Tfrm_Config.FormShow(Sender: TObject);
  procedure OpenData;
  begin
    qry_Pfad.Sql.Text:= 'Select * From archiv_konfiguration';
    qry_Pfad.Open;
    qry_Scan.Open;
    qry_Mainkat.open;
    qry_Subkat.open;
    qry_Indextype.open;
    qry_Index.open;
  end;
  procedure InitializeRights;
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
begin
  OpenData;
  LoadData;
  InitializeRights;
  SetButtons;
  SetGridViews(True);
end;
{$EndRegion Form Function}
end.

