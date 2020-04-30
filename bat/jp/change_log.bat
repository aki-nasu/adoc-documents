@echo off
SET TARGET=change_log
call asciidoctor -a %REVNUM% -a %STYLE% -a "doctime=" -a "docdate=&#169;SAMPLE_SAMPLE "%COPYLIGHT% %LANG_MODE%\%TARGET%\*.adoc

start bat\%LANG_MODE%\common.bat

exit