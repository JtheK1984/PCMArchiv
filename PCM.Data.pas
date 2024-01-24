unit PCM.Data;

interface

uses
  System.SysUtils, System.Classes,inifiles, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Phys.ADSDef, FireDAC.Phys.MSSQLDef,
  FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL, FireDAC.Phys.ADS,
  FireDAC.Comp.DataSet,Vcl.Dialogs, System.ImageList, Vcl.ImgList, Vcl.Controls,
  cxImageList, cxGraphics, winapi.Windows,System.UITypes,Vcl.Forms;

type
  Tdm_PCM = class(TDataModule)
    con_PCM: TFDConnection;
    FDPhysADSDriverLink1: TFDPhysADSDriverLink;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    qry_work: TFDQuery;
    imglst_24x24: TcxImageList;
    imglst_32x32: TcxImageList;
    qry_work1: TFDQuery;
    qry_work2: TFDQuery;
    imglst_16x16: TcxImageList;
    procedure con_PCMBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    iModulTab: integer;
    bNewLiceneCheck: Boolean;
    bClose: boolean;
    blogin: boolean;
    bStyle: boolean;
    iIDBenutzerPCM: integer;
    iDBType: integer;
    sServer,sstyle,sDesign: String;
    slocale: String;
    bAutologin: boolean;
    sUSerAutologin: string;
    Firma, Nummer: string;
    bDemo: boolean;
    bAppTerm: boolean;
    dtGueltig,dtCurrDate: Tdate;
    iScale: double;
    // Rechte
    iBenutzer: integer;
    iKonfiguration: integer;
    iDesign: integer;
    iArchiv: integer;
  end;

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

procedure Tdm_PCM.DataModuleCreate(Sender: TObject);
begin
  iScale := Screen.PrimaryMonitor.PixelsPerInch /96;
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

end.
