### Initial Setup and Bridge Creation

```sh
# Switch to Superuser
sudo su

# Display Network Links
ip -c -br link show

# Create a Bridge
ip link add name br0 type bridge

# Display Bridge Interface
ip -br -c link show br0
ip -c link show br0
ip -d -c link show br0
```

### Creating veth Pairs

```sh
# Create Virtual Ethernet (veth) Pairs
ip link add name vth1 type veth peer vth_1
ip link add name vth2 type veth peer vth_2

# Show veth Interfaces
ip -br -c link show type veth
```

### Network Namespaces

```sh
# Create Network Namespaces
ip netns add ns1
ip netns add ns2
ip netns ls

# Move veth Interfaces into Namespaces
ip link set dev vth_1 netns ns1
ip link set dev vth_2 netns ns2

# Configure Interfaces in Namespaces
ip -n ns1 link set dev vth_1 up
ip -n ns1 address add 192.168.129.1/24 dev vth_1
ip -n ns2 link set dev vth_2 up
ip -n ns2 address add 192.168.129.2/24 dev vth_2
```

### Bridge Configuration

```sh
# Add veth Interfaces to the Bridge
ip link set dev vth1 master br0
ip link set dev vth2 master br0

# Bring Interfaces and Bridge Up
ip link set dev vth1 up
ip link set dev vth2 up
ip link set dev br0 up
```

### Testing Connectivity

```sh
# Ping from ns1 to ns2
ip netns exec ns1 ping 192.168.129.2
```

### Bridge and Forwarding Database (FDB)

```sh
# Show Bridge Interface and FDB
ip -br -c link show br0
ip -d -c link show br0
bridge link show dev br0
bridge fdb show

# Interact with the FDB
bridge fdb del 16:77:08:c4:83:b8 dev vth1 master
```

### Interactive Sessions in Namespaces

```sh
# Open Bash in Network Namespaces
ip netns exec ns1 bash
ip netns exec ns2 bash
```
