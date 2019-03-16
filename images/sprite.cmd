set geo=120x120
set source=*-min.jpg
call :make4x4sprite Gryffindor%source% sprite0.jpg
call :make4x4sprite Slytherin%source% sprite1.jpg
call :make4x4sprite Hufflepuff%source% sprite2.jpg
call :make4x4sprite Ravenclaw%source% sprite3.jpg

set geo=240x240
call :make4x4sprite sprite?.jpg housemembers.jpg
goto :end 

:make4x4sprite
montage -background transparent -geometry %geo% -monitor %1 %2
exit /B

:end
del /q sprite?.jpg