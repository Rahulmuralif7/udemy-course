#!/bin/bash
Host="google.com"
ping -c 1 $Host
if [ "$?" -ne "0" ]
then
 echo "$Host is unreachable."
 exit 1
fi
 exit 0
