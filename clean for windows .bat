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
echo 正在清除系統垃圾文件，請稍等 ...... 
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
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*" 
del /f /s /q "%userprofile%\Local Settings\Temp\*.*" 
del /f /s /q "%userprofile%\recent\*.*" 
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
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
del /f /s /q "%userprofile%\recent\*.*"
DEL /S /F /Q "%systemroot%\Temp\*.*"
DEL /S /F /Q "%AllUsersProfile%\「開始」功能表\程式集\Windows Messenger.lnk"
RD /S /Q %windir%\temp & md %windir%\temp
RD /S /Q "%userprofile%\Local Settings\Temp"
MD "%userprofile%\Local Settings\Temp"
RD /S /Q "%systemdrive%\Program Files\Temp"
MD "%systemdrive%\Program Files\Temp"
RD /S /Q "%systemdrive%\d"
echo清空IE臨時文件目錄... 
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*" 
del /f /s /q "%userprofile%\Local Settings\Temp\* .*"
echo正在清除系統臨時文件*.tmp *._tmp *.log *.chk *.old ，請稍等... 
del /f /s /q %systemdrive%\*.tmp 
del /f /s /q % systemdrive%\*._mp 
rem del /f /s /q %systemdrive%\*.log 
del /f /s /q %systemdrive%\*.gid 
del /f /s /q %systemdrive%\*.chk 
del /f /s /q %systemdrive%\*.old
echo清空垃圾箱，備份文件和預緩存腳本... 
del /f /s /q %systemdrive%\recycled\*.* 
del /f /s /q %windir%\*.bak 
del /f /s / q %windir%\prefetch\*.* 
rd /s /q %windir%\temp & md %windir%\temp
rem del /f /q %userprofile%\COOKIES s\*.* 
rem del /f /q %userprofile%\recent\*.*
echo清理系統無用文件... 
%windir%\system32\sfc.exe /purgecache
echo優化預讀信息... 
%windir%\system32\defrag.exe %systemdrive% -b
echo 清除系統垃圾檔案完成！
echo 按任意見返回簡易選單
pause>nul
goto menuEZ
:Esc
exit
:menuPro
