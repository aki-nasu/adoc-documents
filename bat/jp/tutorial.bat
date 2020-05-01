@echo off
SET TARGET=tutorial
call asciidoctor -a %REVNUM% -a %STYLE% -a "doctime=" %LANG_MODE%\%TARGET%\tutorial.adoc

start bat\%LANG_MODE%\common.bat

exit
