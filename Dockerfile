FROM arm64v8/alpine

ENV ZMP_VERSION=2.1.27

ENV ZMP_HOST=192.168.178.26
ENV ZMP_PORT=8082
ENV ZMP_PLAYLIST=http://immo.date/ero.m3u

RUN mkdir /opt/zmp/ && mkdir /opt/zmp/playlist/ && cd /opt/zmp/ && \
    wget -O zmp-linux-arm64 -P /opt/zmp/ "https://github.com/sybdata/zarm/blob/master/ZMP/$ZMP_VERSION/zmp-linux-arm64?raw=true" && \
    chmod +x /opt/zmp/zmp-linux-arm64

ENTRYPOINT ["/bin/sh" , "-c" , "./opt/zmp/zmp-linux-arm64 --host $ZMP_HOST --port $ZMP_PORT --rosnd --best $ZMP_PLAYLIST"]
