#!/bin/bash
echo "get the bl1.bin (8K) from the u-boot.bin"
sudo dd if=./u-boot.bin of=bl1.bin bs=512 count=16
echo "burn the bl1.bin into the sdcard"
sudo dd if=./bl1.bin of=/dev/sdc seek=15522798 bs=512 count=16
sync

