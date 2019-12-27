FROM crops/poky:ubuntu-18.04

VOLUME myvolume:/workdir

WORKDIR /workdir

COPY linux-scripts scripts

RUN mkdir downloads \
    mkdir sstate-cache