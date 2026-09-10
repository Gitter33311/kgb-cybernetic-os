@echo off
:: Szovjet vörös háttér, sárga betûk
color 4e
title KGB Cybernetic OS v3.0

:BOOT
cls
echo ====================================================================
echo   ____  _____ ____    ____  _   _ _   _ _  _ _____ _____ ___ ____ 
echo  / ___^| ____|  _ \  | __ )^| ^| ^| ^| \ ^| ^| ^|/ ^| ____|_   _|_ _/ ___^|
echo ^| ^|   ^|  _^| ^| ^|_) ^| ^|  _ \^| ^| ^| ^|  \^| ^| ' /^|  _|   ^| ^|  ^| ^| ^|    
echo ^| ^|___^| ^|___^|  _ <  ^| ^|_) ^| ^|_^| ^| ^|\  ^| . \^| ^|___  ^| ^|  ^| ^| ^|___ 
echo  \____^|_____^|_^| \_\ ^|____/ \___/^|_^| \_^|_^|\_\_____^| ^|_^| ^|___\____^|
echo ====================================================================
echo.
echo           --- KIBERNETIKUS RENDSZER BETÖLTÉSE ---
echo Rendszerfajlok ellenorzese...
timeout /t 1 >nul
echo KGB titkos hálózati protokollok élesítése...
timeout /t 1 >nul
echo Elvtárs azonosítva. Rendszer kész.
timeout /t 1 >nul

:DESKTOP
cls
echo ====================================================================
echo   KGB CYBERNETIC OS   ^|   Idõ: %time:~0,5%   ^|   Felhasználó: ELVTÁRS
echo ====================================================================
echo.
echo     [1] KGB FILE EXPLORER (Fájlkezelõ)
echo     [2] RED TEXT EDITOR (Mini Notepad)
echo     [3] SYSTEM TERMINAL (Parancssor)
echo     [4] SYSTEM INFO (Rendszerinformáció)
echo     [5] CYBER-GAME (Szovjet Mini-Játék)
echo     [6] SHUTDOWN (Kilépés a rendszerbõl)
echo.
echo ====================================================================
echo.
set /p "task=Valasszon egy alkalmazast (1-6): "

if "%task%"=="1" goto EXPLORER
if "%task%"=="2" goto NOTEPAD
if "%task%"=="3" goto TERMINAL
if "%task%"=="4" goto SYSINFO
if "%task%"=="5" goto GAME
if "%task%"=="6" exit
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
echo Irja be a menteni kivant szöveget (KGB_irat.txt-be menti):
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
echo Operacios rendszer: KGB Cybernetic OS v3.0
echo Alap rendszer: Windows 7 Core
echo Szamitogep neve: %computername%
echo Logikai processzorok szama: %NUMBER_OF_PROCESSORS%
echo.
pause
goto DESKTOP

:GAME
cls
:: Generálunk egy véletlen számot 1 és 50 között
set /a "titkosszam=%random% %% 50 + 1"
set "proba=0"
echo ====================================================================
echo                 SZOVJET CYBER-JÁTÉK: TALÁLD MEG A KÓDOT!
echo ====================================================================
echo A gép gondolt egy számra 1 és 50 között. Találd ki!
echo.

:game_loop
set /p "tipp=Adja meg a tippet: "
set /a "proba+=1"

if %tipp% equ %titkosszam% goto game_win
if %tipp% blt %titkosszam% echo [RENDSZER]: A titkos szám NAGYOBB!
if %tipp% bgt %titkosszam% echo [RENDSZER]: A titkos szám KISEBB!
echo.
goto game_loop

:game_win
echo.
echo ====================================================================
echo   GRATULÁLUNK ELVTÁRS! Kitaláltad a számot (%titkosszam%)!
echo   Próbálkozások száma: %proba%
echo   A Párt büszke Önre!
echo ====================================================================
pause
goto DESKTOP