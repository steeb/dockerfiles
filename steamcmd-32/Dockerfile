FROM steeb/steamos-32
MAINTAINER Stefan Ebert <stefan-docker@ebert.li>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y wget
RUN useradd -m -r -N -d /steam steam
USER steam
WORKDIR /steam/
RUN wget http://media.steampowered.com/installer/steamcmd_linux.tar.gz -O- | tar xz
RUN ./steamcmd.sh +quit
RUN mkdir -p /steam/.steam/sdk32 && ln -s /steam/linux32/steamclient.so /steam/.steam/sdk32/
