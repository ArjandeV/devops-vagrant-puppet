DevOps - Vagrant / Puppet project structure
=============================================

LAMP Stack
------------

* Ubuntu 14.04 LTS (Trusty Tahr)
* Apache 2.4.7
* MySQL 5.5.37
* PHP 5.5.9

### Additional Packages

* apt-get packages
    * <code>/puppet/modules/local/nodes/manifests/bootstrap.pp</code>
        * git
        * tree
        * vim
    * <code>/puppet/modules/local/lamp/manifests/php.pp</code>
        * pear-channels
        * php-codecoverage
        * php-codesniffer
        * phpunit
        * php-validate
* composer global install
    * <code>/puppet/files/dotfiles/.composer/composer.json</code>
    * pdepend
    * phing
    * phpcpd
    * phpdox
    * phploc
    * phpmd

Requirements
---------------

* [VirtualBox](https://www.virtualbox.org/)
    * <https://www.virtualbox.org/wiki/Downloads>
* [Vagrant](http://www.vagrantup.com/)
    * <http://www.vagrantup.com/downloads.html>
* [Puppet](http://puppetlabs.com/)

<pre>
vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-librarian-puppet
gem install puppet
gem install facter
gem install hiera
gem install librarian-puppet
</pre>

Getting started
------------------

    git clone git@github.com:sthibault/devops.git
    cd devops/
    vagrant up
    vagrant up jenkins #autostart set to false by default

Hosts
--------

    192.168.33.10  dev.master.project.com
    192.168.33.11  dev.jenkins.project.com

TODO
------

* Dynamic configs (currently static, hard coded in local manifests)
* Fix <code>vagrant reload</code> timeout issues
    * Problems with box metadata?
    * Known issue ? See : [`vagrant up` hangs at "Waiting for VM to boot. This can take a few minutes" · mitchellh/vagrant Wiki](https://github.com/mitchellh/vagrant/wiki/%60vagrant-up%60-hangs-at-%22Waiting-for-VM-to-boot.-This-can-take-a-few-minutes%22)
* Check if Facter and Hiera are automatically installed as dependencies of the puppet gem
    * If so, remove them from the requirements
* Puppet ENV variables
* Cache packages librarian style to improve multinode setup/teardown performances
* Set current module versions in Puppetfile
* Configure Jenkins & plugins
