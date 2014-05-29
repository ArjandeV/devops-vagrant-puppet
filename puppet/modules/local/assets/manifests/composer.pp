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
}
