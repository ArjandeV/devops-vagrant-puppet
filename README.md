Learning DevOps w/ Vagrant / Puppet
=====================================

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

