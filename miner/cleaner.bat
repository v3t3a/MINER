REM stop scheduled tasks
schtasks /end /TN "MSI Task Host - Detect_Monitor" /F
schtasks /end /TN "\Microsoft\Windows\BLuetooth\UninstallDeviceTask" /F

REM delete scheduled tasks
schtasks /delete /TN "MSI Task Host - Detect_Monitor" /F
schtasks /delete /TN "\Microsoft\Windows\BLuetooth\UninstallDeviceTask" /F

REM Kill all launched process
taskkill /FI "WINDOWTITLE eq XMR*" /F /T

REM delete %appdata%\winsoft folder
rmdir /s /q %appdata%\Winsoft

REM delete files from c:\windows folder
del /f /q %systemroot%\bb.bat %systemroot%\mid.bin %systemroot%\mid.ps1 %systemroot%\key %systemroot%\dlhost.exe %systemroot%\svshost.exe %systemroot%\WinRing0x64.sys
