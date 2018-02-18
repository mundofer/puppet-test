# Set up regular Puppet runs
file { '/usr/local/bin/run-puppet.sh':
  ensure => present,
  content => "#!/bin/bash\ncd /home/vagrant/puppet && git pull\n/opt/puppetlabs/bin/puppet apply manifests/\n",
  #source => "puppet:///modules/run-puppet.sh",
  mode   => '0755',
}

file { '/tmp/mnt':
  ensure => directory,

}

cron { 'run-puppet':
  command => '/usr/local/bin/run-puppet.sh',
  hour    => '*',
  minute  => '*/15',
}
