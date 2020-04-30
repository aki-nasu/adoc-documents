@echo off
SET TARGET=tutorial
call asciidoctor -a %REVNUM% -a %STYLE% -a "doctime=" -a "docdate=&#169;SAMPLE_SAMPLE "%COPYLIGHT% %LANG_MODE%\%TARGET%\tutorial.adoc

start bat\%LANG_MODE%\common.bat

exit
