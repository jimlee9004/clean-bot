@echo off
set TempFile_Name=%SystemRoot%\System32\BatTestUACin_SysRt%Random%.batemp
( echo "BAT Test UAC in Temp" >%TempFile_Name% ) 1>nul 2>nul
if exist %TempFile_Name% (
del %TempFile_Name% 1>nul 2>nul
GOTO menuEZ
) else (
GOTO admin
)
:menuEZ
CLS
COLOR 0a
MODE con: COLS=77 LINES=36
echo 歡迎使用 Windows小工具
echo 由Dream Can科技創意綜合研究室製作
echo =============================================================================
echo 請依照您的需求執行以下功能
echo 1) 系統清理
echo 2) 結束
echo 3) 結束
echo 4) 進入進階模式
set /p a=.                  請輸入編號並按下Enter（例如1）：
if %a%==1 goto clean
if %a%==2 goto Esc
if %a%==3 goto Esc
if %a%==4 goto menuPro
:clean
del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
del c:\WIN386.SWP
cls 
