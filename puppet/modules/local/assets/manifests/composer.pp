##
# Composer
# @see http://getcomposer.org/
##
class assets::composer {
    wget::fetch { 'composer-install':
        source => 'http://getcomposer.org/composer.phar',
        destination => '/tmp/composer.phar',
        cache_dir => '/var/cache/wget',
    }

    file { '/usr/local/bin/composer':
        ensure => 'present',
        source => '/tmp/composer.phar',
        mode => '+x',
        require => Wget::Fetch['composer-install'],
    }

    file { '/home/vagrant/.composer':
        ensure => 'directory',
        owner  => 'vagrant',
        group  => 'vagrant',
        require => File['/usr/local/bin/composer'],
    }

    file { '/home/vagrant/.composer/composer.json':
        ensure => 'present',
        source => '/vagrant/puppet/files/dotfiles/.composer/composer.json',
        owner  => 'vagrant',
        group  => 'vagrant',
        require => File['/home/vagrant/.composer'],
    }

    exec { 'composer global install':
        command => '/usr/local/bin/composer global install',
        environment => ['COMPOSER_HOME=/home/vagrant/.composer'],
        require => [
            File['/usr/local/bin/composer'],
            File['/home/vagrant/.composer/composer.json'],
        ],
        logoutput => true,
    }

}
