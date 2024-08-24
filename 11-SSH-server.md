# SSH

Set Hostname

```sh
hostnamectl set-hostname server1.example.com
```

Start a New Shell

```sh
bash
```

Connect to a Remote Server

```sh
ssh root@<IP SERVER>
```

Generate SSH Key Pair

```sh
ssh-keygen -t rsa
```

Copy SSH Key to Remote Server

```sh
ssh-copy-id root@<IP SERVER>
```

Edit SSH Configuration

```sh
# vi /etc/ssh/sshd_config

# For secure
#PubkeyAuthentication no
#PasswordAuthentication no
PermitRootLogin no
```

Verify SSH Service Listening on Port 22

```sh
netstat -lntpu 22
```

Reload SSH Configuration

```sh
sudo systemctl reload sshd.service
```
