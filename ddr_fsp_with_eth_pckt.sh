#!/bin/bash
i=0
while :
do
      export URL="https://dr-download.ti.com/software-development/software-development-kit-sdk/MD-D37Ls3JjkT/10.01.00.05/tisdk-edgeai-image-am62a-evm.wic.xz"
      wget $URL &
      echo 1 > /sys/kernel/debug/pm_genpd/LPM/pd_state
      cat /sys/kernel/debug/pm_genpd/LPM/pd_state
      rm tisdk*
      sleep 1
      export URL="https://dr-download.ti.com/software-development/software-development-kit-sdk/MD-D37Ls3JjkT/10.01.00.05/tisdk-edgeai-image-am62a-evm.wic.xz"
      wget $URL &
      echo 0 > /sys/kernel/debug/pm_genpd/LPM/pd_state
      cat /sys/kernel/debug/pm_genpd/LPM/pd_state
      rm tisdk*
      i=$((i+1))
      echo $i "iteration"
done
