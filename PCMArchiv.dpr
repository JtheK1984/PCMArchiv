program PCMArchiv;

uses
  {$Region Uses}
  inifiles,
  NtTranslator,
  System.SysUtils,
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  Windows,
  PCM.Main in 'PCM.Main.pas' {frm_PCM_Main},
  PCM.Data in 'PCM.Data.pas' {dm_PCM: TDataModule},
  PCM.Modul.B_Config in 'Modules\PCM.Modul.B_Config.pas' {frm_Config},
  PCM.Modul.C_Archiv in 'Modules\PCM.Modul.C_Archiv.pas' {frm_Archiv},
  PCM.Modul.C_Archiv.New in 'Modules\PCM.Modul.C_Archiv.New.pas' {frm_NewFile};
  {$EndRegion Uses}

{$R *.res}

{$SetPEOptFlags IMAGE_DLLCHARACTERISTICS_TERMINAL_SERVER_AWARE}
{$SetPEFlags IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP or IMAGE_FILE_NET_RUN_FROM_SWAP or IMAGE_FILE_LARGE_ADDRESS_AWARE}

var
  ifini: TIniFile;
  sStyle: String;
  slocale: String;

begin
  ifini:=TIniFile.create(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\PCM.ini');
  sStyle:=ifini.ReadString('PCMArchiv','Style','Windows');
  slocale:=ifini.ReadString('PCMArchiv','Language','de');
  ifini.Free;
  Application.Initialize;
  TStyleManager.TrySetStyle(sStyle);
  {$IFDEF WIN64}
  Application.Title:= 'PCM - Archiv 64-Bit';
  TNtTranslator.SetNew(slocale,[],'de');
  {$else}
  Application.Title:= 'PCM - Archiv 32-Bit';
  {$ENDIF}
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm_PCM,dm_PCM);
  Application.CreateForm(Tfrm_PCM_Main,frm_PCM_Main);
  Application.Run;
end.
