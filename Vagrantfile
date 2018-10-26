# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vbguest.auto_update = false

  config.vm.define "centos-7-rust-slave" do |centos_7_rust_slave|
    centos_7_rust_slave.vm.box = "centos/7"
    centos_7_rust_slave.vm.network :private_network, :ip => '192.168.100.100'
    centos_7_rust_slave.vm.provision "file", source: "~/.ansible/vault-pass", destination: "/home/vagrant/.ansible/vault-pass"
    centos_7_rust_slave.vm.provision "shell", path: "scripts/setup_ansible.sh"
    centos_7_rust_slave.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "rust-slave.yml"
      ansible.raw_arguments = "--vault-pass /home/vagrant/.ansible/vault-pass"
    end
    centos_7_rust_slave.vm.provider "virtualbox" do |vb|
      vb.memory = 2048
    end
  end

  config.vm.define "ubuntu-trusty-rust-slave" do |ubuntu_trusty_rust_slave|
    ubuntu_trusty_rust_slave.vm.box = "ubuntu/trusty64"
    ubuntu_trusty_rust_slave.vm.network :private_network, :ip => '192.168.100.101'
    ubuntu_trusty_rust_slave.vm.provision "file", source: "~/.ansible/vault-pass", destination: "/home/vagrant/.ansible/vault-pass"
    ubuntu_trusty_rust_slave.vm.provision "shell", path: "scripts/setup_ansible.sh"
    ubuntu_trusty_rust_slave.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "rust-slave.yml"
      ansible.raw_arguments = "--vault-pass /home/vagrant/.ansible/vault-pass"
    end
    ubuntu_trusty_rust_slave.vm.provider "virtualbox" do |vb|
      vb.memory = 2048
    end
  end

  config.vm.provision :hosts do |hosts|
    hosts.add_host '192.168.100.100', ['centos-rust-slave.vagrantup.internal']
    hosts.add_host '192.168.100.100', ['ubuntu-rust-slave.vagrantup.internal']
  end
end
