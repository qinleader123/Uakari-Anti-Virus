@echo off
color 3f
mode 44,10
title Uakari Anti-Virus

:menu
mode 44,10
cls
echo Uakari Anti-Virus      Version 0.9
echo __________________________________
echo 1) PC Clean-Up
echo 2) Scan For Viruses
echo 3) List Currently Running Programs
echo 4) Exit Uakari Anti-Virus
echo 5) Update Uakari Anti-Virus
echo.

SET INPUT=
SET /P INPUT=Please Select A Number And Then Press Enter:

IF /I '%INPUT%'=='1' GOTO cleaner
IF /I '%INPUT%'=='2' GOTO scanmenu
IF /I '%INPUT%'=='3' GOTO proglist
IF /I '%INPUT%'=='4' GOTO exit
IF /I '%INPUT%'=='5' GOTO update
goto menu

:scanmenu
cls
echo Scan Menu
echo __________________________________
echo 1) Batch File Scan
echo 2) Normal Scan
echo 3) Go Back

SET INPUT=
SET /P INPUT=Please Select A Number And Then Press Enter:

IF /I '%INPUT%'=='1' GOTO scan2
IF /I '%INPUT%'=='2' GOTO scan
IF /I '%INPUT%'=='3' GOTO menu
goto scanmenu

:scan2
cls
echo =====================================
echo [ Uakari Anti-Virus Batch File Scan ]
echo =====================================
echo If There's No Message, You Are Safe.
set /p a=Enter A Batch File To Scan:
for /f %%x in (
'findstr /i /m "virus r.i.p byebye HaHaHa Hacked Hack" %a%.bat'
) do (
if /i %%x equ %a%.bat (
for /f %%z in (
'findstr /i /b /m "tskill del copy shutdown ipconfig ren reg" %a%.bat'
) do (
if /i %%z equ %a%.bat (
cls
echo Virus Detected
del %a%.bat
echo %a%.bat Was Deleted By Uakari Anti-Virus...
pause
goto menu
pause >nul
)
)
)
)
pause >nul

:update
cls
start https://github.com/qinleader123/Uakari-Anti-Virus
goto menu

:proglist
cls
mode 100,40
tasklist
pause
goto menu

:scan
cls
cd C:\Users\%userprofile%\Desktop
IF EXIST virus.bat goto found1
IF EXIST plugincontainer.upd goto found2
IF EXIST virus.exe goto found3
IF EXIST setup.exe goto found4
IF EXIST plugin.exe goto found5

cd C:\Windows\System32
IF EXIST virus.bat goto found1
IF EXIST plugincontainer.upd goto found2
IF EXIST virus.exe goto found3
IF EXIST setup.exe goto found4
IF EXIST plugin.exe goto found5

cd C:\
IF EXIST virus.bat goto found1
IF EXIST plugincontainer.upd goto found2
IF EXIST virus.exe goto found3
IF EXIST setup.exe goto found4
IF EXIST plugin.exe goto found5

cd C:\Windows
IF EXIST virus.bat goto found1
IF EXIST plugincontainer.upd goto found2
IF EXIST virus.exe goto found3
IF EXIST setup.exe goto found4
IF EXIST plugin.exe goto found5

cd D:\
IF EXIST virus.bat goto found1
IF EXIST plugincontainer.upd goto found2
IF EXIST virus.exe goto found3
IF EXIST setup.exe goto found4
IF EXIST plugin.exe goto found5

cd Z:\
IF EXIST virus.bat goto found1
IF EXIST plugincontainer.upd goto found2
IF EXIST virus.exe goto found3
IF EXIST setup.exe goto found4
IF EXIST plugin.exe goto found5

cd F:\
IF EXIST virus.bat goto found1
IF EXIST plugincontainer.upd goto found2
IF EXIST virus.exe goto found3
IF EXIST setup.exe goto found4
IF EXIST plugin.exe goto found5

cd E:\
IF EXIST virus.bat goto found1
IF EXIST plugincontainer.upd goto found2
IF EXIST virus.exe goto found3
IF EXIST setup.exe goto found4
IF EXIST plugin.exe goto found5

cd G:\
IF EXIST virus.bat goto found1
IF EXIST plugincontainer.upd goto found2
IF EXIST virus.exe goto found3
IF EXIST setup.exe goto found4
IF EXIST plugin.exe goto found5

