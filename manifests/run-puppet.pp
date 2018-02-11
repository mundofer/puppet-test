# Set up regular Puppet runs
file { '/usr/local/bin/run-puppet.sh':
  ensure => present,
  content => "#!/bin/bash\ncd /etc/puppetlabs/code/environments/production && git pull\n/opt/puppetlabs/bin/puppet apply manifests/\n",
  #source => "puppet:///modules/run-puppet.sh",
  mode   => '0755',
}

cron { 'run-puppet':
  command => '/usr/local/bin/run-puppet.sh',
  hour    => '*',
  minute  => '*/15',
}
