call :t T1030-800W
goto :eof

:t
gawk -v FILENAME=%1 -f t.awk <triac >%1.asy
