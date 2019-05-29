FROM orbin/x11

RUN apt-get install -y make git wget \
    && git clone https://github.com/AdaCore/gnat_community_install_script.git \
    && cd gnat_community_install_script \
    && wget http://mirrors.cdn.adacore.com/art/5cdffc5409dcd015aaf82626 -O ./gnat-gps-installation \
    && sh install_package.sh ./gnat-gps-installation /opt/GNAT/2019 \
    && apt-get remove -y make git wget \
    && cd .. \
    && rm -rf gnat_community_install_script

CMD [ "/opt/GNAT/2019/bin/gps" ]
