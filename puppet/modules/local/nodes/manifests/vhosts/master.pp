class nodes::vhosts::master {
    require lamp::apache2

    apache::vhost { $fqdn:
        docroot => '/vagrant/project/www',
        port => '80',
        priority => '1',
        override => 'All',
    }
    
}