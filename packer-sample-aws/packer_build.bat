cd %~dp0
set PATH=%~dp0..\bin;%PATH%
packer.exe validate stdenv-example-aws.json
packer.exe build    stdenv-example-aws.json
pause
