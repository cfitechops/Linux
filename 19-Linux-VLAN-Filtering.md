### Create New veth Pairs and Network Namespaces

```sh
# Display Current Network Links
ip -br -c link

# Create Additional veth Pairs
ip link add name vth3 type veth peer vth_3
ip link add name vth4 type veth peer vth_4

# Display Updated Network Links
ip -br -c link

# Create Additional Network Namespaces
ip netns add ns3
ip netns add ns4

# Move veth Interfaces to Namespaces
ip link set dev vth_3 netns ns3
ip link set dev vth_4 netns ns4

# Configure Interfaces in Namespaces
ip -n ns3 link set dev vth_3 up
ip -n ns3 address add 192.168.129.3/24 dev vth_3
ip -n ns4 link set dev vth_4 up
ip -n ns4 address add 192.168.129.4/24 dev vth_4
```

### Add New Interfaces to Bridge and Test Connectivity

```sh
# Display Network Links
ip -br -c link show

# Add Interfaces to Bridge
ip link set dev vth3 master br0
ip link set dev vth4 master br0

# Ping Between Namespaces
ip netns exec ns1 ping 192.168.129.4
```

### VLAN Configuration on the Bridge

```sh
# Enable VLAN Filtering
ip link set dev br0 type bridge vlan_filtering 1

# Configure VLANs
bridge vlan add vid 10 dev vth1 pvid untagged
bridge vlan add vid 10 dev vth2 pvid untagged

# Remove Default VLANs
bridge vlan del vid 1 dev vth1
bridge vlan del vid 1 dev vth2
bridge vlan del vid 1 dev vth3
bridge vlan del vid 1 dev vth4
bridge vlan del vid 1 dev br0 self
```

### VLAN Management and Testing

```sh
# Add and Remove VLANs
bridge vlan add vid 30 dev vth3 pvid untagged
bridge vlan add vid 20 dev vth3 pvid untagged
bridge vlan add vid 20 dev vth4 pvid untagged
bridge vlan del vid 10 dev vth3
bridge vlan del vid 10 dev vth4
bridge vlan del vid 30 dev vth3

# Ping Tests
ip netns exec ns1 ping 192.168.129.3
ip netns exec ns3 ping 192.168.129.4

# View and Manage the Bridge FDB
bridge fdb show dynamic
bridge vlan show
```

### Clean-Up

```sh
# Remove vth1 from Bridge
ip link set vth1 nomaster
ip link set vth1 down
ip link delete vth1
```
