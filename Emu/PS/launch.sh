#!/bin/sh
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
EMU_DIR=/mnt/SDCARD/Emu/PS
echo 0 > /sys/devices/system/cpu/cpu3/online 
echo 0 > /sys/devices/system/cpu/cpu2/online 

echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor 
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq 
$EMU_DIR/overclock 1200
ROMNAME="$1"
BASEROMNAME=${ROMNAME##*/}
ROMNAMETMP=${BASEROMNAME%.*}

cd $RA_DIR/
if [ -f "../Roms/PSBIOS/${ROMNAMETMP}.bios" ]; then
		cp -f "../Roms/PSBIOS/${ROMNAMETMP}.bios" "../RetroArch/.retroarch/system/scph101.bin"
else
		cp -f "../Roms/PSBIOS/scph1001.bios" "../RetroArch/.retroarch/system/scph101.bin"
fi

cd $RA_DIR/
HOME=$RA_DIR/ $RA_DIR/ra32.miyoo -v -L $RA_DIR/.retroarch/cores/pcsx_rearmed_libretro.so "$1"


