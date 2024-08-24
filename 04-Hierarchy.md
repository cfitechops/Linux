# HIERARCHY

```sh
# HIERARCHY

cd /

/ : Root Directory

/bin/   ----|---> Essential User Command Binaries
/boot/  ----|---> Static Files of the boot loader
/dev/   ----|---> Device Files
/etc/   ----|---> Host specific system configuration
/home/  ----|---> User home Directories
/lib/   ----|---> Shared Libraries
/media/ ----|---> Removable Media
/mnt/   ----|---> Mounted Filesystem
/opt/   ----|---> Add-on Application software package
/sbin/  ----|---> System Binaries
/srv/   ----|---> Data for service from system
/tmp/   ----|---> Temporary Files
/usr/   ----|---> User Utilities and Applications
/proc/  ----|---> Process Information
```

**Commands**

Install and Use

```sh
yum install tree -y
tree /
```

Disk Usage and Filesystem Information

```sh
df -h
free -h
which free
ls /bin/free
ls /boot/
lsblk
fdisk -l
df -HT
```

User Management

```sh
useradd unix
ls /home
su - unix
sudo userdel unix
sudo rm -fr /home/unix/
```
