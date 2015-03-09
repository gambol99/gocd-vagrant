#
#   Author: Rohith (gambol99@gmail.com)
#   Date: 2015-03-09 10:34:06 +0000 (Mon, 09 Mar 2015)
#
#  vim:ts=2:sw=2:et
#

Vagrant.configure(2) do |config|
  config.vm.box         = "geerlingguy/centos7"
  config.ssh.insert_key = false

  hostname = 'goserve101'

  config.vm.provider :virtualbox do |v|
    v.name   = hostname
    v.cpus   = 2
    v.memory = 2048
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--ioapic", "on"]
  end

  config.vm.hostname = hostname
  config.vm.network :private_network, ip: "10.0.1.101"

  config.vm.define hostname.to_sym do |hostname|
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook       = "provision/main.yml"
    ansible.sudo           = true
  end
end
