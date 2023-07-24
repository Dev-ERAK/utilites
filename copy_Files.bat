Rem The batch file which take an filepath having list of files having relative or full path and also takes source fixed path and destination fixed path. And the file from source to destination.
@echo off 

set /p "fileListPath= Enter the file Path:"
set /p "sourcePath= Enter the Source Path:"
set /p "desPath= Enter the Destination Path:"

set /A i=0

for /F "usebackq delims=" %%a in ("%fileListPath%") do (
Rem set /A i+=1
call echo copy /y "%sourcePath%%%a" "%desPath%%%a" >> log.txt 2>&1
call copy /y "%sourcePath%%%a" "%desPath%%%a" >> log.txt 2>&1
Rem call set n=%%i%%
)

Rem for /L %%i in (1,1,%n%) do call echo %%array[%%i]%%

Rem for /f "tokens=* delims=" %%x in (fileList.txt) DO echo %%x


if [%1] == [] ( 
   echo input value not provided 
   goto stop 
) else ( 
   echo "Valid value"     
)  
:stop 
pause 