@echo off

REM Usage: new-docker-default <memory> <cpus> <disk space> 

set "memory=%~1"
set "cpu=%~2"
set "disk=%~3"
if "%memory%"=="" (
  echo no memory parameter supplied, setting memory to 4096
  set memory = 4096
)
if "%cpu%"=="" (
  echo no cpu count parameter supplied, setting cpu count to 1
  set cpu = 1
)
if "%disk%"=="" (
  echo no disk size parameter supplied, setting disk size to 50000
  set disk = 50000
)

REM echo %memory % %disk % %cpu %

docker-machine stop default
docker-machine rm default
docker-machine create -d virtualbox --virtualbox-memory=%memory% --virtualbox-cpu-count=%cpu% --virtualbox-disk-size=%disk% default
docker-machine start default