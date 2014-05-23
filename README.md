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
* [Vagrantbox.es](http://www.vagrantbox.es/)
* [Puppet Labs](http://puppetlabs.com/)
    * [Installing Puppet: Mac OS X — Puppet Labs](http://docs.puppetlabs.com/guides/install_puppet/install_osx.html)
        * <http://downloads.puppetlabs.com/mac/>
    * [Learning Puppet — Puppet Labs](http://docs.puppetlabs.com/learning/introduction.html)
    * [Puppet Forge](https://forge.puppetlabs.com/)
        * [Installing Modules — Puppet Labs](http://docs.puppetlabs.com/puppet/latest/reference/modules_installing.html)
* [Puppet CookBook](http://www.puppetcookbook.com/)


Reading List
---------------

* [TomJaeger/vagrant-puppet-lamp](https://github.com/TomJaeger/vagrant-puppet-lamp)
* [jrodriguezjr/puppet-lamp-stack](https://github.com/jrodriguezjr/puppet-lamp-stack)
    * Forked from [PerishableDave/puppet-lamp-stack](https://github.com/PerishableDave/puppet-lamp-stack) > [jas0nkim/my-vagrant-puppet-lamp](https://github.com/jas0nkim/my-vagrant-puppet-lamp)
* [Using vagrant and puppet to setup your symfony2 environment | A day in the life of…](https://www.adayinthelifeof.nl/2012/06/29/using-vagrant-and-puppet-to-setup-your-symfony2-environment/)
    * [jaytaph/symfony2-puppet](https://github.com/jaytaph/symfony2-puppet)
* [tsteur/php-dev-vm](https://github.com/tsteur/php-dev-vm)
* [pmartin/vm-dev-php](https://github.com/pmartin/vm-dev-php)
* [Using Vagrant and Puppet to build a PHP, Nginx and MySQL environment](http://jamesmcfadden.co.uk/using-vagrant-and-puppet-to-build-a-php-nginx-and-mysql-environment/)
* [Using Puppet Modules to Install and Manage WordPress | Puppet Labs](http://puppetlabs.com/blog/using-puppet-modules-to-install-and-manage-wordpress)
* [experience/vagrant-lamp](https://github.com/experience/vagrant-lamp)
    * [experience/vagrant-puppet-php](https://github.com/experience/vagrant-puppet-php)
    * [experience/vagrant-puppet-phpqatools/manifests/init.pp](https://github.com/experience/vagrant-puppet-phpqatools/blob/master/manifests/init.pp)
* [croomes/gonzo](https://github.com/croomes/gonzo)
    * « Gonzo lets you assess the impact of your Puppet change before rolling it out across your server estate. It takes over after continuous integration tools have run their tests and deployed the release to the Puppet Masters, but before clients have been updated. »


Getting Started
--------------------

Setting up project structure:

<pre>
git init
touch README.md
echo .vagrant > .gitignore
vagrant init
mkdir -p project/www
mkdir -p puppet/files/dot
mkdir -p puppet/{manifests,modules}
mkdir -p puppet/modules/{apache,mysql,php}/{files,manifests}
touch puppet/modules/{apache,mysql,php}/files/.gitignore
touch puppet/modules/{apache,mysql,php}/manifests/init.pp

</pre>
