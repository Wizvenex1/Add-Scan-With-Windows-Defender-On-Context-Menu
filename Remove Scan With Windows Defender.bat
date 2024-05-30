@echo off
set regFile=%temp%\RestoreContextMenus.reg

(
echo Windows Registry Editor Version 5.00
echo.
echo [-HKEY_CLASSES_ROOT\*\shell\Scan with Windows Defender]
echo [-HKEY_CLASSES_ROOT\Directory\shell\Scan with Windows Defender]
echo [-HKEY_CLASSES_ROOT\Drive\shell\Scan with Windows Defender]
) > "%regFile%"

regedit /s "%regFile%"

del "%regFile%"

echo Context menu item removed successfully.
pause
