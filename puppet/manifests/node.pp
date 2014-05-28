# @see http://igorpopov.io/katas/2013/12/02/vagrant-puppet-librarian-kata/

Exec { path => [
        '/bin',
        '/sbin',
        '/usr/bin',
        '/usr/sbin',
    ]
}

exec { 'system-update':
    command => 'sudo apt-get update',
}

Exec['system-update'] -> Package <| |>

package {
    [
        'git',
        'tree',
        'vim',
    ]:
    ensure => present,
}

group { 'puppet':
    ensure => present,
}

class { 'timezone':
    timezone => 'America/Montreal',
}

class { 'apache':
    mpm_module => 'prefork',
}

apache::vhost { $fqdn:
    docroot => '/vagrant/project/www',
    port => '80',
    priority => '1',
}

apache::mod { 'rewrite': }
include apache::mod::php

include php
php::module { 'curl': }
php::module { 'gd': }
php::module { 'gearman': }
php::module { 'imagick': }
php::module { 'ldap': }
php::module { 'mcrypt': }
php::module { 'mysql': }
php::module { 'mysqlnd': }
php::module { 'sqlite': }
php::module { 'xdebug': }

include ::mysql::server
