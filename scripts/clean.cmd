@echo off

:: Delete temp files
del /q /f /s %temp%\*
del /q /f /s C:\Windows\temp\*

::Empty recycel bin
rd /q /s %systemdrive%\$Recycle.bin

::Run defragmentation
defrag /c /a /u

::Run disk cleanup on all drivers.
cleanmgr /sagerun:n

pause