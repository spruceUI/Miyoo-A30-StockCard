echo 0 > /sys/devices/system/cpu/cpu3/online 
echo 0 > /sys/devices/system/cpu/cpu2/online 
echo 0 > /sys/devices/system/cpu/cpu1/online 
echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor 
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq 

