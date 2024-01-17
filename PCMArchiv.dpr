program PCMArchiv;

uses
  NtTranslator,
  inifiles,
  Vcl.Forms,
  System.SysUtils,
  Vcl.Themes,
  Vcl.Styles,
  PCM.Modul.B_Config in 'Modules\PCM.Modul.B_Config.pas' {frm_Config},
  PCM.Main in 'PCM.Main.pas' {frm_PCM_Main},
  PCM.Data in 'PCM.Data.pas' {dm_PCM: TDataModule},
  PCM.Modul.C_Archiv in 'Modules\PCM.Modul.C_Archiv.pas' {frm_Contact};

{$R *.res}

var
  iniFile: TIniFile;
  sStyle: String;
  slocale: String;
begin
  iniFile:=TIniFile.create(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\PCM.ini');
  sStyle:= iniFile.ReadString('PCMArchiv','Style','Windows');
  slocale:= iniFile.ReadString('PCMArchiv','Language','de');
  iniFile.Free;
  {$IFDEF WIN64}
  TNtTranslator.SetNew(slocale,[],'de');
  {$ENDIF}
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  {$IFDEF WIN64}
  Application.Title:= 'PCM-Archiv 64-Bit';
  {$else}
  Application.Title:= 'PCM-Archiv 32-Bit';
  {$ENDIF}
  TStyleManager.TrySetStyle(sStyle);
  Application.CreateForm(Tdm_PCM, dm_PCM);
  Application.CreateForm(Tfrm_PCM_Main, frm_PCM_Main);
  Application.Run;
end.
