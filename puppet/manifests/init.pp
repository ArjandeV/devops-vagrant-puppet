# vagrant/puppet/manifests/init.pp

# Create puppet group
group { "puppet":
    ensure => "present",
}

# Run apt-get update
exec { 'apt-get update':
    path => '/usr/bin',
}

# Default package list
$packages = [
    'tree',
    'vim',
]

# Install the default packages
package { $packages:
    ensure => present,
    require => Exec['apt-get update']
}

# Create directory
file { '/var/www/':
    ensure => 'directory',
}
