
#!/bin/bash
# Pings all machines on given subnetwork 
# eg. (123.145.231.) through given iterface
# and output only the ones alive
#
# "Holding onto anger is like drinking poison and expecting the other person to die."
# ~ Buddha
#
if [ "$1" == "" ] || [ "$2" == "" ]
then
        echo "Missing params: ip_subnet interface"
else
        for x in `seq 1 254`
        do
                ping -c 1 $1.$x -I $2 | grep "64 bytes"
        done
fi
# Author: hero24
