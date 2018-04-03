set PATH=%~dp0..\bin;%PATH%
cd %~dp0
packer build -on-error=ask packer.json
