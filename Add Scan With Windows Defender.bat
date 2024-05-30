@echo off
set regFile=%temp%\ScanWithWindowsDefender.reg

(
echo Windows Registry Editor Version 5.00
echo.
echo [HKEY_CLASSES_ROOT\*\shell\Scan with Windows Defender]
echo "Icon"="C:\\Program Files\\Windows Defender\\EppManifest.dll"
echo @="Scan with Windows Defender"
echo.
echo [HKEY_CLASSES_ROOT\*\shell\Scan with Windows Defender\command]
echo @="\"C:\\Program Files\\Windows Defender\\MpCmdRun.exe\" -Scan -ScanType 3 -File \"%%1\""
echo.
echo [HKEY_CLASSES_ROOT\Directory\shell\Scan with Windows Defender]
echo "Icon"="C:\\Program Files\\Windows Defender\\EppManifest.dll"
echo @="Scan with Windows Defender"
echo.
echo [HKEY_CLASSES_ROOT\Directory\shell\Scan with Windows Defender\command]
echo @="\"C:\\Program Files\\Windows Defender\\MpCmdRun.exe\" -Scan -ScanType 3 -File \"%%1\""
) > "%regFile%"

regedit /s "%regFile%"

del "%regFile%"

echo Context menu item added successfully.
pause
