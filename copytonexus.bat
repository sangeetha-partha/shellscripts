rmdir /s /Q C:\Users\1972001\Desktop\Project\nexusupload
cd C:\Users\1972001\Desktop\Project

mkdir nexusupload

copy C:\Users\1972001\Desktop\Project\MEDICAL\MEDICAL\bin\Release\MEDICAL.exe C:\Users\1972001\Desktop\Project\nexusupload

cd C:\Users\1972001\Desktop\Project\nexusupload
ren "MEDICAL.exe" "MEDICAL_%date:/=-%%time::=-%.exe"
setlocal enableextensions enabledelayedexpansion

for %%f in (*.*) do (
set ARG=%%~nxf
rename "%%f" !ARG: =!
)

for /f "delims=" %%i in ('dir /b /a-d "C:\Users\1972001\Desktop\Project\nexusupload\*.exe"') do set "result=%%i"
echo %result%

set exe = ".exe"
curl -v -u admin:welcome@123 --upload-file %cd%\%result%%exe% http://localhost:8081/repository/Exe_repo/

