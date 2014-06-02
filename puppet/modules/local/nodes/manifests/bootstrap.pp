class nodes::bootstrap {
    Exec { path => [
            '/bin',
            '/sbin',
            '/usr/bin',
            '/usr/sbin',
            '/usr/local/bin',
            '/usr/local/sbin',
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

    file { '/home/vagrant/.profile':
        ensure => present,
        source => '/vagrant/puppet/files/dotfiles/.profile',
        owner  => 'vagrant',
        group  => 'vagrant',
        mode => '675',
    }


    class { 'timezone':
        timezone => 'America/Montreal',
    }
}