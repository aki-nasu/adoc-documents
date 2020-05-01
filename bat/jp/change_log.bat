@echo off
SET TARGET=change_log
call asciidoctor -a %REVNUM% -a %STYLE% -a "doctime=" %LANG_MODE%\%TARGET%\*.adoc

start bat\%LANG_MODE%\common.bat

exit