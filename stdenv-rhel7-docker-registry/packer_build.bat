@echo off
cd %~dp0
set PATH=%~dp0..\bin;%PATH%
if "%RHEL_USER%" == "" (
  set /p RHEL_USER=RHEL subscription username:
)
if "%RHEL_PASSWORD%" == "" (
  set /p RHEL_PASSWORD=RHEL subscription password:
)
echo username=%RHEL_USER%
echo password=%RHEL_PASSWORD%
packer.exe validate packer.json
packer.exe build    -on-error=cleanup packer.json
pause
