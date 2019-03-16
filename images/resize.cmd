set size=120
call :resizeHouseImages Gryffindor
call :resizeHouseImages Slytherin
call :resizeHouseImages Hufflepuff
call :resizeHouseImages Ravenclaw

:resizeHouseImages
copy ..\build\images\%1_*.jpg
mogrify -resize %size%x%size% %1_*.jpg
exit /B

:end