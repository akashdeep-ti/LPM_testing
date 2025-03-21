#!/bin/bash

i=0
mcu_only_latency=50
deep_sleep_latency=150
while :
do
        resume_latency=$((($RANDOM % deep_sleep_latency) + mcu_only_latency))
        resume_latency_us=$((resume_latency*1000))
        echo $resume_latency_us > /sys/devices/system/cpu/cpu0/power/pm_qos_resume_latency_us
        if [ "$resume_latency" -gt "9" ] && [ "$resume_latency" -lt "101" ]
        then
          echo "MCU Only mode selected"
        elif [ "$resume_latency" -gt "100" ] && [ "$resume_latency" -lt "251" ]
        then
          echo "Deep Sleep mode selected"
        else
          echo "Error"
        fi
        sleep_duration=$(($RANDOM % 100))
        sleep_duration=$((sleep_duration+5))
        echo sleep for $sleep_duration seconds on `date`;
        rtcwake -s $sleep_duration -m mem
        echo "resumed" $i "time on" `date`
        i=$((i+1))
        sleep 5
done
