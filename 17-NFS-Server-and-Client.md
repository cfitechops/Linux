# NFS Setup and File Sharing Between SERVER 1 and SERVER 2

### SERVER 1: NFS Server Setup

```sh
# Check NFS and RPC Bind Packages
yum list installed | grep nfs-utils
yum list installed | grep rpcbind

# Create a Directory to Share
mkdir /share
touch /share/share.txt
ls /share
```

Edit the NFS Exports File

```sh
# vi /etc/exports

# Add the following line to share the /share directory with SERVER 2
/share 192.168.11.132/24(rw,sync)
```

Start and Enable NFS and RPC Bind Services

```sh
systemctl start nfs
systemctl enable nfs
systemctl start rpcbind
systemctl enable rpcbind
systemctl status nfs
systemctl status rpcbind
```

Export the NFS Share

```sh
exportfs -rav
```

Set Permissions on the Shared Directory

```sh
ls -ld /share/
chmod -R 777 /share/
ls -ld /share/
ls -ltrh /share/
```

Restart NFS and RPC Bind Services

```sh
systemctl restart nfs
systemctl restart rpcbind
```

### SERVER 2: Mount the NFS Share

```sh
# Check Available NFS Shares (Lists the shared directories on SERVER 1)
showmount -e <IP SERVER 1>

# Create a Mount Point and Mount the Share
mkdir /access
mount -t nfs <IP SERVER 1>:/share /access
df -hT
ls /access/
```

vi /access/share.txt

```sh
# Add the text

HELLO NFS share ... How are you ?
```

### SERVER 1: Verify the Changes

```sh
# Check the Contents of the Shared File
cat /access/share.txt

# Create a New Directory in the Shared Directory
mkdir /share/IPL
```

### SERVER 2: Verify the New Directory

```sh
# Check the New Directory
ls -ltrh /access/
```
