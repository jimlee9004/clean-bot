@echo off
set TempFile_Name=%SystemRoot%\System32\BatTestUACin_SysRt%Random%.batemp
( echo "BAT Test UAC in Temp" >%TempFile_Name% ) 1>nul 2>nul
if exist %TempFile_Name% (
del %TempFile_Name% 1>nul 2>nul
GOTO menu
) else (
GOTO admin
)

:menu
CLS
COLOR 0a
MODE con: COLS=77 LINES=36
echo 歡迎使用 Windows小工具
echo 由Dream Can科技創意綜合研究室製作
echo =============================================================================
echo 請依照您的需求執行以下功能
echo A) 系統清理
echo B) 
echo C)
echo D) 進入進階模式
