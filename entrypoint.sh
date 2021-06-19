#!/bin/bash

echo "Starting hostapd"
echo "initializing configuration..."
if [ ! -f "/hostapd/conf/hostapd.conf" ] ; then
  echo "No hostapd configuration"
  echo "[WARN] Using default hostapd.conf"
  cp /hostapd/conf/hostapd.conf.default /hostapd/conf/hostapd.conf
  cat /hostapd/conf/hostapd.conf
else
  echo "configuration file has been found at /hostapd/conf/hostapd.conf"
fi

exec /usr/sbin/hostapd -d /hostapd/conf/hostapd.conf 
