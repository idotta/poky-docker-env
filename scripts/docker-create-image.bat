echo off

REM Create a volume as follows
docker volume create --name myvolume
docker run -it --rm -v myvolume:/workdir busybox chown -R 1000:1000 /workdir

REM Create a samba container that will allow you to see the files in the volume
docker create -t -p 445:445 --name samba -v myvolume:/workdir crops/samba

REM Start the samba container
docker start samba

REM Get the ip address used to talk to samba and open /workdir
docker-machine ip

REM Run poky container
docker run --rm -it -v myvolume:/workdir crops/poky --workdir=/workdir  