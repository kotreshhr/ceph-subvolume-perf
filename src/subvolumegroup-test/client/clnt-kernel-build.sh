#Build in kernel in group_1/sub_1 group_1/sub_2 group_1/sub_3 in parallel

# get kernel source code
wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.12.10.tar.xz

#Extract the source
xz -d linux-5.12.10.tar.xz
tar xvf linux-5.12.10.tar

#Change directory
cd linux-5.12.10

#Create kernel configuration file
cp /boot/config-$(uname -r) .config

#Build kernel
make
