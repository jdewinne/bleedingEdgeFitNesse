# -*- mode: ruby -*-
# vi: set ft=ruby :

#
# FitNesse VM containing:
# - openjdk
# - FitNesse
#
# Each component is provisioned via a Puppet manifest in the manifests directory.
#

host_only_network = "192.168.1"

Vagrant::Config.run do |config|

  config.vm.define :fitnesse do |fitnesse_config|
    fitnesse_config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/fedora-18-x64-vbox4210.box"
    fitnesse_config.vm.box = "fedora18"
    fitnesse_config.vm.customize [
     "modifyvm", :id,
     "--memory", "2048"
    ]
    fitnesse_config.vm.customize ["modifyvm", :id, "--cpus", "2"]
    fitnesse_config.vm.customize ["modifyvm", :id, "--ioapic", "on"]
    fitnesse_config.vm.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    fitnesse_config.vm.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    
    fitnesse_config.vm.network :hostonly, host_only_network + ".10", :adapter => 2

    # Enable the Puppet provisioner
    fitnesse_config.vm.provision :puppet do |puppet|
      puppet.manifest_file = "singlevm.pp"
      puppet.manifests_path = "manifests"
    end
  end

end
