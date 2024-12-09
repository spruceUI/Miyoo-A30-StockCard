#!/bin/sh
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
echo 0 > /sys/devices/system/cpu/cpu3/online 
echo 0 > /sys/devices/system/cpu/cpu2/online 

echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor 
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq 
$EMU_DIR/overclock 816
cd $RA_DIR/
HOME=$RA_DIR/ $RA_DIR/retroarch -v -L $RA_DIR/.retroarch/cores/snes9x2005_plus_libretro.so "$1"