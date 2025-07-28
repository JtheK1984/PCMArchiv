echo "Kopiere Datei ins Setupverzeichnis 32-Bit"
copy /y /v Win32\Release\PCMArchiv.exe "e:\Inno\Setupfiles\Programme\PCMArchiv"
copy /y /v Win32\Release\PCMArchiv.DE "e:\Inno\Setupfiles\Programme\PCMArchiv"
copy /y /v Win32\Release\PCMArchiv.EN "e:\Inno\Setupfiles\Programme\PCMArchiv"
echo "Kopiere Datei ins Setupverzeichnis 64-Bit"
copy /y /v Win64\Release\PCMArchiv.exe "e:\Inno\Setupfiles\Programme\PCMArchiv_x64"
copy /y /v Win64\Release\PCMArchiv.DE "e:\Inno\Setupfiles\Programme\PCMArchiv_x64"
copy /y /v Win64\Release\PCMArchiv.EN "e:\Inno\Setupfiles\Programme\PCMArchiv_x64"

echo "Kopiere Doku ins Setupverzeichnis"
copy /y /v PCMArchiv.docx "e:\Inno\Setupfiles\Programme\PCMArchiv"
copy /y /v PCMArchiv.pdf "e:\Inno\Setupfiles\Programme\PCMArchiv"
copy /y /v PCMArchiv.htm "e:\Inno\Setupfiles\Programme\PCMArchiv"

echo "Demolizenz erstellen"
call "E:\Inno\Setupfiles\Programme\PCMLizenzgenerator\PCMLizenzgenerator.exe" /PCM-Archiv /1.0 /E:\Inno\Setupfiles\Programme\PCMArchiv
