#!/bin/bash


mkdir /etc/maillog/
cp maillog.conf /etc/maillog/
cp pattern.xml /etc/maillog/
cp maillog.py /usr/sbin/


if [ -f /etc/redhat-release ]; then
   cp maillog.service /usr/lib/systemd/system/
fi

if [ -f /etc/lsb-release ]; then
  cp maillog.service /lib/systemd/system/
fi
systemctl daemon-reload
systemctl enable maillog.service




echo "Please, you have to configure /etc/maillog/maillog.conf"
echo "to run:  systemctl start maillog.service"


