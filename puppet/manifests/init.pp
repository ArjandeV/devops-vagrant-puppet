# vagrant/puppet/manifests/init.pp

# Create puppet group
group { "puppet":
    ensure => "present",
}

# Run apt-get update
exec { 'apt-get update':
    path => '/usr/bin',
}

# Listing packages to install
# @todo Convert to modules, activate services
package {'apache2': ensure => present}
package {'libapache2-mod-auth-mysql': ensure => present}
package {'libapache2-mod-php5': ensure => present}
package {'mysql-server': ensure => present}
package {'php5': ensure => present}
package {'php5-mysql': ensure => present}
package {'tree': ensure => present}
package {'vim': ensure => present}

# Create directory
file { '/var/www/':
    ensure => 'directory',
}
