# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "wholebits/ubuntu17.04-64"
  config.vm.network "private_network", ip: "192.168.36.10"
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update 
    apt-get install -y docker.io docker docker-compose
    git clone https://github.com/oglimmer/linky-prod-env
    cd linky-prod-env
    docker-compose up -d
  SHELL
end
