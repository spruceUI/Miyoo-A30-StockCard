#!/bin/sh
echo $0 $*
RA_DIR=/mnt/SDCARD/RetroArch
./performance.sh
cd $RA_DIR/
HOME=$RA_DIR/ $RA_DIR/ra32.miyoo -v -L $RA_DIR/.retroarch/cores/yabause_libretro.so "$1"
