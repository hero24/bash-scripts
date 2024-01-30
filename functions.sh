#!/bin/bash
# 
lsd(){
# list directories by size
        cd ${1:-.}
        du -h -d 1 | sort -k 1,1 -g
}

ldn(){
        # echo out name of directory
        echo ${PWD##*/}
}

loop() {
# infinite loop
        while :
        do
                $@
        done
}

get_mac_from_pci() {
#get mac address by pic bus address
        PCI_ADDR=$1
        cat /sys/bus/pci/devices/$PCI_ADDR/net/$(ls /sys/bus/pci/devices/$PCI_ADDR/net/)/address
}

get_menuentries() {
#get grub menu entries
        export GRUB_CONFIG=`sudo find /boot -name "grub.cfg"`
        grep 'menuentry ' $GRUB_CONFIG | cut -f 2 -d "'" | nl -v 0
}

