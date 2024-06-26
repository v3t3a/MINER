# WARNING
**Do not use this script (cleaner.bat) to download a version of FL Studio (link below) thinking you are immune to malware.**

**This information and data is made available for educational purposes. Use with caution.**


# Table of content
* [Miner](#miner)
* [Context](#context)
* [Data](#data)
* [Cleaner](#cleaner)
* [Preview](#preview)



# MINER
Miner found in a FL STUDIO cracked version

# CONTEXT
For my own usage, I downloaded a torrent of cracked version of FL STUDIO (FL Studio Producer Edition v21.1.0 Build 3713).

After installation, and some usage working good, sometimes, some shell window appeared and disappeared instantly.

this was the start of my journey to find this miner.

# DATA

* FL STUDIO : https://drive.proton.me/urls/HZ3478Y8F0#U3QUvNMy1kSR
* PDF were written in French, cause it's my native langage. Feel free to translate it, maybe with Google translate or Deepl, if needed.
* Some screeshots
* Files installed by the initial *setup.msi* and *Data.cab*

# CLEANER
A simple cleaner in batch format : 
~~~
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
~~~

# PREVIEW
Miner can be seen with ProcessExplorer : 
![test](https://github.com/v3t3a/MINER/blob/main/miner/processExplorer.jpg?raw=true)

Not visible with taskManager : 
![test](https://github.com/v3t3a/MINER/blob/main/miner/processExplorer%20-%20whenOpeningTaskManager.jpg)
