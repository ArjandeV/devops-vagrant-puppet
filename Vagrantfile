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
    # @see https://github.com/dotless-de/vagrant-vbguest
    config.vbguest.auto_update = true

    # Automatically run Librarian-Puppet before any provisioning step
    # Requires vagrant-librarian-puppet plugin
    # @see https://github.com/mhahn/vagrant-librarian-puppet
    config.librarian_puppet.puppetfile_dir = 'puppet'
    config.librarian_puppet.placeholder_filename = '.gitignore'
    
    # Project master node
    config.vm.define :master, primary: true do |master|
        master.vm.hostname = 'master'
        master.vm.network 'private_network', ip: '192.168.33.10'
        master.vm.synced_folder '../', '/var/www/vagrant'
        master.vm.provision :puppet do |puppet|
            puppet.module_path = [
                'puppet/modules/local',
                'puppet/modules/third-party',
            ]
            puppet.manifests_path = 'puppet/manifests'
            puppet.manifest_file = 'master.pp'
            puppet.facter = {
                'fqdn' => 'dev.master.project.com'
            }
            # puppet.options = '--verbose --debug'
        end
    end

    # Jenkins node
    config.vm.define :jenkins, autostart: false do |jenkins|
        jenkins.vm.hostname = 'jenkins'
        jenkins.vm.network 'private_network', ip: '192.168.33.11'
        jenkins.vm.provision :puppet do |puppet|
            puppet.module_path = [
                'puppet/modules/local',
                'puppet/modules/third-party',
            ]
            puppet.manifests_path = 'puppet/manifests'
            puppet.manifest_file = 'jenkins.pp'
            puppet.facter = {
                'fqdn' => 'dev.jenkins.project.com'
            }
            # puppet.options = '--verbose --debug'
        end
    end

end
