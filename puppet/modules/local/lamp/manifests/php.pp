class lamp::php {

    package {
        [
            'pear-channels',
            'php-codecoverage',
            'php-validate',
        ]:
        ensure => present,
    }

    include php
    php::module { 'curl': }
    php::module { 'gd': }
    php::module { 'gearman': }
    php::module { 'imagick': }
    php::module { 'ldap': }
    php::module { 'mcrypt': }
    php::module { 'mysql': }
    php::module { 'mysqlnd': }
    php::module { 'sqlite': }
    php::module { 'xdebug': }
    php::module { 'xsl': }
}
