from ubuntu:trusty
RUN apt-get update -q && \
    apt-get install -y -q --no-install-recommends \
        cowsay \
        make
RUN ln -s /usr/games/cowsay /usr/bin

COPY . /test
WORKDIR /test
CMD ./test.sh
