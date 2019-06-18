sudo dpkg --add-architecture armhf
sudo apt update
sudo apt install -y jackd2 libc6:armhf libasound2:armhf libfreetype6:armhf libxext6:armhf libasound2-plugins:armhf

sudo echo 'devices/system/cpu/cpu0/cpufreq/scaling_governor = performance
devices/system/cpu/cpu1/cpufreq/scaling_governor = performance
devices/system/cpu/cpu4/cpufreq/scaling_governor = performance
devices/system/cpu/cpu5/cpufreq/scaling_governor = performance
' | sudo tee -a /etc/sysfs.conf

sudo echo 'autospawn = no' | sudo tee -a /etc/pulse/client.conf

cd ~
ln -s mag/scripts/pianoteq.sh
ln -s mag/scripts/jackd.sh

chmod +x pianoteq.sh
chmod +x jackd.sh

