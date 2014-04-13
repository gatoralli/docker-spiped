FROM ubuntu:13.10

RUN apt-get update
RUN apt-get install -yq build-essential libssl-dev openssh-server

# Spiped
ADD spiped-1.3.1 /spiped
RUN cd /spiped && make install

RUN apt-get clean

VOLUME /spiped/key/
WORKDIR /spiped/key/

EXPOSE 8000

ENTRYPOINT ["spiped"]
