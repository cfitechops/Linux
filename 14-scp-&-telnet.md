# Telnet Setup and Testing

### On SERVER 1

Install Telnet

```sh
sudo su

# This command installs the Telnet client on SERVER 1
yum install telnet -y

# SSH to SERVER 2
ssh root@<IP SERVER 2>

# Logout from SERVER 2
logout
```

### On SERVER 2

```sh
# Check Listening Ports
netstat -tulpn | grep -i listen

# Stop SSH Service
systemctl stop sshd

# Check SSH Status
systemctl status sshd

# Start SSH Service
systemctl start sshd
```

### On SERVER 1

```sh
# Test Telnet Connection to SERVER 2
telnet <IP SERVER 2> 22

# SSH to SERVER 2 Again
ssh root@<IP SERVER 2>

# Logout from SERVER 2
logout
```

**SCP (Secure Copy Protocol) Setup and Testing**

```sh
# Create a File to Transfer
touch server2.txt

# Copy File to SERVER 2
scp server2.txt server2@<IP SERVER 2>:/home/server2
```

### On SERVER 2

```sh
# Verify File Transfer
ls -ltr /home/server2/
```

### On SERVER 1

```sh
# Copy File to a Different Directory on SERVER 2
scp server2.txt server2@<IP SERVER 2>:/tmp/
```

### On SERVER 2

```sh
# Verify File in /tmp/
ls -ld /tmp/
```
