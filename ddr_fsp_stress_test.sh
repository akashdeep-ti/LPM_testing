#!/bin/bash
i=0
while :
do
      echo 1 > /sys/kernel/debug/pm_genpd/LPM/pd_state
      cat /sys/kernel/debug/pm_genpd/LPM/pd_state
      echo 0 > /sys/kernel/debug/pm_genpd/LPM/pd_state
      cat /sys/kernel/debug/pm_genpd/LPM/pd_state
      i=$((i+1))
      echo $i "iteration"
done
# Use the below Commands to initiate DMA transactions in background
#export URL="https://dr-download.ti.com/software-development/software-development-kit-sdk/MD-D37Ls3JjkT/10.01.00.05/tisdk-edgeai-image-am62a-evm.wic.xz"
#wget $URL -O /root/tmp 1>&2 2>/dev/null
