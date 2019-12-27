echo off

REM Create a volume as follows
docker volume create --name myvolume
docker run -it --rm -v myvolume:/workdir busybox chown -R 1000:1000 /workdir

REM Create a samba container that will allow you to see the files in the volume
docker create -t -p 445:445 --name samba -v myvolume:/workdir crops/samba