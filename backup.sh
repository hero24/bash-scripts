#!/bin/sh
# backup.sh : hero24
# Why join the navy if you can be a pirate? ~ Steve Jobs
while read -p "File to backup: " file
do
if [[ -f "$file" ]]
then
cp $file $file.bak && echo "Done"
else
echo "File not found"
fi
done
