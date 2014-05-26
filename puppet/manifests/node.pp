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

class { 'apache':
    mpm_module => 'prefork',
}

apache::vhost { $fqdn:
    priority => 14,
    port => 80,
    docroot => '/vagrant/project/www',
}

include apache::mod::php
include php
