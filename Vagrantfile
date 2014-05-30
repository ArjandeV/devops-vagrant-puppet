#!/usr/bin/env ruby
# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = 'ubuntu/trusty64'
    config.vm.box_version = '>= 14.04'

    # Default = 300
    config.vm.boot_timeout = 32000

    # Set to true for debugging
    config.vm.provider :virtualbox do |vb|
        vb.gui = false
    end

    # Automatically update VirtualBox Guest Additions
    # Requires vagrant-vbguest plugin
    config.vbguest.auto_update = true
    
    config.vm.define :node do |node|
        node.vm.hostname = 'node'
        node.vm.network 'private_network', ip: '192.168.33.10'
        node.vm.network 'forwarded_port', guest: 80, host: 8080
        node.vm.synced_folder '../', '/var/www/vagrant'
        node.vm.provision :puppet do |puppet|
            puppet.module_path = [
                'puppet/modules/local',
                'puppet/modules/third-party',
            ]
            puppet.manifests_path = 'puppet/manifests'
            puppet.manifest_file = 'node.pp'
            puppet.facter = {
                'fqdn' => 'node.project.dev'
            }
            # puppet.options = '--verbose --debug'
        end
    end
 end
