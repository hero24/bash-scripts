#!/bin/bash
# wifi-t100taf.sh : make wifi work on asus transformer t100taf
# author : hero24
# note! this requires debian or debian based system
# note! requires kernel >= 4
# run as root
# requires non-free drivers (non-free repo)
ver=$(uname -r)
if [[ $ver > '4' ]]
then
yes | apt-get install broadcom-sta-dkms
wget https://android.googlesource.com/platform/hardware/broadcom/wlan/+archive/master/bcmdhd/firmware/bcm43341.tar.gz
tar xf bcm43341.tar.gz
mkdir -p /lib/firmware/brcm/
mv fw_bcm43341.bin /lib/firmware/brcm/brcmfmac43340-sdio.bin
mount -t efivarfs efivarfs /sys/firmware/efi/efivars
cp /sys/firmware/efi/efivars/nvram-74b00bd9-805a-4d61-b51f-43268123d113 /lib/firmware/brcm/brcmfmac43340-sdio.txt
rm bcm43341.tar.gz
else echo "Kernel version too low"
fi
