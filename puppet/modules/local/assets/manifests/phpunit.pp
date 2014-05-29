##
# PHPUnit
# @see http://phpunit.de
##
class assets::phpunit {
    wget::fetch { 'phpunit-install':
        source => 'https://phar.phpunit.de/phpunit.phar',
        destination => '/tmp/phpunit.phar',
        cache_dir => '/var/cache/wget',
    }

    file { '/usr/local/bin/phpunit':
        ensure => 'present',
        source => '/tmp/phpunit.phar',
        mode => '+x',
        require => Wget::Fetch['phpunit-install'],
    }
}
