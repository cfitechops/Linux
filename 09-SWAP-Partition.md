# Initial Setup and Disk Inspection

```sh
# List Block Devices
lsblk

# Open the Disk for Partitioning
fdisk /dev/nvme0n1

# Update the Kernel About the Partition Table
partprobe

# Verify Partition
lsblk

# Create Swap Space
mkswap /dev/nvme0n11

# Get UUID of the Partition
blkid /dev/nvme0n11

# Add Swap to /etc/fstab
vim /etc/fstab

# Activate Swap
swapon /dev/nvme0n11
free -m

# Deactivate and Remove Swap
swapoff /dev/nvme0n11
free -m
```

Creating a Swap File

```sh
# Create a Swap File
dd if=/dev/zero of=/swapfile count=4096 bs=1MiB

# Set Permissions
chmod 600 /swapfile

# Setup and Activate the Swap File
mkswap /swapfile
swapon /swapfile
free -m

# Add Swap File to /etc/fstab
vim /etc/fstab

# Reboot and Verify
reboot
free -m
```

System Shutdown

```sh
init 0
```
