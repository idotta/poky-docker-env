@echo off

REM Start the samba container
docker start samba

REM Get the ip address used to talk to samba and open /workdir
docker-machine ip

REM Run poky container
docker run --rm -it -v myvolume:/workdir idotta/poky-env