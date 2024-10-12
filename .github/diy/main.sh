#!/bin/bash

git clone --depth 1 https://github.com/vb1980/padavan-4.4 && mv padavan-4.4/* . && rm -rf padavan-4.4

# r3g config
sed -i 's/CONFIG_FIRMWARE_ENABLE_SWAP=n/CONFIG_FIRMWARE_ENABLE_SWAP=y/g' trunk/configs/templates/MI-R3G.config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_QOS=n/CONFIG_FIRMWARE_INCLUDE_QOS=y/g' trunk/configs/templates/MI-R3G.config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_NTFS_3G=n/CONFIG_FIRMWARE_INCLUDE_NTFS_3G=y/g' trunk/configs/templates/MI-R3G.config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_LPRD=y/CONFIG_FIRMWARE_INCLUDE_LPRD=n/g' trunk/configs/templates/MI-R3G.config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_U2EC=y/CONFIG_FIRMWARE_INCLUDE_U2EC=n/g' trunk/configs/templates/MI-R3G.config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_HDPARM=y/CONFIG_FIRMWARE_INCLUDE_HDPARM=n/g' trunk/configs/templates/MI-R3G.config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_OPENVPN=y/CONFIG_FIRMWARE_INCLUDE_OPENVPN=n/g' trunk/configs/templates/MI-R3G.config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_FFMPEG_NEW=y/CONFIG_FIRMWARE_INCLUDE_FFMPEG_NEW=y/g' trunk/configs/templates/MI-R3G.config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_TTYD=n/CONFIG_FIRMWARE_INCLUDE_TTYD=y/g' trunk/configs/templates/MI-R3G.config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_MSD_LITE=y/CONFIG_FIRMWARE_INCLUDE_MSD_LITE=n/g' trunk/configs/templates/MI-R3G.config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_HTOP=n/CONFIG_FIRMWARE_INCLUDE_HTOP=y/g' trunk/configs/templates/MI-R3G.config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_NANO=n/CONFIG_FIRMWARE_INCLUDE_NANO=y/g' trunk/configs/templates/MI-R3G.config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_IPERF3=n/CONFIG_FIRMWARE_INCLUDE_IPERF3=y/g' trunk/configs/templates/MI-R3G.config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS=y/CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS=n/g' trunk/configs/templates/MI-R3G.config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_XRAY=y/CONFIG_FIRMWARE_INCLUDE_XRAY=n/g' trunk/configs/templates/MI-R3G.config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_TROJAN=y/CONFIG_FIRMWARE_INCLUDE_TROJAN=n/g' trunk/configs/templates/MI-R3G.config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_ZEROTIER=n/CONFIG_FIRMWARE_INCLUDE_ZEROTIER=y/g' trunk/configs/templates/MI-R3G.config
sed -i 's/CONFIG_FIRMWARE_INCLUDE_OC=n/CONFIG_FIRMWARE_INCLUDE_OC=y/g' trunk/configs/templates/MI-R3G.config

exit 0
