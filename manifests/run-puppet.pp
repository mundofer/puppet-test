# Set up regular Puppet runs
file { '/usr/local/bin/run-puppet':
  source => '/Users/fgarcia/Documents/GitHub/puppet-test/manifests',
  mode   => '0755',
}

cron { 'run-puppet':
  command => '/usr/local/bin/run-puppet',
  hour    => '*',
  minute  => '*/15',
}