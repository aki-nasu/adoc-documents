@echo off

del %LANG_MODE%\%TARGET%\docinfo.html
move /Y %LANG_MODE%\%TARGET%\*.html %EXEC_MODE%\%LANG_MODE%\%TARGET%\
xcopy /Y /S /E %LANG_MODE%\%TARGET%\images %EXEC_MODE%\%LANG_MODE%\%TARGET%\images\

exit