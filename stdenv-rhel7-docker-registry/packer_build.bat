@echo off
cd %~dp0
set PATH=%~dp0..\bin;%PATH%
rem if "%RHEL_USER%" == "" (
rem   set /p RHEL_USER=RHEL subscription username:
rem )
rem if "%RHEL_PASSWORD%" == "" (
rem   set /p RHEL_PASSWORD=RHEL subscription password:
rem )
rem echo username=%RHEL_USER%
rem echo password=%RHEL_PASSWORD%
packer.exe validate packer.json
packer.exe build    -on-error=cleanup packer.json
pause
