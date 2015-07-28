#!/usr/bin/env sh

dtc -O dtb -o BB-SPI0DEV-00A0.dtbo -b 0 -@ BB-SPI0DEV-00A0.dts
cp BB-SPI0DEV-00A0.dtbo /lib/firmware/
echo BB-SPI0DEV > /sys/devices/bone_capemgr.*/slots

