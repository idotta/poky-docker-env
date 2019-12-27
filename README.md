# poky-docker-env
A complete environment to develop with yocto project using docker toolbox and windows

## Install Oracle VirtualBox
Download and install latest Oracle VirtualBox
https://www.virtualbox.org/

## Install docker toolbox
Download and install latest DockerToolbox. Don't install the VirtualBox edition included.
https://github.com/docker/toolbox/releases

Don't start the Docker Quickstart Terminal yet!

## Set environment variables
If you don't set the environment variables for docker, everything will be put in a default "C:/Users/{user}/.docker". Use the script docker-env.bat (with the new path as a parameter, e.g: "D:/docker/machine") if you want to change that. Be sure to create the new path, if you choose this option.

## New docker machine
Start Docker Quickstart Terminal. It will create a default machine, which will be deleted now. Use the new-docker-machine.bat script file to delete it and create a new default (recommended disk size is at least 50000).
Script usage:./new-docker-default.bat [memory cpus diskspace]

## New docker image
Now you can finally build the docker image provided in this repository's Dockerfile. The image will run as a crops/poky-container ready to build poky distros. This part is a simplification of the process that you can find in crops/poky repository. To build the image go to the root directory of this repository using a docker terminal and run scripts/build-image.bat.

## Run
Now just run scripts/run-containers.bat and the samba container will start, the machine-ip will be shown so you can access your volume through file explorer and the poky-env container will run.

### Accessing workdir
Use the file explorer with the docker-machine ip, e.g: "\\192.168.99.100\workdir". The default user is root, no password.
