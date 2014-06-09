node 'dev.jenkins.project.com' {

    include nodes::bootstrap

    # Requires mod 'puppetlabs/apache'
    include lamp::apache

    # Requires mod 'example42/php'
    include lamp::php

    # Requires mod 'puppetlabs/mysql'
    include lamp::mysql

    include assets::composer

    include jenkins

    # @see http://jenkins-php.org/installation.html
    jenkins::plugin {
        'checkstyle':;
        'cloverphp':;
        'crap4j':;
        'dry':;
        'ghprb':;
        'git':;
        'github':;
        'github-api':;
        'htmlpublisher':;
        'jdepend':;
        'phing':;
        'plot':;
        'pmd':;
        'vagrant':;
        'violations':;
        'xunit':;
    }

    include nodes::vhosts::jenkins

}
