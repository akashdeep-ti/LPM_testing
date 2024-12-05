#!/bin/bash
i=0
# To be run on host PC
# Power cycle the EVM - Can power cycle using any relay. This script needs to get input parameter as relay number on web power switch
ssh admin@hostname uom set relay/outlets/$1/state false  
sleep 2
ssh admin@hostname uom set relay/outlets/$1/state true
while true
do
  i=$((i+1))
  echo "$i iteration"
  sleep 50
# Wake trigger using USBRELAY connected on pin 11 of MCU HEADER
  usbrelay ZAQ11_1=1
  sleep 1
  usbrelay ZAQ11_1=0
  sleep 1
done
