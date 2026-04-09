@echo off
:: This is a comment - Hello World in Batch
echo Hello, World!
pause

:: HelloWord.bat


:: Simply demo
@echo off
:: Backup files from one folder to another

set source=C:\path\to\source\*.txt
set destination=D:\backup\

echo Backing up files...
copy %source% %destination%

echo Backup complete!
pause