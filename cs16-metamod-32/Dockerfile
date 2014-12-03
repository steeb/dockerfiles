FROM steeb/cs16-32
MAINTAINER Stefan Ebert <stefan-docker@ebert.li>

USER root
RUN apt-get update && apt-get install -y unzip
USER steam
WORKDIR /steam/cs16/cstrike
RUN wget -O /tmp/metamod.zip "http://sourcemod.gameconnect.net/files/metamod-1.21.1-am.zip" && unzip /tmp/metamod.zip && bash -c "rm addons/metamod/dlls/metamod.{dylib,dll} /tmp/metamod.zip"
RUN sed -i "s|dlls/cs.so|addons/metamod/dlls/metamod.so|g" liblist.gam
RUN touch addons/metamod/plugins.ini
WORKDIR /steam/cs16/
