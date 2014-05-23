
$groups = [
    'puppet',
    'www-data'
]

# Create default group
group { $groups:
    ensure => "present"
}

# Run apt-get update
exec { 'apt-get update':
    path => '/usr/bin'
}

# Default package list
$packages = [
    'build-essential',
    'bash-completion',
    'git-core',
    'tree',
    'vim'
]

# Install the default packages
package { $packages:
    ensure => present,
    require => Exec['apt-get update']
}

include apache
