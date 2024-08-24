sudo -i

root@barrysto:~# lsblk

```sh
NAME        MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
loop0         7:0    0    62M  1 loop /snap/core20/1587
loop1         7:1    0     4K  1 loop /snap/bare/5
loop2         7:2    0  63,9M  1 loop /snap/core20/2318
loop3         7:3    0  74,2M  1 loop /snap/core22/1439
loop4         7:4    0 163,3M  1 loop /snap/firefox/1635
loop5         7:5    0 400,8M  1 loop /snap/gnome-3-38-2004/112
loop6         7:6    0 349,7M  1 loop /snap/gnome-3-38-2004/143
loop7         7:7    0 505,1M  1 loop /snap/gnome-42-2204/176
loop8         7:8    0  91,7M  1 loop /snap/gtk-common-themes/1535
loop9         7:9    0  45,9M  1 loop /snap/snap-store/582
loop10        7:10   0  38,8M  1 loop /snap/snapd/21759
loop11        7:11   0   284K  1 loop /snap/snapd-desktop-integration/14
loop12        7:12   0   500K  1 loop /snap/snapd-desktop-integration/178
sda           8:0    1 232,9G  0 disk
└─sda1        8:1    1 232,9G  0 part /media/thierno/16A80B9FA80B7D0D
nvme0n1     259:0    0 476,9G  0 disk
├─nvme0n1p1 259:1    0   512M  0 part /boot/efi
├─nvme0n1p2 259:2    0  76,5G  0 part /home
├─nvme0n1p3 259:3    0  27,9G  0 part [SWAP]
└─nvme0n1p4 259:4    0   372G  0 part /
```

\
fdisk /dev/nvme0n1
(p ; n ; ENTER ; ENTER ; ENTER ; +3G ; p ; t ; 82 ; p ; w)

partprobe
lsblk
mkswap /dev/nvme0n11
blkid /dev/nvme0n11

vim /etc/fstab

```sh
#add
UUID="b73b1842-11c8-41ab-8feb-366e2403fe15" swap swap defaults 0 0
```

cat /etc/fstab
free -m
swapon /dev/nvme0n11
free -m
swapoff /dev/nvme0n11
free -m

vim /etc/fstab

```sh
# delete
#UUID="b73b1842-11c8-41ab-8feb-366e2403fe15" swap swap defaults 0 0
```

fdisk -l
fdisk /dev/nvme0n1
(p ; d ; w)

lsblk
partprobe
df -hT

dd if=/dev/zero of= /swapfile count=4096 bs=1MiB

du -sh /swapfile
ls -ld
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
free -m
lsblk
swapon -s
cat /proc/swaps

vim /etc/fstab

```sh
# add
/swapfile swap swap sw 0 0
```

free -m

reboot

free -m
swapon /swapfile
free -m

vim /etc/fstab

```sh
# delete
#/swapfile swap swap sw 0 0
```

rm -f /swapfile
lsblk
free -m
init 0
