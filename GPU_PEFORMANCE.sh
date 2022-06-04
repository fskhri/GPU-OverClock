echo Script By @AchanChin For 850Mhz Unlock For RM6785 Device
SELINUX_STATUS=$(getenforce)
setenforce 0
echo GPU Power Policy
	echo 1 > /proc/mali/always_on
	cat /proc/mali/always_on
	echo always_on > /sys/devices/platform/13040000.mali/power_policy

# Set Max/Min frequency for best gaming experience
	echo 850000,310000>  /proc/gpufreq/gpufreq_opp_freq
        echo set Min Freq to 310mhz
       echo 310000 > /sys/module/ged/parameters/gpu_bottom_freq
#Enable GPUBoost Frequency To 900Mhz
echo 850000> /sys/module/ged/parameters/gpu_cust_boost_freq
echo 1 > /sys/module/ged/parameters/enable_gpu_boost
echo 1> /sys/module/ged/parameters/boost_gpu_enable
echo 0> /sys/module/ged/parameters/gpu_debug_enable
echo 0> /sys/module/ged/parameters/gpu_dvfs_enable
echo 25 > /sys/module/ged/parameters/gpu_idle
echo 1 > /sys/module/ged/parameters/
enable_game_self_frc_detect
setenforce $SELINUX_STATUS
