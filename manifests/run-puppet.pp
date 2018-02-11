class runpuppet {
	# Set up regular Puppet runs
	file { '/usr/local/bin/run-puppet.sh':
	  ensure => present,
	  source => 'puppet:///modules/run-puppet/run-puppet.sh',
	  mode   => '0755',
	}

	cron { 'run-puppet':
	  command => '/usr/local/bin/run-puppet.sh',
	  hour    => '*',
	  minute  => '*/15',
	}
}
