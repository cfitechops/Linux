```sh
Vagrant.configure("2") do |config|
  servers=[
    # {
    #   :hostname => "server1",
    #   :box => "generic/ubuntu2204",
    #   :ip => "192.168.129.100",
    #   :ssh_port => '2210'
    # },
    # {
    #   :hostname => "server2",
    #   :box => "generic/ubuntu2204",
    #   :ip => "192.168.129.101",
    #   :ssh_port => '2211'
    # },
    {
    :hostname => "rocky1",
    :box => "bento/rockylinux-8",
    :ip => "192.168.129.102",
    :ssh_port => '2212'
    },
    # {
    # :hostname => "rocky2",
    # :box => "bento/rockylinux-8",
    # :ip => "192.168.129.103",
    # :ssh_port => '2213'
    # },
    # {
    #   :hostname => "openssl",
    #   :box => "bento/opensuse-leap-15",
    #   :ip => "192.168.129.104",
    #   :ssh_port => '2214'
    # },
  ]

  servers.each do |machine|

    config.vm.define machine[:hostname] do |node|
      node.vm.box = machine[:box]
      node.vm.hostname = machine[:hostname]
    
      node.vm.network :private_network, ip: machine[:ip]
      node.vm.network "forwarded_port", guest: 22, host: machine[:ssh_port], id: "ssh"

      node.vm.provider :virtualbox do |v|
        v.customize ["modifyvm", :id, "--memory", 2048]
        v.customize ["modifyvm", :id, "--name", machine[:hostname]]
      end
    end
  end

end



```