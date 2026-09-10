@echo off
:: Szovjet vörös háttér, sárga betûk a retro hangulathoz
color 4e
title KGB Mini-Windows OS v1.0

:BOOT
cls
echo [========================================]
echo        KGB CYBERNETIC OS LOADING...
echo [========================================]
echo Rendszerfajlok ellenorzese...
timeout /t 2 >nul
echo Periferiak csatlakoztatasa...
timeout /t 1 >nul
echo Rendszer kesz.
timeout /t 1 >nul

:DESKTOP
cls
echo ====================================================================
echo   KGB MINI-WINDOWS   ^|   Ido: %time:~0,5%   ^|   Felhasznalo: ELVTARS
echo ====================================================================
echo.
echo     [1] KGB FILE EXPLORER (Fajlkezelo)
echo     [2] RED TEXT EDITOR (Mini Notepad)
echo     [3] SYSTEM TERMINAL (Parancssor)
echo     [4] SYSTEM INFO (Rendszerinformacio)
echo     [5] SHUTDOWN (Kilepes/Leallitas)
echo.
echo ====================================================================
echo.
set /p "task=Valasszon egy alkalmazast (1-5): "

if "%task%"=="1" goto EXPLORER
if "%task%"=="2" goto NOTEPAD
if "%task%"=="3" goto TERMINAL
if "%task%"=="4" goto SYSINFO
if "%task%"=="5" exit
goto DESKTOP

:EXPLORER
cls
echo === KGB FILE EXPLORER ===
echo Aktualis mappa tartalma:
echo --------------------------------------------------------------------
dir /b
echo --------------------------------------------------------------------
echo.
echo [B] Vissza az Asztalra
echo.
set /p "exp=Parancs: "
if /i "%exp%"=="B" goto DESKTOP
goto EXPLORER

:NOTEPAD
cls
echo === RED TEXT EDITOR ===
echo Irja be a menteni kivant szöveget (Irat nevû fajlba menti):
echo --------------------------------------------------------------------
set /p "text=> "
echo %text% > kgb_irat.txt
echo.
echo A dokumentumot 'kgb_irat.txt' neven elmentettem!
pause
goto DESKTOP

:TERMINAL
cls
echo === KGB SUB-TERMINAL ===
echo Irjon be barmilyen Windows parancsot (Kilepeshez: EXIT)
echo --------------------------------------------------------------------
:term_loop
set /p "cmd_in=[COMRADE@SHELL]$ "
if /i "%cmd_in%"=="exit" goto DESKTOP
%cmd_in%
echo.
goto term_loop

:SYSINFO
cls
echo === KGB SYSTEM INFO ===
echo.
echo Operacios rendszer: KGB Mini-Windows v1.0
echo Alap rendszer: Windows 7 Core
echo Szamitogep neve: %computername%
echo Logikai processzorok szama: %NUMBER_OF_PROCESSORS%
echo.
pause
goto DESKTOP