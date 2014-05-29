Vagrant / Puppet  Learning Envivonment
=========================================

Objective
------------

Setting up the leanest Vagrant / Puppet functional LAMP stack possible and see where this goes.


Resources
------------

* [Vagrant](http://www.vagrantup.com/)
    * [Getting Started - Vagrant Documentation](http://docs.vagrantup.com/v2/getting-started/)
* [Vagrant Cloud](https://vagrantcloud.com/)
    * [Official Ubuntu boxes](https://vagrantcloud.com/ubuntu)
* [Vagrantbox.es](http://www.vagrantbox.es/)
* [Puppet Labs](http://puppetlabs.com/)
    * [Puppet Documentation Index — Puppet Labs](http://docs.puppetlabs.com/puppet/)
    * [Learning Puppet — Puppet Labs](http://docs.puppetlabs.com/learning/introduction.html)
        * [puppetlabs/puppetlabs-training-bootstrap](https://github.com/puppetlabs/puppetlabs-training-bootstrap)
    * [Puppet Forge](https://forge.puppetlabs.com/)
        * [Installing Modules — Puppet Labs](http://docs.puppetlabs.com/puppet/latest/reference/modules_installing.html)
        * [Module of the Week: Puppet Module Tool - Part 1 | Puppet Labs](http://puppetlabs.com/blog/module-of-the-week-puppet-module-tool-part-1)
    * [Core Types Cheat Sheet](http://docs.puppetlabs.com/puppet_core_types_cheatsheet.pdf)
    * [Puppet Module Cheat Sheet](http://docs.puppetlabs.com/module_cheat_sheet.html)
        * [Beginner's Guide to Modules — Puppet Labs](http://docs.puppetlabs.com/guides/module_guides/bgtm.html)
    * [Installing Puppet: Mac OS X — Puppet Labs](http://docs.puppetlabs.com/guides/install_puppet/install_osx.html)
        * <http://downloads.puppetlabs.com/mac/>
* [Puppet CookBook](http://www.puppetcookbook.com/)
* [Example42 Puppet Modules | Puppet documentation, tools, tutorials, modules and sample infrastructures](http://www.example42.com/)


Reading List
---------------

* [Vagrant Resources - Érika Heidi](http://www.erikaheidi.com/vagrant)
    * [A beginners guide to Vagrant and Puppet, part 3 - facts, conditionals and modules | erikaheidi](http://www.erikaheidi.com/blog/a-beginners-guide-to-vagrant-and-puppet-part-3-facts-conditional)
    * [vagrantee/vagrantee](https://github.com/vagrantee/vagrantee)
* [Using vagrant and puppet to setup your symfony2 environment | A day in the life of…](https://www.adayinthelifeof.nl/2012/06/29/using-vagrant-and-puppet-to-setup-your-symfony2-environment/)
    * [jaytaph/symfony2-puppet](https://github.com/jaytaph/symfony2-puppet)
* [Using Vagrant and Puppet to build a PHP, Nginx and MySQL environment](http://jamesmcfadden.co.uk/using-vagrant-and-puppet-to-build-a-php-nginx-and-mysql-environment/)
* [Using Puppet Modules to Install and Manage WordPress | Puppet Labs](http://puppetlabs.com/blog/using-puppet-modules-to-install-and-manage-wordpress)
* [How to Setup a PuppetMaster with Example42 modules | Example42](http://www.example42.com/?q=How_to_Setup_a_PuppetMaster)
    * [example42/puppet-infrastructures](https://github.com/example42/puppet-infrastructures)
* [vagrant - Using puppet module straight from a cloned repo - Stack Overflow](http://stackoverflow.com/questions/17570554/using-puppet-module-straight-from-a-cloned-repo)
* Provisioning from multiple sources : [NexusIS/devstack-tempest](https://github.com/NexusIS/devstack-tempest/blob/master/Vagrantfile)
* [Make $ vagrant up yours – Juan Treminio](https://jtreminio.com/2013/06/make_vagrant_up_yours/)
* [Automatically Download and Install VirtualBox Guest Additions in Vagrant | Javalobby](http://java.dzone.com/articles/automatically-download-and)


librarian-puppet
------------------

* [Vagrant and puppet kata - Igor Popov](http://igorpopov.io/katas/2013/12/02/vagrant-puppet-librarian-kata/)
    * [Puppet and Vagrant Kata - Igor Popov - YouTube](https://www.youtube.com/watch?v=2ADTsgR_xoE)
    * [sensui/vagrant-puppet-librarian-kata](https://github.com/sensui/vagrant-puppet-librarian-kata)

MySQL
--------

* [James D : Connect to MySQL in Vagrant with Sequel Pro](https://coderwall.com/p/yzwqvg)
    * Vagrant's default SSH settings are as follows:
        * SSH Host: 127.0.0.1
        * SSH User: vagrant
        * SSH Key: ~/.vagrant.d/insecureprivatekey
        * SSH Port: 2222


Code samples
--------------

* [puppetlabs/infrastructure-puppetfile](https://github.com/puppetlabs/infrastructure-puppetfile/blob/production/Puppetfile)
* [vagrantee/vagrantee](https://github.com/vagrantee/vagrantee)
* [TomJaeger/vagrant-puppet-lamp](https://github.com/TomJaeger/vagrant-puppet-lamp)
* [jrodriguezjr/puppet-lamp-stack](https://github.com/jrodriguezjr/puppet-lamp-stack)
    * Forked from [PerishableDave/puppet-lamp-stack](https://github.com/PerishableDave/puppet-lamp-stack) > [jas0nkim/my-vagrant-puppet-lamp](https://github.com/jas0nkim/my-vagrant-puppet-lamp)
* [experience/vagrant-lamp](https://github.com/experience/vagrant-lamp)
    * [experience/vagrant-puppet-php](https://github.com/experience/vagrant-puppet-php)
    * [experience/vagrant-puppet-phpqatools/manifests/init.pp](https://github.com/experience/vagrant-puppet-phpqatools/blob/master/manifests/init.pp)
* [tsteur/php-dev-vm](https://github.com/tsteur/php-dev-vm)
* [pmartin/vm-dev-php](https://github.com/pmartin/vm-dev-php)
* [croomes/gonzo](https://github.com/croomes/gonzo)
    * « Gonzo lets you assess the impact of your Puppet change before rolling it out across your server estate. It takes over after continuous integration tools have run their tests and deployed the release to the Puppet Masters, but before clients have been updated. »
* [jenkinsci/infra-puppet](https://github.com/jenkinsci/infra-puppet)


Documentation
-----------------

Quick tip: If you're adding modules as git submodules instead of using librarian-puppet, don't forget to check out the Dependencies tab

* [puppetlabs/apache](https://forge.puppetlabs.com/puppetlabs/apache)
* [example42/php](https://forge.puppetlabs.com/example42/php)
* [puppetlabs/mysql](https://forge.puppetlabs.com/puppetlabs/mysql)


Getting started
------------------

<pre>
vagrant plugin install vagrant-vbguest
gem install puppet
gem install facter
gem install hiera
gem install librarian-puppet

cd puppet
librarian-puppet config --local path modules/third-party
librarian-puppet install --verbose
</pre>

