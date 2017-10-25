cd %~dp0
..\bin\packer.exe validate stdenv-example.json
..\bin\packer.exe build    stdenv-example.json
pause
