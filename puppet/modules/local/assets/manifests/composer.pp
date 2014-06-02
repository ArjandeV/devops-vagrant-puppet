##
# Composer
# @see http://getcomposer.org/
##
class assets::composer {
    wget::fetch { 'composer-install':
        source => 'http://getcomposer.org/composer.phar',
        destination => '/vagrant/puppet/.tmp/cache/composer.phar',
    }

    file { '/usr/local/bin/composer':
        ensure => 'present',
        source => '/vagrant/puppet/.tmp/cache/composer.phar',
        mode => '+x',
        require => Wget::Fetch['composer-install'],
    }

    file { '~/.composer':
        ensure => 'directory',
    }

}