cd H:\
IF EXIST virus.bat goto found1
IF EXIST plugincontainer.upd goto found2
IF EXIST virus.exe goto found3
IF EXIST setup.exe goto found4
IF EXIST plugin.exe goto found5

cd I:\
IF EXIST virus.bat goto found1
IF EXIST plugincontainer.upd goto found2
IF EXIST virus.exe goto found3
IF EXIST setup.exe goto found4
IF EXIST plugin.exe goto found5

cls
echo Scan Is Complete!
echo ____________________________________
echo 0 Viruses Were Found
echo.
pause
goto menu

REM -------------------------FOUND 1-------------------------------

:found1
cls
echo This File (virus.bat) Might Contain A Virus
echo Do You Want To Delete This File?
echo ____________________________________
echo 1) YES
echo 2) NO

SET INPUT=
SET /P INPUT=Please Select A Number And Then Press Enter:

IF /I '%INPUT%'=='1' GOTO yes1
IF /I '%INPUT%'=='2' GOTO no1

:no1
goto menu

:yes1
cls
echo Deleting File...
del virus.bat
pause
goto menu

REM -------------------------FOUND 2-------------------------------

:found2
cls
echo This File (plugincontainer.upd) Might Contain A Virus
echo Do You Want To Delete This File?
echo ____________________________________
echo 1) YES
echo 2) NO

SET INPUT=
SET /P INPUT=Please Select A Number And Then Press Enter:

IF /I '%INPUT%'=='1' GOTO yes2
IF /I '%INPUT%'=='2' GOTO no2

:no2
goto menu

:yes2
cls
echo Deleting File...
del plugincontainer.upd
pause
goto menu

REM -------------------------FOUND 3-------------------------------

:found3
cls
echo This File (virus.exe) Might Contain A Virus
echo Do You Want To Delete This File?
echo ____________________________________
echo 1) YES
echo 2) NO

SET INPUT=
SET /P INPUT=Please Select A Number And Then Press Enter:

IF /I '%INPUT%'=='1' GOTO yes3
IF /I '%INPUT%'=='2' GOTO no3

:no3
goto menu

:yes3
cls
echo Deleting File...
del virus.exe
pause
goto menu

REM -------------------------FOUND 4-------------------------------

:found4
cls
echo This File (setup.exe) Might Contain A Virus
echo Do You Want To Delete This File?
echo ____________________________________
echo 1) YES
echo 2) NO

SET INPUT=
SET /P INPUT=Please Select A Number And Then Press Enter:

IF /I '%INPUT%'=='1' GOTO yes4
IF /I '%INPUT%'=='2' GOTO no4

:no4
goto menu

:yes4
cls
echo Deleting File...
del setup.exe
pause
goto menu

REM -------------------------FOUND 5-------------------------------

:found5
cls
echo This File (plugin.exe) Might Contain A Virus
echo Do You Want To Delete This File?
echo ____________________________________
echo 1) YES
echo 2) NO

SET INPUT=
SET /P INPUT=Please Select A Number And Then Press Enter:

IF /I '%INPUT%'=='1' GOTO yes5
IF /I '%INPUT%'=='2' GOTO no5

:no5
goto menu

:yes5
cls
echo Deleting File...
del plugin.exe
pause
goto menu

:exit
exit

:cleaner
cls
echo.
echo Cleaning System Junk Files, Please Wait
REM displays a line of text

del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q ?%userprofile%\Local Settings\Temporary Internet Files\*.*?
del /f /s /q ?%userprofile%\Local Settings\Temp\*.*?
del /f /s /q ?%userprofile%\recent\*.*?
deltree /y c:windowstempor~1
deltree /y c:windowstemp
deltree /y c:windowstmp
deltree /y c:windowsff*.tmp
deltree /y c:windowshistory
deltree /y c:windowscookies
deltree /y c:windowsrecent
deltree /y c:windowsspoolprinters

REM /f: force deleting of read-only files
REM /s: Delete specified files from all subdirectories.
REM /q: Quiet mode, do not ask if ok to delete on global wildcard
REM %systemdrive%: drive upon which the system folder was placed
REM %windir%: a regular variable and is defined in the variable store as %SystemRoot%. 
REM %userprofile%: variable to find the directory structure owned by the user running the process

cls
echo Cleaning of junk files is finished!
REM displays a line of text

echo. & pause
REM echo.: Displays a single blank line on the screen.
REM pause: This will stop execution of the batch file until someone presses "any key"
goto menu
