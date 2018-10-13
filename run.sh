#! /bin/bash

user=pi
host=192.168.1.16
portNum=7832
remoteDir=/tmp/theMaidTest

ssh $user@$host "mkdir $remoteDir"
scp -r ./* $user@$host:$remoteDir/
ssh $user@$host "python3 $remoteDir/api.py $portNum"
