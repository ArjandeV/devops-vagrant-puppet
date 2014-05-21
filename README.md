Vagrant / Puppet  Learning Envivonment
=========================================

Resources
------------

* [Vagrant](http://www.vagrantup.com/)
    * [Getting Started - Vagrant Documentation](http://docs.vagrantup.com/v2/getting-started/)
* [Vagrant Cloud](https://vagrantcloud.com/)
* [Vagrantbox.es](http://www.vagrantbox.es/)
* [Puppet Labs](http://puppetlabs.com/)
    * [Learning Puppet — Puppet Labs](http://docs.puppetlabs.com/learning/introduction.html)


Reading List
---------------

* [jrodriguezjr/puppet-lamp-stack](https://github.com/jrodriguezjr/puppet-lamp-stack)
    * Forked from [PerishableDave/puppet-lamp-stack](https://github.com/PerishableDave/puppet-lamp-stack) > [jas0nkim/my-vagrant-puppet-lamp](https://github.com/jas0nkim/my-vagrant-puppet-lamp)
* [Using vagrant and puppet to setup your symfony2 environment | A day in the life of…](https://www.adayinthelifeof.nl/2012/06/29/using-vagrant-and-puppet-to-setup-your-symfony2-environment/)
    * <https://github.com/jaytaph/symfony2-puppet>
* <https://github.com/tsteur/php-dev-vm>
* <https://github.com/pmartin/vm-dev-php/>
* [Using Vagrant and Puppet to build a PHP, Nginx and MySQL environment](http://jamesmcfadden.co.uk/using-vagrant-and-puppet-to-build-a-php-nginx-and-mysql-environment/)


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

