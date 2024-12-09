#!/bin/sh
echo $0 $*
progdir=`dirname "$0"`
homedir=`dirname "$1"`
echo 0 > /sys/devices/system/cpu/cpu3/online 
echo 0 > /sys/devices/system/cpu/cpu2/online 

echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor 
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq 
$EMU_DIR/overclock 648
cd /mnt/SDCARD/RetroArch/
HOME=/mnt/SDCARD/RetroArch/ $progdir/../../RetroArch/retroarch -v -L /mnt/SDCARD/RetroArch/.retroarch/cores/nestopia_libretro.so "$1"