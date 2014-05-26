class bootstrap {
    group { 'puppet':
        ensure => 'present'
    }

    Exec { path => [
            '/bin/',
            '/sbin/',
            '/usr/bin/',
            '/usr/sbin/'
        ]
    }

    exec { 'apt-get update':
        command => 'apt-get update'
    }

    $packages = [
        'bash-completion',
        'build-essential',
        'git-core',
        'facter',
        'hiera',
        'puppet',
        'tree',
        'vim'
    ]

    package { $packages:
        ensure => 'installed',
        require => Exec['apt-get update'],
    }

}
