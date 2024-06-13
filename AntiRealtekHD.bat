@echo off
echo "    _          _   _ ____            _ _       _    _   _ ____  "
echo "   / \   _ __ | |_(_)  _ \ ___  __ _| | |_ ___| | _| | | |  _ \ "
echo "  / _ \ | '_ \| __| | |_) / _ \/ _` | | __/ _ \ |/ / |_| | | | |"
echo " / ___ \| | | | |_| |  _ <  __/ (_| | | ||  __/   <|  _  | |_| |"
echo "/_/   \_\_| |_|\__|_|_| \_\___|\__,_|_|\__\___|_|\_\_| |_|____/ "
echo                         13-06-2024 Rev
echo                          By Ameterius
echo                Press any key to start cleaning
pause>nul
title Cleaning...
rmdir /s /q %ProgramData%\WindowsTask
rmdir /s /q %ProgramData%\RDP Wrapper
rmdir /s /q %ProgramData%\Realtek HD
rmdir /s /q %ProgramData%\RealtekHD
rmdir /s /q %ProgramData%\Microsoft\Network
del /s /q %ProgramData%\Microsoft\win.exe
del /s /q %UserProfile%\Documents\task.vbs
del /s /q %UserProfile%\Documents\task.xml
echo File cleaning done!
title Cleaning Done!
echo Press any key to start registry cleaning
echo !WARINING! SCHTASKS CAN BE FULLY ERASED !WARNING!
pause>nul
START Powershell -nologo -noninteractive -windowStyle hidden -noprofile -command ^
Remove-MpPreference -ExclusionPath C:\ProgramData\ReaItekHD\taskhost.exe -Force; ^
Remove-MpPreference -ExclusionPath C:\ProgramData\WindowsTask\audiodg.exe -Force; ^
Remove-MpPreference -ExclusionPath C:\ProgramData\WindowsTask\AppModule.exe -Force; ^
Remove-MpPreference -ExclusionPath C:\ProgramData -Force; ^
Remove-MpPreference -ExclusionPath 'C:\Program Files\RDP Wrapper' -Force; ^
Remove-MpPreference -ExclusionPath C:\ProgramData\WindowsTask\AMD.exe -Force; ^
Remove-MpPreference -ExclusionPath C:\ProgramData\ReaItekHD\taskhostw.exe -Force; ^
Remove-MpPreference -ExclusionPath C:\Windows\SysWow64\unsecapp.exe -Force; ^
reg DELETE "HKLM\Software\Policies\Microsoft\Windows Defender\Exclusions\Processes" /va /f
SCHTASKS /Delete /TN * /F
rem Yep, in batch so hard...
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Realtek HD Audio" /f
echo Cleaning well done!
echo Press any key to close this program
pause>nul
