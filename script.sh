#!/bin/bash

cat <<EOF | sudo tee /etc/systemd/system/saned.service > /dev/null
[Unit]
Description=Scanner Service
Requires=saned.socket
Documentation=man:saned(8)
[Service]
ExecStart=/usr/sbin/saned
User-saned
Group=saned
StandardInput=socket
[Install]
Also-saned.socket

EOF

sudo systemctl daemon-reload

sudo systemctl unmask saned.service
sudo systemctl enable saned.service
sudo systemctl start saned.service
sudo systemctl unmask docker.service
sudo systemctl unmask docker.socket
sudo systemctl unmask
containerd.service


sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo systemctl enable docker.socket
sudo systemctl start docker.socket
