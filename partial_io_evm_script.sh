#!/bin/bash

sleep 12
#Make sure the overlay is added in uEnv.txt
ethtool -s mcu_mcan1 wol p
poweroff
