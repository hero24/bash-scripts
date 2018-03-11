#!/bin/bash
# requires remote-host and username as parameters
HOST=$1
USERNAME=$2
cd ~/.ssh/
ssh-keygen -f $USERNAME@$HOST
ssh-copy-id $USERNAME@$HOST
ssh $USERNAME@$HOST
echo "HOST $HOST" >> ~/.ssh/config
echo "USER $USERNAME" >> ~/.ssh/config
