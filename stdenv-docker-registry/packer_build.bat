cd %~dp0
set PATH=%~dp0..\bin;%PATH%
packer.exe validate packer.json
packer.exe build    -on-error=ask packer.json
pause
