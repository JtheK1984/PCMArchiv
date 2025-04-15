unit PCM.Data;

interface

uses
  {$Region Uses}
  System.SysUtils, System.Classes,inifiles, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Phys.ADSDef, FireDAC.Phys.MSSQLDef,
  FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL, FireDAC.Phys.ADS,
  FireDAC.Comp.DataSet,Vcl.Dialogs, System.ImageList, Vcl.ImgList, Vcl.Controls,
  cxImageList, cxGraphics, winapi.Windows,System.UITypes,Vcl.Forms, cxClasses,
  dxLayoutLookAndFeels;
  {$endRegion Uses}
type
  {$Region Type}
  Tdm_PCM = class(TDataModule)
    con_PCM: TFDConnection;
    physdvrLnk_Mysql: TFDPhysMSSQLDriverLink;
    qry_work: TFDQuery;
    imglst_24x24: TcxImageList;
    imglst_32x32: TcxImageList;
    qry_work1: TFDQuery;
    qry_work2: TFDQuery;
    imglst_16x16: TcxImageList;
    qry_ChartMain: TFDQuery;
    qry_ChartSub: TFDQuery;
    qry_ChartFiles: TFDQuery;
    ds_ChartMain: TDataSource;
    ds_ChartSub: TDataSource;
    ds_ChartFiles: TDataSource;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeel2: TdxLayoutSkinLookAndFeel;
    procedure con_PCMBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    bAppTerm: boolean;
    bClose: boolean;
    bDemo: boolean;
    blogin: boolean;
    bNewLiceneCheck: Boolean;
    bStyle: boolean;
    dtCurrDate: Tdate;
    dtGueltig: Tdate;
    iArchiv: integer;
    iBenutzer: integer;
    iDBType: integer;
    iDesign: integer;
    iIDBenutzerPCM: integer;
    iKonfiguration: integer;
    iModulTab: integer;
    iScale: double;
    sDesign: String;
    slocale: String;
    sServer: String;
    sstyle: String;
    sUserAutologin: string;
    Firma: string;
    Nummer: string;
  end;
  {$EndRegion Type}
var
  dm_PCM: Tdm_PCM;

const
  DB_MYSQL = 0;
  DB_MSSQL = 1;
  DB_ADS = 2;
  DB_FB = 3;
  PCM_Programmnummer =  14;
  PCM_Logname = 'PCMArchiv';
  PCM_Connectionname =  'archiv';
  PCM_Alias = 'archiv';

resourcestring
  {$IFDEF WIN64}
  PCM_Programmname = 'PCM - Archiv 64-Bit';
  {$else}
  PCM_Programmname = 'PCM - Archiv 32-Bit';
  {$ENDIF}

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PCM.Main;

{$R *.dfm}

////////////////////////////////////////////////////////////////////////////////
// Datamodul                                                                  //
////////////////////////////////////////////////////////////////////////////////
{$Region Datamodul}
procedure Tdm_PCM.DataModuleCreate(Sender: TObject);
begin
  iScale := Screen.PrimaryMonitor.PixelsPerInch / 96;
end;
procedure Tdm_PCM.con_PCMBeforeConnect(Sender: TObject);
begin
  con_PCM.LoginPrompt := False;
  con_PCM.Params.Clear;
  case iDBType of
    DB_MYSQL:
    begin
      con_PCM.Params.Add('Database=pcm');
      con_PCM.Params.Add('User_Name=root');
      con_PCM.Params.Add('Password=pcm');
      con_PCM.Params.Add('Server='+ sServer);
      con_PCM.Params.Add('Port=3307');
      con_PCM.Params.Add('DriverID=MySQL');
    end;
    DB_MSSQL:
    begin
      con_PCM.Params.Add('OSAuthent=No');
      con_PCM.Params.Add('User_Name=sa');
      con_PCM.Params.Add('Password=Nh2020+5');
      con_PCM.Params.Add('Server='+ sServer);
      con_PCM.Params.Add('Database=pcm');
      con_PCM.Params.Add('DriverID=MSSQL');
    end;
    DB_ADS:
     begin
      con_PCM.Params.Add('Alias=pcm');
      con_PCM.Params.Add('ServerTypes=REMOTE|LOCAL');
      con_PCM.Params.Add('User_Name=adssys');
      con_PCM.Params.Add('Password=pcm');
      con_PCM.Params.Add('DriverID=ADS');
     end;
  end;
end;
{$EndRegion Datamodul}
end.
