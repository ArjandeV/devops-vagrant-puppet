class lamp::apache2 {
    class { 'apache':
        mpm_module => 'prefork',
    }

    apache::mod { 'rewrite': }
    include apache::mod::php
}