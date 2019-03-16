@echo off

call :filesize *min.jpg
call :filesize houselogos.gif
call :filesize logo_hogwarths.jpg
call :filesize sortinghat.*
call :filesize snitch_button.jpg

goto :end

:filesize
dir %1 | findstr File > filesize.temp
set /p filesizestr=<filesize.temp
set filesize=%filesizestr:~32,7%
echo %filesize% bytes - %1
exit /B


:end