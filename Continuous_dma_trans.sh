#!/bin/bash

export URL="https://dr-download.ti.com/software-development/software-development-kit-sdk/MD-D37Ls3JjkT/10.01.00.05/tisdk-edgeai-image-am62a-evm.wic.xz"
while :
do
      wget $URL -O /root/tmp 1>&2 2>/dev/null
done
#This file can be used to trigger continuous DMA transaction in background
