# poky-docker-env
A complete environment to develop with yocto project using docker toolbox and windows

# Install Oracle VirtualBox
Download and install latest Oracle VirtualBox
https://www.virtualbox.org/

# Install docker toolbox
Download and install latest DockerToolbox. Don't install the VirtualBox edition included.
https://github.com/docker/toolbox/releases

Don't start the Docker Quickstart Terminal!

# Set environment variables
If you don't set the environment variables for docker, everything will be put in a default "C:/Users/{user}/.docker". Use the script docker-env.bat (with the new path as a parameter, e.g: "D:/docker/machine") if you want to change that. Be sure to create the new path, if you choose this option.

# New docker machine
Start Docker Quickstart Terminal. It will create a default machine, which will be deleted now. Use the new-docker-machine.bat script file to delete it and create a new default (recommended disk size is at least 50000).
Script usage:./new-docker-default.bat <memory> <cpus> <diskspace>

# New docker image
Now you can finally run the docker image provided in this repository's Dockerfile. It will create a crops/poky-container ready to build poky distros. This part is a simplification of the process that you can finc in crops/poky repository
