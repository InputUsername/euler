@echo off

rem "compile+run" program for euler problems

if "%1"=="" (
	echo NO FILE SPECIFIED
	goto end
)

set a=.\com\inputusername\java\euler\%1
set b=com.inputusername.java.euler.%1

rem Display file
echo.
echo FILE: %a%

rem Compile file
echo.
echo COMPILING: %a%.java
javac %a%.java
echo COMPILED TO: %a%.class

rem Run file
echo.
if exist %a%.class (
	echo RUNNING: %a%.class
	echo.
	echo -----------------
	java -cp . %b%
)
:end
echo.