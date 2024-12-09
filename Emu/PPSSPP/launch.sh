#!/bin/sh
echo $0 $*
progdir=`dirname "$0"`
cd $progdir
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$progdir

echo "=============================================="
echo "==================== PPSSPP  ================="
echo "=============================================="
echo 0 > /sys/devices/system/cpu/cpu3/online 
echo 0 > /sys/devices/system/cpu/cpu2/online 

echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor 
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq 
$EMU_DIR/overclock 1512

export HOME=/mnt/SDCARD
./miyoo282_xpad_inputd&
./PPSSPPSDL "$*"
killall miyoo282_xpad_inputd

