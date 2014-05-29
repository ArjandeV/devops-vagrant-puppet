include nodes::bootstrap

# Requires mod 'puppetlabs/apache'
include lamp::apache2

# Requires mod 'example42/php'
include lamp::php

# Requires mod 'puppetlabs/mysql'
include lamp::mysql

include assets::composer
include assets::phpunit
