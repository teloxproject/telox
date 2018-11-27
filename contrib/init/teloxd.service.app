[Unit]
Description=TELOX's distributed currency daemon
After=network.target

[Service]
User=telox
Group=telox

Type=forking
PIDFile=/var/lib/teloxd/teloxd.pid

ExecStart=/usr/bin/teloxd -daemon -pid=/var/lib/teloxd/teloxd.pid \
          -conf=/etc/telox/telox.conf -datadir=/var/lib/teloxd

ExecStop=-/usr/bin/telox-cli -conf=/etc/telox/telox.conf \
         -datadir=/var/lib/teloxd stop

Restart=always
PrivateTmp=true
TimeoutStopSec=60s
TimeoutStartSec=2s
StartLimitInterval=120s
StartLimitBurst=5

[Install]
WantedBy=multi-user.target
