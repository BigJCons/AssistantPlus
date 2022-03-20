@echo off
cls

SET f_list=f_list.tmp

for /F "usebackq tokens=* delims=" %%i in ("%f_list%") Do Set var=%%i

echo %var%
pause

;winscp.exe /console /script=Load_Update.scp /log=lastsess.log

WinSCP /log=WinSCP.log /logsize=1*10M -transfer=binary /command ^
  "option echo on" ^
  "open ftp://pvv:Dctjnkbxyj!@consreg.tsk.ru:21 -passive" ^
  "get -neweronly %var% C:\Temp\"

::pause
