FROM ubuntu:trusty

RUN apt-get update -q && \
    apt-get install -y -q --no-install-recommends \
        cowsay \
        fortune

RUN ln -s /usr/games/cowsay /usr/bin
RUN ln -s /usr/games/fortune /usr/bin
