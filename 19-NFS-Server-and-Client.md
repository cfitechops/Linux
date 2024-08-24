# SERVER 1

yum list installed | grep nfs-utils
yum list installed | grep rpcbind
mkdir /share
touch /share/share.txt
ls /share

vi /etc/exports

```sh
#/share <IP SERVER 2>/24(rw, sync)

/share 192.168.11.132/24(rw, sync)
```

systemctl start nfs
systemctl enable nfs
systemctl start rpcbind
systemctl enable rpcbind
systemctl status nfs
systemctl status rpcbind

exportfs -rav
ls -ld /share/
chmod -R 777 /share/
ls -ld /share/
ls -ltrh /share/

systemctl restart nfs
systemctl restart rpcbind

# SERVER 2

showmount -e <IP SERVER 1>

# SERVER 1

firewall-cmd --list-all
firewall-cmd --reload 
firewall-cmd --permanent --add-service=nfs
firewall-cmd --permanent --add-service=2049/tcp
firewall-cmd --permanent --add-service=rpc-bind
firewall-cmd --permanent --add-service=mountd

# SERVER 2

mkdir /access
mount -t nfs <IP SERVER 1>:/share /access
df -hT
ls /access/

vi /access/share.txt

```sh
HELLO NFS share ... How are you ?
```

# SERVER 1

cat /access/share.txt

mkdir /share/IPL

# SERVER 2

ls -ltrh /access/
