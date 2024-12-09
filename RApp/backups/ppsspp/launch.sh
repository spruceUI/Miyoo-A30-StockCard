#!/bin/sh
#sleep 10000000
mydir=`dirname "$0"`

export HOME=$mydir
export LD_LIBRARY_PATH=lib:/usr/miyoo/lib:/usr/lib

cd $mydir
./miyoo282_xpad_inputd&
./PPSSPPSDL "$1"
sync
killall miyoo282_xpad_inputd