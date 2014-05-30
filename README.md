Learning DevOps w/ Vagrant / Puppet
=====================================

LAMP Stack
------------

* Ubuntu 14.04 LTS (Trusty Tahr)
* Apache 2.4.7
* MySQL 5.5.37
* PHP 5.5.9

Requirements
---------------

* [VirtualBox](https://www.virtualbox.org/)
    * <https://www.virtualbox.org/wiki/Downloads>
* [Vagrant](http://www.vagrantup.com/)
    * <http://www.vagrantup.com/downloads.html>
* [Puppet](http://puppetlabs.com/)

    vagrant plugin install vagrant-vbguest
    gem install puppet
    gem install facter
    gem install hiera
    gem install librarian-puppet

Getting started
------------------

    git clone git@github.com:sthibault/devops.git
    cd learn-puppet/puppet/
    librarian-puppet install --verbose
    cd ..
    vagrant up
    vagrant up jenkins #autostart set to false by default

Hosts
--------

    192.168.33.10  dev.master.project.com
    192.168.33.11  dev.jenkins.project.com

TODO
------

* Fix <code>vagrant reload</code> timeout issues
    * Problems with box metadata?
* Fix vhost configs

