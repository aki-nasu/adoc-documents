@echo off

echo *******************************
echo ���[�J���Ŋm�F���邾���ł���΁A[document-confirm.bat]�����s���Ă��������B
echo �ԈႦ�Ď��s�����ꍇ�́A[Ctrl + c]�ŏ����𒆒f���Ă��������B
echo *******************************

pause

rem defined
SET REVNUM='revnumber=0.0.1'

SET LANG_MODE=jp
SET EXEC_MODE=document-release
SET STYLE='stylesheet=..\..\css\asciidoctor-custom.css'

rem include favicon
copy bat\head\index\docinfo.html %LANG_MODE%\index\
copy bat\head\docinfo.html %LANG_MODE%\change_log\
copy bat\head\docinfo.html %LANG_MODE%\reference\
copy bat\head\docinfo.html %LANG_MODE%\tutorial\

rem images,js
xcopy /Y /E %LANG_MODE%\images %EXEC_MODE%\%LANG_MODE%\images\
xcopy /Y /E %LANG_MODE%\js %EXEC_MODE%\%LANG_MODE%\js\

start bat\%LANG_MODE%\tutorial.bat
start bat\%LANG_MODE%\change_log.bat
start bat\%LANG_MODE%\reference.bat
start bat\%LANG_MODE%\index.bat

del /S %EXEC_MODE%\.gitkeep.
pause
exit