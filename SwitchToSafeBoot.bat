@echo off
rem Компонент AntiRealtekHD
rem By Ameterius
rem https://github.com/Ameterius
title Switching to safe boot (minimal)
bcdedit /set {current} safeboot minimal
echo Well done!
echo (If you get error, try run this file with admin)
echo (Press any key...)
pause>nul