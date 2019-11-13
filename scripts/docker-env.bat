@echo off

set "par1=%~1"
if "%par1%"=="" (
  echo no parameter supplied
  goto :eof
)

:: I suggest using "{path/to/docker}/machine". e.g: "D:/docker/machine"
setx MACHINE_STORAGE_PATH "%par1%"
setx DOCKER_CERT_PATH "%par1%"