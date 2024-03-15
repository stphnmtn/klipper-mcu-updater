sudo service klipper stop
cd ~/klipper
git pull
make clean KCONFIG_CONFIG=config.mcu
make menuconfig KCONFIG_CONFIG=config.mcu
make KCONFIG_CONFIG=config.mcu
./scripts/flash-sdcard.sh /dev/serial/by-id/usb-Klipper_lpc1768_13A0FF04200139AF1246095CC52000F5-if00 btt-skr-v1.3
sudo service klipper start
