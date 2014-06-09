class lamp::apache {
    
    # Sendfile set to Off as a fix for the VirtualBox bug for shared directories
    # @see http://docs.vagrantup.com/v2/synced-folders/virtualbox.html
    class { 'apache':
        mpm_module => 'prefork',
        sendfile => 'Off',
    }

    apache::mod { 'rewrite': }
    include apache::mod::php
}