#!/bin/bash
# "Što god tebi napišem pocepam i obrišem
# Al ti moraš znati" ~ Tisina, Bajaga i Instruktori
# requires remote-host and username as parameters
HOST=$1
USERNAME=$2
cd ~/.ssh/
ssh-keygen -f $USERNAME@$HOST
ssh-copy-id $USERNAME@$HOST
ssh $USERNAME@$HOST
echo "HOST $HOST" >> ~/.ssh/config
echo "USER $USERNAME" >> ~/.ssh/config
