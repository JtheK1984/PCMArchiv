call "C:\Program Files (x86)\Embarcadero\Studio\23.0\bin\rsvars.bat"
echo "Build erstellen"
msbuild E:/Projekte/Windows/PCMArchiv/PCMArchiv.dproj /t:Clean;Build;Localize;CompressWin64 /p:config=Release /p:platform=Win64
msbuild E:/Projekte/Windows/PCMArchiv/PCMArchiv.dproj /t:Clean;Build;CompressWin32 /p:config=Release /p:platform=Win32

echo "Kopiere Datei ins Setupverzeichnis"
copy /y /v E:\Projekte\Windows\PCMArchiv\Win64\Release\PCMArchiv.exe "e:\Inno\Setupfiles\Programme\PCMArchiv_x64"
copy /y /v E:\Projekte\Windows\PCMArchiv\Win32\Release\PCMArchiv.exe "e:\Inno\Setupfiles\Programme\PCMArchiv"

copy /y /v E:\Projekte\Windows\PCMArchiv\Win64\Release\PCMArchiv.DE "e:\Inno\Setupfiles\Programme\PCMArchiv_x64"
copy /y /v E:\Projekte\Windows\PCMArchiv\Win64\Release\PCMArchiv.EN "e:\Inno\Setupfiles\Programme\PCMArchiv_x64"
copy /y /v E:\Projekte\Windows\PCMArchiv\Win64\Release\PCMArchiv.FR "e:\Inno\Setupfiles\Programme\PCMArchiv_x64"
copy /y /v E:\Projekte\Windows\PCMArchiv\Win64\Release\PCMArchiv.IT "e:\Inno\Setupfiles\Programme\PCMArchiv_x64"
copy /y /v E:\Projekte\Windows\PCMArchiv\Win64\Release\PCMArchiv.ES "e:\Inno\Setupfiles\Programme\PCMArchiv_x64"

copy /y /v E:\Projekte\Windows\PCMArchiv\PCMArchiv.docx "e:\Inno\Setupfiles\Programme\PCMArchiv_x64"
copy /y /v E:\Projekte\Windows\PCMArchiv\PCMArchiv.pdf "e:\Inno\Setupfiles\Programme\PCMArchiv_x64"
copy /y /v E:\Projekte\Windows\PCMArchiv\PCMArchiv.htm "e:\Inno\Setupfiles\Programme\PCMArchiv_x64"

copy /y /v E:\Projekte\Windows\PCMArchiv\PCMArchiv.docx "e:\Inno\Setupfiles\Programme\PCMArchiv"
copy /y /v E:\Projekte\Windows\PCMArchiv\PCMArchiv.pdf "e:\Inno\Setupfiles\Programme\PCMArchiv"
copy /y /v E:\Projekte\Windows\PCMArchiv\PCMArchiv.htm "e:\Inno\Setupfiles\Programme\PCMArchiv"

echo "Demolizenz erstellen"
call "E:\Inno\Setupfiles\Programme\PCMLizenzgenerator\PCMLizenzgenerator.exe" /PCM-Archiv /1.6 /E:\Inno\Setupfiles\Programme\PCMArchiv_x64
