#!/bin/bash

sleep 240

while true ; do
   if ifconfig wlan0 | grep -q "inet addr:" ; then
      sleep 120
   else
      echo "Network connection down! Attempting reconnection."
      ifup --force wlan0
      sleep 120
   fi
done

