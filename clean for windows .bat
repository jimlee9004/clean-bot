@echo off
echo 正在清除系統垃圾檔案中，請稍候……
echo Dream Can 科技創意綜合研究室 https://www.facebook.com/Dream-Can-250915808698393/
echo windows 7 系統垃圾清理
echo 清理垃圾文件，速度由電腦文件大小而定。在沒看到結尾信息時 
echo 請勿關閉本窗口。 
echo 正在清除系統垃圾文件，請稍後...... 
echo 刪除補丁備份目錄 
RD %windir%\$hf_mig$ /Q /S 
echo 把補丁卸載文件夾的名字保存成2950800.txt 
dir %windir%\$NtUninstall* /a:d /b >%windir%\2950800.txt 
echo 從2950800.txt中讀取文件夾列表並且刪除文件夾 
for /f %%i in (%windir%\2950800.txt) do rd %windir%\%%i /s /q 
echo 刪除2950800.txt 
del %windir%\2950800.txt /f /q 
echo 刪除補丁安裝記錄內容（下面的del /f /s /q %systemdrive%\*.log已經包含刪除此類文件） 
del %windir%\KB*.log /f /q 
echo 刪除系統盤目錄下臨時文件 
del /f /s /q %systemdrive%\*.tmp 
echo 刪除系統盤目錄下臨時文件 
del /f /s /q %systemdrive%\*._mp 
echo 刪除系統盤目錄下日誌文件 
del /f /s /q %systemdrive%\*.log 
echo 刪除系統盤目錄下GID文件(屬於臨時文件，具體作用不詳) 
del /f /s /q %systemdrive%\*.gid 
echo 刪除系統目錄下scandisk（磁盤掃描）留下的無用文件 
del /f /s /q %systemdrive%\*.chk 
echo 刪除系統目錄下old文件 
del /f /s /q %systemdrive%\*.old 
echo 刪除回收站的無用文件 
del /f /s /q %systemdrive%\recycled\*.* 
echo 刪除系統目錄下備份文件 
del /f /s /q %windir%\*.bak 
echo 刪除應用程序臨時文件 
del /f /s /q %windir%\prefetch\*.* 
echo 刪除系統維護等操作產生的臨時文件 
rd /s /q %windir%\temp & md %windir%\temp 
echo 刪除當前用戶的COOKIE（IE） 
del /f /q %userprofile%\cookies\*.* 
echo 刪除internet臨時文件 
del /f /s /q "%userprofile%\local settings\temporary internet files\*.*" 
echo 刪除當前用戶日常操作臨時文件 
del /f /s /q "%userprofile%\local settings\temp\*.*" 
echo 刪除訪問記錄（開始菜單中的文檔里面的東西） 
del /f /s /q "%userprofile%\recent\*.*" 
echo windows XP 系統垃圾清理
echo 正在清除系統垃圾文件，請稍等...... 
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
echo 正在進行通用清除
del /f /s /q %systemdrive%*.tmp
del /f /s /q %systemdrive%*._mp
del /f /s /q %systemdrive%*.log
del /f /s /q %systemdrive%*.gid
del /f /s /q %systemdrive%*.chk
del /f /s /q %systemdrive%*.old
del /f /s /q %systemdrive%recycled*.*
del /f /s /q %windir%*.bak
del /f /s /q %windir%prefetch*.*
del /f /q %userprofile%cookies*.*
del /f /q %userprofile%recent*.*
del /f /s /q "%systemroot%Temp*.*"
rd /s /q  %windir%temp & md %windir%temp
rd /s /q %windir%temp & md %windir%temp
rd /s /q "%userprofile%Local SettingsTemp"
del /f /s /q "%AllUsersProfile%「開始」功能表程式集Windows Messenger.lnk"
del /f /s /q "%userprofile%Local SettingsTemporary Internet Files*.*"
del /f /s /q "%userprofile%Local SettingsTemp*.*"
del /f /s /q "%userprofile%recent*.*"
md  "%userprofile%Local SettingsTemp"
rd /s /q  "%systemdrive%Program FilesTemp"
md  "%systemdrive%Program FilesTemp"
rd /s /q "%systemdrive%d"
echo 清除系統垃圾檔案完成！！
echo. & pause
