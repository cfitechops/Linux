lsblk
ls -ltrh /dev
fdisk /dev/nvme0n1 
(p ; n ; Q ; q )

lsblk
pvcreate /dev/nvme0n1
pvs
vgcreate myvg /dev/nvme0n1
vgs
lvcreate -L 5G -n lv1 myvg 
lvs
lsblk
mkfs.ext4 /dev/myvg/lv1

mkdir /lv1

vim /etc/fstab

```sh
# add
/dev/myvg/lv1 /lv1 ext4 defaults 0 0
```

mount -a
mount /lv1
df -hT

cd /lv1
touch lv1.txt
ls -ltrh
lvs
resize2fs /dev/myvg/lv1
df -hT
lvextend -L +2 /dev/myvg/lv1
lvs
df -hT
resize2fs /dev/myvg/lv1
cd 
umount /lv1
e2fsck -f /dev/myvg/lv1
resize2fs /dev/myvg/lv1 4G
lvreduce -L 4G /dev/myvg/lv1 (y)
lvs
mount /lv1
df -hT
lvcreate -L 3G -n lv2 myvg
lvs
mkfs.xfs /dev/myvg/lv2
mkdir /lv2
blkid

vim /etc/fstab

```sh
# add
UUID=<> /lv2 xfs defaults 0 0
```
lsblk
lvextend -L +3G /dev/myvg/lv2
lvs
df -hT
umount /lv1 /lv2
df -hT

vim /etc/fstab

```sh
# delete
#UUID=<> /lv2 xfs defaults 0 0
```
lsblk
lvs 
lvremove /dev/myvg/lv1 /dev/myvg/lv2  (y ; y)
lvs
vgremove myvg
vgs
pvs
pvremove /dev/nvme0n1
lsblk
init 0
