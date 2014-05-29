node 'node.project.dev' {

    include nodes::bootstrap

    # Requires mod 'puppetlabs/apache'
    include lamp::apache2

    # Requires mod 'example42/php'
    include lamp::php

    # Requires mod 'puppetlabs/mysql'
    include lamp::mysql

    include assets::composer
    include assets::phpunit
}

##
# Temporary setting for testing purposes
# import method soon to be deprecated
# @see http://docs.puppetlabs.com/puppet/latest/reference/lang_import.html
##
import 'jenkins.pp'
