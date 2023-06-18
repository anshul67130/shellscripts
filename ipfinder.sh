#!/bin/bash
if [ "$1" == "" ]
then
echo "Please enter the  ip address"

else 
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep 64 | cut -d " " -f 4 | tr -d ":" &
done
fi
