class lamp::apache2 {
    class { 'apache':
        mpm_module => 'prefork',
    }

    apache::vhost { $fqdn:
        docroot => '/vagrant/project/www',
        port => '80',
        priority => '1',
        override => 'All',
    }

    apache::mod { 'rewrite': }
    include apache::mod::php
}