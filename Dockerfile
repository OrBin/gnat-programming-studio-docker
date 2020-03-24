FROM orbin/x11

RUN apt-get update \
    && apt-get install -y make git wget \
    && git clone https://github.com/AdaCore/gnat_community_install_script.git \
    && cd gnat_community_install_script \
    && wget "https://community.download.adacore.com/v1/0cd3e2a668332613b522d9612ffa27ef3eb0815b?filename=gnat-community-2019-20190517-x86_64-linux-bin" -O ./gnat-gps-installation \
    && sh install_package.sh ./gnat-gps-installation /opt/GNAT/2019 \
    && apt-get remove -y make git wget \
    && cd .. \
    && rm -rf gnat_community_install_script

CMD [ "/opt/GNAT/2019/bin/gps" ]
