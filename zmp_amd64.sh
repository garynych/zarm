#!/bin/bash
cd /opt && wget https://github.com/sybdata/zarm/blob/master/ZMP/2.1.26/zmp-linux-amd64
chmod +x zmp-linux-amd64
curl -sSL https://raw.githubusercontent.com/sybdata/zarm/master/zmp64.service > /etc/systemd/system/zmp64.service
systemctl daemon-reload
systemctl enable ZMediaProxy
systemctl start ZMediaProxy
