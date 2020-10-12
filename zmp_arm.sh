#!/bin/bash
cd /opt && wget https://github.com/sybdata/zarm/blob/master/ZMP/2.1.26/zmp-linux-arm7?raw=true
chmod +x zmp-linux-arm7
curl -sSL https://raw.githubusercontent.com/sybdata/zarm/master/zmp7.service > /etc/systemd/system/zmp7.service
systemctl daemon-reload
systemctl enable ZMediaProxy
systemctl start ZMediaProxy
