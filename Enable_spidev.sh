#!/usr/bin/env sh

wget https://raw.githubusercontent.com/adafruit/adafruit-beaglebone-io-python/master/overlays/ADAFRUIT-SPI0-00A0.dts
dtc -O dtb -o ADAFRUIT-SPI0-00A0.dtbo -b 0 -@ ADAFRUIT-SPI0-00A0.dts
cp ADAFRUIT-SPI0-00A0.dtbo /lib/firmware/
echo ADAFRUIT-SPI0 > /sys/devices/bone_capemgr.9/slots

rm ADAFRUIT-SPI0-00A0.dts ADAFRUIT-SPI0-00A0.dtbo
