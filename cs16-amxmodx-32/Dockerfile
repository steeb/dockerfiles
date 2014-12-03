FROM steeb/cs16-metamod-32
MAINTAINER Stefan Ebert <stefan-docker@ebert.li>

WORKDIR /steam/cs16/cstrike
RUN wget -O- "http://sourcemod.gameconnect.net/files/amxmodx-1.8.2-base-linux.tar.gz" | tar xz
RUN wget -O- "http://sourcemod.gameconnect.net/files/amxmodx-1.8.2-cstrike-linux.tar.gz" | tar xz
RUN echo "linux addons/amxmodx/dlls/amxmodx_mm_i386.so" > addons/metamod/plugins.ini
WORKDIR /steam/cs16/
ADD entrypoint_add_admin.sh /steam/cs16/entrypoint_add_admin.sh
ENTRYPOINT ["bash", "./entrypoint_add_admin.sh"]
