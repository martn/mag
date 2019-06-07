sudo dpkg --add-architecture armhf
sudo apt update
sudo apt install -y --force-yes jackd2 p7zip-full libc6:armhf libasound2:armhf libfreetype6:armhf libxext6:armhf

sudo echo 'devices/system/cpu/cpu0/cpufreq/scaling_governor = performance
devices/system/cpu/cpu1/cpufreq/scaling_governor = performance
devices/system/cpu/cpu2/cpufreq/scaling_governor = performance
devices/system/cpu/cpu3/cpufreq/scaling_governor = performance
' >> sudo /etc/sysfs.conf

sudo echo 'autospawn = no' >> sudo /etc/pulse/client.conf

cd ~
ln -s mag/scripts/pianoteq.sh
ln -s mag/scripts/jackd.sh

