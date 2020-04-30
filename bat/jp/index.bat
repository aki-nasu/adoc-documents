@echo off
SET TARGET=index
SET STYLE='stylesheet=..\..\css\asciidoctor-custom-index.css'
call asciidoctor -a %REVNUM% -a %STYLE% -a "doctime=" -a "docdate=&#169;SAMPLE_SAMPLE "%COPYLIGHT% %LANG_MODE%\%TARGET%\index.adoc

del %LANG_MODE%\%TARGET%\docinfo.html
move /Y %LANG_MODE%\%TARGET%\*.html %EXEC_MODE%\%LANG_MODE%\

exit