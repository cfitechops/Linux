# Disk and Partition Preparation

```sh
# List Block Devices
lsblk
ls -ltrh /dev

# Partition the Disk
fdisk /dev/nvme0n1

# Initialize Physical Volume
pvcreate /dev/nvme0n1
pvs

# Create Volume Group
vgcreate myvg /dev/nvme0n1
vgs
```

### Logical Volume Creation and Filesystem Setup

```sh
# Create Logical Volume
lvcreate -L 5G -n lv1 myvg
lvs

# Format and Mount the LV
mkfs.ext4 /dev/myvg/lv1
mkdir /lv1
vim /etc/fstab   # Adds the mount information to /etc/fstab to ensure the LV is mounted automatically

# Mount and Verify
mount -a
df -hT
cd /lv1
touch lv1.txt
ls -ltrh
```

### Resizing Logical Volumes

```sh
# Resize Filesystem and LV
resize2fs /dev/myvg/lv1
lvextend -L +2G /dev/myvg/lv1
resize2fs /dev/myvg/lv1

# Reduce LV Size
umount /lv1
e2fsck -f /dev/myvg/lv1
resize2fs /dev/myvg/lv1 4G
lvreduce -L 4G /dev/myvg/lv1
mount /lv1
```

### Create and Manage Additional LVs

```sh
# Create a New LV
lvcreate -L 3G -n lv2 myvg
mkfs.xfs /dev/myvg/lv2
mkdir /lv2

# Update /etc/fstab (Adds the new LV to /etc/fstab for automatic mounting)
vim /etc/fstab

# Extend LV2
lvextend -L +3G /dev/myvg/lv2

# Unmount and Clean Up
umount /lv1 /lv2
lvremove /dev/myvg/lv1 /dev/myvg/lv2
vgremove myvg
pvremove /dev/nvme0n1
```

### Final System Check and Shutdown

```sh
init 0
```
