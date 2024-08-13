#!/bin/sh
#
# Perform basic settings on a known IP camera
#
#
# Set custom upgrade url
#
############fw_setenv upgrade 'https://github.com/OpenIPC/builder/releases/download/latest/gk7205v200_lite_vixand-ivg-g3s-nor.tgz'
#
#
# Set custom majestic settings
#
fw_setenv wlandev atbm603x-generic-usb
fw_setenv sensor sc2239
fw_setenv ethaddr 00:12:33:0b:e6:13
fw_setenv ptz gk7205v200

#cli -s .system.webAdmin disabled
#cli -s .system.staticDir /var/www/majestic
cli -s .nightMode.irCutPin1 8
cli -s .nightMode.irCutPin2 9
#cli -s .nightMode.backlightPin 14
#cli -s .nightMode.lightMonitor true
#cli -s .nightMode.minThreshold 2000
#cli -s .nightMode.maxThreshold 14000
cli -s .audio.speakerPin 40
#cli -s .video0.codec h264
#
#
# Set wlan device and credentials if need
#
#fw_setenv wlanssid Router
#fw_setenv wlanpass 12345678
fw_setenv wlanssid zapad
fw_setenv wlanpass 1967196719
#
adduser viewer -s /bin/false -D -H
echo viewer:123456 | chpasswd
#

exit 0
