# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = 'hashicorp/precise64'
    config.vm.network 'forwarded_port', guest: 80, host: 8080
    config.vm.provision 'puppet' do |puppet|
        puppet.manifests_path = 'puppet/manifests'
        puppet.manifest_file  = 'site.pp'
        puppet.module_path = 'puppet/modules'
        # puppet.options = '--verbose --debug'
    end
end
