FROM steeb/steamcmd-32
MAINTAINER Stefan Ebert <stefan-docker@ebert.li>

USER steam
WORKDIR /steam/
RUN while :;\
      do ./steamcmd.sh +login anonymous +force_install_dir cs16 +app_update 90 -beta beta +quit | tee /tmp/steamcmd.log;\
      if [ "$(cat /tmp/steamcmd.log | tail -n 9 | sha1sum | cut -d\  -f1)" = "e7840d7e1cecd6b41ce62b91670f3e9e2d187a3c" ];\
        then break;\
      fi;\
    done;\
    rm /tmp/steamcmd.log
WORKDIR /steam/cs16/
#game, ping; tcon; hltv; vac
EXPOSE 27015/udp 27015/tcp 27020/udp 26900/udp
ENTRYPOINT ["./hlds_run", "-game cstrike"]
CMD ["+sv_lan 1", "+map de_dust"] 
