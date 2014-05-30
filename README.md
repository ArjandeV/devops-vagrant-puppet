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

<pre>
    vagrant plugin install vagrant-vbguest
    gem install puppet
    gem install facter
    gem install hiera
    gem install librarian-puppet
</pre>

Getting started
------------------

<pre>
    git clone git@github.com:sthibault/learn-puppet.git
    cd learn-puppet/puppet/
    librarian-puppet install --verbose
    cd ..
    vagrant up
</pre>

TODO
------

* Fix <code>vagrant reload</code> timeout issues
    * Problems with box metadata?
* Fix vhost configs

